package androidx.compose.runtime;

import androidx.compose.ui.internal.PlatformOptimizedCancellationException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ForgottenCoroutineScopeException extends PlatformOptimizedCancellationException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ForgottenCoroutineScopeException(int i) {
        super("rememberCoroutineScope left the composition", 2);
        switch (i) {
            case 1:
                super("The coroutine scope left the composition", 2);
                break;
            default:
                break;
        }
    }
}
