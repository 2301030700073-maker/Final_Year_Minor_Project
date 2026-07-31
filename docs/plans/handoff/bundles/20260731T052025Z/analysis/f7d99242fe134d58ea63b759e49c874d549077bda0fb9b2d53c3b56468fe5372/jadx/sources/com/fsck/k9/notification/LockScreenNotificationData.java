package com.fsck.k9.notification;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface LockScreenNotificationData {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class None implements LockScreenNotificationData {
        public static final None INSTANCE$1 = new None();
        public static final None INSTANCE$2 = new None();
        public static final None INSTANCE = new None();
        public static final None INSTANCE$3 = new None();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SenderNames implements LockScreenNotificationData {
        public final String senderNames;

        public SenderNames(String str) {
            this.senderNames = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SenderNames) && this.senderNames.equals(((SenderNames) obj).senderNames);
        }

        public final int hashCode() {
            return this.senderNames.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("SenderNames(senderNames=", this.senderNames, ")");
        }
    }
}
