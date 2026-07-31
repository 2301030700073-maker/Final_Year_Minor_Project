package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Velocity;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.ViewCompat;
import java.util.WeakHashMap;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NestedScrollInteropConnection implements NestedScrollConnection {
    public final int[] consumedScrollCache;
    public final NestedScrollingChildHelper nestedScrollChildHelper;
    public final View view;

    public NestedScrollInteropConnection(View view) {
        this.view = view;
        NestedScrollingChildHelper nestedScrollingChildHelper = new NestedScrollingChildHelper(view);
        nestedScrollingChildHelper.setNestedScrollingEnabled(true);
        this.nestedScrollChildHelper = nestedScrollingChildHelper;
        this.consumedScrollCache = new int[2];
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        view.setNestedScrollingEnabled(true);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostFling-RZ2iAVY */
    public final Object mo2onPostFlingRZ2iAVY(long j, long j2, Continuation continuation) {
        NestedScrollingChildHelper nestedScrollingChildHelper = this.nestedScrollChildHelper;
        if (nestedScrollingChildHelper.hasNestedScrollingParent(0)) {
            nestedScrollingChildHelper.stopNestedScroll(0);
        }
        if (nestedScrollingChildHelper.hasNestedScrollingParent(1)) {
            nestedScrollingChildHelper.stopNestedScroll(1);
        }
        return new Velocity(0L);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostScroll-DzOQY0M */
    public final long mo3onPostScrollDzOQY0M(int i, long j, long j2) {
        int m609getScrollAxesk4lQ0M = TestTagKt.m609getScrollAxesk4lQ0M(j2);
        int i2 = i == 1 ? 1 : 0;
        NestedScrollingChildHelper nestedScrollingChildHelper = this.nestedScrollChildHelper;
        if (!nestedScrollingChildHelper.startNestedScroll(m609getScrollAxesk4lQ0M, i2 ^ 1)) {
            return 0L;
        }
        int[] iArr = this.consumedScrollCache;
        ArraysKt___ArraysKt.fill$default(iArr, 0, 0, 6);
        int composeToViewOffset = TestTagKt.composeToViewOffset(Float.intBitsToFloat((int) (j2 >> 32)));
        int composeToViewOffset2 = TestTagKt.composeToViewOffset(Float.intBitsToFloat((int) (j2 & 4294967295L)));
        nestedScrollingChildHelper.dispatchNestedScrollInternal(TestTagKt.composeToViewOffset(Float.intBitsToFloat((int) (j >> 32))), TestTagKt.composeToViewOffset(Float.intBitsToFloat((int) (j & 4294967295L))), composeToViewOffset, composeToViewOffset2, null, (i == 1 ? 1 : 0) ^ 1, iArr);
        return TestTagKt.m614toOffsetmoWRBKg(composeToViewOffset, composeToViewOffset2, iArr, j2);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreFling-QWom1Mo */
    public final Object mo4onPreFlingQWom1Mo(long j, Continuation continuation) {
        float m731getXimpl = Velocity.m731getXimpl(j) * (-1.0f);
        float m732getYimpl = Velocity.m732getYimpl(j) * (-1.0f);
        NestedScrollingChildHelper nestedScrollingChildHelper = this.nestedScrollChildHelper;
        if (!nestedScrollingChildHelper.dispatchNestedPreFling(m731getXimpl, m732getYimpl) && !nestedScrollingChildHelper.dispatchNestedFling(Velocity.m731getXimpl(j) * (-1.0f), Velocity.m732getYimpl(j) * (-1.0f), true)) {
            j = 0;
        }
        return new Velocity(j);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreScroll-OzD1aCk */
    public final long mo5onPreScrollOzD1aCk(long j, int i) {
        int m609getScrollAxesk4lQ0M = TestTagKt.m609getScrollAxesk4lQ0M(j);
        int i2 = i == 1 ? 1 : 0;
        NestedScrollingChildHelper nestedScrollingChildHelper = this.nestedScrollChildHelper;
        if (!nestedScrollingChildHelper.startNestedScroll(m609getScrollAxesk4lQ0M, i2 ^ 1)) {
            return 0L;
        }
        int[] iArr = this.consumedScrollCache;
        ArraysKt___ArraysKt.fill$default(iArr, 0, 0, 6);
        int composeToViewOffset = TestTagKt.composeToViewOffset(Float.intBitsToFloat((int) (j >> 32)));
        int composeToViewOffset2 = TestTagKt.composeToViewOffset(Float.intBitsToFloat((int) (4294967295L & j)));
        nestedScrollingChildHelper.dispatchNestedPreScroll(composeToViewOffset, composeToViewOffset2, (i == 1 ? 1 : 0) ^ 1, iArr, null);
        return TestTagKt.m614toOffsetmoWRBKg(composeToViewOffset, composeToViewOffset2, iArr, j);
    }
}
