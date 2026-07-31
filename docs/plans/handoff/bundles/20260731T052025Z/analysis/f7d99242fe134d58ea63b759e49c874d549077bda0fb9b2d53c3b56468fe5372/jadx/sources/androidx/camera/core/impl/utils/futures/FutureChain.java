package androidx.camera.core.impl.utils.futures;

import androidx.biometric.BiometricPrompt;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import com.fsck.k9.sasl.OAuthBearer;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class FutureChain implements ListenableFuture {
    public CallbackToFutureAdapter$Completer mCompleter;
    public final ListenableFuture mDelegate;

    public FutureChain() {
        this.mDelegate = OAuthBearer.getFuture(new BiometricPrompt(28, this));
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        this.mDelegate.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.mDelegate.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public Object get() {
        return this.mDelegate.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.mDelegate.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.mDelegate.isDone();
    }

    @Override // java.util.concurrent.Future
    public Object get(long j, TimeUnit timeUnit) {
        return this.mDelegate.get(j, timeUnit);
    }

    public FutureChain(ListenableFuture listenableFuture) {
        listenableFuture.getClass();
        this.mDelegate = listenableFuture;
    }
}
