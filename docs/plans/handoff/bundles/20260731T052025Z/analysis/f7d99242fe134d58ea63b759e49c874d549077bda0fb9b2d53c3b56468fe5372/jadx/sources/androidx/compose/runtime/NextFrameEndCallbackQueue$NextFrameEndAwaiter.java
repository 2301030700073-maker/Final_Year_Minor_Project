package androidx.compose.runtime;

import androidx.compose.runtime.internal.AwaiterQueue$Awaiter;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
