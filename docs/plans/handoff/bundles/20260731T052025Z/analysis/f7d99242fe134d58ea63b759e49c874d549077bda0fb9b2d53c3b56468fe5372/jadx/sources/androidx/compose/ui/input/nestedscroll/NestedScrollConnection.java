package androidx.compose.ui.input.nestedscroll;

import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface NestedScrollConnection {
    /* renamed from: onPostFling-RZ2iAVY */
    Object mo185onPostFlingRZ2iAVY(long j, long j2, Continuation continuation);

    /* renamed from: onPostScroll-DzOQY0M */
    long mo186onPostScrollDzOQY0M(int i, long j, long j2);

    /* renamed from: onPreFling-QWom1Mo */
    Object mo187onPreFlingQWom1Mo(long j, Continuation continuation);

    /* renamed from: onPreScroll-OzD1aCk */
    long mo188onPreScrollOzD1aCk(int i, long j);
}
