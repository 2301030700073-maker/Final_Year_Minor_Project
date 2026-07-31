package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Velocity;
import androidx.recyclerview.widget.RecyclerView;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DefaultPagerNestedScrollConnection implements NestedScrollConnection {
    public final Orientation orientation;
    public final PagerState state;

    public DefaultPagerNestedScrollConnection(PagerState pagerState, Orientation orientation) {
        this.state = pagerState;
        this.orientation = orientation;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostFling-RZ2iAVY */
    public final Object mo2onPostFlingRZ2iAVY(long j, long j2, Continuation continuation) {
        return new Velocity(this.orientation == Orientation.Vertical ? Velocity.m730copyOhffZ5M$default(j2, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 2) : Velocity.m730copyOhffZ5M$default(j2, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 1));
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostScroll-DzOQY0M */
    public final long mo3onPostScrollDzOQY0M(int i, long j, long j2) {
        if (i != 2) {
            return 0L;
        }
        if (Float.intBitsToFloat((int) (this.orientation == Orientation.Horizontal ? j2 >> 32 : 4294967295L & j2)) == RecyclerView.DECELERATION_RATE) {
            return 0L;
        }
        throw new CancellationException("Scroll cancelled");
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreFling-QWom1Mo */
    public final Object mo4onPreFlingQWom1Mo(long j, Continuation continuation) {
        return new Velocity(0L);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreScroll-OzD1aCk */
    public final long mo5onPreScrollOzD1aCk(long j, int i) {
        if (i != 1) {
            return 0L;
        }
        PagerState pagerState = this.state;
        if (Math.abs(pagerState.getCurrentPageOffsetFraction()) <= 1.0E-6d) {
            return 0L;
        }
        Orientation orientation = Orientation.Horizontal;
        Orientation orientation2 = this.orientation;
        if (Math.abs(Float.intBitsToFloat((int) (orientation2 == orientation ? j >> 32 : j & 4294967295L))) <= RecyclerView.DECELERATION_RATE) {
            return 0L;
        }
        PagerMeasureResult layoutInfo = pagerState.getLayoutInfo();
        float currentPageOffsetFraction = pagerState.getCurrentPageOffsetFraction() * pagerState.getPageSize$foundation();
        float f = ((layoutInfo.pageSize + layoutInfo.pageSpacing) * (-Math.signum(pagerState.getCurrentPageOffsetFraction()))) + currentPageOffsetFraction;
        if (pagerState.getCurrentPageOffsetFraction() > RecyclerView.DECELERATION_RATE) {
            currentPageOffsetFraction = f;
            f = currentPageOffsetFraction;
        }
        float f2 = -pagerState.scrollableState.dispatchRawDelta(-RegexKt.coerceIn(Float.intBitsToFloat((int) (orientation2 == orientation ? j >> 32 : j & 4294967295L)), currentPageOffsetFraction, f));
        float intBitsToFloat = orientation2 == orientation ? f2 : Float.intBitsToFloat((int) (j >> 32));
        if (orientation2 != Orientation.Vertical) {
            f2 = Float.intBitsToFloat((int) (j & 4294967295L));
        }
        return (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(f2) & 4294967295L);
    }
}
