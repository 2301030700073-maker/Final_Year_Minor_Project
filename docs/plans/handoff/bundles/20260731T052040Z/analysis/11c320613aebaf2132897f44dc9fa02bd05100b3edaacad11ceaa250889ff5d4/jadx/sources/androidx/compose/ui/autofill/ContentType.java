package androidx.compose.ui.autofill;

import androidx.sqlite.SQLite;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface ContentType {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final AndroidContentType Password;

        static {
            SQLite.ContentType("username");
            Password = SQLite.ContentType("password");
            SQLite.ContentType("emailAddress");
            SQLite.ContentType("newUsername");
            SQLite.ContentType("newPassword");
            SQLite.ContentType("postalAddress");
            SQLite.ContentType("postalCode");
            SQLite.ContentType("creditCardNumber");
            SQLite.ContentType("creditCardSecurityCode");
            SQLite.ContentType("creditCardExpirationDate");
            SQLite.ContentType("creditCardExpirationMonth");
            SQLite.ContentType("creditCardExpirationYear");
            SQLite.ContentType("creditCardExpirationDay");
            SQLite.ContentType("addressCountry");
            SQLite.ContentType("addressRegion");
            SQLite.ContentType("addressLocality");
            SQLite.ContentType("streetAddress");
            SQLite.ContentType("extendedAddress");
            SQLite.ContentType("extendedPostalCode");
            SQLite.ContentType("personName");
            SQLite.ContentType("personGivenName");
            SQLite.ContentType("personFamilyName");
            SQLite.ContentType("personMiddleName");
            SQLite.ContentType("personMiddleInitial");
            SQLite.ContentType("personNamePrefix");
            SQLite.ContentType("personNameSuffix");
            SQLite.ContentType("phoneNumber");
            SQLite.ContentType("phoneNumberDevice");
            SQLite.ContentType("phoneCountryCode");
            SQLite.ContentType("phoneNational");
            SQLite.ContentType("gender");
            SQLite.ContentType("birthDateFull");
            SQLite.ContentType("birthDateDay");
            SQLite.ContentType("birthDateMonth");
            SQLite.ContentType("birthDateYear");
            SQLite.ContentType("smsOTPCode");
        }
    }
}
