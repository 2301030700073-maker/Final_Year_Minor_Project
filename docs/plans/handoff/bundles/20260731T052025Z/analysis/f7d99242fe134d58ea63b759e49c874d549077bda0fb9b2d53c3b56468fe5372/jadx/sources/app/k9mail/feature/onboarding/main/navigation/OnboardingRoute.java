package app.k9mail.feature.onboarding.main.navigation;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface OnboardingRoute {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ThundermailScanQrCode implements OnboardingRoute {
        public static final ThundermailScanQrCode INSTANCE = new ThundermailScanQrCode();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ThundermailScanQrCode);
        }

        public final int hashCode() {
            return 1611218946;
        }

        public final String toString() {
            return "ThundermailScanQrCode";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ThundermailSignIn implements OnboardingRoute {
        public static final ThundermailSignIn INSTANCE = new ThundermailSignIn();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ThundermailSignIn);
        }

        public final int hashCode() {
            return -1526749511;
        }

        public final String toString() {
            return "ThundermailSignIn";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    @Serializable
    public final class Onboarding implements OnboardingRoute {
        public static final Companion Companion = new Companion();
        public final String accountId;
        public final String basePath;

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Companion {
            public final KSerializer serializer() {
                return OnboardingRoute$Onboarding$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Onboarding(int i, String str, String str2) {
            this.accountId = (i & 1) == 0 ? null : str;
            if ((i & 2) == 0) {
                this.basePath = "app://onboarding";
            } else {
                this.basePath = str2;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Onboarding) && Intrinsics.areEqual(this.accountId, ((Onboarding) obj).accountId);
        }

        public final int hashCode() {
            String str = this.accountId;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("Onboarding(accountId=", this.accountId, ")");
        }

        public Onboarding(String str) {
            this.accountId = str;
            this.basePath = "app://onboarding";
        }
    }
}
