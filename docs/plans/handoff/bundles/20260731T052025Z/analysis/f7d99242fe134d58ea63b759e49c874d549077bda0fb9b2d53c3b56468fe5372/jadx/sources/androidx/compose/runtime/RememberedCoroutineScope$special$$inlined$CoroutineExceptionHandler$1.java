package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import androidx.work.Data;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    public final /* synthetic */ CompositionErrorContextImpl $traceContext$inlined;
    public final /* synthetic */ RememberedCoroutineScope this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1(CompositionErrorContextImpl compositionErrorContextImpl, RememberedCoroutineScope rememberedCoroutineScope) {
        super(CoroutineExceptionHandler.Key.$$INSTANCE);
        this.$traceContext$inlined = compositionErrorContextImpl;
        this.this$0 = rememberedCoroutineScope;
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void handleException(CoroutineContext coroutineContext, Throwable th) {
        CompositionErrorContextImpl compositionErrorContextImpl = this.$traceContext$inlined;
        RememberedCoroutineScope rememberedCoroutineScope = this.this$0;
        Data.Companion.tryAttachComposeStackTrace(th, new Recomposer$$ExternalSyntheticLambda6(26, compositionErrorContextImpl, rememberedCoroutineScope));
        CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) rememberedCoroutineScope.parentContext.get(CoroutineExceptionHandler.Key.$$INSTANCE);
        if (coroutineExceptionHandler == null) {
            throw th;
        }
        coroutineExceptionHandler.handleException(coroutineContext, th);
    }
}
