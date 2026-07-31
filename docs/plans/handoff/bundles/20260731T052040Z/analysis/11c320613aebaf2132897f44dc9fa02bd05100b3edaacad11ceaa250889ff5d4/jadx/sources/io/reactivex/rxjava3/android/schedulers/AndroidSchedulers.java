package io.reactivex.rxjava3.android.schedulers;

import android.os.Handler;
import android.os.Looper;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AndroidSchedulers {
    public static final Scheduler MAIN_THREAD;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class MainHolder {
        public static final HandlerScheduler DEFAULT;

        static {
            Looper mainLooper = Looper.getMainLooper();
            Scheduler scheduler = AndroidSchedulers.MAIN_THREAD;
            DEFAULT = new HandlerScheduler(new Handler(mainLooper));
        }
    }

    static {
        try {
            HandlerScheduler handlerScheduler = MainHolder.DEFAULT;
            if (handlerScheduler == null) {
                throw new NullPointerException("Scheduler Callable returned null");
            }
            MAIN_THREAD = handlerScheduler;
        } catch (Throwable th) {
            throw ExceptionHelper.wrapOrThrow(th);
        }
    }

    public static Scheduler mainThread() {
        Scheduler scheduler = MAIN_THREAD;
        if (scheduler != null) {
            return scheduler;
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("scheduler == null");
        return null;
    }
}
