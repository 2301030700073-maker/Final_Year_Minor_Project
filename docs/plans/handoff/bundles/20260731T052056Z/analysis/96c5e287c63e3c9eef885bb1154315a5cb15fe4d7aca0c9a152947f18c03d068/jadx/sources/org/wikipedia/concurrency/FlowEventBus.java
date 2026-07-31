package org.wikipedia.concurrency;

import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class FlowEventBus {
    public static final SharedFlowImpl _events;
    public static final ReadonlySharedFlow events;

    static {
        SharedFlowImpl MutableSharedFlow$default = StateFlowKt.MutableSharedFlow$default(8, 1, BufferOverflow.DROP_OLDEST);
        _events = MutableSharedFlow$default;
        events = new ReadonlySharedFlow(MutableSharedFlow$default);
    }

    public static void post(Object obj) {
        if (_events.tryEmit(obj)) {
            return;
        }
        L.e("Unable to emit event");
    }
}
