package app.k9mail.feature.settings.p000import.ui;

import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AuthFlowState {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Failed implements AuthFlowState {
        public final String errorCode;
        public final String errorMessage;

        public Failed(String str, String str2) {
            this.errorCode = str;
            this.errorMessage = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Failed)) {
                return false;
            }
            Failed failed = (Failed) obj;
            return Intrinsics.areEqual(this.errorCode, failed.errorCode) && Intrinsics.areEqual(this.errorMessage, failed.errorMessage);
        }

        public final int hashCode() {
            String str = this.errorCode;
            int hashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.errorMessage;
            return hashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return CollectionsKt.joinToString$default(ArraysKt___ArraysKt.filterNotNull(new String[]{this.errorCode, this.errorMessage}), " - ", null, null, null, 62);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Idle implements AuthFlowState {
        public static final Idle INSTANCE$1 = new Idle();
        public static final Idle INSTANCE$2 = new Idle();
        public static final Idle INSTANCE = new Idle();
        public static final Idle INSTANCE$3 = new Idle();
        public static final Idle INSTANCE$4 = new Idle();
    }
}
