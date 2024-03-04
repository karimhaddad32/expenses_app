import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    required this.expensesList,
    required this.onRemoveExpense,
    super.key,
  });

  final List<Expense> expensesList;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    // Column is not ideal for very long lists.
    return ListView.builder(
      itemCount: expensesList.length,
      // Keys are to uniquely identify widgets.
      // The key here is for the id of each item in the list view.
      itemBuilder: (ctx, index) => Dismissible(
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.5),
          margin: Theme.of(context).cardTheme.margin,
          
        ),
        onDismissed: (direction) => onRemoveExpense(expensesList[index]),
        key: ValueKey(expensesList[index]),
        child: ExpenseItem(
          expensesList[index],
        ),
      ),
    );
  }
}
