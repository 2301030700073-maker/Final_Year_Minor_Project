package app.k9mail.feature.account.edit.navigation;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AccountEditRoute {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    @Serializable
    public final class IncomingServerSettings implements AccountEditRoute {
        public static final Companion Companion = new Companion();
        public final String accountId;
        public final String basePath;

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Companion {
            public final KSerializer serializer() {
                return AccountEditRoute$IncomingServerSettings$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ IncomingServerSettings(int i, String str, String str2) {
            if (1 != (i & 1)) {
                TuplesKt.throwMissingFieldException(i, 1, AccountEditRoute$IncomingServerSettings$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.accountId = str;
            if ((i & 2) == 0) {
                this.basePath = "app://account/edit/incoming";
            } else {
                this.basePath = str2;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof IncomingServerSettings) && Intrinsics.areEqual(this.accountId, ((IncomingServerSettings) obj).accountId);
        }

        public final int hashCode() {
            return this.accountId.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("IncomingServerSettings(accountId=", this.accountId, ")");
        }

        public IncomingServerSettings(String str) {
            str.getClass();
            this.accountId = str;
            this.basePath = "app://account/edit/incoming";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    @Serializable
    public final class OutgoingServerSettings implements AccountEditRoute {
        public static final Companion Companion = new Companion();
        public final String accountId;
        public final String basePath;

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Companion {
            public final KSerializer serializer() {
                return AccountEditRoute$OutgoingServerSettings$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ OutgoingServerSettings(int i, String str, String str2) {
            if (1 != (i & 1)) {
                TuplesKt.throwMissingFieldException(i, 1, AccountEditRoute$OutgoingServerSettings$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.accountId = str;
            if ((i & 2) == 0) {
                this.basePath = "app://account/edit/outgoing";
            } else {
                this.basePath = str2;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OutgoingServerSettings) && Intrinsics.areEqual(this.accountId, ((OutgoingServerSettings) obj).accountId);
        }

        public final int hashCode() {
            return this.accountId.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("OutgoingServerSettings(accountId=", this.accountId, ")");
        }

        public OutgoingServerSettings(String str) {
            str.getClass();
            this.accountId = str;
            this.basePath = "app://account/edit/outgoing";
        }
    }
}
