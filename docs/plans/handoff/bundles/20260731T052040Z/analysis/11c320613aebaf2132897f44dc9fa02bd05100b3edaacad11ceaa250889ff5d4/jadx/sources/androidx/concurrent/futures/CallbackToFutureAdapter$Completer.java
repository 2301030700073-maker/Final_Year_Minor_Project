package androidx.concurrent.futures;

import androidx.concurrent.futures.AbstractResolvableFuture;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CallbackToFutureAdapter$Completer {
    public boolean attemptedSetting;
    public ResolvableFuture cancellationFuture;
    public CallbackToFutureAdapter$SafeFuture future;
    public Object tag;

    public final void finalize() {
        ResolvableFuture resolvableFuture;
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = this.future;
        if (callbackToFutureAdapter$SafeFuture != null) {
            CallbackToFutureAdapter$SafeFuture.AnonymousClass1 anonymousClass1 = callbackToFutureAdapter$SafeFuture.delegate;
            if (!anonymousClass1.isDone()) {
                anonymousClass1.setException(new AbstractResolvableFuture.Failure.AnonymousClass1("The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.tag, 1));
            }
        }
        if (this.attemptedSetting || (resolvableFuture = this.cancellationFuture) == null) {
            return;
        }
        resolvableFuture.set(null);
    }

    public final void set(Object obj) {
        this.attemptedSetting = true;
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = this.future;
        if (callbackToFutureAdapter$SafeFuture != null) {
            CallbackToFutureAdapter$SafeFuture.AnonymousClass1 anonymousClass1 = callbackToFutureAdapter$SafeFuture.delegate;
            anonymousClass1.getClass();
            if (obj == null) {
                obj = AbstractResolvableFuture.NULL;
            }
            if (AbstractResolvableFuture.ATOMIC_HELPER.casValue(anonymousClass1, null, obj)) {
                AbstractResolvableFuture.complete(anonymousClass1);
                this.tag = null;
                this.future = null;
                this.cancellationFuture = null;
            }
        }
    }

    public final void setException(Throwable th) {
        this.attemptedSetting = true;
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = this.future;
        if (callbackToFutureAdapter$SafeFuture == null || !callbackToFutureAdapter$SafeFuture.delegate.setException(th)) {
            return;
        }
        this.tag = null;
        this.future = null;
        this.cancellationFuture = null;
    }
}
