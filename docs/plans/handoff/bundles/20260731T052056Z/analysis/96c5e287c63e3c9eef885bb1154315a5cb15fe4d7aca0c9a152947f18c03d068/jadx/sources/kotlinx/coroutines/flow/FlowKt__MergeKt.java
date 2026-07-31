package kotlinx.coroutines.flow;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;
import kotlinx.coroutines.internal.InlineList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract /* synthetic */ class FlowKt__MergeKt {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        InlineList.systemProp("kotlinx.coroutines.flow.defaultConcurrency", 16L, 1L, 2147483647L);
    }

    public static final ChannelFlowTransformLatest transformLatest(Flow flow, Function3 function3) {
        return new ChannelFlowTransformLatest(function3, flow, EmptyCoroutineContext.INSTANCE, -2, BufferOverflow.SUSPEND);
    }
}
