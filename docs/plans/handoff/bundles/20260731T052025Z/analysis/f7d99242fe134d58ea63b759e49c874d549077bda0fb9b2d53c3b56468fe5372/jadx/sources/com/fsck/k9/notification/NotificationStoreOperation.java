package com.fsck.k9.notification;

import app.k9mail.legacy.message.controller.MessageReference;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface NotificationStoreOperation {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Add implements NotificationStoreOperation {
        public final MessageReference messageReference;
        public final int notificationId;
        public final long timestamp;

        public Add(MessageReference messageReference, int i, long j) {
            this.messageReference = messageReference;
            this.notificationId = i;
            this.timestamp = j;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Add)) {
                return false;
            }
            Add add = (Add) obj;
            return this.messageReference.equals(add.messageReference) && this.notificationId == add.notificationId && this.timestamp == add.timestamp;
        }

        public final int hashCode() {
            int hashCode = ((this.messageReference.hashCode() * 31) + this.notificationId) * 31;
            long j = this.timestamp;
            return hashCode + ((int) (j ^ (j >>> 32)));
        }

        public final String toString() {
            return "Add(messageReference=" + this.messageReference + ", notificationId=" + this.notificationId + ", timestamp=" + this.timestamp + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ChangeToActive implements NotificationStoreOperation {
        public final MessageReference messageReference;
        public final int notificationId;

        public ChangeToActive(MessageReference messageReference, int i) {
            this.messageReference = messageReference;
            this.notificationId = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ChangeToActive)) {
                return false;
            }
            ChangeToActive changeToActive = (ChangeToActive) obj;
            return this.messageReference.equals(changeToActive.messageReference) && this.notificationId == changeToActive.notificationId;
        }

        public final int hashCode() {
            return (this.messageReference.hashCode() * 31) + this.notificationId;
        }

        public final String toString() {
            return "ChangeToActive(messageReference=" + this.messageReference + ", notificationId=" + this.notificationId + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ChangeToInactive implements NotificationStoreOperation {
        public final MessageReference messageReference;

        public ChangeToInactive(MessageReference messageReference) {
            this.messageReference = messageReference;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ChangeToInactive) && this.messageReference.equals(((ChangeToInactive) obj).messageReference);
        }

        public final int hashCode() {
            return this.messageReference.hashCode();
        }

        public final String toString() {
            return "ChangeToInactive(messageReference=" + this.messageReference + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Remove implements NotificationStoreOperation {
        public final MessageReference messageReference;

        public Remove(MessageReference messageReference) {
            messageReference.getClass();
            this.messageReference = messageReference;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Remove) && Intrinsics.areEqual(this.messageReference, ((Remove) obj).messageReference);
        }

        public final int hashCode() {
            return this.messageReference.hashCode();
        }

        public final String toString() {
            return "Remove(messageReference=" + this.messageReference + ")";
        }
    }
}
