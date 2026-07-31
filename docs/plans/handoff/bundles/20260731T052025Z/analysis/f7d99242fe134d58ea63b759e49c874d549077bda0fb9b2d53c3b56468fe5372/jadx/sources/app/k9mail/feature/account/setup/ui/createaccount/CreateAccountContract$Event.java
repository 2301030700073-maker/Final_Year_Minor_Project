package app.k9mail.feature.account.setup.ui.createaccount;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface CreateAccountContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CreateAccount implements CreateAccountContract$Event {
        public static final CreateAccount INSTANCE = new CreateAccount();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CreateAccount);
        }

        public final int hashCode() {
            return 733736609;
        }

        public final String toString() {
            return "CreateAccount";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnBackClicked implements CreateAccountContract$Event {
        public static final OnBackClicked INSTANCE = new OnBackClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBackClicked);
        }

        public final int hashCode() {
            return -267916559;
        }

        public final String toString() {
            return "OnBackClicked";
        }
    }
}
