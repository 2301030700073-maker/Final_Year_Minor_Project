package androidx.work.impl.constraints.trackers;

import android.content.Context;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import java.util.LinkedHashSet;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ConstraintTracker {
    public final Context appContext;
    public Object currentState;
    public final LinkedHashSet listeners;
    public final Object lock;
    public final WorkManagerTaskExecutor taskExecutor;

    public ConstraintTracker(Context context, WorkManagerTaskExecutor workManagerTaskExecutor) {
        this.taskExecutor = workManagerTaskExecutor;
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        this.appContext = applicationContext;
        this.lock = new Object();
        this.listeners = new LinkedHashSet();
    }

    public abstract Object readSystemState();

    public final void setState(Object obj) {
        synchronized (this.lock) {
            Object obj2 = this.currentState;
            if (obj2 == null || !obj2.equals(obj)) {
                this.currentState = obj;
                this.taskExecutor.mMainThreadExecutor.execute(new Processor$$ExternalSyntheticLambda2(8, CollectionsKt.toList(this.listeners), this));
            }
        }
    }

    public abstract void startTracking();

    public abstract void stopTracking();
}
