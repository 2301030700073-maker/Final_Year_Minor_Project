package com.fsck.k9.ui.settings.notificationactions;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface NotificationListItem {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Action implements NotificationListItem {
        public final MessageNotificationAction action;

        public Action(MessageNotificationAction messageNotificationAction) {
            messageNotificationAction.getClass();
            this.action = messageNotificationAction;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Action) && this.action == ((Action) obj).action;
        }

        public final int hashCode() {
            return this.action.hashCode();
        }

        public final String toString() {
            return "Action(action=" + this.action + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Cutoff implements NotificationListItem {
        public static final Cutoff INSTANCE = new Cutoff();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Cutoff);
        }

        public final int hashCode() {
            return 790417342;
        }

        public final String toString() {
            return "Cutoff";
        }
    }
}
