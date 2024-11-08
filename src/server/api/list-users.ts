// server/api/list-users.ts
import { createClient } from '@supabase/supabase-js'
import { defineEventHandler } from 'h3'

// Replace these with your actual Supabase project credentials
const supabaseUrl = process.env.SUPABASE_URL || '';
const serviceRoleKey = process.env.SUPABASE_SERVICE_ROLE_KEY || '';

const supabase = createClient(supabaseUrl, serviceRoleKey, {
  auth: {
    autoRefreshToken: false,
    persistSession: false,
  },
});

// Define the API route handler
export default defineEventHandler(async (event) => {
  try {
    // Access the admin auth client
    const { data, error } = await supabase.auth.admin.listUsers();

    if (error) {
      throw error;
    }

    // Map the user data to only include id, email, and display_name
    const users = data.users.map((user) => ({
      id: user.id,
      email: user.email,
      display_name: user.user_metadata.display_name || null, // Handle the case where display_name might be undefined
    }));

    // Return the user data as the response
    return {
      users,
    };
  } catch (error) {
    console.error(error); // Log the error for debugging
    return {
      error: 'An error occurred while fetching users.',
    };
  }
});
