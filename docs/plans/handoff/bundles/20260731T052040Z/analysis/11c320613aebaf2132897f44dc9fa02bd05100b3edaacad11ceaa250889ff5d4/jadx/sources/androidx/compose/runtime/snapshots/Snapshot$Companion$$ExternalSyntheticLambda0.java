package androidx.compose.runtime.snapshots;

import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Snapshot$Companion$$ExternalSyntheticLambda0 {
    public final /* synthetic */ Function2 f$0;

    public /* synthetic */ Snapshot$Companion$$ExternalSyntheticLambda0(Function2 function2) {
        this.f$0 = function2;
    }

    public final void dispose() {
        Function2 function2 = this.f$0;
        synchronized (SnapshotKt.lock) {
            SnapshotKt.applyObservers = CollectionsKt.minus(SnapshotKt.applyObservers, function2);
        }
    }
}
