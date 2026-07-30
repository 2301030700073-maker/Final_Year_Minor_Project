package kotlinx.coroutines.internal;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: ConcurrentLinkedList.kt */
/* loaded from: classes2.dex */
public abstract class SegmentOrClosed {
    /* renamed from: constructor-impl, reason: not valid java name */
    public static Object m2853constructorimpl(Object obj) {
        return obj;
    }

    /* renamed from: isClosed-impl, reason: not valid java name */
    public static final boolean m2855isClosedimpl(Object obj) {
        return obj == ConcurrentLinkedListKt.CLOSED;
    }

    /* renamed from: getSegment-impl, reason: not valid java name */
    public static final Segment m2854getSegmentimpl(Object obj) {
        if (obj == ConcurrentLinkedListKt.CLOSED) {
            throw new IllegalStateException("Does not contain segment");
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type S of kotlinx.coroutines.internal.SegmentOrClosed");
        return (Segment) obj;
    }
}
