package net.thunderbird.core.preference.debugging;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DebuggingSettings {
    public final boolean isDebugLoggingEnabled;
    public final boolean isSensitiveLoggingEnabled;
    public final boolean isSyncLoggingEnabled;

    public DebuggingSettings(boolean z, boolean z2, boolean z3) {
        this.isDebugLoggingEnabled = z;
        this.isSyncLoggingEnabled = z2;
        this.isSensitiveLoggingEnabled = z3;
    }

    public static DebuggingSettings copy$default(DebuggingSettings debuggingSettings, boolean z, boolean z2, boolean z3, int i) {
        if ((i & 1) != 0) {
            z = debuggingSettings.isDebugLoggingEnabled;
        }
        if ((i & 2) != 0) {
            z2 = debuggingSettings.isSyncLoggingEnabled;
        }
        if ((i & 4) != 0) {
            z3 = debuggingSettings.isSensitiveLoggingEnabled;
        }
        debuggingSettings.getClass();
        return new DebuggingSettings(z, z2, z3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DebuggingSettings)) {
            return false;
        }
        DebuggingSettings debuggingSettings = (DebuggingSettings) obj;
        return this.isDebugLoggingEnabled == debuggingSettings.isDebugLoggingEnabled && this.isSyncLoggingEnabled == debuggingSettings.isSyncLoggingEnabled && this.isSensitiveLoggingEnabled == debuggingSettings.isSensitiveLoggingEnabled;
    }

    public final int hashCode() {
        return ((((this.isDebugLoggingEnabled ? 1231 : 1237) * 31) + (this.isSyncLoggingEnabled ? 1231 : 1237)) * 31) + (this.isSensitiveLoggingEnabled ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DebuggingSettings(isDebugLoggingEnabled=");
        sb.append(this.isDebugLoggingEnabled);
        sb.append(", isSyncLoggingEnabled=");
        sb.append(this.isSyncLoggingEnabled);
        sb.append(", isSensitiveLoggingEnabled=");
        return CameraDevices$CC.m(")", sb, this.isSensitiveLoggingEnabled);
    }
}
