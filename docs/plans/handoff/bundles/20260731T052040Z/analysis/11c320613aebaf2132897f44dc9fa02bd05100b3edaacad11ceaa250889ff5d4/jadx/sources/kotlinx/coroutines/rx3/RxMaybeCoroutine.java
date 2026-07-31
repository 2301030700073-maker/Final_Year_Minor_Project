package kotlinx.coroutines.rx3;

import io.reactivex.rxjava3.internal.operators.maybe.MaybeCreate$Emitter;
import kotlin.ResultKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.io.CloseableKt;
import kotlinx.coroutines.AbstractCoroutine;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RxMaybeCoroutine extends AbstractCoroutine {
    public final MaybeCreate$Emitter subscriber;

    public RxMaybeCoroutine(CoroutineContext coroutineContext, MaybeCreate$Emitter maybeCreate$Emitter) {
        super(coroutineContext, false, true);
        this.subscriber = maybeCreate$Emitter;
    }

    @Override // kotlinx.coroutines.AbstractCoroutine
    public final void onCancelled(Throwable th, boolean z) {
        try {
            if (this.subscriber.tryOnError(th)) {
                return;
            }
        } catch (Throwable th2) {
            ResultKt.addSuppressed(th, th2);
        }
        CloseableKt.handleUndeliverableException(th, this.context);
    }

    @Override // kotlinx.coroutines.AbstractCoroutine
    public final void onCompleted(Object obj) {
        MaybeCreate$Emitter maybeCreate$Emitter = this.subscriber;
        try {
            if (obj == null) {
                maybeCreate$Emitter.onComplete();
            } else {
                maybeCreate$Emitter.onSuccess(obj);
            }
        } catch (Throwable th) {
            CloseableKt.handleUndeliverableException(th, this.context);
        }
    }
}
