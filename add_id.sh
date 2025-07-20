#!/data/data/com.termux/files/usr/bin/bash

echo "📦 Select subscription type:"
echo "1. 7-day (7_day.txt)"
echo "2. 30-day (30_day.txt)"
echo "3. Lifetime (IDs.txt)"
read -p "🔢 Enter choice (1-3): " choice

read -p "🆔 Enter User ID: " user_id

today=$(date +%Y-%m-%d)

case $choice in
  1)
    expiry=$(date -d "$today +7 days" +%Y-%-m-%-d)
    echo "Id : $user_id | expiry Date : $expiry" >> 7_day.txt
    ;;
  2)
    expiry=$(date -d "$today +30 days" +%Y-%-m-%-d)
    echo "Id : $user_id | expiry Date : $expiry" >> 30_day.txt
    ;;
  3)
    echo "Id : $user_id | expiry Date : LIFETIME" >> IDs.txt
    ;;
  *)
    echo "❌ Invalid option!"
    exit 1
    ;;
esac

echo "✅ ID saved successfully."
