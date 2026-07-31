package com.fsck.k9.backend;

import com.fsck.k9.backend.api.Backend;
import com.fsck.k9.mail.ServerSettings;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BackendContainer {
    public final Backend backend;
    public final ServerSettings incomingServerSettings;
    public final ServerSettings outgoingServerSettings;

    public BackendContainer(Backend backend, ServerSettings serverSettings, ServerSettings serverSettings2) {
        backend.getClass();
        this.backend = backend;
        this.incomingServerSettings = serverSettings;
        this.outgoingServerSettings = serverSettings2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BackendContainer)) {
            return false;
        }
        BackendContainer backendContainer = (BackendContainer) obj;
        return Intrinsics.areEqual(this.backend, backendContainer.backend) && this.incomingServerSettings.equals(backendContainer.incomingServerSettings) && this.outgoingServerSettings.equals(backendContainer.outgoingServerSettings);
    }

    public final int hashCode() {
        return this.outgoingServerSettings.hashCode() + ((this.incomingServerSettings.hashCode() + (this.backend.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "BackendContainer(backend=" + this.backend + ", incomingServerSettings=" + this.incomingServerSettings + ", outgoingServerSettings=" + this.outgoingServerSettings + ")";
    }
}
