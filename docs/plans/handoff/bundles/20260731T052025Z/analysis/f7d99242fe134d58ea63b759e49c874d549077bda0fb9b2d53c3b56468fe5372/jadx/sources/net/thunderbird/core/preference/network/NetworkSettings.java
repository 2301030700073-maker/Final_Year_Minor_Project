package net.thunderbird.core.preference.network;

import net.thunderbird.core.preference.BackgroundOps;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NetworkSettings {
    public final BackgroundOps backgroundOps;

    public NetworkSettings(BackgroundOps backgroundOps) {
        backgroundOps.getClass();
        this.backgroundOps = backgroundOps;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof NetworkSettings) && this.backgroundOps == ((NetworkSettings) obj).backgroundOps;
    }

    public final int hashCode() {
        return this.backgroundOps.hashCode();
    }

    public final String toString() {
        return "NetworkSettings(backgroundOps=" + this.backgroundOps + ")";
    }
}
