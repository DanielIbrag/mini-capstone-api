Supplier.create!([
  {
    name: "Paco Robbanne", email: "pacorobbane@test.com", phone_number: "111-111-1111",
  },
  {
    name: "dior", email: "dior@test.com", phone_number: "222-222-2222",
  },
  {
    name: "ysl", email: "ysl@test.com", phone_number: "333-333-3333",
  },
])
Product.create!([
  { name: "invictus aqua legends", price: "85.0", description: "Invictus is Latin for “unconquered.” The speaker in the poem proclaims his strength in the face of adversity: My head is bloody, but unbowed.... I am the master of my fate; I am the captain of my soul.", stock: 6, supplier_id: 1 },
  { name: "ysl la nuit de l'homme", price: "90.0", description: "La Nuit de l'Homme by Yves Saint Laurent is a Woody Spicy fragrance for men. La Nuit de l'Homme was launched in 2009. La Nuit de l'Homme was created by Anne Flipo, Pierre Wargnye and Dominique Ropion. Top note is Cardamom; middle notes are Lavender, Virginia Cedar and Bergamot; base notes are Vetiver and Caraway.", stock: 4, supplier_id: 3 },
  { name: "Dior sauvage", price: "110.0", description: "A radically fresh composition, Dior Sauvage is both raw and noble. Radiant top notes burst with the juicy freshness of Calabrian bergamot, while Amberwood unleashes a powerfully woody trail. Sauvage men's cologne is inspired by wide-open spaces, a white-hot desert landscape under a vast blue sky.", stock: 2, supplier_id: 2 },
])

Image.create!([{
  url: "https://m.media-amazon.com/images/I/51gAbGPRncL._SL1000_.jpg", product_id: 1,
},
               {
  url: "https://www.sephora.com/productimages/sku/s1200716-main-zoom.jpg", product_id: 2,
},
               {
  url: "https://eco-beauty.dior.com/dw/image/v2/BDGF_PRD/on/demandware.static/-/Sites-master_dior/default/dwfa6adcd7/assets/Y0785220/Y0785220_F078524009_E01_GHC.jpg?sw=715&sh=773&sm=fit&imwidth=300", product_id: 3,
}])
