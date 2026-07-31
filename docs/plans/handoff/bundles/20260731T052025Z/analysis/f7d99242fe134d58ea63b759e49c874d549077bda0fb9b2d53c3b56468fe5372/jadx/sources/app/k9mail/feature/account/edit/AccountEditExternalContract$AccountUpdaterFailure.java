package app.k9mail.feature.account.edit;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AccountEditExternalContract$AccountUpdaterFailure {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AccountNotFound implements AccountEditExternalContract$AccountUpdaterFailure {
        public final String accountUuid;

        public AccountNotFound(String str) {
            str.getClass();
            this.accountUuid = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AccountNotFound) && Intrinsics.areEqual(this.accountUuid, ((AccountNotFound) obj).accountUuid);
        }

        public final int hashCode() {
            return this.accountUuid.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("AccountNotFound(accountUuid=", this.accountUuid, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UnknownError implements AccountEditExternalContract$AccountUpdaterFailure {
        public final Exception error;

        public UnknownError(Exception exc) {
            this.error = exc;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UnknownError) && this.error.equals(((UnknownError) obj).error);
        }

        public final int hashCode() {
            return this.error.hashCode();
        }

        public final String toString() {
            return "UnknownError(error=" + this.error + ")";
        }
    }
}
