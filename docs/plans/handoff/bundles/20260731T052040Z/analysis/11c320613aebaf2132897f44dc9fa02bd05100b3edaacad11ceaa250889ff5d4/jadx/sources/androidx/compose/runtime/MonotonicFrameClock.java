package androidx.compose.runtime;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface MonotonicFrameClock extends CoroutineContext.Element {
    Object withFrameNanos(Function1 function1, ContinuationImpl continuationImpl);
}
