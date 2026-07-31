package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import androidx.work.OperationKt;
import coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    public final /* synthetic */ CompositionErrorContextImpl $traceContext$inlined;
    public final /* synthetic */ RememberedCoroutineScope this$0;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1(androidx.compose.runtime.tooling.CompositionErrorContextImpl r2, androidx.compose.runtime.RememberedCoroutineScope r3) {
        /*
            r1 = this;
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$traceContext$inlined = r2
            r1.this$0 = r3
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1.<init>(androidx.compose.runtime.tooling.CompositionErrorContextImpl, androidx.compose.runtime.RememberedCoroutineScope):void");
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void handleException(Throwable th, CoroutineContext coroutineContext) {
        CompositionErrorContextImpl compositionErrorContextImpl = this.$traceContext$inlined;
        RememberedCoroutineScope rememberedCoroutineScope = this.this$0;
        OperationKt.tryAttachComposeStackTrace(th, new ComponentRegistry$Builder$$ExternalSyntheticLambda0(compositionErrorContextImpl, rememberedCoroutineScope, 11));
        CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) rememberedCoroutineScope.parentContext.get(Job.Key.$$INSTANCE$1);
        if (coroutineExceptionHandler == null) {
            throw th;
        }
        coroutineExceptionHandler.handleException(th, coroutineContext);
    }
}
