package net.thunderbird.feature.notification.api.command.outcome;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CommandNotCreated implements Failure {
    public final String message;

    public CommandNotCreated(String str) {
        this.message = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CommandNotCreated) && this.message.equals(((CommandNotCreated) obj).message);
    }

    public final int hashCode() {
        return this.message.hashCode();
    }

    public final String toString() {
        return CameraDevices$CC.m("CommandNotCreated(message=", this.message, ")");
    }
}
