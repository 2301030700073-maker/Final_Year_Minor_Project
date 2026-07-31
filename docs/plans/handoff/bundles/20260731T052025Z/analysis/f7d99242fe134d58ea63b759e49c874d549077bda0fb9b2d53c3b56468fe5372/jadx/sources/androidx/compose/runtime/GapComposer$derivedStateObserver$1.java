package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotStateObserver;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
                SnapshotStateObserver.ObservedScopeMap observedScopeMap = (SnapshotStateObserver.ObservedScopeMap) obj;
                observedScopeMap.deriveStateScopeCount--;
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
                ((SnapshotStateObserver.ObservedScopeMap) obj).deriveStateScopeCount++;
                break;
        }
    }
}
