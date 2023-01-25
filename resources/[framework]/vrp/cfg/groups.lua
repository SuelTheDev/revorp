local cfg = {}

cfg.groups = {
	["Dono"] = {
		"dono.permissao",
		"admin.permissao",
		"mod.permissao",
		"suporte.permissao",
		"wl.permissao",
		"polpar.permissao",
		"ticket.permissao",
		"wall.permissao",
		"instagram.verificado",
		"prop.permissao",
		"imune.permissao",
		"player.noclip"
			
    },
	    ["OffDono"] = {
    	"offdono.permissao",
    	"sem.permissao"


    },
	["Admin"] = {
		"admin.permissao",
		"mod.permissao",
		"suporte.permissao",
		"instagram.verificado",
		"wl.permissao",
		"polpar.permissao",
		"wall.permissao",
		"prop.permissao",
		"imune.permissao",
		"ticket.permissao",
		"player.noclip"
		
	},
		["OffAdmin"] = {
		"offadmin.permissao",
		"sem.permissao"

		
	},
	["Mod"] = {
		"mod.permissao",
		"suporte.permissao",
		"wl.permissao",
		"instagram.verificado",
		"polpar.permissao",
		"wall.permissao",
		"ticket.permissao",
		"imune.permissao",
		"player.noclip"
		
	},
		["OffMod"] = {
		"offmod.permissao",
		"sem.permissao"
	},
	["Suporte"] = {
		"suporte.permissao",
		"wl.permissao",
		"instagram.verificado",
		"ticket.permissao",
		"imune.permissao",
		"player.noclip"
		
	},
		["OffSuporte"] = {
		"offsuporte.permissao",
		"sem.permissao"
	},
	["Whitelist"] = {
		"wl.permissao"
	},
	-----------------------------------------------------
	["Juiza"] = {
		_config = {
			title = "Juiza",
			gtype = "alt"
		},
		"juiza.permissao",
		"portadp.permissao",
		"sem.permissao"
	},
	["News"] = {
		_config = {
			title = "News",
			gtype = "job"
		},
		"news.permissao",
		"sem.permissao"	
	},
	["paintball"] = {
		_config = {
			title = "paintball",
			gtype = "paintball"
		},
		"paintball.permissao",
		"policia.permissao",
		"garmas.permissao",
		"sem.permissao"	
	},
	["Vendedor"] = {
		_config = {
			title = "Vendedor",
			gtype = "altl"
		},
		"vendedor.permissao",
		"sem.permissao"	
	},
	["Advogado"] = {
		_config = {
			title = "Advogado",
			gtype = "alt"
		},
		"advogado.permissao",
		"sem.permissao"
	},
	----------- Departamentod e Policia -----------------
	-----------------------------------------------------
	
	-- Recruta
	["Recruta"] = {
		_config = {
			title = "Recruta",
			gtype = "job"
		},
		"policia.permissao",
		"pmerj.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"garmas.permissao",
		"recruta.servico",
		"recruta.arsenal",
		"player.noclip",
		"sem.permissao"
	},
	["PaisanaRecruta"] = {
		_config = {
			title = "Recruta Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"recruta.folga",
		"sem.permissao"
	},
		["Soldado"] = {
		_config = {
			title = "Soldado",
			gtype = "job"
		},
		"policia.permissao",
		"pmerj.permissao",
		"garmas.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"cabo.permissao",
		"recruta.arsenal",
		"player.noclip",
		"sem.permissao"
	},
	["PaisanaSoldado"] = {
		_config = {
			title = "Soldado Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"paisanacabo.permissao",
		"sem.permissao"
	},
	["3Sargento"] = {
		_config = {
			title = "3º Sargento",
			gtype = "job"
		},
		"policia.permissao",
		"pmerj.permissao",
		"garmas.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"major.permissao",
		"recruta.arsenal",
		"player.noclip",
		"sem.permissao"
	},
	["Paisana3Sargento"] = {
		_config = {
			title = "3º Sargento Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"paisanamajor.permissao",
		"sem.permissao"
	},
	["2Sargento"] = {
		_config = {
			title = "2º Sargento",
			gtype = "job"
		},
		"policia.permissao",
		"pmerj.permissao",
		"garmas.permissao",
		"polpar.permissao",
		"soldesarg.arsenal",
		"portadp.permissao",
		"soldado.servico",
		"player.noclip",
		"sem.permissao"
	},
	["Paisana2Sargento"] = {
		_config = {
			title = "2º Sargento Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"soldado.folga",
		"sem.permissao"
	},
	-- Sargento
	["Sargento"] = {
		_config = {
			title = "1º Sargento",
			gtype = "job"
		},
		"policia.permissao",
		"pmerj.permissao",
		"garmas.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"soldesarg.arsenal",
		"sargento.servico",
		"player.noclip",
		"sem.permissao"
	},
	["PaisanaSargento"] = {
		_config = {
			title = "1º Sargento Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"sargento.folga",
		"sem.permissao"
	},
	-- Tenete
	["2Tenente"] = {
		_config = {
			title = "2º Tenente",
			gtype = "job"
		},
		"policia.permissao",
		"pmerj.permissao",
		"polpar.permissao",
		"garmas.permissao",
		"portadp.permissao",
		"tenenteecoronel.arsenal",
		"tenente.servico",
		"player.noclip",
		"sem.permissao"
	},
	["Paisana2Tenente"] = {
		_config = {
			title = "2º Tenente Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"tenente.folga",
		"sem.permissao"
	},
	-- Capitão
	["1Tenente"] = {
		_config = {
			title = "1º Tenente",
			gtype = "job"
		},
		"policia.permissao",
		"pmerj.permissao",
		"garmas.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"capitaoecoronel.arsenal",
		"capitao.servico",
		"sniper.permissao",
		"player.noclip",
		"sem.permissao"
	},
	["Paisana1Tenente"] = {
		_config = {
			title = "1º Tenente Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"capitao.folga",
		"sem.permissao"
	},
	["Capitao"] = {
		_config = {
			title = "Capitão",
			gtype = "job"
		},
		"policia.permissao",
		"polpar.permissao",
		"pmerj.permissao",
		"garmas.permissao",
		"portadp.permissao",
		"tenenteecoronel.arsenal",
		"coronel.servico",
		"player.noclip",
		"sniper.permissao",
		"sem.permissao"
	},
	["PaisanaCapitao"] = {
		_config = {
			title = "Capitao Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"coronel.folga",
		"sem.permissao"
	},
	["Major"] = {
		_config = {
			title = "Major",
			gtype = "job"
		},
		"policia.permissao",
		"polpar.permissao",
		"pmerj.permissao",
		"garmas.permissao",
		"portadp.permissao",
		"aspirante.permissao",
		"player.noclip",
		"sniper.permissao",
		"sem.permissao"
	},
	["PaisanaMajor"] = {
		_config = {
			title = "Major Folga",
			gtype = "job"
		},
		"paisanaaspirante.permissao",
		"sem.permissao"
	},
	["TenenteCoronel"] = {
		_config = {
			title = "Tenente Coronel",
			gtype = "job"
		},
		"policia.permissao",
		"comandantegeral.permissao",
		"garmas.permissao",
		"player.noclip",
		"sniper.permissao"
	},
	["PaisanaTenenteCoronel"] = {
		_config = {
			title = "Tenente Coronel Folga",
			gtype = "job"
		},
		"paisanacomandantegeral.permissao",
		"sem.permissao"
	},

	["ComandanteGeral"] = {
		_config = {
			title = "Coronel Comand. Geral",
			gtype = "job"
		},
		"policia.permissao",
		"comandantegeral.permissao",
		"garmas.permissao",
		"player.noclip",
		"sniper.permissao"
	},
	["PaisanaComandanteGeral"] = {
		_config = {
			title = "Coronel Comand. Geral Folga",
			gtype = "job"
		},
		"paisanacomandantegeral.permissao",
		"sem.permissao"
	},

	-----------------------------------------------------------------
	------------------- Policia civil
	-----------------------------------------------------------------
	["Investigador"] = {
		_config = {
			title = "Investigador",
			gtype = "job"
		},
		"policia.permissao",
		"investigador.permissao",
 	    "player.noclip",
		"garmas.permissao",
		"polpar.permissao",
		"sem.permissao"
	},
	["PaisanaInvestigador"] = {
		_config = {
			title = "Investigador Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"paisanainvestigador.permissao",
		"sem.permissao"
	},
	["Escrivao"] = {
		_config = {
			title = "Escrivão",
			gtype = "job"
		},
		"policia.permissao",
		"garmas.permissao",
		"escrivao.permissao",
		"polpar.permissao",
 	    "player.noclip",
		"sem.permissao"
	},
	["PaisanaEscrivao"] = {
		_config = {
			title = "Escrivão Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"paisanaescrivao.permissao",
		"sem.permissao"
	},
	["DelegadoPC"] = {
		_config = {
			title = "Delegado Policia Civil",
			gtype = "job"
		},
		"policia.permissao",
		"garmas.permissao",
		"delegadopc.permissao",
		"polpar.permissao",
 	    "player.noclip",
		"sem.permissao"
	},
	["PaisanaDelegadoPC"] = {
		_config = {
			title = "Delegado PC Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"paisanadelegadopc.permissao",
		"sem.permissao"
	},
	-----------------------------------------------------
	---------------- BAEP -------------------------------
	-----------------------------------------------------
		
	["SargentoBAEP"] = {
		_config = {
			title = "Sargento BAEP",
			gtype = "job"
		},
		"policia.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"beap.permissao",
		"sem.permissao"
	},
	["PaisanaSargentoBAEP"] = {
		_config = {
			title = "Sargento Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"sargento.folga",
		"sem.permissao"
	},
	-- Tenete
	["TenenteBAEP"] = {
		_config = {
			title = "Tenente BAEP",
			gtype = "job"
		},
		"policia.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"beap.permissao",
		"sem.permissao"
	},
	["PaisanaTenenteBAEP"] = {
		_config = {
			title = "Tenente Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"tenente.folga",
		"sem.permissao"
	},
	-- Capitão
	["CapitaoBAEP"] = {
		_config = {
			title = "Capitao BAEP",
			gtype = "job"
		},
		"policia.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"beap.permissao",
		"sem.permissao"
	},
	["PaisanaCapitaoBAEP"] = {
		_config = {
			title = "Capitao Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"capitao.folga",
		"sem.permissao"
	},
	-- Ten. Coronel
	["TenCoronelBAEP"] = {
		_config = {
			title = "Ten. Coronel BAEP",
			gtype = "job"
		},
		"policia.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"beap.permissao",
		"sem.permissao"
	},
	["PaisanaTenCoronelBAEP"] = {
		_config = {
			title = "T. Cel. Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"tencoronel.folga",
		"sem.permissao"
	},
	-- Coronel
	["CoronelBAEP"] = {
		_config = {
			title = "Coronel BAEP",
			gtype = "job"
		},
		"policia.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"beap.permissao",
		"sem.permissao"
	},
	["PaisanaCoronelBAEP"] = {
		_config = {
			title = "Coronel Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"coronel.folga",
		"sem.permissao"
	},
	-----------------------------------------------------
	---------------- ROTA -------------------------------
	-----------------------------------------------------
	
	["SargentoRT"] = {
		_config = {
			title = "Sargento RT",
			gtype = "job"
		},
		"policia.permissao",
		"pmerj.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"sem.permissao"
	},
	["PaisanaSargentoRT"] = {
		_config = {
			title = "Sargento Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"sargento.folga",
		"sem.permissao"
	},
	-- Tenete
	["TenenteRT"] = {
		_config = {
			title = "Tenente RT",
			gtype = "job"
		},
		"policia.permissao",
		"pmerj.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"sem.permissao"
	},
	["PaisanaTenenteRT"] = {
		_config = {
			title = "Tenente Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"tenente.folga",
		"sem.permissao"
	},
	-- Capitão
	["CapitaoRT"] = {
		_config = {
			title = "Capitao RT",
			gtype = "job"
		},
		"policia.permissao",
		"pmerj.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"capitaoecoronel.arsenal",
		"capitaortm.servico",
		"sem.permissao"
	},
	["PaisanaCapitaoRT"] = {
		_config = {
			title = "Capitao Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"capitao.folga",
		"sem.permissao"
	},
	-- Ten. Coronel
	["TenCoronelRT"] = {
		_config = {
			title = "Ten. Coronel RT",
			gtype = "job"
		},
		"policia.permissao",
		"pmerj.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"tencoronelecoronel.arsenal",
		"tencoronelrtm.servico",
		"sem.permissao"
	},
	["PaisanaTenCoronelRT"] = {
		_config = {
			title = "T. Cel. Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"tencoronel.folga",
		"sem.permissao"
	},
	-- Coronel
	["CoronelRT"] = {
		_config = {
			title = "Coronel RT",
			gtype = "job"
		},
		"liderpolicia.permissao",
		"policia.permissao",
		"polpar.permissao",
		"pmerj.permissao",
		"portadp.permissao",
		"tenenteecoronel.arsenal",
		"coronelrtm.servico",
		"sem.permissao"
	},
	["PaisanaCoronelRT"] = {
		_config = {
			title = "Coronel Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"coronel.folga",
		"sem.permissao"
	},
	------------------------------------------ PRF Policia Rodoviaria Federal
	----------------------------------------------------------------------------
	["PRFTerceiraClasse"] = {
		_config = {
			title = "PRF Terceira Classe",
			gtype = "job"
		},
		"policia.permissao",
		"garmas.permissao",
		"prfterceiraclasse.permissao",
 	    "player.noclip",
		"polpar.permissao",
		"sem.permissao"
	},
	["PaisanaPRFTerceiraClasse"] = {
		_config = {
			title = "PRF Terceira Classe Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"paisanaprfterceiraclasse.permissao",
		"sem.permissao"
	},
	["PRFSegundaClasse"] = {
		_config = {
			title = "PRF Segunda Classe",
			gtype = "job"
		},
		"policia.permissao",
		"garmas.permissao",
		"prfsegundaclasse.permissao",
		"polpar.permissao",
 	    "player.noclip",
		"sem.permissao"
	},
	["PaisanaPRFSegundaClasse"] = {
		_config = {
			title = "PRF Segunda Classe Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"paisanaprfsegundaclasse.permissao",
		"sem.permissao"
	},
	["PRFPrimeiraClasse"] = {
		_config = {
			title = "PRF Primeira Classe",
			gtype = "job"
		},
		"policia.permissao",
		"garmas.permissao",
		"prfprimeiraclasse.permissao",
		"polpar.permissao",
 	    "player.noclip",
		"sem.permissao"
	},
	["PaisanaPRFPrimeiraClasse"] = {
		_config = {
			title = "PRF Primeira Classe Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"paisanaprfprimeiraclasse.permissao",
		"sem.permissao"
	},
	["PRFEspecial"] = {
		_config = {
			title = "PRF Especial",
			gtype = "job"
		},
		"policia.permissao",
		"garmas.permissao",
		"prfespecial.permissao",
		"polpar.permissao",
 	    "player.noclip",
		"sem.permissao"
	},
	["PaisanaPRFEspecial"] = {
		_config = {
			title = "PRF Especial Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"paisanaprfespecial.permissao",
		"sem.permissao"
	},


	
	-----------------------------------------------------
	-- Hospital ------------------------------------
	-----------------------------------------------------

		["EnfermeiroHP"] = {
		_config = {
			title = "Enfermeiro HP",
			gtype = "job"
		},
		"enfermeirohp.permissao",
		"medico.permissao",
		"paramedico.permissao",
		"player.noclip",
		"player.blips"
	}, 
	["PaisanaEnfermeiroHP"] = {
		_config = {
			title = "Folga Enfermeiro HP",
			gtype = "job"
		},
		"paisanaenfermeirohp.permissao",
		"sem.permissao"	,	
		"player.blips"
	},
	["MedicoHP"] = {
		_config = {
			title = "Medico HP",
			gtype = "job"
		},
		"medicohp.permissao",
		"medico.permissao",
		"player.noclip",
		"paramedico.permissao",
		"player.blips"
	},
	["PaisanaMedicoHP"] = {
		_config = {
			title = "Folga Medico HP",
			gtype = "job"
		},
		"paisanamedicohp.permissao",
		"sem.permissao",
		"player.blips"
	}, 
	["MedicoChefeHP"] = {
		_config = {
			title = "Medico Chefe HP",
			gtype = "job"
		},
		"medicochefehp.permissao",
		"medico.permissao",
		"paramedico.permissao",
		"player.noclip",
		"player.blips"
	},
	["PaisanaMedicoChefeHP"] = {
		_config = {
			title = "Folga Medico Chefe HP",
			gtype = "job"
		},
		"paisanamedicochefehp.permissao",
		"sem.permissao",
		"player.blips"
	}, 
	["DiretorHP"] = {
		_config = {
			title = "Diretor HP",
			gtype = "job"
		},
		"diretorhp.permissao",
		"medico.permissao",
		"paramedico.permissao",
		"player.noclip",
		"player.blips"
	},
	["PaisanaDiretorHP"] = {
		_config = {
			title = "Folga Diretor HP",
			gtype = "job"
		},
		"paisanadiretorhp.permissao",
		"sem.permissao",
		"player.blips"
	}, 
	["ViceDiretorHP"] = {
		_config = {
			title = "Vice Diretor HP",
			gtype = "job"
		},
		"vicediretorhp.permissao",
		"medico.permissao",
		"player.noclip",
		"paramedico.permissao",
		"player.blips"
	}, 
	["PaisanaViceDiretorHP"] = {
		_config = {
			title = "Folga Vice Diretor HP",
			gtype = "job"
		},
		"paisanavicediretorhp.permissao",
		"sem.permissao",
		"player.blips"
	}, 

	------------------------------------------------------------------------------------------
	----------------- Mecânica Sense Customs --------------------------------------------------------

	["LiderLS"] = {
		_config = {
			title = "Lider LS",
			gtype = "job"
		},
		"liderls.permissao",
		"reparo.permissao",
		"tunagem.permissao",
		"mecanico.permissao",
		"player.noclip",
		"player.blips"
	},
	["PaisanaLiderLS"] = {
		_config = {
			title = "Folga Lider LS",
			gtype = "job"
		},
		"paisanaliderls.permissao",
		"sem.permissao",
		"player.blips"
	},
	["ViceLiderLS"] = {
		_config = {
			title = "ViceLider LS",
			gtype = "job"
		},
		"viceliderls.permissao",
		"mecanico.permissao",
		"reparo.permissao",
		"tunagem.permissao",
		"player.noclip",
		"player.blips"
	},
	["PaisanaViceLiderLS"] = {
		_config = {
			title = "Folga ViceLider LS",
			gtype = "job"
		},
		"paisanaviceliderls.permissao",
		"sem.permissao",
		"player.blips"
	},
	["GerenteLS"] = {
		_config = {
			title = "Gerente LS",
			gtype = "job"
		},
		"gerentels.permissao",
		"mecanico.permissao",
		"reparo.permissao",
		"tunagem.permissao",
		"player.noclip",
		"player.blips"
	},
	["PaisanaGerenteLS"] = {
		_config = {
			title = "Folga Gerente LS",
			gtype = "job"
		},
		"paisanagerentels.permissao",
		"sem.permissao",
		"player.blips"
	},
	["TunagemLS"] = {
		_config = {
			title = "Tunagem LS",
			gtype = "job"
		},
		"tunagemls.permissao",
		"reparo.permissao",
		"tunagem.permissao",
		"mecanico.permissao",
		"player.noclip",
		"player.blips"
	},
	["PaisanaTunagemLS"] = {
		_config = {
			title = "Folga Tunagem LS",
			gtype = "job"
		},
		"paisanatunagemls.permissao",
		"sem.permissao",
		"player.blips"
	},
	["ReparoLS"] = {
		_config = {
			title = "Reparo LS",
			gtype = "job"
		},
		"reparols.permissao",
		"reparo.permissao",
		"mecanico.permissao",
		"player.blips"
	},
	["PaisanaReparoLS"] = {
		_config = {
			title = "Folga Reparo LS",
			gtype = "job"
		},
		"paisanareparols.permissao",
		"sem.permissao",
		"player.blips"
	},

	------------------------------------------------ Bennys <

	["LiderBennys"] = {
		_config = {
			title = "Lider Bennys",
			gtype = "job"
		},
		"liderbennys.permissao",
		"bennys.permissao",
		"player.blips"
	},
	["ViceLiderBennys"] = {
		_config = {
			title = "ViceLider Bennys",
			gtype = "job"
		},
		"viceliderbennys.permissao",
		"bennys.permissao",
		"player.blips"
	},
	["GerenteBennys"] = {
		_config = {
			title = "Gerente Bennys",
			gtype = "job"
		},
		"gerentebennys.permissao",
		"bennys.permissao",
		"player.blips"
	},
	["Bennys"] = {
		_config = {
			title = "Membro Bennys",
			gtype = "job"
		},
		"bennys.permissao",
		"player.blips"
	},
	    ---------------------------------- mafia

    ["LiderMafia"] = {
		_config = {
			title = "Lider Mafia",
			gtype = "job"
		},
		"lidermafia.permissao",
		"mafia.permissao",
		"gmafia.permissao",
		"ilegal.permissao",
		"player.blips"
	},
	["ViceLiderMafia"] = {
		_config = {
			title = "Vice Lider Mafia",
			gtype = "job"
		},
		"vicelidermafia.permissao",
		"mafia.permissao",
		"gmafia.permissao",
		"ilegal.permissao",
		"player.blips"
	},
	["GerenteMafia"] = {
		_config = {
			title = "Gerente Mafia",
			gtype = "job"
		},
		"gerentemafia.permissao",
		"mafia.permissao",
		"gmafia.permissao",
		"ilegal.permissao",
		"player.blips"
	},
	["Mafia"] = {
		_config = {
			title = "Membro Mafia",
			gtype = "job"
		},
		"mafia.permissao",
		"ilegal.permissao",
		"player.blips"
	},
	
	--------------------------------------- Bratva MUNIÇAO

	["LiderFS"] = {
		_config = {
			title = "Lider Família Stanmeister's",
			gtype = "job"
		},
		"liderfs.permissao",
		"fs.permissao",
		"gfs.permissao",
		"ilegal.permissao",
		"player.blips"
	},
	["ViceLiderFS"] = {
		_config = {
			title = "Vice Lider Família Stanmeister's",
			gtype = "job"
		},
		"viceliderfs.permissao",
		"fs.permissao",
		"gfs.permissao",
		"ilegal.permissao",
		"player.blips"
	},
	["ConselheiroFS"] = {
		_config = {
			title = "Conselheiro Família Stanmeister's",
			gtype = "job"
		},
		"conselheirofs.permissao",
		"fs.permissao",
		"gfs.permissao",
		"ilegal.permissao",
		"player.blips"
	},
	["GoldenBoys"] = {
		_config = {
			title = "Gondel Boy's",
			gtype = "job"
		},
		"goldenboys.permissao",
		"ilegal.permissao",
		"player.blips"
	},
	 		--------------------------------------- Cartel ARMAS

		 ["LiderCartel"] = {
			_config = {
				title = "Lider Cartel",
				gtype = "job"
			},
			"lidercartel.permissao",
			"cartel.permissao",
			"gcartel.permissao",
			"ilegal.permissao",
			"player.blips"
		},
		["ViceLiderCartel"] = {
			_config = {
				title = "Vice Lider Cartel",
				gtype = "job"
			},
			"vicelidercartel.permissao",
			"cartel.permissao",
			"gcartel.permissao",
			"ilegal.permissao",
			"player.blips"
		},
		["GerenteCartel"] = {
			_config = {
				title = "Gerente Cartel",
				gtype = "job"
			},
			"gerentecartel.permissao",
			"cartel.permissao",
			"gcartel.permissao",
			"ilegal.permissao",
			"player.blips"
		},
		["Cartel"] = {
			_config = {
				title = "Membro Cartel",
				gtype = "job"
			},
			"cartel.permissao",
			"ilegal.permissao",
			"player.blips"
		},
    
	 		--------------------------------------- DK DESMANCHE

			 ["LiderDK"] = {
				_config = {
					title = "Lider DK",
					gtype = "job"
				},
				"liderdk.permissao",
				"dk.permissao",
				"desmanche.permissao",
				"gdk.permissao",
				"ilegal.permissao",
				"player.blips"
			},
			["ViceLiderDK"] = {
				_config = {
					title = "Vice Lider DK",
					gtype = "job"
				},
				"viceliderdk.permissao",
				"dk.permissao",
				"desmanche.permissao",
				"gdk.permissao",
				"ilegal.permissao",
				"player.blips"
			},
			["GerenteDK"] = {
				_config = {
					title = "Gerente DK",
					gtype = "job"
				},
				"gerentedk.permissao",
				"dk.permissao",
				"desmanche.permissao",
				"gdk.permissao",
				"ilegal.permissao",
				"player.blips"
			},
			["DK"] = {
				_config = {
					title = "Membro DK",
					gtype = "job"
				},
				"dk.permissao",
				"ilegal.permissao",
				"player.blips"
			},
		 		--------------------------------------- TDTURQUIA LAVAGEM
				 ["LiderTDT"] = {
					_config = {
						title = "Lider TDT",
						gtype = "job"
					},
					"liderTDT.permissao",
					"TDT.permissao",
					"lavar.dinheiro",
					"gTDT.permissao",
					"ilegal.permissao",
					"player.blips"
				},
				["ViceLiderTDT"] = {
					_config = {
						title = "Vice Lider TDT",
						gtype = "job"
					},
					"viceliderTDT.permissao",
					"TDT.permissao",
					"lavar.dinheiro",
					"gTDT.permissao",
					"ilegal.permissao",
					"player.blips"
				},
				["GerenteTDT"] = {
					_config = {
						title = "Gerente TDT",
						gtype = "job"
					},
					"gerenteTDT.permissao",
					"TDT.permissao",
					"lavar.dinheiro",
					"gTDT.permissao",
					"ilegal.permissao",
					"player.blips"
				},
				["TDT"] = {
					_config = {
						title = "Membro TDT",
						gtype = "job"
					},
					"TDT.permissao",
					"lavar.dinheiro",
					"ilegal.permissao",
					"player.blips"
				},
			 		--------------------------------------- TDFRANCA COCA

					 ["LiderTDF"] = {
						_config = {
							title = "Lider TDF",
							gtype = "job"
						},
						"liderTDF.permissao",
						"TDF.permissao",
						"coca.permissao",
						"gTDF.permissao",
						"ilegal.permissao",
						"player.blips"
					},
					["ViceLiderTDF"] = {
						_config = {
							title = "Vice Lider TDF",
							gtype = "job"
						},
						"viceliderTDF.permissao",
						"TDF.permissao",
						"coca.permissao",
						"gTDF.permissao",
						"ilegal.permissao",
						"player.blips"
					},
					["GerenteTDF"] = {
						_config = {
							title = "Gerente TDF",
							gtype = "job"
						},
						"gerenteTDF.permissao",
						"TDF.permissao",
						"coca.permissao",
						"gTDF.permissao",
						"ilegal.permissao",
						"player.blips"
					},
					["TDF"] = {
						_config = {
							title = "Membro TDF",
							gtype = "job"
						},
						"TDF.permissao",
						"coca.permissao",
						"ilegal.permissao",
						"player.blips"
					},
					
					    			 		--------------------------------------- TDC META

					 ["LiderTDC"] = {
						_config = {
							title = "Lider TDC",
							gtype = "job"
						},
						"liderTDC.permissao",
						"TDC.permissao",
						"meta.permissao",
						"gTDC.permissao",
						"ilegal.permissao",
						"player.blips"
					},
					["ViceLiderTDC"] = {
						_config = {
							title = "Vice Lider TDC",
							gtype = "job"
						},
						"viceliderTDC.permissao",
						"TDC.permissao",
						"meta.permissao",
						"gTDC.permissao",
						"ilegal.permissao",
						"player.blips"
					},
					["GerenteTDC"] = {
						_config = {
							title = "Gerente TDc",
							gtype = "job"
						},
						"gerenteTDC.permissao",
						"TDC.permissao",
						"meta.permissao",
						"gTDC.permissao",
						"ilegal.permissao",
						"player.blips"
					},
					["TDC"] = {
						_config = {
							title = "Membro TDC",
							gtype = "job"
						},
						"TDC.permissao",
						"meta.permissao",
						"ilegal.permissao",
						"player.blips"
					},

					    			 		--------------------------------------- TDE MACONHA

					 ["LiderTDE"] = {
						_config = {
							title = "Lider TDE",
							gtype = "job"
						},
						"liderTDJ.permissao",
						"TDE.permissao",
						"maconha.permissao",
						"gTDE.permissao",
						"ilegal.permissao",
						"player.blips"
					},
					["ViceLiderTDE"] = {
						_config = {
							title = "Vice Lider TDE",
							gtype = "job"
						},
						"viceliderTDE.permissao",
						"TDE.permissao",
						"maconha.permissao",
						"gTDE.permissao",
						"ilegal.permissao",
						"player.blips"
					},
					["GerenteTDE"] = {
						_config = {
							title = "Gerente TDE",
							gtype = "job"
						},
						"gerenteTDJ.permissao",
						"TDE.permissao",
						"maconha.permissao",
						"gTDE.permissao",
						"ilegal.permissao",
						"player.blips"
					},
					["TDE"] = {
						_config = {
							title = "Membro TDE",
							gtype = "job"
						},
						"TDE.permissao",
						"maconha.permissao",
						"ilegal.permissao",
						"player.blips"
					},


					--------------------------------------- Vanilla

					["LiderVanilla"] = {
						_config = {
							title = "Lider Vanilla",
							gtype = "job"
						},
						"lidervanilla.permissao",
						"vanilla.permissao",
						"gvanilla.permissao",
						"ilegal.permissao",
						"player.blips"
					},
					["ViceLiderVanilla"] = {
						_config = {
							title = "Vice Lider Vanilla",
							gtype = "job"
						},
						"vicelidervanilla.permissao",
						"vanilla.permissao",
						"gvanilla.permissao",
						"ilegal.permissao",
						"player.blips"
					},
					["GerenteVanilla"] = {
						_config = {
							title = "Gerente Vanilla",
							gtype = "job"
						},
						"gerentevanilla.permissao",
						"vanilla.permissao",
						"gvanilla.permissao",
						"ilegal.permissao",
						"player.blips"
					},
					["Vanilla"] = {
						_config = {
							title = "Membro Vanilla",
							gtype = "job"
						},
						"vanilla.permissao",
						"ilegal.permissao",
						"player.blips"
					},

					--------------------------------------- Bahamas

					["LiderBahamas"] = {
						_config = {
							title = "Lider Bahamas",
							gtype = "job"
						},
						"liderbahamas.permissao",
						"bahamas.permissao",
						"gbahamas.permissao",
						"ilegal.permissao",
						"player.blips"
					},
					["ViceLiderBahamas"] = {
						_config = {
							title = "Vice Lider Bahamas",
							gtype = "job"
						},
						"viceliderbahamas.permissao",
						"bahamas.permissao",
						"gbahamas.permissao",
						"ilegal.permissao",
						"player.blips"
					},
					["GerenteBahamas"] = {
						_config = {
						title = "Gerente Bahamas",
						gtype = "job"
					},
						"gerentebahamas.permissao",
						"bahamas.permissao",
						"gbahamas.permissao",
						"ilegal.permissao",
						"player.blips"
					},
					["Bahamas"] = {
						_config = {
						title = "Membro Vanilla",
						gtype = "job"
					},
						"bahamas.permissao",
						"ilegal.permissao",
						"player.blips"
					},

	-------------------------------------------YAKUZA -----------------------------------------------------------
					["LiderYakuza"] = {
						_config = {
							title = "Lider Yakuza",
							gtype = "job"
						},
						"lideryakuza.permissao",
						"yakuza.permissao",
						"gyakuza.permissao",
						"ilegal.permissao",
						"player.blips"
					},
					["ViceLiderYakuza"] = {
						_config = {
							title = "Vice Lider Yakuza",
							gtype = "job"
						},
						"vicelideryakuza.permissao",
						"yakuza.permissao",
						"gyakuza.permissao",
						"ilegal.permissao",
						"player.blips"
					},
					["GerenteYakuza"] = {
						_config = {
							title = "Gerente Yakuza",
							gtype = "job"
						},
						"gerenteyakuza.permissao",
						"yakuza.permissao",
						"gyakuza.permissao",
						"ilegal.permissao",
						"player.blips"
					},
					["Yakuza"] = {
						_config = {
							title = "Membro Yakuza",
							gtype = "job"
						},
						"yakuza.permissao",
						"ilegal.permissao",
						"player.blips"
					},
	 
		 		--------------------------------------- Bennys

				 ["LiderBennys"] = {
					_config = {
						title = "Lider Bennys",
						gtype = "job"
					},
					"liderBennys.permissao",
					"Bennys.permissao",
					"gBennys.permissao",
					"player.blips"
				},
				["ViceLiderBennys"] = {
					_config = {
						title = "Vice Lider Bennys",
						gtype = "job"
					},
					"viceliderBennys.permissao",
					"Bennys.permissao",
					"gBennys.permissao",
					"player.blips"
				},
				["GerenteBennys"] = {
					_config = {
						title = "Gerente Bennys",
						gtype = "job"
					},
					"gerenteBennys.permissao",
					"Bennys.permissao",
					"gBennys.permissao",
					"player.blips"
				},
				["Bennys"] = {
					_config = {
						title = "Membro Bennys",
						gtype = "job"
					},
					"Bennys.permissao",
					"player.blips"
				},
    





	----------------------------------------------

				["Iniciante"] = {
					_config = {
						title = "VIP Iniciante",
						gtype = "vip"
					},
					"vipiniciante.permissao",
					"salario1.servico"
				},
				["Bronze"] = {
					_config = {
						title = "Bronze",
						gtype = "vip"
					},
					"vip.permissao",
					"bronze.permissao",
					"salario2.servico"
				},
				["Prata"] = {
					_config = {
						title = "Prata",
						gtype = "vip"
					},
					"vip.permissao",
					"prata.permissao",
					"salario3.servico"
				},
				["Ouro"] = {
					_config = {
						title = "Ouro",
						gtype = "vip"
					},
					"vip.permissao",
					"ouro.permissao",
					"salario4.servico"
				},
				["Platina"] = {
					_config = {
						title = "Platina",
						gtype = "vip"
					},
					"vip.permissao",
					"platina.permissao",
					"salario5.servico"
				},
				["Diamante"] = {
					_config = {
						title = "Diamante",
						gtype = "vip"
					},
					"vip.permissao",
					"diamante.permissao",
					"helivip.permissao",
					"salario6.servico"
				},
				["Topazio"] = {
					_config = {
						title = "Topázio",
						gtype = "vip"
					},
					"vip.permissao",
					"topazio.permissao",
					"helivip.permissao",
					"salario7.servico"
				},
				["Esmeralda"] = {
					_config = {
						title = "Esmeralda",
						gtype = "vip"
					},
					"vip.permissao",
					"esmeralda.permissao",
					"helivip.permissao",
					"salario8.servico"
				},
				["Rubi"] = {
					_config = {
						title = "Rubi",
						gtype = "vip"
					},
					"vip.permissao",
					"rubi.permissao",
					"helivip.permissao",
					"jatovip.permissao",
					"salario9.servico"
				},


}

cfg.users = {
	[1] = { "Dono" },
	
}

cfg.selectors = {

}

return cfg