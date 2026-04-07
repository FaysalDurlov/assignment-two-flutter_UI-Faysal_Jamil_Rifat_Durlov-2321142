import 'package:flutter/material.dart';

class BankCard extends StatelessWidget {
  final String cardNumber;
  final String cardHolder;
  final String expiryDate;
  final String bankName;

  const BankCard({
    super.key,
    required this.cardNumber,
    required this.cardHolder,
    required this.expiryDate,
    this.bankName = "BANK",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF1F3B73),
            Color(0xFF0D1B2A),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Top Row (Chip + Bank Name)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              Text(
                bankName,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),

          const SizedBox(height: 30),

          /// Card Number
          Text(
            cardNumber,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              letterSpacing: 4,
              fontWeight: FontWeight.w500,
            ),
          ),

          const Spacer(),

          /// Bottom Row (Name + Expiry)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Card Holder
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "CARD HOLDER",
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),

              /// Expiry
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    "EXPIRES",
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 5),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Name
              Text(
                cardHolder,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              /// Expiry Date
              Text(
                expiryDate,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}