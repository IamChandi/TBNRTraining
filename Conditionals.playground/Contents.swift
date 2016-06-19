//Conditionals 

var population: Int = 50000
var Message: String
var hasPostOffice: Bool = true


if population <= 10000
{
    Message = "\(population) is a small town"
}
else if (population>10000 && population<=50000)
{
    Message="\(population) is a medium town"
}
else
{
    Message="\(population) is a large town"
}

//Message = population < 10000 ? "\(population) is small" : "\(population) is big"

print(Message)

if !(hasPostOffice) {
    print("Where do I buy Stamps?")
}
