function milhar(n) {
  var n = "" + n,
    t = n.length - 1,
    novo = "";

  for (var i = t, a = 1; i >= 0; i--, a++) {
    var ponto = a % 3 == 0 && i > 0 ? "." : "";
    novo = ponto + n.charAt(i) + novo;
  }
  return novo;
}

function formatMoney(money) {
  return new Intl.NumberFormat("pt-BR", {
    style: "currency",
    currency: "BRL",
  }).format(money);
}

let data = {
  labels: [],
  datasets: [
    {
      label: "Saldo",
      data: [],
      borderColor: "#F02E2E",
      tension: 0.1,
      fill: { above: "rgba(240, 46, 46, 0.347)", target: { value: 0 } },
      lineTension: 0.5,
    },
  ],
};

let config = {
  type: "line",
  data: data,
  options: {
    plugins: {
      legend: {
        display: false,
      },
    },
    tooltips: {
      callbacks: {
        label: (tooltipItem) => `${tooltipItem.yLabel}: ${tooltipItem.xLabel}`,
        title: () => null,
      },
    },

    scales: {
      x: {
        grid: {
          color: "rgba(240, 46, 46, 0.0)",
        },
        ticks: {
          display: false,
        },
      },
      y: {
        grid: {
          color: "rgba(255, 255, 255, 0.05)",
        },
        ticks: {
          color: "rgba(255, 255, 255, 0.1)",
          font: {
            fontWeight: 400,
            family: "Poppins",
            size: 14,
          },
        },
      },
    },
  },
};

// document.querySelector(".chart-container").innerHTML =
//   '<canvas id="myChart" width="100%" height="60%"></canvas>';
// const ctx = document.getElementById("myChart");
// const chart = new Chart(ctx, config);

