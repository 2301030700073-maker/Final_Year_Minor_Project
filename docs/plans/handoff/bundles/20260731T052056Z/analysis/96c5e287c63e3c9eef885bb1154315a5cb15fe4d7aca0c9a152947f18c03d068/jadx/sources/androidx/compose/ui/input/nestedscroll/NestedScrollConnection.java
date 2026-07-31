package androidx.compose.ui.input.nestedscroll;

import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface NestedScrollConnection {
    /* renamed from: onPostFling-RZ2iAVY */
    Object mo2onPostFlingRZ2iAVY(long j, long j2, Continuation continuation);

    /* renamed from: onPostScroll-DzOQY0M */
    long mo3onPostScrollDzOQY0M(int i, long j, long j2);

    /* renamed from: onPreFling-QWom1Mo */
    Object mo4onPreFlingQWom1Mo(long j, Continuation continuation);

    /* renamed from: onPreScroll-OzD1aCk */
    long mo5onPreScrollOzD1aCk(long j, int i);
}
