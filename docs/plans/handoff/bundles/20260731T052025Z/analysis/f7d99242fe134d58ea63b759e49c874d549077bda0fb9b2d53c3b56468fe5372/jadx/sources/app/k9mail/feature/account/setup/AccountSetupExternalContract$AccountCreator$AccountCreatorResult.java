package app.k9mail.feature.account.setup;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AccountSetupExternalContract$AccountCreator$AccountCreatorResult {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Error implements AccountSetupExternalContract$AccountCreator$AccountCreatorResult {
        public final String message;

        public Error(String str) {
            this.message = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Error) && this.message.equals(((Error) obj).message);
        }

        public final int hashCode() {
            return this.message.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("Error(message=", this.message, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Success implements AccountSetupExternalContract$AccountCreator$AccountCreatorResult {
        public final String accountUuid;

        public Success(String str) {
            str.getClass();
            this.accountUuid = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Success) && Intrinsics.areEqual(this.accountUuid, ((Success) obj).accountUuid);
        }

        public final int hashCode() {
            return this.accountUuid.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("Success(accountUuid=", this.accountUuid, ")");
        }
    }
}