$(() => {
  window.addEventListener("message", ({ data }) => {
    if (data.action == "setInformation") {
      const {
        name,
        bank_money,
        wallet_money,
        multa,
        nome_banco,
        image_banco,
        transacoes,
        pix,
      } = data;

      $(".table-container").html("");
      $(".info > .saldo").html(formatMoney(bank_money));
      $(".info > .wallet").html(formatMoney(wallet_money));
      $(".ticket-container > .multas").html(formatMoney(multa));
      $(".name-player").html(`${name}<span>!</span>`);
      $(".player-name").html(`${name}`);
      $(".keys-container").html("");

      console.log(transacoes)


      let chartDate = [];
      let chartList = [];
      transacoes.map((item, index) => {
        const date = new Date(item.data);
        const formated_date = `${date.getDate()}/${
          date.getMonth() + 1
        }/${date.getFullYear()}`;
        chartDate.push(formated_date);
        chartList.push(item.valor);
        const items = `
            <div class="data-container">
            <p style="color: var(--main-color); font-weight: 900;">${index}</p>
            <p>${formated_date}</p>
            <p>${name}</p>
            <p>-</p>
            <p>${item.tipo}</p>
                <p>R$${item.valor}</p>
            </div>
            `;
        $(".table-container").append(items);
      });
      let y = 0;
      pix.map((item) => {
        const items = `
        <div class="key-filled"><i onclick="deletePix('${item.pix}')" class="fa-solid fa-trash delete"></i>
            <p>${item.pix}</p>
        </div>
        `;
        $(".keys-container").append(items);
      });

      for (let x = 4; x > y; x--) {
        const items = `
                        <div class="key-empty">
                        <p>ESPAÇO LIVRE</p>
                    </div>
                    `;
        $(".keys-container").append(items);
      }
    } else if (data.action == "setVisable") {
      if (data.show) {
        $(".login-container").fadeIn(500);
        $("body").css("display", "flex");
        $(".bank-container").css("display", "none");
        $(".login-container").css("display", "flex");
      } else {
        $("body").css("display", "none");
        $(".login-container").fadeOut(500);
        $(".login-container").css("display", "none");
      }
    }
  });

  $(".pagar-multas").on("click", () => {
    $.post(
      "https://nxgroup-bank/multas",
      JSON.stringify({
        amount: Number(data.data[12]),
      })
    );
    $.post("https://nxgroup-bank/updateValue");
  });

  $(".5k").on("click", () => {
    document.getElementById("valueDeposit").value = "5000";
  });

  $(".10k").on("click", () => {
    document.getElementById("valueDeposit").value = "10000";
  });

  $(".20k").on("click", () => {
    document.getElementById("valueDeposit").value = "20000";
  });

  $(".50k").on("click", () => {
    document.getElementById("valueDeposit").value = "50000";
  });

  $(".5k").on("click", () => {
    document.getElementById("valueWithDraw").value = "5000";
  });

  $(".10k").on("click", () => {
    document.getElementById("valueWithDraw").value = "10000";
  });

  $(".20k").on("click", () => {
    document.getElementById("valueWithDraw").value = "20000";
  });

  $(".50k").on("click", () => {
    document.getElementById("valueWithDraw").value = "50000";
  });

  $(".transfer-button").on("click", () => {
    $.post("https://nxgroup-bank/updateValue");
    $.post(
      "https://nxgroup-bank/transferir",
      JSON.stringify({
        transferTo: Number($(".idTransfer").val()),
        amount: Number($(".valueTransfer").val()),
      })
    );
  });
  $(".deposit-button").on("click", () => {
    $.post("https://nxgroup-bank/updateValue");
    $.post(
      "https://nxgroup-bank/depositar",
      JSON.stringify({
        amount: Number($("#valueDeposit").val()),
      })
    );
  });

  $(".withdraw-button").on("click", () => {
    $.post("https://nxgroup-bank/updateValue");
    $.post(
      "https://nxgroup-bank/sacar",
      JSON.stringify({
        amount: Number($("#valueWithDraw").val()),
      })
    );
  });

  $(".close-icon").on("click", () => {
    $.post("https://nxgroup-bank/closeNui");
  });

  $(".start-button").on("click", () => {
    $(".login-container").fadeOut(500);
    $(".bank-container").fadeIn(2000);
  });

  $(".home").on("click", () => {
    $(".home").addClass("active-menu");
    $(".transferir").removeClass("active-menu");
    $(".depositar").removeClass("active-menu");
    $(".extrato").removeClass("active-menu");
    $(".pix").removeClass("active-menu");
    $(".sacar").removeClass("active-menu");

    $(".home-container").css("display", "grid");
    $(".deposit-container").css("display", "none");
    $(".transfer-container").css("display", "none");
    $(".withdraw-container").css("display", "none");
    $(".extract-container").css("display", "none");
    $(".pix-container").css("display", "none");
  });

  $(".transferir").on("click", () => {
    $(".transferir").addClass("active-menu");
    $(".home").removeClass("active-menu");
    $(".depositar").removeClass("active-menu");
    $(".pix").removeClass("active-menu");
    $(".extrato").removeClass("active-menu");
    $(".sacar").removeClass("active-menu");

    $(".home-container").css("display", "none");
    $(".deposit-container").css("display", "none");
    $(".pix-container").css("display", "none");
    $(".extract-container").css("display", "none");
    $(".withdraw-container").css("display", "none");
    $(".transfer-container").css("display", "flex");
  });

  $(".depositar").on("click", () => {
    $(".transferir").removeClass("active-menu");
    $(".home").removeClass("active-menu");
    $(".pix").removeClass("active-menu");
    $(".depositar").addClass("active-menu");
    $(".extrato").removeClass("active-menu");
    $(".sacar").removeClass("active-menu");

    $(".home-container").css("display", "none");
    $(".transfer-container").css("display", "none");
    $(".pix-container").css("display", "none");
    $(".extract-container").css("display", "none");
    $(".withdraw-container").css("display", "none");
    $(".deposit-container").css("display", "flex");
  });

  $(".sacar").on("click", () => {
    $(".transferir").removeClass("active-menu");
    $(".home").removeClass("active-menu");
    $(".depositar").removeClass("active-menu");
    $(".pix").removeClass("active-menu");
    $(".extrato").removeClass("active-menu");
    $(".sacar").addClass("active-menu");

    $(".home-container").css("display", "none");
    $(".transfer-container").css("display", "none");
    $(".deposit-container").css("display", "none");
    $(".pix-container").css("display", "none");
    $(".extract-container").css("display", "none");
    $(".withdraw-container").css("display", "flex");
  });

  $(".pix").on("click", () => {
    $(".transferir").removeClass("active-menu");
    $(".home").removeClass("active-menu");
    $(".depositar").removeClass("active-menu");
    $(".sacar").removeClass("active-menu");
    $(".extrato").removeClass("active-menu");
    $(".pix").addClass("active-menu");

    $(".home-container").css("display", "none");
    $(".transfer-container").css("display", "none");
    $(".deposit-container").css("display", "none");
    $(".withdraw-container").css("display", "none");
    $(".extract-container").css("display", "none");
    $(".pix-container").css("display", "flex");
  });

  $(".extrato").on("click", () => {
    $(".transferir").removeClass("active-menu");
    $(".home").removeClass("active-menu");
    $(".depositar").removeClass("active-menu");
    $(".sacar").removeClass("active-menu");
    $(".pix").removeClass("active-menu");
    $(".extrato").addClass("active-menu");

    $(".home-container").css("display", "none");
    $(".transfer-container").css("display", "none");
    $(".deposit-container").css("display", "none");
    $(".withdraw-container").css("display", "none");
    $(".pix-container").css("display", "none");
    $(".extract-container").css("display", "block");
  });

  $(".confirm-pix").on("click", async () => {
    const res = await $.post(
      "https://nxgroup-bank/cadastrarPix",
      JSON.stringify({
        value: $(".input-pix").val(),
      })
    );
    if (res) {
      reloadPixList(res);
    }
  });
});

document.onkeyup = function (data) {
  if (data.which == 27) {
    $.post("https://nxgroup-bank/closeNui");
  }
};

function reloadPixList(list) {
  let y = 0;
  $(".keys-container").html("");
  list.map((item, index) => {
    y++;
    const items = `
                    <div class="key-filled"><i onclick="deletePix('${item.pix}')" class="fa-solid fa-trash delete"></i>
                        <p>${item.pix}</p>
                    </div>
                `;
    $(".keys-container").append(items);
  });
  for (let x = 4; x > y; x--) {
    const items = `
                <div class="key-empty">
                <p>ESPAÇO LIVRE</p>
            </div>
            `;
    $(".keys-container").append(items);
  }
}

async function deletePix(teste) {
  const res = await $.post(
    "https://nxgroup-bank/deletarPix",
    JSON.stringify({
      value: teste,
    })
  );
  if (res) {
    reloadPixList(res);
  }
}
