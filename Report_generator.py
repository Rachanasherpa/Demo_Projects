import random
import csv

# Generate random transaction data
transactions = []
for i in range(1, 6):
    transactions.append({
        "TransactionID": i,
        "CustomerName": f"Customer{i}",
        "Amount": random.randint(100, 1000),
        "Status": random.choice(["Completed", "Pending", "Failed"])
    })

# Save to CSV
with open("transactions.csv", "w", newline="") as file:
    writer = csv.DictWriter(file, fieldnames=["TransactionID","CustomerName","Amount","Status"])
    writer.writeheader()
    writer.writerows(transactions)

print("✅ transactions.csv generated successfully!")
