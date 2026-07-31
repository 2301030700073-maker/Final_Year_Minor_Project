package androidx.activity;

import androidx.fragment.app.FragmentManager$1;
import androidx.lifecycle.LifecycleOwner;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OnBackPressedCallbackInfo extends TuplesKt {
    public final FragmentManager$1 callback;
    public final LifecycleOwner owner;

    public OnBackPressedCallbackInfo(FragmentManager$1 fragmentManager$1, LifecycleOwner lifecycleOwner) {
        fragmentManager$1.getClass();
        this.callback = fragmentManager$1;
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
