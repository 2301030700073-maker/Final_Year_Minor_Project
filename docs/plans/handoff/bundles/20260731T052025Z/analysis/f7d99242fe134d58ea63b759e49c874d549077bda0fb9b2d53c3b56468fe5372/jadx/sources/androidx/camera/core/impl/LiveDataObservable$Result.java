package androidx.camera.core.impl;

import androidx.camera.core.impl.CameraInternal;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LiveDataObservable$Result {
    public final Object mValue;

    public LiveDataObservable$Result(CameraInternal.State state) {
        this.mValue = state;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[Result: <");
        sb.append("Value: " + this.mValue);
        sb.append(">]");
        return sb.toString();
    }
}
