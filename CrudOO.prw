Class Cliente
    Data Nome
    Method New(cNome)
EndClass

Method New(cNome) Class Cliente
    ::Nome := cNome
Return Self

User Function CrudOO()
    Local aClientes := {}
    Local nOpc, oCliente, nIdx
    Local cNome

    While nOpc != 0
        nOpc := Val(InputBox("1-Adicionar\n2-Listar\n3-Editar\n4-Remover\n0-Sair", "Escolha:"))
        Do Case
        Case nOpc == 1
            cNome := InputBox("Nome do Cliente:")
            AAdd(aClientes, Cliente():New(cNome))
        Case nOpc == 2
            For nIdx := 1 To Len(aClientes)
                ConOut(cValToChar(nIdx) + " - " + aClientes[nIdx]:Nome)
            Next
        Case nOpc == 3
            nIdx := Val(InputBox("Índice p/ editar:"))
            If nIdx > 0 .And. nIdx <= Len(aClientes)
                aClientes[nIdx]:Nome := InputBox("Novo Nome:")
            EndIf
        Case nOpc == 4
            nIdx := Val(InputBox("Índice p/ remover:"))
            If nIdx > 0 .And. nIdx <= Len(aClientes)
                ADel(aClientes, nIdx)
                ASize(aClientes, Len(aClientes) - 1)
            EndIf
        EndCase
    End While
Return
