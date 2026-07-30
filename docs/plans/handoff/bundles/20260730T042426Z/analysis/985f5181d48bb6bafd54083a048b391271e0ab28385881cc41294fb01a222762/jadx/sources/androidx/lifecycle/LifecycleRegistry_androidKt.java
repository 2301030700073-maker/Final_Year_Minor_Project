package androidx.lifecycle;

import androidx.arch.core.executor.ArchTaskExecutor;

/* compiled from: LifecycleRegistry.android.kt */
/* loaded from: classes.dex */
public abstract class LifecycleRegistry_androidKt {
    public static final boolean isMainThread() {
        return ArchTaskExecutor.getInstance().isMainThread();
    }
}
