package androidx.compose.runtime;

import androidx.compose.runtime.internal.AwaiterQueue$Awaiter;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NextFrameEndCallbackQueue$NextFrameEndAwaiter extends AwaiterQueue$Awaiter {
    public LayoutNode$_foldedChildren$1 onNextFrameEnd;

    @Override // androidx.compose.runtime.internal.AwaiterQueue$Awaiter
    public final void cancel() {
        this.onNextFrameEnd = null;
    }

    @Override // androidx.compose.runtime.internal.AwaiterQueue$Awaiter
    public final void resumeWithException(Throwable th) {
        throw th;
    }
}
