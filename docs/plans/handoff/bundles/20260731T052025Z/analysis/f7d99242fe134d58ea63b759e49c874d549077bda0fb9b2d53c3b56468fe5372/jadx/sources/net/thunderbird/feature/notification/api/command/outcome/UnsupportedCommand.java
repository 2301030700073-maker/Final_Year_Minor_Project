package net.thunderbird.feature.notification.api.command.outcome;

import net.thunderbird.feature.notification.api.command.NotificationCommand;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnsupportedCommand implements Failure {
    public final NotificationCommand command;
    public final UnsupportedCommand$Reason$FeatureFlagDisabled reason;

    public UnsupportedCommand(NotificationCommand notificationCommand, UnsupportedCommand$Reason$FeatureFlagDisabled unsupportedCommand$Reason$FeatureFlagDisabled) {
        this.command = notificationCommand;
        this.reason = unsupportedCommand$Reason$FeatureFlagDisabled;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UnsupportedCommand)) {
            return false;
        }
        UnsupportedCommand unsupportedCommand = (UnsupportedCommand) obj;
        return this.command.equals(unsupportedCommand.command) && this.reason.equals(unsupportedCommand.reason);
    }

    public final int hashCode() {
        return this.reason.key.hashCode() + (this.command.hashCode() * 31);
    }

    public final String toString() {
        return "UnsupportedCommand(command=" + this.command + ", reason=" + this.reason + ")";
    }
}
