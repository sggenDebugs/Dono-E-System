<template>
    <div>
        <header class="shadow-sm bg-white">
            <nav class="container mx-auto p-4 flex justify-between">
                <ul class="flex gap-4">
                    <li><NuxtLink to="/menuboard">Menuboard</NuxtLink></li>
                    <li><NuxtLink to="/donoboard">Donoboard</NuxtLink></li>
                    <li><NuxtLink to="/checkoutboard">CheckoutBoard</NuxtLink></li>
                    <li><NuxtLink to="/signin">Signin</NuxtLink></li>
                </ul>
                <a href="/userprofile">UserProfile</a>
            </nav>
        </header> 
        
        <div class="container mx-auto p-1">
            <slot />
        </div>
    </div>
</template>