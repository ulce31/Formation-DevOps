shopping = [
    { "product" : "Livre", "unit_price" : 10.99, "quantity" : 1},
    { "product" : "CD", "unit_price" : 15.99, "quantity" : 1},
    { "product" : "DVD", "unit_price" : 23, "quantity" : 3}
]

def calc_total(shopping = shopping):
    total = 0
    free_shipping_cost = False

    # Insert your code here
    for product in shopping:
        total += product["unit_price"] * product["quantity"]
    if total > 60 :
        free_shipping_cost = True
    # End of code insertion
    
    return total, free_shipping_cost

print(calc_total(shopping))