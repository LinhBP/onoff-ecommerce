import { useRef } from "react";
import classes from './contact-form.module.css'

const dev = process.env.NODE_ENV !== 'production';

export const server = `${process.env.NEXT_PUBLIC_API_URL}`

const ContactForm = () => {
    const nameInputRef = useRef();
    const phoneInputRef = useRef();
    const emailInputRef = useRef();
    const messageInputRef = useRef();

    function submitFormHandler(event) {
        event.preventDefault();
        const enteredName = nameInputRef.current.value;
        const enteredPhone = phoneInputRef.current.value;
        const enteredEmail = emailInputRef.current.value;
        const enteredMessage = messageInputRef.current.value;

        const newCustomer = {
            enteredName,
            enteredPhone,
            enteredEmail,
            enteredMessage,
        };

        fetch(`${server}/api/contacts`, {
            method: "POST",
            body: JSON.stringify(newCustomer),
            headers: {
                "Content-Type": "application/json",
            },
        })
            .then((response) => {
                if (response.ok) {
                    return response.json();
                }
                return response.json().then((data) => {
                    throw new Error(data.message || "Something went wrong!");
                });
            })
        alert("Form submitted successfully !");
    }

    return (
        <>
            <form className={classes.contact_form}>
                <div className={classes.container}>
                    <div className={classes.header}>
                        <h1>Please leave us some comments !</h1>
                    </div>
                    <div className={classes.content}>
                        <input className={classes.name_input}
                            type="text"
                            placeholder="Your Name"
                            pattern="^[A-Za-z0-9]{3,16}$"
                            required
                            ref={nameInputRef}
                        />
                        <input className={classes.email_input}
                            type="email"
                            placeholder="Email Address"
                            pattern="^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$"
                            required
                            ref={emailInputRef}
                        />
                        <input className={classes.phone_input}
                            type="text"
                            placeholder="Phone Number"
                            pattern="(03|05|07|08|09|01[2|6|8|9])+([0-9]{8})\b"
                            required
                            ref={phoneInputRef}
                        />
                        <input type="text" placeholder="Address" />
                        <textarea
                            placeholder="Say something...."
                            ref={messageInputRef}
                        ></textarea>
                        <button onClick={submitFormHandler}>Submit</button>
                        <span className={classes.name_span}>Your name should be 3-16 characters long and should not have special characters</span>
                        <span className={classes.email_span}>You should enter a valid email</span>
                        <span className={classes.phone_span}>You should enter a valid Vietnamese phone number ex:0966244758</span>
                    </div>
                </div>
            </form>
        </>
    );
};

export default ContactForm;