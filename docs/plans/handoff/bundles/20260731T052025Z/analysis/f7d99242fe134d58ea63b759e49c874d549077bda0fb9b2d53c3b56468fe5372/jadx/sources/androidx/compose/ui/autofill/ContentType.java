package androidx.compose.ui.autofill;

import androidx.work.Operation$State;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ContentType {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public static final AndroidContentType PhoneNumber;
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final AndroidContentType Username = Operation$State.ContentType("username");
        public static final AndroidContentType Password = Operation$State.ContentType("password");
        public static final AndroidContentType EmailAddress = Operation$State.ContentType("emailAddress");

        static {
            Operation$State.ContentType("newUsername");
            Operation$State.ContentType("newPassword");
            Operation$State.ContentType("postalAddress");
            Operation$State.ContentType("postalCode");
            Operation$State.ContentType("creditCardNumber");
            Operation$State.ContentType("creditCardSecurityCode");
            Operation$State.ContentType("creditCardExpirationDate");
            Operation$State.ContentType("creditCardExpirationMonth");
            Operation$State.ContentType("creditCardExpirationYear");
            Operation$State.ContentType("creditCardExpirationDay");
            Operation$State.ContentType("addressCountry");
            Operation$State.ContentType("addressRegion");
            Operation$State.ContentType("addressLocality");
            Operation$State.ContentType("streetAddress");
            Operation$State.ContentType("extendedAddress");
            Operation$State.ContentType("extendedPostalCode");
            Operation$State.ContentType("personName");
            Operation$State.ContentType("personGivenName");
            Operation$State.ContentType("personFamilyName");
            Operation$State.ContentType("personMiddleName");
            Operation$State.ContentType("personMiddleInitial");
            Operation$State.ContentType("personNamePrefix");
            Operation$State.ContentType("personNameSuffix");
            PhoneNumber = Operation$State.ContentType("phoneNumber");
            Operation$State.ContentType("phoneNumberDevice");
            Operation$State.ContentType("phoneCountryCode");
            Operation$State.ContentType("phoneNational");
            Operation$State.ContentType("gender");
            Operation$State.ContentType("birthDateFull");
            Operation$State.ContentType("birthDateDay");
            Operation$State.ContentType("birthDateMonth");
            Operation$State.ContentType("birthDateYear");
            Operation$State.ContentType("smsOTPCode");
        }
    }
}
