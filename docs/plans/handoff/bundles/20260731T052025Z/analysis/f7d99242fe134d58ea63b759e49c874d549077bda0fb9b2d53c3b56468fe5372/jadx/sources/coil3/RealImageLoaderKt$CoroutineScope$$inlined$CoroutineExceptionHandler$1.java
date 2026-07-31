package coil3;

import coil3.util.Logger;
import coil3.util.LoggingKt;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RealImageLoaderKt$CoroutineScope$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    final /* synthetic */ Logger $logger$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealImageLoaderKt$CoroutineScope$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.Key key, Logger logger) {
        super(key);
        this.$logger$inlined = logger;
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public void handleException(CoroutineContext coroutineContext, Throwable th) {
        Logger logger = this.$logger$inlined;
        if (logger != null) {
            LoggingKt.log(logger, "RealImageLoader", th);
        }
    }
}
