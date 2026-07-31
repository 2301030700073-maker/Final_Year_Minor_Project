package app.k9mail.feature.account.setup.ui.createaccount;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface CreateAccountContract$Effect {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NavigateBack implements CreateAccountContract$Effect {
        public static final NavigateBack INSTANCE = new NavigateBack();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NavigateBack);
        }

        public final int hashCode() {
            return 1268084953;
        }

        public final String toString() {
            return "NavigateBack";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NavigateNext implements CreateAccountContract$Effect {
        public final String accountUuid;

        public NavigateNext(String str) {
            str.getClass();
            this.accountUuid = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NavigateNext) && Intrinsics.areEqual(this.accountUuid, ((NavigateNext) obj).accountUuid);
        }

        public final int hashCode() {
            return this.accountUuid.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("NavigateNext(accountUuid=", CameraDevices$CC.m("AccountUuid(value=", this.accountUuid, ")"), ")");
        }
    }
}
