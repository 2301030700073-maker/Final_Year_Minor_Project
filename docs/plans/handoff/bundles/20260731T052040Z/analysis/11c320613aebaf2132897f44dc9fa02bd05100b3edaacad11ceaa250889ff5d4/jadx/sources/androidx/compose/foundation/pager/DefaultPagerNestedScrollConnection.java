package androidx.compose.foundation.pager;

import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Velocity;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DefaultPagerNestedScrollConnection implements NestedScrollConnection {
    public final DefaultPagerState state;

    public DefaultPagerNestedScrollConnection(DefaultPagerState defaultPagerState) {
        this.state = defaultPagerState;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostFling-RZ2iAVY */
    public final Object mo66onPostFlingRZ2iAVY(long j, long j2, Continuation continuation) {
        return new Velocity(Velocity.m457copyOhffZ5M$default(j2, 0.0f, 0.0f, 1));
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostScroll-DzOQY0M */
    public final long mo67onPostScrollDzOQY0M(int i, long j, long j2) {
        if (i != 2 || Float.intBitsToFloat((int) (j2 >> 32)) == 0.0f) {
            return 0L;
        }
        throw new CancellationException("Scroll cancelled");
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreFling-QWom1Mo */
    public final Object mo68onPreFlingQWom1Mo(long j, Continuation continuation) {
        return new Velocity(0L);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreScroll-OzD1aCk */
    public final long mo69onPreScrollOzD1aCk(int i, long j) {
        if (i != 1) {
            return 0L;
        }
        DefaultPagerState defaultPagerState = this.state;
        if (Math.abs(defaultPagerState.getCurrentPageOffsetFraction()) <= 1.0E-6d) {
            return 0L;
        }
        int i2 = (int) (j >> 32);
        if (Math.abs(Float.intBitsToFloat(i2)) <= 0.0f) {
            return 0L;
        }
        PagerMeasureResult layoutInfo = defaultPagerState.getLayoutInfo();
        float currentPageOffsetFraction = defaultPagerState.getCurrentPageOffsetFraction() * defaultPagerState.getPageSize$foundation();
        float f = ((layoutInfo.pageSize + layoutInfo.pageSpacing) * (-Math.signum(defaultPagerState.getCurrentPageOffsetFraction()))) + currentPageOffsetFraction;
        if (defaultPagerState.getCurrentPageOffsetFraction() > 0.0f) {
            currentPageOffsetFraction = f;
            f = currentPageOffsetFraction;
        }
        float f2 = -defaultPagerState.scrollableState.dispatchRawDelta(-RangesKt.coerceIn(Float.intBitsToFloat(i2), currentPageOffsetFraction, f));
        float intBitsToFloat = Float.intBitsToFloat((int) (j & 4294967295L));
        return (Float.floatToRawIntBits(f2) << 32) | (Float.floatToRawIntBits(intBitsToFloat) & 4294967295L);
    }
}
