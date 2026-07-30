package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.work.ListenableWorker;
import defpackage.InterfaceFutureC3942wq;
import defpackage.UC;

/* loaded from: classes.dex */
public abstract class Worker extends ListenableWorker {

    /* renamed from: do, reason: not valid java name */
    public UC<ListenableWorker.Cdo> f8121do;

    /* renamed from: androidx.work.Worker$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Worker worker = Worker.this;
            try {
                worker.f8121do.m2365goto(worker.doWork());
            } catch (Throwable th) {
                worker.f8121do.m2366this(th);
            }
        }
    }

    @Keep
    @SuppressLint({"BanKeepAnnotation"})
    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    public abstract ListenableWorker.Cdo doWork();

    @Override // androidx.work.ListenableWorker
    public final InterfaceFutureC3942wq<ListenableWorker.Cdo> startWork() {
        this.f8121do = new UC<>();
        getBackgroundExecutor().execute(new Cdo());
        return this.f8121do;
    }
}
