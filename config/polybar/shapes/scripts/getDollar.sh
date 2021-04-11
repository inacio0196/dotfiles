wget https://www.melhorcambio.com/dolar-hoje > /dev/null 2>&1
DOLLAR=$(grep -E 'id="comercial"' dolar-hoje | grep text | sed 's/.*value="// ; s/".*//')
rm dolar-hoje
echo "$DOLLAR"