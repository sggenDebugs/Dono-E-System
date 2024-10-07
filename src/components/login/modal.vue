<template>
    <div class="fixed top-[0] left-[0] w-screen h-screen bg-[rgba(0,_0,_0,_0.5)] flex justify-center items-center" @click.self="closeModal">
        <div class="w-[417px] h-[fit-content] bg-[#f2f2f0] rounded-[8px] px-[41px] py-[18px]">
            <div class="text-[28px] text-[#1b3c59] font-bold mb-[18px] text-center">Sign In</div>
            <div class="h-[fit-content] bg-[#f2f2f0] rounded-xl flex justify-center items-center">
                <img class="w-[305px] h-[105px]" src="~/assets/img/dono-logo.png" />
            </div>
            <div class="self-stretch h-[94px] flex-col justify-start items-start gap-2.5 flex">
                <div class="self-stretch h-[42px] flex-col justify-start items-start gap-2 flex">
                    <div class="self-stretch px-4 py-3 bg-white rounded-lg border border-[#d9d9d9] justify-start items-start inline-flex">
                     <input
                    v-model="email"
                    type="email"
                    placeholder="Email"
                    class="grow shrink basis-0 text-[#1b1b1b] text-base font-normal font-['Ubuntu'] focus:outline-none"/>
                    </div>
                </div>
                <div class="w-[20px] h-[20px] relative"></div>
                <div class="self-stretch h-[42px] flex-col justify-start items-start gap-2 flex">
                    <div class="self-stretch px-4 py-3 bg-white rounded-lg border border-[#d9d9d9] justify-start items-start inline-flex">
                    <input
                    v-model="password"
                    type="password"
                    placeholder="Password"
                    class="grow shrink basis-0 text-[#1b1b1b] text-base font-normal font-['Ubuntu'] focus:outline-none"/>
                    </div>
                </div>
            </div>
            <div class="w-[20px] h-[20px] relative"></div>
            <Message v-if="showSignInError" severity="error" @close="showSignInError = false" @life-end="showSignInError = false" :sticky="false" :life="4000">Credentials are Invalid</Message>
            <div class="w-[20px] h-[20px] relative"></div>
            <div
            class="self-stretch h-10 bg-[#1b3c59] rounded-lg shadow border border-[#d4d3d3] flex-col justify-center items-center gap-2 flex cursor-pointer hover:bg-[#14507a] transition duration-300"
            @click="handleSignIn">
                <div class="self-stretch grow shrink basis-0 px-6 py-2.5 justify-center items-center gap-2 inline-flex">
                    <div class="text-center text-[#f2f2f0] text-base font-normal font-['Ubuntu']">Sign In</div>
                </div>
            </div>
            <div class="self-stretch justify-between items-center inline-flex">
                <div class="w-[150px] h-[0px] border border-[#bcbcbc]"></div>
                <div class="w-[33px] h-[25px] text-center text-[#456173] text-[15px] font-normal font-['Ubuntu']">or</div>
                <div class="w-[150px] h-[0px] border border-[#bcbcbc]"></div>
            </div>
            <div class="w-[5px] h-[5px] relative"></div>
            <div class="self-stretch h-[90px] flex-col justify-start items-start gap-2.5 flex">
                <div class="self-stretch h-10 bg-[#f2f2f0] rounded-lg shadow border border-[#d4d3d3] flex-col justify-center items-center flex">
                    <div class="w-[50px] h-[50px] relative"></div>
                    <div class="self-stretch grow shrink basis-0 pl-4 pr-5 py-4 justify-center items-center gap-3 inline-flex">
                        <div class="w-[18px] h-[18px] justify-center items-center flex">
                            <img class="w-[18px] h-[18px]" src="~/assets/img/google-logo.png"/>
                        </div>
                        <div class="text-center text-[#456173] text-lg font-normal font-['Ubuntu']">Sign in with Google account</div>
                    </div>
                </div>
                <div class="self-stretch h-10 bg-[#f2f2f0] rounded-lg shadow border border-[#d4d3d3] flex-col justify-center items-center gap-2 flex">
                    <div class="self-stretch grow shrink basis-0 px-6 py-2.5 justify-center items-center gap-2 inline-flex">
                        <div class="text-center text-[#456173] text-lg font-normal font-['Ubuntu']">Sign in as guest</div>
                    </div>
                </div>
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
const showSignInError = ref(false);

const closeModal = () => emit('close');

async function handleSignIn() {
    try {
        const { error } = await client.auth.signInWithPassword({
            email: email.value,
            password: password.value,
        });
        if (error) throw error;
        router.push("/homeboard")
    } catch (error) {
        showSignInError.value = true;
        closeModal;
    }
}

// const handleSignIn = () => {
//   console.log('Email:', username.value);
//   console.log('Password:', password.value);
// };
</script>