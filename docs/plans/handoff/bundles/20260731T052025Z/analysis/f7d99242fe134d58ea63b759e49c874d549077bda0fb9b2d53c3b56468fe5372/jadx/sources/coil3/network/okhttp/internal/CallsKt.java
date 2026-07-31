package coil3.network.okhttp.internal;

import java.io.IOException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import okhttp3.internal.connection.RealCall;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CallsKt {
    public static final Object await(final Call call, Continuation continuation) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, AtomicFU.intercepted(continuation));
        cancellableContinuationImpl.initCancellability();
        cancellableContinuationImpl.invokeOnCancellation(new Function1() { // from class: coil3.network.okhttp.internal.CallsKt$await$2$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.INSTANCE;
            }

            public final void invoke(Throwable th) {
                ((RealCall) Call.this).cancel();
            }
        });
        ((RealCall) call).enqueue(new Callback() { // from class: coil3.network.okhttp.internal.CallsKt$await$2$2
            @Override // okhttp3.Callback
            public void onFailure(Call call2, IOException iOException) {
                CancellableContinuation.this.resumeWith(ResultKt.createFailure(iOException));
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call2, Response response) {
                CancellableContinuation.this.resume(response, new Function3() { // from class: coil3.network.okhttp.internal.CallsKt$await$2$2$onResponse$1
                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                        invoke((Throwable) obj, (Response) obj2, (CoroutineContext) obj3);
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Throwable th, Response response2, CoroutineContext coroutineContext) {
                        UtilsKt.closeQuietly(response2);
                    }
                });
            }
        });
        return cancellableContinuationImpl.getResult();
    }
}
