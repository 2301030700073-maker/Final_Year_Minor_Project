package androidx.work;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WorkerFactory.kt */
/* loaded from: classes.dex */
public abstract class WorkerFactory {
    public abstract ListenableWorker createWorker(Context context, String str, WorkerParameters workerParameters);

    private static final Class createWorkerWithDefaultFallback$getWorkerClass(String str) {
        String str2;
        try {
            Class<? extends U> asSubclass = Class.forName(str).asSubclass(ListenableWorker.class);
            Intrinsics.checkNotNullExpressionValue(asSubclass, "{\n                Class.…class.java)\n            }");
            return asSubclass;
        } catch (Throwable th) {
            Logger logger = Logger.get();
            str2 = WorkerFactoryKt.TAG;
            logger.error(str2, "Invalid class: " + str, th);
            throw th;
        }
    }

    private static final ListenableWorker createWorkerWithDefaultFallback$fallbackToReflection(Context context, String str, WorkerParameters workerParameters) {
        String str2;
        try {
            Object newInstance = createWorkerWithDefaultFallback$getWorkerClass(str).getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
            Intrinsics.checkNotNullExpressionValue(newInstance, "{\n                val co…Parameters)\n            }");
            return (ListenableWorker) newInstance;
        } catch (Throwable th) {
            Logger logger = Logger.get();
            str2 = WorkerFactoryKt.TAG;
            logger.error(str2, "Could not instantiate " + str, th);
            throw th;
        }
    }

    public final ListenableWorker createWorkerWithDefaultFallback(Context appContext, String workerClassName, WorkerParameters workerParameters) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(workerClassName, "workerClassName");
        Intrinsics.checkNotNullParameter(workerParameters, "workerParameters");
        ListenableWorker createWorker = createWorker(appContext, workerClassName, workerParameters);
        if (createWorker == null) {
            createWorker = createWorkerWithDefaultFallback$fallbackToReflection(appContext, workerClassName, workerParameters);
        }
        if (!createWorker.isUsed()) {
            return createWorker;
        }
        throw new IllegalStateException("WorkerFactory (" + getClass().getName() + ") returned an instance of a ListenableWorker (" + workerClassName + ") which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.");
    }
}
