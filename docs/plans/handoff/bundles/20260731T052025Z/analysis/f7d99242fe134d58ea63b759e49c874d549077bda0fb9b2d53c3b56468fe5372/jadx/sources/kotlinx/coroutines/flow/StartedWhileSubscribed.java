package kotlinx.coroutines.flow;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.runtime.Recomposer$join$2;
import androidx.compose.ui.unit.IntOffsetKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlinx.coroutines.flow.internal.SubscriptionCountStateFlow;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StartedWhileSubscribed implements SharingStarted {
    public final long replayExpiration;

    public StartedWhileSubscribed(long j) {
        this.replayExpiration = j;
        if (j >= 0) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("replayExpiration(", j, " ms) cannot be negative");
        throw null;
    }

    @Override // kotlinx.coroutines.flow.SharingStarted
    public final Flow command(SubscriptionCountStateFlow subscriptionCountStateFlow) {
        return FlowKt.distinctUntilChanged(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(FlowKt.transformLatest(subscriptionCountStateFlow, new StartedWhileSubscribed$command$1(this, null)), new Recomposer$join$2(2, null, 6), 1));
    }

    public final boolean equals(Object obj) {
        return (obj instanceof StartedWhileSubscribed) && this.replayExpiration == ((StartedWhileSubscribed) obj).replayExpiration;
    }

    public final int hashCode() {
        long j = this.replayExpiration;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        ListBuilder listBuilder = new ListBuilder(2);
        long j = this.replayExpiration;
        if (j < Long.MAX_VALUE) {
            listBuilder.add("replayExpiration=" + j + "ms");
        }
        return CameraDevices$CC.m(new StringBuilder("SharingStarted.WhileSubscribed("), CollectionsKt.joinToString$default(IntOffsetKt.build(listBuilder), null, null, null, null, 63), ')');
    }
}
