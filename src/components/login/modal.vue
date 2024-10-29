<template>
    <div class="fixed top-[0] left-[0] w-screen h-screen bg-[rgba(0,_0,_0,_0.5)] flex justify-center items-center" @click.self="closeModal">
        <div v-if="!isRegisterPage" class="w-[417px] h-[fit-content] bg-[#f2f2f0] rounded-[8px] px-[41px] py-[18px]">
            <div class="text-[28px] text-[#1b3c59] font-bold mb-[18px] text-center">Sign In</div>
            <div class="h-[fit-content] bg-[#f2f2f0] rounded-xl flex justify-center items-center">
                <img class="w-[305px] h-[105px]" src="~/assets/img/dono-logo.png" />
            </div>
            <div class="self-stretch h-[94px] flex-col justify-start items-start gap-2.5 flex">
                <div class="self-stretch h-[42px] flex-col justify-start items-start gap-2 flex">
                    <div class="self-stretch px-4 py-3 bg-white rounded-lg border border-[#d9d9d9] justify-start items-start inline-flex">
                     <input
                    v-model="signInEmail"
                    type="email"
                    placeholder="Email"
                    class="grow shrink basis-0 text-[#1b1b1b] text-base font-normal font-['Ubuntu'] focus:outline-none"/>
                    </div>
                </div>
                <div class="w-[20px] h-[20px] relative"></div>
                <div class="self-stretch h-[42px] flex-col justify-start items-start gap-2 flex">
                    <div class="self-stretch px-4 py-3 bg-white rounded-lg border border-[#d9d9d9] justify-start items-start inline-flex">
                    <input
                    v-model="signInPassword"
                    type="password"
                    placeholder="Password"
                    class="grow shrink basis-0 text-[#1b1b1b] text-base font-normal font-['Ubuntu'] focus:outline-none"/>
                    </div>
                </div>
            </div>
            <div class="w-[20px] h-[20px] relative"></div>
            <div class="w-[20px] h-[20px] relative"></div>
            <div
            class="self-stretch h-10 bg-[#1b3c59] rounded-lg shadow border border-[#d4d3d3] flex-col justify-center items-center gap-2 flex cursor-pointer hover:bg-[#14507a] transition duration-300"
            @click="handleSignIn()">
                <div class="self-stretch grow shrink basis-0 px-6 py-2.5 justify-center items-center gap-2 inline-flex">
                    <div class="text-center text-[#f2f2f0] text-base font-normal font-['Ubuntu']">Sign In</div>
                </div>
            </div>
            <div class="w-[10px] h-[10px] relative"></div>
            <div class="inline-flex space-x-32">
                <div class="text-[12px] text-[#1b3c59] mb-[18px] text-left">Dont have any accounts?</div>
                <div class="text-[12px] text-[#1b3c59] mb-[18px] cursor-pointer " @click="toggleNextPage()">Register here!</div>
            </div>
        </div>
        
        <div v-else class="w-[417px] h-[fit-content] bg-[#f2f2f0] rounded-[8px] px-[41px] py-[18px]">
            <div class="text-[28px] text-[#1b3c59] font-bold mb-[18px] text-center">Sign Up</div>
            <div class="h-[fit-content] bg-[#f2f2f0] rounded-xl flex justify-center items-center">
                <img class="w-[305px] h-[105px]" src="~/assets/img/dono-logo.png" />
            </div>
            <div class="self-stretch h-[94px] flex-col justify-start items-start gap-2.5 flex">
                <div class="self-stretch h-[42px] flex-col justify-start items-start gap-2 flex">
                    <div class="self-stretch px-4 py-3 bg-white rounded-lg border border-[#d9d9d9] justify-start items-start inline-flex">
                     <input
                    v-model="signUpUsername"
                    type="username"
                    placeholder="Username"
                    class="grow shrink basis-0 text-[#1b1b1b] text-base font-normal font-['Ubuntu'] focus:outline-none"/>
                    </div>
                </div>
                <div class="w-[20px] h-[20px] relative"></div>
                <div class="self-stretch h-[42px] flex-col justify-start items-start gap-2 flex">
                    <div class="self-stretch px-4 py-3 bg-white rounded-lg border border-[#d9d9d9] justify-start items-start inline-flex">
                     <input
                    v-model="signUpEmail"
                    type="email"
                    placeholder="Email"
                    class="grow shrink basis-0 text-[#1b1b1b] text-base font-normal font-['Ubuntu'] focus:outline-none"/>
                    </div>
                </div>
                <div class="w-[20px] h-[20px] relative"></div>
                <div class="self-stretch h-[42px] flex-col justify-start items-start gap-2 flex">
                    <div class="self-stretch px-4 py-3 bg-white rounded-lg border border-[#d9d9d9] justify-start items-start inline-flex">
                    <input
                    v-model="signUpPassword"
                    type="password"
                    placeholder="Password"
                    class="grow shrink basis-0 text-[#1b1b1b] text-base font-normal font-['Ubuntu'] focus:outline-none"/>
                    </div>
                </div>
            </div>
            <div class="w-[20px] h-[20px] relative"></div>
            <div class="w-[20px] h-[90px] relative"></div>
            <div
            class="self-stretch h-10 bg-[#1b3c59] rounded-lg shadow border border-[#d4d3d3] flex-col justify-center items-center gap-2 flex cursor-pointer hover:bg-[#14507a] transition duration-300"
            @click="handleSignUp()">
                <div class="self-stretch grow shrink basis-0 px-6 py-2.5 justify-center items-center gap-2 inline-flex">
                    <div class="text-center text-[#f2f2f0] text-base font-normal font-['Ubuntu']">Sign Up</div>
                </div>
            </div>
            <div class="w-[10px] h-[10px] relative"></div>
            <div class="inline-flex space-x-60">
                <div class="text-[12px] text-[#1b3c59] mb-[18px] text-left">Go back?</div>
                <div class="text-[12px] text-[#1b3c59] mb-[18px] cursor-pointer" @click="toggleNextPage()">Sign In!</div>
            </div>
        </div>
    </div>
</template>

<script setup lang="ts">

const client = useSupabaseClient();
const router = useRouter();

const emit = defineEmits(['close']);

const email = ref<string>('');
const password = ref<string>('');

const signInEmail = ref<string>('');
const signInPassword = ref<string>('');
const signUpEmail = ref<string>('');
const signUpUsername = ref<string>('');
const signUpPassword = ref<string>('');

const showSignInError = ref(false);
const isRegisterPage = ref(false);

const closeModal = () => emit('close');

async function handleSignIn() {
    try {
        const { error } = await client.auth.signInWithPassword({
            email: signInEmail.value,
            password: signInPassword.value,
        });
        if (error) throw error;
        router.push("/home");
    } catch (error) {
        showSignInError.value = true;
        closeModal();
    }
}

async function handleSignUp() {
    try {
        const { error } = await client.auth.signUp({
            email: signUpEmail.value,
            password: signUpPassword.value,
            options: {
                data: {
                    display_name: signUpUsername.value,
                },
            },
        });
        if (error) throw error;
    } catch (error) {
        showSignInError.value = true;
    }
}

function toggleNextPage() {
    isRegisterPage.value = !isRegisterPage.value;
}
</script>