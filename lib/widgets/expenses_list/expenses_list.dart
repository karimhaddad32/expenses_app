import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    required this.expensesList,
    super.key,
  });

  final List<Expense> expensesList;

  @override
  Widget build(BuildContext context) {
    // Column is not ideal for very long lists.
    return ListView.builder(
      itemCount: expensesList.length,
      itemBuilder: (ctx, index) => ExpenseItem(expensesList[index]),
    );
  }
}
