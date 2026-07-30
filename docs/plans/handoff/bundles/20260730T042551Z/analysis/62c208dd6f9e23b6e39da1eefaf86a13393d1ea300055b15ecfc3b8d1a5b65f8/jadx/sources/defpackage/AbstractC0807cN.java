package defpackage;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;

/* renamed from: cN, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0807cN {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int f8527do = 0;

    static {
        AbstractC0614Xq.m2870try("WorkerFactory");
    }

    /* renamed from: do, reason: not valid java name */
    public final ListenableWorker m4900do(Context context, String str, WorkerParameters workerParameters) {
        Class cls;
        ListenableWorker listenableWorker = null;
        try {
            cls = Class.forName(str).asSubclass(ListenableWorker.class);
        } catch (Throwable th) {
            AbstractC0614Xq.m2869for().mo2873if(th);
            cls = null;
        }
        if (cls != null) {
            try {
                listenableWorker = (ListenableWorker) cls.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
            } catch (Throwable th2) {
                AbstractC0614Xq.m2869for().mo2873if(th2);
            }
        }
        if (listenableWorker == null || !listenableWorker.isUsed()) {
            return listenableWorker;
        }
        throw new IllegalStateException(String.format("WorkerFactory (%s) returned an instance of a ListenableWorker (%s) which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.", getClass().getName(), str));
    }
}
