class Payment {
  String categoria;
  double valor;
  bool selected;

  Payment({
    required this.categoria,
    required this.valor,
    this.selected = false,
  });

  Payment getDefaultPayment() {
    return Payment(categoria: 'Imposto', valor: 4690.90);
  }
}
