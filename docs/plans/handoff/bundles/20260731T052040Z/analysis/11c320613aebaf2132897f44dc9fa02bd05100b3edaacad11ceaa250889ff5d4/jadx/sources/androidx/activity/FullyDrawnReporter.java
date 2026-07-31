package androidx.activity;

import java.util.ArrayList;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
