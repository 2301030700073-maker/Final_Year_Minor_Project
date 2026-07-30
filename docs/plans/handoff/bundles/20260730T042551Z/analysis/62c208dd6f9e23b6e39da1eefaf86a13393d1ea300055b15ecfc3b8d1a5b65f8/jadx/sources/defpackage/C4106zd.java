package defpackage;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: zd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4106zd extends AbstractC3134j6 {

    /* renamed from: do, reason: not valid java name */
    public volatile Handler f16927do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f16928do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ExecutorService f16929do = Executors.newFixedThreadPool(4, new Cdo());

    /* renamed from: zd$do, reason: invalid class name */
    public class Cdo implements ThreadFactory {

        /* renamed from: do, reason: not valid java name */
        public final AtomicInteger f16930do = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("arch_disk_io_" + this.f16930do.getAndIncrement());
            return thread;
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static Handler m8807throw(Looper looper) {
        Handler createAsync;
        if (Build.VERSION.SDK_INT >= 28) {
            createAsync = Handler.createAsync(looper);
            return createAsync;
        }
        try {
            return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException unused) {
            return new Handler(looper);
        } catch (InvocationTargetException unused2) {
            return new Handler(looper);
        }
    }
}
