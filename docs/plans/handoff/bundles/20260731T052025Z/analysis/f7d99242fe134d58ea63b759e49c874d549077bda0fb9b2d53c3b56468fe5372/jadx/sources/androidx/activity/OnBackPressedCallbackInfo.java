package androidx.activity;

import androidx.lifecycle.LifecycleOwner;
import androidx.work.OperationKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OnBackPressedCallbackInfo extends OperationKt {
    public final OnBackPressedCallback callback;
    public final LifecycleOwner owner;

    public OnBackPressedCallbackInfo(OnBackPressedCallback onBackPressedCallback, LifecycleOwner lifecycleOwner) {
        onBackPressedCallback.getClass();
        this.callback = onBackPressedCallback;
        this.owner = lifecycleOwner;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OnBackPressedCallbackInfo)) {
            return false;
        }
        OnBackPressedCallbackInfo onBackPressedCallbackInfo = (OnBackPressedCallbackInfo) obj;
        return Intrinsics.areEqual(this.callback, onBackPressedCallbackInfo.callback) && Intrinsics.areEqual(this.owner, onBackPressedCallbackInfo.owner);
    }

    public final int hashCode() {
        int hashCode = this.callback.hashCode() * 31;
        LifecycleOwner lifecycleOwner = this.owner;
        return hashCode + (lifecycleOwner == null ? 0 : lifecycleOwner.hashCode());
    }

    public final String toString() {
        return "OnBackPressedCallbackInfo(callback=" + this.callback + ", owner=" + this.owner + ')';
    }
}
