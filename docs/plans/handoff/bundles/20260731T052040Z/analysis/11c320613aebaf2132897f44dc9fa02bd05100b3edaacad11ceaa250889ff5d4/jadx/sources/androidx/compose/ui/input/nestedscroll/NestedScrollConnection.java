package androidx.compose.ui.input.nestedscroll;

import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface NestedScrollConnection {
    /* renamed from: onPostFling-RZ2iAVY */
    Object mo66onPostFlingRZ2iAVY(long j, long j2, Continuation continuation);

    /* renamed from: onPostScroll-DzOQY0M */
    long mo67onPostScrollDzOQY0M(int i, long j, long j2);

    /* renamed from: onPreFling-QWom1Mo */
    Object mo68onPreFlingQWom1Mo(long j, Continuation continuation);

    /* renamed from: onPreScroll-OzD1aCk */
    long mo69onPreScrollOzD1aCk(int i, long j);
}
