package androidx.work;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: WorkerFactory.kt */
/* loaded from: classes.dex */
public abstract class WorkerFactoryKt {
    private static final String TAG;

    static {
        String tagWithPrefix = Logger.tagWithPrefix("WorkerFactory");
        Intrinsics.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"WorkerFactory\")");
        TAG = tagWithPrefix;
    }
}
