package androidx.compose.ui.autofill;

import androidx.work.OperationKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface ContentType {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final AndroidContentType EmailAddress;
        public static final AndroidContentType Password;
        public static final AndroidContentType PhoneNumber;

        static {
            OperationKt.ContentType("username");
            Password = OperationKt.ContentType("password");
            EmailAddress = OperationKt.ContentType("emailAddress");
            OperationKt.ContentType("newUsername");
            OperationKt.ContentType("newPassword");
            OperationKt.ContentType("postalAddress");
            OperationKt.ContentType("postalCode");
            OperationKt.ContentType("creditCardNumber");
            OperationKt.ContentType("creditCardSecurityCode");
            OperationKt.ContentType("creditCardExpirationDate");
            OperationKt.ContentType("creditCardExpirationMonth");
            OperationKt.ContentType("creditCardExpirationYear");
            OperationKt.ContentType("creditCardExpirationDay");
            OperationKt.ContentType("addressCountry");
            OperationKt.ContentType("addressRegion");
            OperationKt.ContentType("addressLocality");
            OperationKt.ContentType("streetAddress");
            OperationKt.ContentType("extendedAddress");
            OperationKt.ContentType("extendedPostalCode");
            OperationKt.ContentType("personName");
            OperationKt.ContentType("personGivenName");
            OperationKt.ContentType("personFamilyName");
            OperationKt.ContentType("personMiddleName");
            OperationKt.ContentType("personMiddleInitial");
            OperationKt.ContentType("personNamePrefix");
            OperationKt.ContentType("personNameSuffix");
            PhoneNumber = OperationKt.ContentType("phoneNumber");
            OperationKt.ContentType("phoneNumberDevice");
            OperationKt.ContentType("phoneCountryCode");
            OperationKt.ContentType("phoneNational");
            OperationKt.ContentType("gender");
            OperationKt.ContentType("birthDateFull");
            OperationKt.ContentType("birthDateDay");
            OperationKt.ContentType("birthDateMonth");
            OperationKt.ContentType("birthDateYear");
            OperationKt.ContentType("smsOTPCode");
        }
    }
}
