package androidx.compose.runtime;

import androidx.compose.ui.internal.PlatformOptimizedCancellationException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ForgottenCoroutineScopeException extends PlatformOptimizedCancellationException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ForgottenCoroutineScopeException(int i) {
        super(2, "rememberCoroutineScope left the composition");
        switch (i) {
            case 1:
                super(2, "The coroutine scope left the composition");
                break;
            default:
                break;
        }
    }
}
