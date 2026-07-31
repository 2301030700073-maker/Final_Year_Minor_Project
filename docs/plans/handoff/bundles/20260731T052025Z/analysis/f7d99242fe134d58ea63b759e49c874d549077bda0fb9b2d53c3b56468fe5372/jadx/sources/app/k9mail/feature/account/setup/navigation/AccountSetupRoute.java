package app.k9mail.feature.account.setup.navigation;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AccountSetupRoute {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ThundermailScanQrCode implements AccountSetupRoute {
        public static final ThundermailScanQrCode INSTANCE = new ThundermailScanQrCode();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ThundermailScanQrCode);
        }

        public final int hashCode() {
            return 1254374109;
        }

        public final String toString() {
            return "ThundermailScanQrCode";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ThundermailSignIn implements AccountSetupRoute {
        public static final ThundermailSignIn INSTANCE = new ThundermailSignIn();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ThundermailSignIn);
        }

        public final int hashCode() {
            return -2146941164;
        }

        public final String toString() {
            return "ThundermailSignIn";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    @Serializable
    public final class AccountSetup implements AccountSetupRoute {
        public static final Companion Companion = new Companion();
        public final String accountId;
        public final String basePath;

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Companion {
            public final KSerializer serializer() {
                return AccountSetupRoute$AccountSetup$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ AccountSetup(int i, String str, String str2) {
            this.accountId = (i & 1) == 0 ? null : str;
            if ((i & 2) == 0) {
                this.basePath = "app://account/setup";
            } else {
                this.basePath = str2;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AccountSetup) && Intrinsics.areEqual(this.accountId, ((AccountSetup) obj).accountId);
        }

        public final int hashCode() {
            String str = this.accountId;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("AccountSetup(accountId=", this.accountId, ")");
        }

        public AccountSetup(String str) {
            this.accountId = str;
            this.basePath = "app://account/setup";
        }
    }
}
