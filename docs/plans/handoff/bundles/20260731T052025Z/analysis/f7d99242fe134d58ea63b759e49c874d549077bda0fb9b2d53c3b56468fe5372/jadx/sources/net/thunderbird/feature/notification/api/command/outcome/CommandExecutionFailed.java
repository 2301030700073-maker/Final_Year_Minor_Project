package net.thunderbird.feature.notification.api.command.outcome;

import androidx.compose.ui.Modifier;
import net.thunderbird.feature.notification.api.command.NotificationCommand;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CommandExecutionFailed implements Failure {
    public final NotificationCommand command;
    public final String message;

    public CommandExecutionFailed(int i, NotificationCommand notificationCommand) {
        String str = (i & 2) != 0 ? "Command failed to execute." : "Notification is not registered in the NotificationRegistry.";
        this.command = notificationCommand;
        this.message = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CommandExecutionFailed)) {
            return false;
        }
        CommandExecutionFailed commandExecutionFailed = (CommandExecutionFailed) obj;
        return this.command.equals(commandExecutionFailed.command) && this.message.equals(commandExecutionFailed.message);
    }

    public final int hashCode() {
        return Modifier.CC.m(this.command.hashCode() * 31, this.message, 31);
    }

    public final String toString() {
        return "CommandExecutionFailed(command=" + this.command + ", message=" + this.message + ", throwable=null)";
    }
}
