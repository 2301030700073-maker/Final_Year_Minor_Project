package kotlinx.coroutines.flow;

import androidx.compose.runtime.Recomposer$join$2;
import androidx.compose.ui.Modifier;
import androidx.room.Room;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlinx.coroutines.flow.internal.SubscriptionCountStateFlow;
import org.wikipedia.settings.Prefs$observeKeys$$inlined$filter$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StartedWhileSubscribed implements SharingStarted {
    public final long replayExpiration;
    public final long stopTimeout;

    public StartedWhileSubscribed(long j, long j2) {
        this.stopTimeout = j;
        this.replayExpiration = j2;
        if (j < 0) {
            Gson$$ExternalSyntheticBUOutline0.m("stopTimeout(", j, " ms) cannot be negative");
            throw null;
        }
        if (j2 >= 0) {
            return;
        }
        Gson$$ExternalSyntheticBUOutline0.m("replayExpiration(", j2, " ms) cannot be negative");
        throw null;
    }

    @Override // kotlinx.coroutines.flow.SharingStarted
    public final Flow command(SubscriptionCountStateFlow subscriptionCountStateFlow) {
        return StateFlowKt.distinctUntilChanged(new Prefs$observeKeys$$inlined$filter$1(4, FlowKt__MergeKt.transformLatest(subscriptionCountStateFlow, new StartedWhileSubscribed$command$1(this, null)), new Recomposer$join$2(2, 3, null)));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof StartedWhileSubscribed)) {
            return false;
        }
        StartedWhileSubscribed startedWhileSubscribed = (StartedWhileSubscribed) obj;
        return this.stopTimeout == startedWhileSubscribed.stopTimeout && this.replayExpiration == startedWhileSubscribed.replayExpiration;
    }

    public final int hashCode() {
        long j = this.stopTimeout;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        long j2 = this.replayExpiration;
        return i + ((int) ((j2 >>> 32) ^ j2));
    }

    public final String toString() {
        ListBuilder listBuilder = new ListBuilder(2);
        long j = this.stopTimeout;
        if (j > 0) {
            listBuilder.add("stopTimeout=" + j + "ms");
        }
        long j2 = this.replayExpiration;
        if (j2 < Long.MAX_VALUE) {
            listBuilder.add("replayExpiration=" + j2 + "ms");
        }
        return Modifier.CC.m(new StringBuilder("SharingStarted.WhileSubscribed("), CollectionsKt.joinToString$default(Room.build(listBuilder), null, null, null, null, 63), ')');
    }
}
