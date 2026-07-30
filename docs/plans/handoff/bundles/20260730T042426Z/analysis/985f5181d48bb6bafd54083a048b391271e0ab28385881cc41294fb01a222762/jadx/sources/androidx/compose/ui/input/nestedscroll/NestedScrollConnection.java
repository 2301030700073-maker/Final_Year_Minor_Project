package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.unit.Velocity;
import kotlin.coroutines.Continuation;

/* compiled from: NestedScrollModifier.kt */
/* loaded from: classes.dex */
public interface NestedScrollConnection {
    /* renamed from: onPostFling-RZ2iAVY */
    Object mo219onPostFlingRZ2iAVY(long j, long j2, Continuation continuation);

    /* renamed from: onPostScroll-DzOQY0M */
    long mo220onPostScrollDzOQY0M(long j, long j2, int i);

    /* renamed from: onPreFling-QWom1Mo */
    Object mo221onPreFlingQWom1Mo(long j, Continuation continuation);

    /* renamed from: onPreScroll-OzD1aCk */
    long mo222onPreScrollOzD1aCk(long j, int i);

    /* compiled from: NestedScrollModifier.kt */
    /* renamed from: androidx.compose.ui.input.nestedscroll.NestedScrollConnection$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        /* renamed from: onPreFling-QWom1Mo$suspendImpl, reason: not valid java name */
        public static /* synthetic */ Object m1643onPreFlingQWom1Mo$suspendImpl(NestedScrollConnection nestedScrollConnection, long j, Continuation continuation) {
            return Velocity.m2518boximpl(Velocity.Companion.m2532getZero9UxMQ8M());
        }
    }
}
