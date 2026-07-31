package androidx.compose.runtime;

import androidx.compose.runtime.internal.AwaiterQueue$Awaiter;
import androidx.compose.ui.platform.LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry$stopRetainingExitedValues$1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NextFrameEndCallbackQueue$NextFrameEndAwaiter extends AwaiterQueue$Awaiter {
    public LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry$stopRetainingExitedValues$1 onNextFrameEnd;

    @Override // androidx.compose.runtime.internal.AwaiterQueue$Awaiter
    public final void cancel() {
        this.onNextFrameEnd = null;
    }

    @Override // androidx.compose.runtime.internal.AwaiterQueue$Awaiter
    public final void resumeWithException(Throwable th) {
        throw th;
    }
}
