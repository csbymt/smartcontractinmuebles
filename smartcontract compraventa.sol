function firmaComprador(uint idContrato) payable {
    ContratoCompraventa contrato == almacenContratos[idContrato];
    require (msg.sender == contrato.comprador);
    require (msg.value == contrato.precio);

    contrato.firmadoComprador = true;

    almacenContratos[idContrato] = contrato;
}

function firmaVendedor(uint idContrato) {
    ContratoCompraventa contrato = almacenContratos[idCpontrato];
    require (msg.sender == contrato.vendedor);
    require (contrato.firmadoComprador = true);

    contrato.firmadoVendedor = true;

    registroInmuebles[contrato.idInmueble] = contrato.comprador;
    contrato.vendedor.transfer(contrato.precio);

    almacenContratos[idContrato] = contrato;
}