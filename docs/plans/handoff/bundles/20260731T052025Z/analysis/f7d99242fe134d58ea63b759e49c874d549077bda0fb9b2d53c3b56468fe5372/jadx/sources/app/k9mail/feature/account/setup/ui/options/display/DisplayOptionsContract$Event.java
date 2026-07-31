package app.k9mail.feature.account.setup.ui.options.display;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface DisplayOptionsContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LoadAccountState implements DisplayOptionsContract$Event {
        public static final LoadAccountState INSTANCE = new LoadAccountState();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LoadAccountState);
        }

        public final int hashCode() {
            return 1814187662;
        }

        public final String toString() {
            return "LoadAccountState";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnAccountNameChanged implements DisplayOptionsContract$Event {
        public final String accountName;

        public OnAccountNameChanged(String str) {
            str.getClass();
            this.accountName = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnAccountNameChanged) && Intrinsics.areEqual(this.accountName, ((OnAccountNameChanged) obj).accountName);
        }

        public final int hashCode() {
            return this.accountName.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("OnAccountNameChanged(accountName=", this.accountName, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnBackClicked implements DisplayOptionsContract$Event {
        public static final OnBackClicked INSTANCE = new OnBackClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBackClicked);
        }

        public final int hashCode() {
            return -396788675;
        }

        public final String toString() {
            return "OnBackClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnDisplayNameChanged implements DisplayOptionsContract$Event {
        public final String displayName;

        public OnDisplayNameChanged(String str) {
            str.getClass();
            this.displayName = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnDisplayNameChanged) && Intrinsics.areEqual(this.displayName, ((OnDisplayNameChanged) obj).displayName);
        }

        public final int hashCode() {
            return this.displayName.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("OnDisplayNameChanged(displayName=", this.displayName, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnEmailSignatureChanged implements DisplayOptionsContract$Event {
        public final String emailSignature;

        public OnEmailSignatureChanged(String str) {
            str.getClass();
            this.emailSignature = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnEmailSignatureChanged) && Intrinsics.areEqual(this.emailSignature, ((OnEmailSignatureChanged) obj).emailSignature);
        }

        public final int hashCode() {
            return this.emailSignature.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("OnEmailSignatureChanged(emailSignature=", this.emailSignature, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnNextClicked implements DisplayOptionsContract$Event {
        public static final OnNextClicked INSTANCE = new OnNextClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnNextClicked);
        }

        public final int hashCode() {
            return -2067836751;
        }

        public final String toString() {
            return "OnNextClicked";
        }
    }
}
