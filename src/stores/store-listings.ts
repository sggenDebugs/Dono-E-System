// store-itemstore.ts
import { defineStore } from 'pinia';
import type { Item } from '~/types/item-type';

export const useListings = defineStore('itemStore', {
  state: () => ({
    items: [
      {
        userId: "user1",
        id: "item1",
        name: "Acer Laptop",
        model: "Predator Helios",
        type: "Laptop",
        brand: "Acer",
        weight: 2.3,
        images: ["https://via.placeholder.com/176x155", "https://via.placeholder.com/176x155"],
        video: null,
        sellerIdPhoto: "https://via.placeholder.com/100",
        height: 1.5,
        status: "Almost new",
        description: "High-performance gaming laptop.",
    },
    {
        userId: "user2",
        id: "item2",
        name: "HP Laptop",
        model: "Omen 16",
        type: "Laptop",
        brand: "HP",
        weight: 2.5,
        images: ["https://via.placeholder.com/176x155", "https://via.placeholder.com/176x155"],
        video: null,
        sellerIdPhoto: "https://via.placeholder.com/100",
        height: 1.4,
        status: "Almost new",
        description: "Gaming laptop with powerful specs.",
    },
    ] as Item[]
  }),
  getters: {
    getItems: (state) => state.items
  }
});
