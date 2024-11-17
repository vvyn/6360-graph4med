import random
import datetime
from faker import Faker


def main():
    IDs = generate_order()
    generate_orderpatient(IDs)


def generate_order():
    fake = Faker()
    file = open('Order.csv', 'a')
    file.write("ID, INT\n")
    # make orders
    IDs = []
    for j in range(50):
        ID = random.randint(1000, 9999)
        i = random.randint(1, 5)
        ID = str(ID)
        i = str(i)
        IDs.append(ID)
        file.write(ID + "," + i + "\n")
    return IDs


def generate_orderpatient(IDs):
    patients = ["1d604da9-9a81-4ba9-80c2-de3375d59b40",

                "034e9e3b-2def-4559-bb2a-7850888ae060",

                "10339b10-3cd1-4ac3-ac13-ec26728cb592",

                "8d4c4326-e9de-4f45-9a4c-f8c36bff89ae",

                "f5dcd418-09fe-4a2f-baa0-3da800bd8c3a",

                "72c0b9ce-7aa4-430b-aaff-bd0ce7846e55",

                "b1e9b0b9-da6e-4f68-b603-bd896a50ca86",

                "01207ecd-9dff-4754-8887-4652eda231e2",

                "b58731cc-2d8b-4c2d-b327-4cab771af3ef",

                "cfee79fc-df05-476e-b274-43e09ea345db",

                "ad2e9916-4979-40fc-a8c0-68651a0cb5a6",

                "bfb6537b-535a-4f31-9a56-073220f96a17",

                "83719bd7-7a41-4c87-93f9-c5de4db6a14a",

                "76982e06-f8b8-4509-9ca3-65a99c8650fe",

                "2ffe9369-24e4-414b-8973-258fad09313a",

                "e4f1bd35-93ae-418b-b8cf-d39c3fbb069c",

                "86b97fc7-ae8f-4e0d-8e66-db68f36e7a76",

                "1c591f0d-95b1-4289-94a9-9713ab3834e7",

                "f1678bde-4814-4d71-bca9-18fdf5282232",

                "aac107d8-5187-420f-a90c-448ad49dee41",

                "71ba0469-f0cc-4177-ac70-ea07cb01c8b8",

                "518f83f3-a717-4705-a181-06e205df480b",

                "2f43a131-a43a-4c8c-a723-cc261adb9cc6",

                "2c634692-05d8-4122-9f46-dd9402e2cfc6",

                "860aff27-7431-47ee-968e-554470683160",

                "acb4817f-0ece-41d8-b179-82397a95a44a",

                "bf35e4fa-ea4f-40a4-8fe6-1f2f26e0aa45",

                "c8403116-d069-4130-aa02-39954fc971b5",

                "b1bc3c89-4e7b-41fd-a58b-9bf4ce2b40a9",

                "50e7ede4-7ca1-4b2c-ae64-6b88b58eeaac",

                "5a8c7f6d-b15c-4c55-b299-5bf8c2b35ad4",

                "73f124a4-e69e-4b8c-a447-e72d23dc54be",

                "ad7c452d-c8e9-40ae-a5ed-90b7bd93d2ac",

                "5056439c-015e-4968-9281-2b8c72c3926e",

                "e20fb002-6dc6-4cea-ba4b-7f528ccf6572",

                "d49f748f-928d-40e8-92c8-73e4c5679711",

                "f592e861-6e2e-46bc-a19d-5485fcbf0d80",

                "8b17ff1e-2b24-46a9-83f7-f8a49e82c604",

                "7723d469-7227-4b58-8f3e-b441197f4134",

                "741831b4-d1a2-407b-b5d7-af61ff550867",

                "e3af2463-f4c9-4dbb-a8d2-d6a08c5b1460",

                "31459cc4-45ed-4dee-b160-9f1a148a7724",

                "8908602e-5f0c-4f1e-847f-75a0043eeba7",

                "5be97219-ef35-4c5a-88ab-5f9a2187b7d6",

                "e05dd037-e45f-434a-946d-5c9076a2f596",

                "ddfa05a6-b8a6-4208-b609-28f9a6a8d79e",

                "0983e422-3b48-4f1a-936b-bee5f0eb4695",

                "301ebb70-0078-4989-b5dd-d751f56c404d",

                "d191448b-3fa8-47b8-9440-6b871860956c",

                "45c5c779-d2f9-4bf1-b6ff-deb7ff1fd54c",

                "8abe8efb-d431-4465-ad3b-7b3f301b845f",

                "32885ae1-d031-4f52-8f91-0e5196f5462a",

                "c563f50c-54a9-4b37-9028-bff3db7e3e27",

                "f98f2905-6942-4462-9c21-25a512520d90",

                "7a8e4ef0-adf4-4e6d-8d28-5d36886547f4",

                "c1b80a65-61e0-4f1b-9e1f-122c6d326034",

                "1d7fe784-8667-47e8-b733-8e6ec0fbb5f9",

                "b44d4f15-d604-4e24-8114-dc0dc12651d2",

                "bfd66698-4139-4e5e-9982-efa459aa9dca",

                "e175908a-09db-4730-a311-4e57ba73438b",

                "937d794b-6e68-4b17-b162-0a41b68f8085",

                "14289f20-085c-4fc8-bdd8-e2074166d91f",

                "47a91815-0dca-49df-b1dc-8bb88d8c1b38",

                "0f5646bc-a156-4ec0-9252-5b592e3d3184",

                "66b46e68-f643-4ebd-8ad1-14ebf58e356c",

                "bb9d00fe-b16e-4832-8aec-b1e9d480d48d",

                "3800b2a6-2360-40dc-b709-394b4794cc0d",

                "44c8b4c8-4457-4ba0-94b6-285ef327a249",

                "e75ed3bb-d04c-46cc-897e-1938329673ec",

                "b844f920-ed79-4624-a4da-fe5a201b9baf",

                "cdef53d5-0537-4073-8874-79fa5e0346e6",

                "799d0738-d5cd-4161-bdb8-e3c49e21ec66",

                "dadd331c-6143-41d1-bffb-d34b321ed157",

                "89752052-a38b-45f0-a590-3950bbb67bec",

                "a9191572-cd67-4184-9945-a25eb3fa6ef0",

                "bae73dce-20fa-4a6a-8e46-b2ed541f9296",

                "da200ea3-c9eb-414b-b22a-86430059fd47",

                "711d2093-5eb9-45a6-ad09-4b5c0371ad85",

                "89214f7b-82b7-460e-b583-415a688ccc3c",

                "a47e5737-065e-416f-8257-0c9f14382065",

                "28f36cfa-7696-4f73-ac4f-427e802199d9",

                "ed5cc81e-619f-471d-aee6-2934124c58e4",

                "dac134fa-7f57-4211-923a-e943a5c11d93",

                "144edc8e-936e-42d7-8e7d-f3578cf80cc2",

                "53d371cc-eb68-4740-a68c-39707c6cb519",

                "8d1ba4bb-7250-4295-be1c-5d0d423e55f7",

                "be249d5b-327e-4c30-8fb2-3a1c587fe5ad",

                "846b0d5b-e5f5-4fd6-8ae4-7aa8e13a17c3",

                "55301b9d-4de5-4ab7-a727-579258ce4e71",

                "9fe859fa-d775-494d-ae34-fa648e5d186d",

                "d721b0eb-f819-472e-997a-b057ca7fab01",

                "df91aedf-3e17-44c3-b273-62e35f518475",

                "01e1f394-7219-4189-bceb-3cbd90cff90b",

                "f6df6e77-35dc-457b-b998-31b780ada07f",

                "d1639077-59f3-401f-a058-2ad70502f93f",

                "0c5aa52a-3b1d-4289-af16-29f7a2d07fec",

                "2a88cb57-86fa-4259-93bf-3956e91b07f4",

                "e061409e-4b85-4ec1-b1f7-02677d51f763",

                "d3f08bb8-e79f-4529-a37a-8aebdfbffe6a"]

    fake = Faker()
    file = open('OrderPatient.csv', 'a')
    file.write("PATIENTID, ORDERID, ORDER_DATE\n")
    # make orders
    for j in range(50):
        ID = fake.word(ext_word_list=patients)
        orderID = IDs[j]
        order_date = fake.date_between(datetime.date(2020,1,1), datetime.date(2024,12,31))
        file.write(ID + "," + orderID + "," +  str(order_date)+ "\n")


if __name__ == '__main__':
    main()
