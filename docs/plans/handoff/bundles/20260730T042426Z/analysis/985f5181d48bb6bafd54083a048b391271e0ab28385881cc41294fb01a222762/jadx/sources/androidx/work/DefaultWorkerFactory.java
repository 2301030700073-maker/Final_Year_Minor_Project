package androidx.work;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WorkerFactory.kt */
/* loaded from: classes.dex */
public final class DefaultWorkerFactory extends WorkerFactory {
    public static final DefaultWorkerFactory INSTANCE = new DefaultWorkerFactory();

    /* renamed from: createWorker, reason: collision with other method in class */
    public Void m2556createWorker(Context appContext, String workerClassName, WorkerParameters workerParameters) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(workerClassName, "workerClassName");
        Intrinsics.checkNotNullParameter(workerParameters, "workerParameters");
        return null;
    }

    @Override // androidx.work.WorkerFactory
    public /* bridge */ /* synthetic */ ListenableWorker createWorker(Context context, String str, WorkerParameters workerParameters) {
        return (ListenableWorker) m2556createWorker(context, str, workerParameters);
    }

    private DefaultWorkerFactory() {
    }
}
