package net.thunderbird.feature.notification.api.command.outcome;

import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.notification.api.NotificationId;
import net.thunderbird.feature.notification.api.command.NotificationCommand;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Success {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Executed implements Success {
        public final NotificationCommand command;
        public final int notificationId;

        public Executed(int i, NotificationCommand notificationCommand) {
            notificationCommand.getClass();
            this.notificationId = i;
            this.command = notificationCommand;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Executed)) {
                return false;
            }
            Executed executed = (Executed) obj;
            return this.notificationId == executed.notificationId && Intrinsics.areEqual(this.command, executed.command);
        }

        @Override // net.thunderbird.feature.notification.api.command.outcome.Success
        public final int getRawNotificationId() {
            return this.notificationId;
        }

        public final int hashCode() {
            return this.command.hashCode() + (this.notificationId * 31);
        }

        public final String toString() {
            return "Executed(notificationId=" + NotificationId.m1040toStringimpl(this.notificationId) + ", command=" + this.command + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NoOperation implements Success {
        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NoOperation);
        }

        @Override // net.thunderbird.feature.notification.api.command.outcome.Success
        public final int getRawNotificationId() {
            return Integer.MIN_VALUE;
        }

        public final int hashCode() {
            return 0;
        }

        public final String toString() {
            return "NoOperation(command=null)";
        }
    }

    int getRawNotificationId();
}
