const { createApp, onMounted, ref, computed, onUnmounted } = Vue;

const formatCurrency = (value) =>
  new Intl.NumberFormat("pt-BR", { currency: "BRL", style: "currency" }).format(
    value
  );

createApp({
  setup() {
    const EmpregoId = ref("")
    const menu_show = ref(false);
    const status = ref(false);
    const QuantidadeBlips = ref(0);
    const Checkpoint = ref(0);
    const Exp = ref(0);
    const ExpPorLevel = ref(1);
    const Level = ref(0);
    const DinheiroGanho = ref(0);
    const Money = ref(0);
    const EmpregoTitulo = ref("LIXEIRO");
    const VeiculoUsado = ref("BRIOSO");
    const RotasConcluidas = ref(0);
    const Imagem = ref("");

    const barWitch = computed(() => (Exp.value * 100) / ExpPorLevel.value);
    const dinheiroGanho = computed(() => formatCurrency(DinheiroGanho.value));
    const moneyFormatted = computed(() => formatCurrency(Money.value));

    const iniciarClick = () => {
      fetch(`https://${GetParentResourceName()}/iniciartrampo`, {
        method: "POST",
        body: JSON.stringify({emprego_id: EmpregoId.value}),
      }).then((resp) =>
        resp.json().then((data) => {
          const { exp, level, rc, retorno } = data;
          if (retorno == "iniciou") {
            menu_show.value = false;
            status.value = true;
            Level.value = level;
            Exp.value = exp;
            RotasConcluidas.value = rc;
          }
        })
      );
    };

    const onMessage = ({ data }) => {
      const {
        action,
        rc,
        level,
        exp,
        money,
        exp_por_level,
        quantidade_de_blips,
        emprego_nome,
        veiculo,
        imagem,
        dinheiro_ganho,
        checkpoint,
        emprego_id
      } = data;

      if (action == "showMenu") {
        EmpregoId.value = emprego_id,
        Level.value = level;
        RotasConcluidas.value = rc;
        Exp.value = exp;
        Money.value = money;
        ExpPorLevel.value = exp_por_level;
        QuantidadeBlips.value = quantidade_de_blips;
        EmpregoTitulo.value = emprego_nome;
        VeiculoUsado.value = veiculo;
        menu_show.value = true;
        Imagem.value = imagem;
      } else if (action == "hideMenu") {
        menu_show.value = false;
        status.value = false;
        EmpregoId.value = ""
      } else if (action == "atualizar") {
        console.log("DATA", data)
        Level.value = level;
        DinheiroGanho.value = dinheiro_ganho;
        Checkpoint.value = checkpoint;
        QuantidadeBlips.value = quantidade_de_blips;
        Exp.value = exp;
        ExpPorLevel.value = exp_por_level;
      }
    };

    const onKeyDown = async ({ key }) => {
      if (key == "Escape") {
        await fetch(`https://${GetParentResourceName()}/Close`, {
          method: "POST",
          body: JSON.stringify({}),
        });
      }
    };

    onMounted(() => {
      window.addEventListener("message", onMessage);
      window.addEventListener("keydown", onKeyDown);
    });

    onUnmounted(() => {
      window.removeEventListener("message", onMessage);
      window.removeEventListener("keydown", onKeyDown);
    });

    return {
      status,
      QuantidadeBlips,
      Checkpoint,
      Exp,
      ExpPorLevel,
      Level,
      DinheiroGanho,
      Money,
      barWitch,
      dinheiroGanho,
      EmpregoTitulo,
      VeiculoUsado,
      RotasConcluidas,
      moneyFormatted,
      menu_show,
      Imagem,
      iniciarClick,
    };
  },
}).mount("#app");
