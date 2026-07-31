package com.fsck.k9.activity.setup;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.size.ViewSizeResolver;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AccountSetupCompositionContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class BackPressed implements AccountSetupCompositionContract$Event {
        public static final BackPressed INSTANCE = new BackPressed();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BackPressed);
        }

        public final int hashCode() {
            return 1740488841;
        }

        public final String toString() {
            return "BackPressed";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class BccEmailChange implements AccountSetupCompositionContract$Event {
        public final String bccEmail;

        public BccEmailChange(String str) {
            str.getClass();
            this.bccEmail = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BccEmailChange) && Intrinsics.areEqual(this.bccEmail, ((BccEmailChange) obj).bccEmail);
        }

        public final int hashCode() {
            return this.bccEmail.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("BccEmailChange(bccEmail=", this.bccEmail, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SavePressed implements AccountSetupCompositionContract$Event {
        public static final SavePressed INSTANCE = new SavePressed();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof SavePressed);
        }

        public final int hashCode() {
            return -591737037;
        }

        public final String toString() {
            return "SavePressed";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SenderEmailChange implements AccountSetupCompositionContract$Event {
        public final String email;

        public SenderEmailChange(String str) {
            str.getClass();
            this.email = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SenderEmailChange) && Intrinsics.areEqual(this.email, ((SenderEmailChange) obj).email);
        }

        public final int hashCode() {
            return this.email.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("SenderEmailChange(email=", this.email, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SenderNameChange implements AccountSetupCompositionContract$Event {
        public final String name;

        public SenderNameChange(String str) {
            str.getClass();
            this.name = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SenderNameChange) && Intrinsics.areEqual(this.name, ((SenderNameChange) obj).name);
        }

        public final int hashCode() {
            return this.name.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("SenderNameChange(name=", this.name, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SignatureChange implements AccountSetupCompositionContract$Event {
        public final String signature;

        public SignatureChange(String str) {
            str.getClass();
            this.signature = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SignatureChange) && Intrinsics.areEqual(this.signature, ((SignatureChange) obj).signature);
        }

        public final int hashCode() {
            return this.signature.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("SignatureChange(signature=", this.signature, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SignatureLocationChange implements AccountSetupCompositionContract$Event {
        public final Pair signatureLocation;

        public SignatureLocationChange(Pair pair) {
            pair.getClass();
            this.signatureLocation = pair;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SignatureLocationChange) && Intrinsics.areEqual(this.signatureLocation, ((SignatureLocationChange) obj).signatureLocation);
        }

        public final int hashCode() {
            return this.signatureLocation.hashCode();
        }

        public final String toString() {
            return "SignatureLocationChange(signatureLocation=" + this.signatureLocation + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UseSignatureChange implements AccountSetupCompositionContract$Event {
        public final boolean useSignature;

        public UseSignatureChange(boolean z) {
            this.useSignature = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UseSignatureChange) && this.useSignature == ((UseSignatureChange) obj).useSignature;
        }

        public final int hashCode() {
            return this.useSignature ? 1231 : 1237;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("UseSignatureChange(useSignature=", ")", this.useSignature);
        }
    }
}
