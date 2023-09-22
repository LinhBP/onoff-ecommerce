import { loadStripe } from '@stripe/stripe-js';

export const checkout = async ({ lineItems }) => {
    let stripePromise = null;

    const getStripe = () => {
        if (!stripePromise) {
            stripePromise = loadStripe(process.env.NEXT_PUBLIC_STRIPE_KEY);
        }
        return stripePromise;
    };

    const stripe = await getStripe();

    await stripe.redirectToCheckout({
        mode: 'payment',
        lineItems,
        successUrl: `${window.location.origin}/products`,
        cancelUrl: `${window.location.origin}`
    });
};