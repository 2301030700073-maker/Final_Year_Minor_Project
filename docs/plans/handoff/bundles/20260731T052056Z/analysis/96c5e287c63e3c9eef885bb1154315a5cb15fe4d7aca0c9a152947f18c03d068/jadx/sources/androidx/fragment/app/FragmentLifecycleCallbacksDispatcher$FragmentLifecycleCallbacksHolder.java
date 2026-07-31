package androidx.fragment.app;

import androidx.work.OperationKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder {
    public final OperationKt callback;
    public final boolean recursive;

    public FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder(OperationKt operationKt, boolean z) {
        this.callback = operationKt;
        this.recursive = z;
    }
}
