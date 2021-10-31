class Payment {
  String categoria;
  double valor;
  bool selected;
  String status;

  Payment({
    required this.categoria,
    required this.valor,
    this.selected = false,
    this.status = 'Em Processamento',
  });

  Payment getDefaultPayment() {
    return Payment(categoria: 'Imposto', valor: 4690.90);
  }
}
