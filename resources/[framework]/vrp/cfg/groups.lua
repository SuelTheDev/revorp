local cfg = {}

local blipService = {
	policia = { name = "Policial", color = 47 },
	mecanico = { name = "Mecânico", color = 54 },
	hospital = { name = "Médico", color = 1 },
}

cfg.groups = {
	['dono'] = {
		_config = {
			off = "off-dono",
			gtype = "staff",
			onjoin = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você entrou em serviço de Staff como Dono.")
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço de Staff.")
			end
		},
		"staff-commando.permissao",
		"staff-commando2.permissao",
		"staff.permissao",
		"dono.permissao",
		"admin.permissao",
		"mod.permissao",
		"suporte.permissao",
		"wl.permissao",
		"instagram.verificado",
		"staff-anuncio.permissao",
		"roupas.permissao"
	},
	['admin'] = {
		_config = {
			off = "off-admin",
			gtype = "staff",
			salary = 5000,
			onjoin = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você entrou em serviço de Staff como Administrador.")
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço de Staff.")
			end
		},
		"staff-commando.permissao",
		"staff-commando2.permissao",
		"staff.permissao",
		"admin.permissao",
		"mod.permissao",
		"suporte.permissao",
		"wl.permissao",
		"staff-anuncio.permissao",
		"roupas.permissao"
	},
	['mod'] = {
		_config = {
			off = "off-mod",
			gtype = "staff",
			salary = 3000,
			onjoin = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você entrou em serviço de Staff como Moderador.")
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço de Staff.")
			end
		},
		"staff-commando2.permissao",
		"staff.permissao",
		"mod.permissao",
		"suporte.permissao",
		"wl.permissao",
	},
	['suporte'] = {
		_config = {
			gtype = "staff",
			salary = 2500
		},
		"staff.permissao",
		"suporte.permissao",
		"wl.permissao",
	},
	['juiz'] = {
		_config = {
			gtype = "job",
			title = "juiz(a)",
			salary = 5000,
			off = "off-juiz",
			onjoin = function(source)
				local ismale = GetEntityModel(GetPlayerPed(source)) == `mp_m_freemode_01`
				local cargo = ismale and "Juíz" or "Juíza"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"juiz.permissao",
		"judiciario.permissao"
	},
	['advogado'] = {
		_config = {
			gtype = "job",
			title = "Advogado (a)",
			salary = 3500,
			off = "off-advogado",
			onjoin = function(source)
				local ismale = GetEntityModel(GetPlayerPed(source)) == `mp_m_freemode_01`
				local cargo = ismale and "Advogado" or "Advogada"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"adovogado.permissao",
		"judiciario.permissao"
	},
	--polícia civil
	['investigador'] = {
		_config = {
			gtype = "job",
			title = "Investigador",
			salary = 3500,
			off = "off-investigador",
			onjoin = function(source)
				local ismale = GetEntityModel(GetPlayerPed(source)) == `mp_m_freemode_01`
				local cargo = ismale and "Investigador" or "Investigadora"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["policia"].name, src = source, color = blipService["policia"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"investigador.permissao",
		"policia.permissao",
		"policia-civil.permissao"
	},
	['escrivao'] = {
		_config = {
			gtype = "job",
			title = "Escrivão",
			salary = 5500,
			off = "off-escrivao",
			onjoin = function(source)
				local ismale = GetEntityModel(GetPlayerPed(source)) == `mp_m_freemode_01`
				local cargo = ismale and "Escrivão" or "Escrivã"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["policia"].name, src = source, color = blipService["policia"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"escrivao.permissao",
		"policia.permissao",
		"policia-civil.permissao"
	},
	['delegado'] = {
		_config = {
			gtype = "job",
			title = "Delegado",
			salary = 9000,
			off = "off-delegado",
			onjoin = function(source)
				local ismale = GetEntityModel(GetPlayerPed(source)) == `mp_m_freemode_01`
				local cargo = ismale and "Delegado" or "Delegada"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["policia"].name, src = source, color = blipService["policia"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"delegado.permissao",
		"policia.permissao",
		"policia-civil.permissao"
	},
	--polícia rota
	['rota-sargento'] = {
		_config = {
			gtype = "job",
			title = "Sargento",
			salary = 9500,
			off = "off-rota-sargento",
			onjoin = function(source)
				local cargo = "Sargento"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["policia"].name, src = source, color = blipService["policia"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"rota-sargento.permissao",
		"policia.permissao",
		"policia-rota.permissao"
	},
	['rota-tenente'] = {
		_config = {
			gtype = "job",
			title = "Tenente",
			salary = 11500,
			off = "off-rota-tenente",
			onjoin = function(source)
				local cargo = "Tenente"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["policia"].name, src = source, color = blipService["policia"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"rota-tenente.permissao",
		"policia.permissao",
		"policia-rota.permissao"
	},
	['rota-capitao'] = {
		_config = {
			gtype = "job",
			title = "Capitão",
			salary = 12500,
			off = "off-rota-capitao",
			onjoin = function(source)
				local cargo = "Capitão"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["policia"].name, src = source, color = blipService["policia"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"rota-capitao.permissao",
		"policia.permissao",
		"policia-rota.permissao"
	},
	['tenente-coronel'] = {
		_config = {
			gtype = "job",
			title = "Tenente Coronel",
			salary = 14500,
			off = "off-tenente-coronel",
			onjoin = function(source)
				local cargo = "Tenente Coronel"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["policia"].name, src = source, color = blipService["policia"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"tenente-coronel.permissao",
		"policia.permissao",
		"policia-rota.permissao"
	},
	['coronel'] = {
		_config = {
			gtype = "job",
			title = "Coronel",
			salary = 16500,
			off = "off-coronel",
			onjoin = function(source)
				local cargo = "Coronel"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["policia"].name, src = source, color = blipService["policia"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"coronel.permissao",
		"policia.permissao",
		"policia-rota.permissao"
	},
	--polícia militar
	['recruta'] = {
		_config = {
			gtype = "job",
			title = "Recruta",
			salary = 4500,
			off = "off-recruta",
			onjoin = function(source)
				local cargo = "Recruta"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["policia"].name, src = source, color = blipService["policia"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"recruta.permissao",
		"policia.permissao",
		"policia-militar.permissao"
	},
	['soldado'] = {
		_config = {
			gtype = "job",
			title = "Soldado",
			salary = 7500,
			off = "off-soldado",
			onjoin = function(source)
				local cargo = "Soldado"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["policia"].name, src = source, color = blipService["policia"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"soldado.permissao",
		"policia.permissao",
		"policia-militar.permissao"
	},
	['pm-sargento'] = {
		_config = {
			gtype = "job",
			title = "Sargento",
			salary = 9500,
			off = "off-pm-sargento",
			onjoin = function(source)
				local cargo = "Sargento"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["policia"].name, src = source, color = blipService["policia"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"pm-sargento.permissao",
		"policia.permissao",
		"policia-militar.permissao"
	},
	['pm-tenente'] = {
		_config = {
			gtype = "job",
			title = "Tenente",
			salary = 11500,
			off = "off-pm-tenente",
			onjoin = function(source)
				local cargo = "Tenente"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["policia"].name, src = source, color = blipService["policia"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"pm-tenente.permissao",
		"policia.permissao",
		"policia-militar.permissao"
	},
	['pm-capitao'] = {
		_config = {
			gtype = "job",
			title = "Capitão",
			salary = 12500,
			off = "off-pm-capitao",
			onjoin = function(source)
				local cargo = "Capitão"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["policia"].name, src = source, color = blipService["policia"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end

		},
		"pm-capitao.permissao",
		"policia.permissao",
		"policia-militar.permissao"
	},
	['major'] = {
		_config = {
			gtype = "job",
			title = "Major",
			salary = 14500,
			off = "off-major",
			onjoin = function(source)
				local cargo = "Major"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["policia"].name, src = source, color = blipService["policia"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"major.permissao",
		"policia.permissao",
		"policia-militar.permissao"
	},
	['pm-tenente-coronel'] = {
		_config = {
			gtype = "job",
			title = "Tenente",
			salary = 16500,
			off = "off-pm-tenente-coronel",
			onjoin = function(source)
				local cargo = "Tenente"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["policia"].name, src = source, color = blipService["policia"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"pm-tenente.permissao",
		"policia.permissao",
		"policia-militar.permissao"
	},
	['comandante-geral'] = {
		_config = {
			gtype = "job",
			title = "Comandante Geral",
			salary = 19000,
			off = "off-comandante-geral",
			onjoin = function(source)
				local cargo = "Comandante Geral"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["policia"].name, src = source, color = blipService["policia"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"comandante-geral.permissao",
		"policia.permissao",
		"policia-militar.permissao"
	},
	-- HOSPITAL
	['enfermeiro'] = {
		_config = {
			gtype = "job",
			title = "Enfermeiro",
			salary = 4500,
			off = "off-enfermeiro",
			onjoin = function(source)
				local ismale = GetEntityModel(GetPlayerPed(source)) == `mp_m_freemode_01`
				local cargo = ismale and "Enfermeiro" or "Enfermeira"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["hospital"].name, src = source, color = blipService["hospital"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"enfermeiro.permissao",
		"ems.permissao",
		"tratamento.permissao"
	},
	['medico'] = {
		_config = {
			gtype = "job",
			title = "Médico (a)",
			salary = 8500,
			off = "off-medico",
			onjoin = function(source)
				local ismale = GetEntityModel(GetPlayerPed(source)) == `mp_m_freemode_01`
				local cargo = ismale and "Médico" or "Médica"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["hospital"].name, src = source, color = blipService["hospital"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"medico.permissao",
		"ems.permissao",
		"tratamento.permissao"
	},
	['socorrista'] = {
		_config = {
			gtype = "job",
			title = "Socorrista",
			salary = 6500,
			off = "off-socorrista",
			onjoin = function(source)
				local cargo = Socorrista
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["hospital"].name, src = source, color = blipService["hospital"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"socorrista.permissao",
		"ems.permissao",
		"tratamento.permissao"
	},
	['vice-diretor'] = {
		_config = {
			gtype = "job",
			title = "Vice-Diretor (a) do HP",
			salary = 9500,
			off = "off-vice-diretor",
			onjoin = function(source)
				local ismale = GetEntityModel(GetPlayerPed(source)) == `mp_m_freemode_01`
				local cargo = ismale and "Vice Diretor" or "Vice Diretora"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["hospital"].name, src = source, color = blipService["hospital"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"vice-diretor.permissao",
		"ems.permissao",
		"tratamento.permissao"
	},
	['diretor'] = {
		_config = {
			gtype = "job",
			title = "Diretor (a) do HP",
			salary = 11500,
			off = "off-diretor",
			onjoin = function(source)
				local ismale = GetEntityModel(GetPlayerPed(source)) == `mp_m_freemode_01`
				local cargo = ismale and "Diretor" or "Vice Diretora"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["hospital"].name, src = source, color = blipService["hospital"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"diretor.permissao",
		"ems.permissao",
		"tratamento.permissao"
	},
	--mecânica LS
	['ls-lider'] = {
		_config = {
			gtype = "job",
			title = "CEO da LS",
			salary = 8000,
			off = "off-ls-lider",
			onjoin = function(source)
				local cargo = "CEO da LS"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["mecanico"].name, src = source, color = blipService["mecanico"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"ls-lider.permissao",
		"ls.permissao",
		"tunagem.permissao",
		"mecanico.permissao"
	},
	['ls-vice-lider'] = {
		_config = {
			gtype = "job",
			title = "Diretor da LS",
			salary = 7000,
			off = "off-ls-vice-lider",
			onjoin = function(source)
				local cargo = "Diretor da LS"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["mecanico"].name, src = source, color = blipService["mecanico"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"ls-vice-lider.permissao",
		"ls.permissao",
		"tunagem.permissao",
		"mecanico.permissao"
	},
	['ls-tunador'] = {
		_config = {
			gtype = "job",
			title = "Mecânico Sênio",
			salary = 5500,
			off = "off-ls-tunador",
			onjoin = function(source)
				local cargo = "Mecânico Sênio"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["mecanico"].name, src = source, color = blipService["mecanico"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"ls-tunador.permissao",
		"ls.permissao",
		"tunagem.permissao",
		"mecanico.permissao"
	},
	['ls-mecanico'] = {
		_config = {
			gtype = "job",
			title = "Mecânico Aprendiz",
			salary = 2500,
			off = "off-ls-mecanico",
			onjoin = function(source)
				local cargo = "Mecânico Aprendiz"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["mecanico"].name, src = source, color = blipService["mecanico"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"ls-mecanico.permissao",
		"ls.permissao",
		"mecanico.permissao"
	},
	-- Bennys
	['bennys-lider'] = {
		_config = {
			gtype = "job",
			title = "CEO da Bennys",
			salary = 8000,
			off = "off-bennys-lider",
			onjoin = function(source)
				local cargo = "CEO da Bennys"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["mecanico"].name, src = source, color = blipService["mecanico"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"bennys-lider.permissao",
		"bennys.permissao",
		"tunagem.permissao",
		"mecanico.permissao"
	},
	['bennys-vice-lider'] = {
		_config = {
			gtype = "job",
			title = "Diretor da Bennys",
			salary = 7000,
			off = "off-bennys-vice-lider",
			onjoin = function(source)
				local cargo = "Diretor da Bennys"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["mecanico"].name, src = source, color = blipService["mecanico"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")

				TriggerEvent('eblips:remove', source)
			end
		},
		"bennys-vice-lider.permissao",
		"bennys.permissao",
		"tunagem.permissao",
		"mecanico.permissao"
	},
	['bennys-tunador'] = {
		_config = {
			gtype = "job",
			title = "Mecânico Sênio",
			salary = 5500,
			off = "off-bennys-tunador",
			onjoin = function(source)
				local cargo = "Mecânico Sênio"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["mecanico"].name, src = source, color = blipService["mecanico"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"bennys-tunador.permissao",
		"bennys.permissao",
		"tunagem.permissao",
		"mecanico.permissao"
	},
	['bennys-mecanico'] = {
		_config = {
			gtype = "job",
			title = "Mecânico Aprendiz",
			salary = 2500,
			off = "off-bennys-mecanico",
			onjoin = function(source)
				local cargo = "Mecânico Aprendiz"
				TriggerClientEvent("Notify", source, "aviso",
					"Você entrou em serviço de Staff como <b>" .. cargo .. ".</b>")
				TriggerEvent('eblips:add',
					{ name = blipService["mecanico"].name, src = source, color = blipService["mecanico"].color })
			end,
			onleave = function(source)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço.")
				TriggerEvent('eblips:remove', source)
			end
		},
		"bennys-mecanico.permissao",
		"bennys.permissao",
		"mecanico.permissao"
	},
	--facções líder
	['lider-bloods'] = {
		_config = {
			gtype = "gang",
			title = "Bloods"
		},
		"lider-bloods.permissao",
		"bloods.permissao",
		"ilegal.permissao",
		"drogas.permissao",
		"maconha.permissao"
	},
	['lider-ballas'] = {
		_config = {
			gtype = "gang",
			title = "Ballas"
		},
		"lider-ballas.permissao",
		"ballas.permissao",
		"ilegal.permissao",
		"drogas.permissao",
		"cocaina.permissao"
	},
	['lider-families'] = {
		_config = {
			gtype = "gang",
			title = "Families"
		},
		"lider-families.permissao",
		"families.permissao",
		"ilegal.permissao",
		"drogas.permissao",
		"lsd.permissao"
	},
	['lider-yakuza'] = {
		_config = {
			gtype = "gang",
			title = "Yakuza"
		},
		"lider-yakuza.permissao",
		"yakuza.permissao",
		"ilegal.permissao",
		"drogas.permissao",
		"metanfetamina.permissao"
	},
	['lider-driftking'] = {
		_config = {
			gtype = "gang",
			title = "Driftking"
		},
		"lider-driftking.permissao",
		"driftking.permissao",
		"ilegal.permissao",
		"desmanche.permissao"

	},
	['lider-motoclub'] = {
		_config = {
			gtype = "gang",
			title = "MOtoclub"
		},
		"lider-motoclub.permissao",
		"motoclub.permissao",
		"ilegal.permissao",
		"desmanche.permissao"
	},
	['lider-bratva'] = {
		_config = {
			gtype = "gang",
			title = "Bratva"
		},
		"lider-bratva.permissao",
		"bratva.permissao",
		"ilegal.permissao",
		"armas.permissao"
	},
	['lider-cartel'] = {
		_config = {
			gtype = "gang",
			title = "Cartel"
		},
		"lider-cartel.permissao",
		"cartel.permissao",
		"ilegal.permissao",
		"armas.permissao"
	},
	['lider-mafia'] = {
		_config = {
			gtype = "gang",
			title = "Máfia"
		},
		"lider-mafia.permissao",
		"mafia.permissao",
		"ilegal.permissao",
		"municao.permissao"
	},
	['lider-vagos'] = {
		_config = {
			gtype = "gang",
			title = "Vagos"
		},
		"lider-vagos.permissao",
		"vagos.permissao",
		"ilegal.permissao",
		"municao.permissao"
	},
	['lider-triads'] = {
		_config = {
			gtype = "gang",
			title = "Triads"
		},
		"lider-triads.permissao",
		"triads.permissao",
		"ilegal.permissao",
		"lavagem.permissao"
	},
	['lider-vanilla'] = {
		_config = {
			gtype = "gang",
			title = "Vanilla"
		},
		"lider-vanilla.permissao",
		"vanilla.permissao",
		"ilegal.permissao",
		"lavagem.permissao"
	},
	['lider-bahamas'] = {
		_config = {
			gtype = "gang",
			title = "Líder Bahamas"
		},
		"lider-bahamas.permissao",
		"bahamas.permissao",
		"ilegal.permissao",
		"lavagem.permissao"
	},
	-- facções membros
	['bloods'] = {
		_config = {
			gtype = "gang",
			title = "Bloods"
		},
		"bloods.permissao",
		"ilegal.permissao",
		"drogas.permissao",
		"maconha.permissao"
	},
	['ballas'] = {
		_config = {
			gtype = "gang",
			title = "Ballas"
		},

		"ballas.permissao",
		"ilegal.permissao",
		"drogas.permissao",
		"cocaina.permissao"
	},
	['families'] = {
		_config = {
			gtype = "gang",
			title = "Families"
		},

		"families.permissao",
		"ilegal.permissao",
		"drogas.permissao",
		"lsd.permissao"
	},
	['yakuza'] = {
		_config = {
			gtype = "gang",
			title = "Yakuza"
		},

		"yakuza.permissao",
		"ilegal.permissao",
		"drogas.permissao",
		"metanfetamina.permissao"
	},
	['driftking'] = {
		_config = {
			gtype = "gang",
			title = "Driftking"
		},

		"driftking.permissao",
		"ilegal.permissao",
		"desmanche.permissao"

	},
	['motoclub'] = {
		_config = {
			gtype = "gang",
			title = "MOtoclub"
		},

		"motoclub.permissao",
		"ilegal.permissao",
		"desmanche.permissao"
	},
	['bratva'] = {
		_config = {
			gtype = "gang",
			title = "Bratva"
		},

		"bratva.permissao",
		"ilegal.permissao",
		"armas.permissao"
	},
	['cartel'] = {
		_config = {
			gtype = "gang",
			title = "Cartel"
		},

		"cartel.permissao",
		"ilegal.permissao",
		"armas.permissao"
	},
	['mafia'] = {
		_config = {
			gtype = "gang",
			title = "Máfia"
		},

		"mafia.permissao",
		"ilegal.permissao",
		"municao.permissao"
	},
	['vagos'] = {
		_config = {
			gtype = "gang",
			title = "Vagos"
		},

		"vagos.permissao",
		"ilegal.permissao",
		"municao.permissao"
	},
	['triads'] = {
		_config = {
			gtype = "gang",
			title = "Triads"
		},

		"triads.permissao",
		"ilegal.permissao",
		"lavagem.permissao"
	},
	['vanilla'] = {
		_config = {
			gtype = "gang",
			title = "Vanilla"
		},

		"vanilla.permissao",
		"ilegal.permissao",
		"lavagem.permissao"
	},
	['bahamas'] = {
		_config = {
			gtype = "gang",
			title = "Bahamas"
		},
		"bahamas.permissao",
		"ilegal.permissao",
		"lavagem.permissao"
	},
	--vips
	['vip-iniciante'] = {
		_config = {
			gtype = "vip",
			salary = 3000
		},
		"vip-iniciante.permissao",
		"vip.permissao"
	},
	['vip-bronze'] = {
		_config = {
			gtype = "vip",
			salary = 5000
		},
		"vip-bronze.permissao",
		"vip.permissao"
	},
	['vip-prata'] = {
		_config = {
			gtype = "vip",
			salary = 8000
		},
		"vip-prata.permissao",
		"vip.permissao"
	},
	['vip-ouro'] = {
		_config = {
			gtype = "vip",
			salary = 9000
		},
		"vip-ouro.permissao",
		"vip.permissao",
		"roupas.permissao"
	},
	['vip-platinum'] = {
		_config = {
			gtype = "vip",
			salary = 15000
		},
		"vip-platinum.permissao",
		"vip.permissao",
		"roupas.permissao"
	},
	['off-dono'] = {
		_config = {
			gtype = "staff",
			on = 'dono',
		},
		"off-dono.permissao"
	},
	['off-admin'] = {
		_config = {
			gtype = "staff",
			on = 'admin',
		},
		"off-mod.permissao"
	},
	['off-mod'] = {
		_config = {
			gtype = "staff",
			on = 'mod',
		},
		"off-mod.permissao"
	},
	['off-juiz'] = {
		_config = {
			title = "Juiz (a) de Folga",
			gtype = "job",
			on = "juiz"
		},
		"off-juiz.permissao",
	},
	['off-advogado'] = {
		_config = {
			title = "Advogado (a) de Folga",
			gtype = "job",
			on = "advogado"
		},
		"off-advogado.permissao",
	},
	--polícia civil
	['off-investigador'] = {
		_config = {
			title = "Investigador (a) de Folga",
			gtype = "job",
			on = "investigador"
		},
		"off-investigador.permissao",
	},
	['off-escrivao'] = {
		_config = {
			title = "Escrião (ã) de Folga",
			gtype = "job",
			on = "escrivao"
		},
		"off-escrivao.permissao",
	},
	['off-delegado'] = {
		_config = {
			title = "Delegado (a) de Folga",
			gtype = "job",
			on = "delegado"
		},
		"off-delegado.permissao",
	},
	--polícia rota
	['off-rota-sargento'] = {
		_config = {
			title = "Sargento de Folga",
			gtype = "job",
			on = "rota-sargento"
		},
		"off-rota-sargento.permissao",
	},
	['off-rota-tenente'] = {
		_config = {
			title = "Tenente de Folga",
			gtype = "job",
			on = "rota-tenente"
		},
		"off-rota-tenente.permissao",
	},
	['off-rota-capitao'] = {
		_config = {
			title = "Capitão de Folga",
			gtype = "job",
			on = "rota-capitao"
		},
		"off-rota-capitao.permissao",
	},
	['off-tenente-coronel'] = {
		_config = {
			title = "Tenente Coronel de Folga",
			gtype = "job",
			on = "tenente-coronel"
		},
		"off-tenente-coronel.permissao",
	},
	['off-coronel'] = {
		_config = {
			title = "Coronel de Folga",
			gtype = "job",
			on = "coronel"
		},
		"off-coronel.permissao",
	},
	--polícia militar
	['off-recruta'] = {
		_config = {
			title = "Recruta de Folga",
			gtype = "job",
			on = "recruta"
		},
		"off-recruta.permissao",
	},
	['off-soldado'] = {
		_config = {
			title = "Soldado de Folga",
			gtype = "job",
			on = "soldado"
		},
		"off-soldado.permissao",
	},
	['off-pm-sargento'] = {
		_config = {
			title = "Sargento de Folga",
			gtype = "job",
			on = "off-pm-sargento"
		},
		"off-off-pm-sargento.permissao",
	},
	['off-pm-tenente'] = {
		_config = {
			title = "Tenente de Folga",
			gtype = "job",
			on = "pm-tenente"
		},
		"off-pm-tenente.permissao",
	},
	['off-pm-capitao'] = {
		_config = {
			title = "Capitão de Folga",
			gtype = "job",
			on = "pm-capitao"
		},
		"off-pm-capitao.permissao",
	},
	['off-major'] = {
		_config = {
			title = "Major de Folga",
			gtype = "job",
			on = "major"
		},
		"off-major.permissao",
	},
	['off-pm-tenente-coronel'] = {
		_config = {
			title = "Tenente Coronel de Folga",
			gtype = "job",
			on = "pm-tenente-coronel"
		},
		"off-pm-tenente-coronel.permissao",
	},
	['off-comandante-geral'] = {
		_config = {
			title = "Comandante de Folga",
			gtype = "job",
			on = "comandante-geral"
		},
		"off-comandante-geral.permissao",
	},
	-- HOSPITAL
	['off-enfermeiro'] = {
		_config = {
			title = "Enfermeiro (a) de Folga",
			gtype = "job",
			on = "enfermeiro"
		},
		"off-enfermeiro.permissao",
	},
	['off-medico'] = {
		_config = {
			title = "Médico (a) de Folga",
			gtype = "job",
			on = "medico"
		},
		"off-medico.permissao",
	},
	['off-socorrista'] = {
		_config = {
			title = "Socorrista de Folga",
			gtype = "job",
			on = "socorrista"
		},
		"off-socorrista.permissao",
	},
	['off-vice-diretor'] = {
		_config = {
			title = "Vice Diretor (a) de Folga",
			gtype = "job",
			on = "vice-diretor"
		},
		"off-vice-diretor.permissao",
	},
	['off-diretor'] = {
		_config = {
			title = "Diretor (a) de Folga",
			gtype = "job",
			on = "diretor"
		},
		"off-diretor.permissao",
	},
	--mecânica LS
	['off-ls-lider'] = {
		_config = {
			title = "CEO Bennys de Folga",
			gtype = "job",
			on = "ls-lider"
		},
		"off-ls-lider.permissao",
	},
	['off-ls-vice-lider'] = {
		_config = {
			title = "Diretor (a) Bennys de Folga",
			gtype = "job",
			on = "ls-vice-lider"
		},
		"off-ls-vice-lider.permissao",
	},
	['off-ls-tunador'] = {
		_config = {
			title = "Mecânico de Folga",
			gtype = "job",
			on = "ls-tunador"
		},
		"off-ls-tunador.permissao",
	},
	['off-ls-mecanico'] = {
		_config = {
			title = "Mecânico de Folga",
			gtype = "job",
			on = "ls-mecanico"
		},
		"off-ls-mecanico.permissao",
	},
	-- Bennys
	['off-bennys-lider'] = {
		_config = {
			title = "CEO Bennys de Folga",
			gtype = "job",
			on = "bennys-lider"
		},
		"off-bennys-lider.permissao",
	},
	['off-bennys-vice-lider'] = {
		_config = {
			title = "Diretor (a) Bennys de Folga",
			gtype = "job",
			on = "bennys-vice-lider"
		},
		"off-bennys-vice.permissao",
	},
	['off-bennys-tunador'] = {
		_config = {
			title = "Mecânico de Folga",
			gtype = "job",
			on = "bennys-tunador"
		},
		"off-bennys.permissao",
	},
	['off-bennys-mecanico'] = {
		_config = {
			title = "Mecânico de Folga",
			gtype = "job",
			on = "bennys-mecanico"
		},
		"off-bennys-mecanico.permissao",
	},
}

cfg.users = {
	[1] = { "dono" },

}

return cfg
