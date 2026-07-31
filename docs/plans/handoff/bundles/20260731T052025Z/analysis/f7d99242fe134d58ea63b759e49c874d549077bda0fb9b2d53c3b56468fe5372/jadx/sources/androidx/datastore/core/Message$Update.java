package androidx.datastore.core;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableDeferredImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Message$Update {
    public final CompletableDeferredImpl ack;
    public final CoroutineContext callerContext;
    public final State lastState;
    public final Function2 transform;

    public Message$Update(Function2 function2, CompletableDeferredImpl completableDeferredImpl, State state, CoroutineContext coroutineContext) {
        function2.getClass();
        coroutineContext.getClass();
        this.transform = function2;
        this.ack = completableDeferredImpl;
        this.lastState = state;
        this.callerContext = coroutineContext;
    }
}
