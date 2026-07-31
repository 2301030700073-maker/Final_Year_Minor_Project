package kotlinx.coroutines;

import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CompletableDeferredImpl extends JobSupport implements Deferred {
    @Override // kotlinx.coroutines.Deferred
    public final Object await(Continuation continuation) {
        return awaitInternal(continuation);
    }
}
