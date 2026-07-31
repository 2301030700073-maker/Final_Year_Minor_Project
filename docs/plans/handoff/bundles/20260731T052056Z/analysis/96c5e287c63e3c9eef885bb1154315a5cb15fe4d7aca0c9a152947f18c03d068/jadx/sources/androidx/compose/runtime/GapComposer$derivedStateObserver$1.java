package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotStateObserver$ObservedScopeMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GapComposer$derivedStateObserver$1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public /* synthetic */ GapComposer$derivedStateObserver$1(int i, Object obj) {
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
