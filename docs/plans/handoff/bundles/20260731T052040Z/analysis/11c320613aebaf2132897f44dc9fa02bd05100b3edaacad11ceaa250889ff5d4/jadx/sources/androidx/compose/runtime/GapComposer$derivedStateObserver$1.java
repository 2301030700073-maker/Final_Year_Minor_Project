package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotStateObserver$ObservedScopeMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class GapComposer$derivedStateObserver$1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public /* synthetic */ GapComposer$derivedStateObserver$1(Object obj, int i) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    public final void done() {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                gapComposer.childrenComposing--;
                break;
            default:
                SnapshotStateObserver$ObservedScopeMap snapshotStateObserver$ObservedScopeMap = (SnapshotStateObserver$ObservedScopeMap) obj;
                snapshotStateObserver$ObservedScopeMap.deriveStateScopeCount--;
                break;
        }
    }

    public final void start() {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 0:
                ((GapComposer) obj).childrenComposing++;
                break;
            default:
                ((SnapshotStateObserver$ObservedScopeMap) obj).deriveStateScopeCount++;
                break;
        }
    }
}
