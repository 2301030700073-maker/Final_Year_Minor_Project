package kotlinx.coroutines.flow;

import androidx.compose.ui.Modifier;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;
import kotlinx.coroutines.flow.internal.SubscriptionCountStateFlow;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StartedWhileSubscribed implements SharingStarted {
    @Override // kotlinx.coroutines.flow.SharingStarted
    public final Flow command(SubscriptionCountStateFlow subscriptionCountStateFlow) {
        StartedWhileSubscribed$command$1 startedWhileSubscribed$command$1 = new StartedWhileSubscribed$command$1(this, null);
        int i = FlowKt__MergeKt.$r8$clinit;
        return FlowKt.distinctUntilChanged(new FlowKt__MergeKt$flatMapMerge$$inlined$map$1(new ChannelFlowTransformLatest(startedWhileSubscribed$command$1, subscriptionCountStateFlow, EmptyCoroutineContext.INSTANCE, -2, BufferOverflow.SUSPEND), new StartedWhileSubscribed$command$2(2, null), 1));
    }

    public final boolean equals(Object obj) {
        return obj instanceof StartedWhileSubscribed;
    }

    public final int hashCode() {
        return Integer.MIN_VALUE;
    }

    public final String toString() {
        return Modifier.CC.m(new StringBuilder("SharingStarted.WhileSubscribed("), CollectionsKt.joinToString$default(new ListBuilder(2).build(), null, null, null, null, 63), ')');
    }
}
