contacts = [
   {
       "prenom" : 'john',
       "telephone" : '0611223344',
   },
   {
       "prenom" : 'elise',
       "telephone" : '0655667799'
   },
   {
       "prenom" : 'franck',
       "telephone" : '0612345678'
   },
   {
       "prenom" : 'elisa',
       "telephone" : '0612345678'
   }
]

def address_book(contacts = contacts):
    new_list = []
    # Insert your code here
    telephones = []
    for contact in contacts:
        contact["telephone"] = contact["telephone"].replace(contact["telephone"][0], "+33")
        if contact["prenom"] == "john":
            contact["admin"] = True
        else:
            contact["admin"] = False
        if not contact["telephone"] in telephones:
            telephones.append(contact["telephone"])
            new_list.append(contact)

            
        
         
    # End of code insertion
    
    return new_list

print(address_book(contacts))