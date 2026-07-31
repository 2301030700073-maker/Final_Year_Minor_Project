package androidx.work.impl.constraints;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NetworkState {
    public final boolean isBlocked;
    public final boolean isConnected;
    public final boolean isMetered;
    public final boolean isNotRoaming;
    public final boolean isValidated;

    public NetworkState(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.isConnected = z;
        this.isValidated = z2;
        this.isMetered = z3;
        this.isNotRoaming = z4;
        this.isBlocked = z5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NetworkState)) {
            return false;
        }
        NetworkState networkState = (NetworkState) obj;
        return this.isConnected == networkState.isConnected && this.isValidated == networkState.isValidated && this.isMetered == networkState.isMetered && this.isNotRoaming == networkState.isNotRoaming && this.isBlocked == networkState.isBlocked;
    }

    public final int hashCode() {
        return ((((((((this.isConnected ? 1231 : 1237) * 31) + (this.isValidated ? 1231 : 1237)) * 31) + (this.isMetered ? 1231 : 1237)) * 31) + (this.isNotRoaming ? 1231 : 1237)) * 31) + (this.isBlocked ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NetworkState(isConnected=");
        sb.append(this.isConnected);
        sb.append(", isValidated=");
        sb.append(this.isValidated);
        sb.append(", isMetered=");
        sb.append(this.isMetered);
        sb.append(", isNotRoaming=");
        sb.append(this.isNotRoaming);
        sb.append(", isBlocked=");
        return CameraDevices$CC.m(sb, this.isBlocked, ')');
    }
}
