package net.thunderbird.feature.thundermail.internal.common.ui;

import com.fsck.k9.mail.ServerSettings;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThundermailContract$State {
    public final ThundermailContract$Error error;
    public final ServerSettings incomingServerSettings;
    public final boolean initialized;
    public final ServerSettings outgoingServerSettings;

    public ThundermailContract$State(boolean z, ServerSettings serverSettings, ServerSettings serverSettings2, ThundermailContract$Error thundermailContract$Error) {
        this.initialized = z;
        this.incomingServerSettings = serverSettings;
        this.outgoingServerSettings = serverSettings2;
        this.error = thundermailContract$Error;
    }

    public static ThundermailContract$State copy$default(ThundermailContract$State thundermailContract$State, ServerSettings serverSettings, ServerSettings serverSettings2, ThundermailContract$Error thundermailContract$Error, int i) {
        boolean z = (i & 1) != 0 ? thundermailContract$State.initialized : true;
        if ((i & 2) != 0) {
            serverSettings = thundermailContract$State.incomingServerSettings;
        }
        if ((i & 4) != 0) {
            serverSettings2 = thundermailContract$State.outgoingServerSettings;
        }
        if ((i & 8) != 0) {
            thundermailContract$Error = thundermailContract$State.error;
        }
        thundermailContract$State.getClass();
        return new ThundermailContract$State(z, serverSettings, serverSettings2, thundermailContract$Error);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThundermailContract$State)) {
            return false;
        }
        ThundermailContract$State thundermailContract$State = (ThundermailContract$State) obj;
        return this.initialized == thundermailContract$State.initialized && Intrinsics.areEqual(this.incomingServerSettings, thundermailContract$State.incomingServerSettings) && Intrinsics.areEqual(this.outgoingServerSettings, thundermailContract$State.outgoingServerSettings) && Intrinsics.areEqual(this.error, thundermailContract$State.error);
    }

    public final int hashCode() {
        int i = (this.initialized ? 1231 : 1237) * 31;
        ServerSettings serverSettings = this.incomingServerSettings;
        int hashCode = (i + (serverSettings == null ? 0 : serverSettings.hashCode())) * 31;
        ServerSettings serverSettings2 = this.outgoingServerSettings;
        int hashCode2 = (hashCode + (serverSettings2 == null ? 0 : serverSettings2.hashCode())) * 31;
        ThundermailContract$Error thundermailContract$Error = this.error;
        return hashCode2 + (thundermailContract$Error != null ? thundermailContract$Error.hashCode() : 0);
    }

    public final String toString() {
        return "State(initialized=" + this.initialized + ", incomingServerSettings=" + this.incomingServerSettings + ", outgoingServerSettings=" + this.outgoingServerSettings + ", error=" + this.error + ")";
    }
}
