package androidx.concurrent.futures;

import java.util.concurrent.Executor;
import org.koin.android.error.MissingAndroidContextException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CallbackToFutureAdapter$Completer {
    public boolean attemptedSetting;
    public ResolvableFuture cancellationFuture;
    public CallbackToFutureAdapter$SafeFuture future;
    public Object tag;

    public final void addCancellationListener(Runnable runnable, Executor executor) {
        ResolvableFuture resolvableFuture = this.cancellationFuture;
        if (resolvableFuture != null) {
            resolvableFuture.addListener(runnable, executor);
        }
    }

    public final void finalize() {
        ResolvableFuture resolvableFuture;
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = this.future;
        if (callbackToFutureAdapter$SafeFuture != null && !callbackToFutureAdapter$SafeFuture.delegate.isDone()) {
            callbackToFutureAdapter$SafeFuture.setException(new MissingAndroidContextException("The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.tag, 2));
        }
        if (this.attemptedSetting || (resolvableFuture = this.cancellationFuture) == null) {
            return;
        }
        resolvableFuture.set(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean set(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = 1
            r4.attemptedSetting = r0
            androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture r1 = r4.future
            r2 = 0
            if (r1 == 0) goto L1d
            androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture$1 r1 = r1.delegate
            r1.getClass()
            if (r5 != 0) goto L11
            java.lang.Object r5 = androidx.concurrent.futures.AbstractResolvableFuture.NULL
        L11:
            androidx.room.util.RelationUtil r3 = androidx.concurrent.futures.AbstractResolvableFuture.ATOMIC_HELPER
            boolean r5 = r3.casValue(r1, r2, r5)
            if (r5 == 0) goto L1d
            androidx.concurrent.futures.AbstractResolvableFuture.complete(r1)
            goto L1e
        L1d:
            r0 = 0
        L1e:
            if (r0 == 0) goto L26
            r4.tag = r2
            r4.future = r2
            r4.cancellationFuture = r2
        L26:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.concurrent.futures.CallbackToFutureAdapter$Completer.set(java.lang.Object):boolean");
    }

    public final void setCancelled() {
        this.attemptedSetting = true;
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = this.future;
        if (callbackToFutureAdapter$SafeFuture == null || !callbackToFutureAdapter$SafeFuture.delegate.cancel(true)) {
            return;
        }
        this.tag = null;
        this.future = null;
        this.cancellationFuture = null;
    }

    public final boolean setException(Throwable th) {
        this.attemptedSetting = true;
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = this.future;
        boolean z = callbackToFutureAdapter$SafeFuture != null && callbackToFutureAdapter$SafeFuture.delegate.setException(th);
        if (z) {
            this.tag = null;
            this.future = null;
            this.cancellationFuture = null;
        }
        return z;
    }
}
