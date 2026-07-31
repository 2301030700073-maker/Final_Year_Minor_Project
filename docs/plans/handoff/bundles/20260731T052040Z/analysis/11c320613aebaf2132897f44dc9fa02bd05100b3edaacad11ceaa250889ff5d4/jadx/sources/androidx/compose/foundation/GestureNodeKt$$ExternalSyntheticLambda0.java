package androidx.compose.foundation;

import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotIdSet;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.node.TraversableNode;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class GestureNodeKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;

    public /* synthetic */ GestureNodeKt$$ExternalSyntheticLambda0(Function1 function1, int i) {
        this.$r8$classId = i;
        this.f$0 = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                TraversableNode traversableNode = (TraversableNode) obj;
                if (!(traversableNode instanceof GestureNode)) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Node is not a GestureNode instance");
                    return null;
                }
                Boolean bool = (Boolean) function1.invoke(((GestureNode) traversableNode).gestureConnection);
                bool.getClass();
                return bool;
            case 1:
                Long l = (Long) obj;
                l.getClass();
                return function1.invoke(l);
            case 2:
                Snapshot snapshot = (Snapshot) function1.invoke((SnapshotIdSet) obj);
                synchronized (SnapshotKt.lock) {
                    SnapshotKt.openSnapshots = SnapshotKt.openSnapshots.set(snapshot.getSnapshotId());
                }
                return snapshot;
            default:
                String str = (String) obj;
                str.getClass();
                function1.invoke(str);
                return Unit.INSTANCE;
        }
    }
}
