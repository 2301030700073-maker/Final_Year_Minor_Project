package defpackage;

import android.os.Looper;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;

/* renamed from: cK, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0804cK {

    /* renamed from: do, reason: not valid java name */
    public static final ExecutorService f8521do;

    static {
        ExecutorService unconfigurableExecutorService = Executors.unconfigurableExecutorService(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new ThreadFactoryC0362Mg(new AtomicLong(1L)), new ThreadPoolExecutor.DiscardPolicy()));
        Runtime.getRuntime().addShutdownHook(new Thread(new C0384Ng(unconfigurableExecutorService, TimeUnit.SECONDS), "Crashlytics Shutdown Hook for awaitEvenIfOnMainThread task continuation executor"));
        f8521do = unconfigurableExecutorService;
    }

    @Deprecated
    /* renamed from: do, reason: not valid java name */
    public static void m4898do(FG fg) {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        fg.mo598goto(f8521do, new SK(countDownLatch));
        if (Looper.getMainLooper() == Looper.myLooper()) {
            countDownLatch.await(3000L, TimeUnit.MILLISECONDS);
        } else {
            countDownLatch.await(4000L, TimeUnit.MILLISECONDS);
        }
        if (fg.mo604throw()) {
            fg.mo592class();
        } else {
            if (fg.mo596final()) {
                throw new CancellationException("Task is already canceled");
            }
            if (!fg.mo602super()) {
                throw new TimeoutException();
            }
            throw new IllegalStateException(fg.mo591catch());
        }
    }
}
