package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.core.Observer;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.math.MathKt;
import org.reactivestreams.Subscriber;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AtomicThrowable extends AtomicReference {
    private static final long serialVersionUID = 3949248817947090603L;

    public final boolean tryAddThrowableOrReport(Throwable th) {
        if (ExceptionHelper.addThrowable(this, th)) {
            return true;
        }
        MathKt.onError(th);
        return false;
    }

    public final void tryTerminateAndReport() {
        Throwable terminate = ExceptionHelper.terminate(this);
        if (terminate == null || terminate == ExceptionHelper.TERMINATED) {
            return;
        }
        MathKt.onError(terminate);
    }

    public final void tryTerminateConsumer(Observer observer) {
        Throwable terminate = ExceptionHelper.terminate(this);
        if (terminate == null) {
            observer.onComplete();
        } else if (terminate != ExceptionHelper.TERMINATED) {
            observer.onError(terminate);
        }
    }

    public final void tryTerminateConsumer(Subscriber subscriber) {
        Throwable terminate = ExceptionHelper.terminate(this);
        if (terminate == null) {
            subscriber.onComplete();
        } else if (terminate != ExceptionHelper.TERMINATED) {
            subscriber.onError(terminate);
        }
    }
}
