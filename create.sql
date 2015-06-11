CREATE TABLE zw14ppro ( largura numeric(7,2) ,profundidade numeric(7,2) ,altura numeric(7,2) ,unidadedimensao "char" ,codproduto "char" ,descricao1 "char" ,descricao2 "char" ,descricao4 "char" ,classe "char" ,tipoclasse "char" ,ordemclasse integer ,codigoalternativo "char" ,codbarras "char" ,codmarca numeric(5,0) ,codauxiliar1 "char" ,codauxiliar2 "char" ,codentrelacionada1 integer ,nomeentrelacionada1 "char" ,codentrelacionada2 integer ,nomeentrelacionada2 "char" ,empromocao integer ,condicoes "char" ,unidade "char" ,unidadealt "char" ,conversaounidade numeric(15,8) ,clastrib "char" ,clasfiscal integer ,basereduzida integer ,aliqicms numeric(3,0) ,aliqipi numeric(3,0) ,percentualbaseicms numeric(5,2) ,pesobruto numeric(13,4) ,pesoliquido numeric(13,4) ,quantidade1 numeric(13,4) ,quantidade2 numeric(13,4) ,quantidade3 numeric(13,4) ,saldoestoque numeric(13,4) ,estoquemin numeric(13,4) ,precocusto1 numeric(13,4) ,precocusto2 numeric(13,4) ,precocustomedio numeric(13,4) ,precovenda1 numeric(13,4) ,precovenda2 numeric(13,4) ,precovenda3 numeric(13,4) ,precovenda4 numeric(13,4) ,valoraux numeric(13,4) ,precoultimavenda numeric(13,4) ,dataultimavenda integer ,precopenultimavenda numeric(13,4) ,datapenultimavenda integer ,precoultimacompra numeric(13,4) ,dataultimacompra integer ,precopenultimacompra numeric(13,4) ,datapenultimacompra integer ,dataultimaalteracaopreco integer ,codmoeda integer ,complemento integer ,aplicacao "char" ,localizacao "char" ,situacao "char" ,datacadastro integer ,info1 "char" ,info2 "char" ,tag integer ,editavel integer ,dataultimaatualizacao date NOT NULL,horaultimaatualizacao time with time zone ,botaocadeadoaplicacao integer ,versaoatual integer ,versaofechada integer ,codtipoproduto integer ,novidade integer ,datanovidade integer ,codfornecedorpenultimacompra integer ,codfornecedorultimacompra integer ,pesoauxiliar numeric(13,4) ,nomeincluidor "char" ,nomealterador "char" ,tipoentpenultimavenda "char" ,codentpenultimavenda integer ,tipoentultimavenda "char" ,codentultimavenda integer ,quantidadepenultimacompra numeric(21,10) ,quantidadeultimacompra numeric(21,10) ,quantidadepenultimavenda numeric(21,10) ,quantidadeultimavenda numeric(21,10) ,codtipoitem integer ,margemlucropv1 numeric(11,2) ,margemlucropv2 numeric(11,2) ,margemlucropv3 numeric(11,2) ,margemlucropv4 numeric(11,2) ,comissaopv1 numeric(5,2) ,comissaopv2 numeric(5,2) ,comissaopv3 numeric(5,2) ,comissaopv4 numeric(5,2) ,inclusaoreqmaterial integer ,usanrserie integer ,estoqueideal numeric(13,4) ,flag1 integer ,flag2 integer ,substituicaotributaria integer ,piscofins integer ,garantia_spin_dias integer ,garantia_drop_tempo "char" ,cst_ipi integer ,tipocalculo_ipi integer ,classeenq_ipi "char" ,codenquadramento_ipi integer ,codselocontrole_ipi integer ,qtdselo_ipi integer ,aliquotaperc_ipi numeric(15,4) ,cst_pis integer ,tipocalculo_pis integer ,aliquota_pis numeric(15,4) ,aliqoutavalor_pis numeric(15,4) ,tipocalculost_pis integer ,aliquotast_pis numeric(15,4) ,aliquotavalorst_pis numeric(15,4) ,cst_cofins integer ,tipocalculo_cofins integer ,aliquota_cofins numeric(15,4) ,aliquotavalor_cofins numeric(15,4) ,tipocalculost_cofins integer ,aliquotast_cofins numeric(15,4) ,aliquotavalorst_cofins numeric(15,4) ,aliquota_issqn numeric(15,4) ,horaultimaatualizacaopreco integer ,usuarioultimaatualizacaopreco integer ,tipoorigemultatualizacaopreco "char" ,codorigemultimaatualizacaopreco integer ,pc1anterior numeric(17,4) ,pc2anterior numeric(17,4) ,pmanterior numeric(17,4) ,pv1anterior numeric(17,4) ,pv2anterior numeric(17,4) ,pv3anterior numeric(17,4) ,pv4anterior numeric(17,4) ,gramatura integer ,tiposubstrato integer ,tipotinta integer ,durabilidade integer ,eancomercial "char" ,eantributavel "char" ,codigotipoorcamentografico integer ,volume numeric(15,3) ,inventariodataini integer ,inventariodatafim integer ,inventariohoraini integer ,inventariohorafim integer ,inventarioestoqueini numeric(13,4) ,inventarioestoquefim numeric(13,4) ,inventarioestoquedif numeric(13,4) ,inventarioflag integer ,raio numeric(7,2) ,diametro numeric(7,2) ,codigoex integer ,codigoitem integer ,quantidafefutura numeric(13,4) ,datachegada integer ,observacoes_prod_futu "char" ,valoradicional numeric(7,2) ,codigogrupofases numeric(3,0) ,codmigracao "char" ,observacoes character varying(1000) ,alerta character varying(1000) ,descricao3 character varying(2048)  )
