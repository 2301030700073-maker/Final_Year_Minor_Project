package app.k9mail.feature.account.edit;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AccountEditExternalContract$AccountUpdaterResult {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Failure implements AccountEditExternalContract$AccountUpdaterResult {
        public final AccountEditExternalContract$AccountUpdaterFailure error;

        public Failure(AccountEditExternalContract$AccountUpdaterFailure accountEditExternalContract$AccountUpdaterFailure) {
            this.error = accountEditExternalContract$AccountUpdaterFailure;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Failure) && this.error.equals(((Failure) obj).error);
        }

        public final int hashCode() {
            return this.error.hashCode();
        }

        public final String toString() {
            return "Failure(error=" + this.error + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Success implements AccountEditExternalContract$AccountUpdaterResult {
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
