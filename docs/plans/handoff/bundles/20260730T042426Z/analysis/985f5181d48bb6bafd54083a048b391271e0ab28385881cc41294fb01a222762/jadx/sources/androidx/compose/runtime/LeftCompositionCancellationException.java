package androidx.compose.runtime;

import androidx.compose.runtime.internal.PlatformOptimizedCancellationException;

/* compiled from: Effects.kt */
/* loaded from: classes.dex */
final class LeftCompositionCancellationException extends PlatformOptimizedCancellationException {
    public LeftCompositionCancellationException() {
        super("The coroutine scope left the composition");
    }
}
