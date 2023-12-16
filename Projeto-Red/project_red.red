Red [
    Title "Projeto em Red"
    Author: "Paulo Eduardo Palauro"
    Needs: View
    ]


button_1: function[] [
    do [
            view[
                title "Hello World!"
                text 470x100 bold italic font-size 50 "Hello World!"
            ]
        ]
]


button_2: function[] [
    do [
            view[
                size 150x50
                title "Olá"
                name-field: field "Digite seu Nome!"  [print ["Seja Bem-Vindx:"face/text". Aqui é o console do Red :)"] ]

            ]
        ]
]



button_3: function[] [
    do [
            view [
                size 300x250
                title "XIUUUUU"
                below aviso: text 200x80 italic font-size 15 "Não clique no botão! Ele está dormindo!!! " 
                cara: text 100x80 bold italic font-size 20 center "( ‾ʖ̫‾) zzzz..." 
                bye-button: button "Não clique!" [
                    aviso/text: "Você clicou no botão e acordou ele! Agora ele está bravo e irá te bater!!!" 
                    cara/text: "-_-_-_-... ୧༼ಠ益ಠ༽୨"
                    ]
            ]
        ]
]




button_4: function[][
    rand_img: https://source.unsplash.com/random/310x200
    do[
        view[
            title "Imagem Aleatória"
            below center
            pictures: image 310x200 "Clique no botão para uma imagem aleatória"
            across
            button "Aleatório" [
                new_image: load rand_img
                pictures/image: new_image
                pictures/text: ""
            ] 
        ]
    ]
]


button_5: function[][
    do[
        view[
            canvas: base 800x510  white draw [ box 44x44 88x88]
            below 
            text "Escolha um desenho!"
            button "Praia" 130x20[
                canvas/draw: [ 
                    fill-pen cyan box 0x0 800x510
                    fill-pen blue box 200x600 800x400 
                    fill-pen gold box 0x600 200x390
                    fill-pen yellow pen off circle 700x100 50
                    ]
            ]
            button "Espaço/Sol"  130x20[
                canvas/draw: [ 
                    fill-pen black box 0x0 800x510
                    fill-pen yellow pen off circle 400x255 80
                    fill-pen white box 495x500 500x495
                    fill-pen white box 95x100 100x95
                    fill-pen white box 295x300 300x295
                    fill-pen white box 795x800 800x795
                    ]
                ]
            text ""
            text ""
            text ""
            text ""
            text ""
            text ""
            text ""
            text ""
            text ""
            text ""
            text ""
            text ""
            button "Apagar" 130x20[
                canvas/draw: [ fill-pen blue box 800x510 800x510 ]
            ]
        ]
    ]
    
]

button_6: function[][
    do[
        view[
            size 400x280
            title "Calculator - Simples"
            below text "Digite o primeiro número"
            below f: field "" 200x20
            text "Digite o segundo número"
            t: field "" 200x20
            text ""
            across button "Somar" [
                append clear resu/text (to integer! f/text) + (to integer! t/text)
            ]
            button "Subtrair" [
                append clear resu/text (to integer! f/text) - (to integer! t/text)
            ]
            button "Multiplicar" [
                append clear resu/text (to integer! f/text) * (to integer! t/text)
            ]
            button "Dividir" [
                append clear resu/text (to float! f/text) / (to float! t/text)
            ]
            return 
            below text ""
            resu: field "resultado" 200x20
        ]
    ]   
]


button_7: function[][
    do [
        view [
            title "Manipulação Strings"
            size 600x300
            
            across a: field "clique no botão e veja o que acontece!" 500x10
             button "!"[
                uppercase a/text
            ]
            
            return
            across b: field "CLIQUE NO BOTÂO E VEJA O QUE ACONTECE!" 500x10
            button "!"[
                lowercase b/text
            ]

            return
            across c: field "               Clique no botão e veja o que acontece!               " 500x10
             button "!"[
               trim c/text 
            ]

            return    
            across d: field "Clique no botão e veja o que acontece!" 500x10
            button "!"[
                lista-palavras/data: split d/text " " 
            ]
            return
            lista-palavras: text-list 500x100


        ]
    ]
]


button_8: function[][
    to-int: function [value [percent!]][to-integer 255 * value]
    do[
        view [
        title "RGB"
        size 300x350
	    below
	    R: slider 280x20
	    G: slider 280x20
	    B: slider 280x20
        text "Cor Resultante: "
	    base 280x200 react  [
		    face/color: as-color to-int R/data to-int G/data to-int B/data
	        ]
        ]
    ]

]


button_9: function[][
    clock-demo: {
    base 200x200 transparent rate 1 now draw [
    scale 2 2
    fill-pen #0B79CE pen off
    circle 50x50 45
    line-width 2
    hour: rotate 0 50x50 [pen #023963 line 50x50 50x20]
    min:  rotate 0 50x50 [pen #023963 line 50x50 50x10]
    sec:  rotate 0 50x50 [pen #CE0B46 line 50x50 50x10]
    ] on-time [
    time: now/time
    hour/2: 30 * time/hour
    min/2:  6  * time/minute
    sec/2:  6  * time/second
    ]
    }
    do[
        view [
	    title "Tempo"
	    backdrop #2C3339
	    across
	
	    source: area #13181E 410x300 no-border clock-demo font [
		    name: font-fixed
		    size: 9
		    color: hex-to-rgb #9EBACB
	    ]
	
	    panel 200x300 #2C3339 react [
		    attempt/safer [face/pane: layout/tight/only load source/text]
	    ]
        return
        button "!" [a/text: "Inspirado de: https://github.com/red/code/blob/master/Showcase/eve-clock.red"]
        a: text 500x10 bold italic font-size 10 ""
        ]       
    ]
]


button_sobre: function[][
    do[
        view[
            title "Sobre"
            size 700x220
            below  text  470x40 bold italic font-size 20 "Sobre" 
            below text "O intuito desse programa é so testar a linguagem de programação Red e ver o que ela capaz de fazer"
            text "São projetos bem simples so para testes que no final me diverti fazendo"
            text "Quem sabe um dia não volto a essa linguagem."
            text "Concluido em 16/12/2023"
            text "Feito por: Paulo Palauro"
        ]
    ]
]


button_cara: function[][
        either face/text = ":-)" [
            face/text: ":-D"
        ] [
            face/text: ":-)"
        ]
        show face
    
    ]




view [
    title "Projetos"
    below  text center 470x40 bold italic font-size 20 "Projetos em Red" 
    across button "Hello World!" 150x150 gray italic font-size 15 [button_1]
    button "Nome" 150x150 gray italic font-size 15 [button_2]
    button "Silêncio" 150x150 gray italic font-size 15 [button_3]
    return
    button "Imagem Aleatória" 150x150 gray italic font-size 15 [button_4]
    button "Desenhos" 150x150 gray italic font-size 15 [button_5]
    button "Calcular" 150x150 gray italic font-size 15 [button_6]
    return
    button "Manipulação de Strings" 150x150 gray italic font-size 15 [button_7]
    button "RGB" 150x150 gray italic font-size 15 [button_8]
    button "Relógio" 150x150 gray italic font-size 15 [button_9]
    return
    button "Sobre" 150x150 purple italic font-size 15 [button_sobre]
    button "Clique" 150x150 gray italic font-size 15 [either face/text = ":-)" [face/text: ":-D"] [face/text: ":-)"]show face]
    button "Exit" 150x150 red italic font-size 15 [quit]
    return
    text 320x40 bold italic  font-size 10 "Feito por: Paulo Palauro" 
]