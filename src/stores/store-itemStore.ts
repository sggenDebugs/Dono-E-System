// store-itemstore.ts
import { defineStore } from 'pinia';
import type { Item } from '~/types/item-type';

export const useItemStore = defineStore('itemStore', {
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
    {
        userId: "user3",
        id: "item3",
        name: "Smart Watch",
        model: "Apple Series 10",
        type: "Watch",
        brand: "Apple",
        weight: 0.1,
        images: ["https://via.placeholder.com/176x155", "https://via.placeholder.com/176x155"],
        video: null,
        sellerIdPhoto: "https://via.placeholder.com/100",
        height: 0.1,
        status: "Slightly Worn",
        description: "Latest Apple smartwatch with health features.",
    },
    {
        userId: "user4",
        id: "item4",
        name: "Smart TV",
        model: "TCL QM8",
        type: "Television",
        brand: "TCL",
        weight: 15.0,
        images: ["https://via.placeholder.com/176x155", "https://via.placeholder.com/176x155"],
        video: null,
        sellerIdPhoto: "https://via.placeholder.com/100",
        height: 2.5,
        status: "Slightly used",
        description: "High-resolution smart TV.",
    },
    {
        userId: "user5",
        id: "item5",
        name: "iPhone",
        model: "iPhone 13",
        type: "Phone",
        brand: "Apple",
        weight: 0.2,
        images: ["https://via.placeholder.com/176x155", "https://via.placeholder.com/176x155"],
        video: null,
        sellerIdPhoto: "https://via.placeholder.com/100",
        height: 0.2,
        status: "Defective",
        description: "Smartphone with minor defects.",
    },
    ] as Item[]
  }),
  getters: {
    getItems: (state) => state.items
  }
});
