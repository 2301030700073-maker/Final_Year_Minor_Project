package androidx.activity;

import java.util.ArrayList;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FullyDrawnReporter {
    public final Object lock;
    public final ArrayList onReportCallbacks;
    public boolean reportedFullyDrawn;

    public FullyDrawnReporter(Executor executor, ComponentActivity$$ExternalSyntheticLambda1 componentActivity$$ExternalSyntheticLambda1) {
        executor.getClass();
        this.lock = new Object();
        this.onReportCallbacks = new ArrayList();
    }
}
