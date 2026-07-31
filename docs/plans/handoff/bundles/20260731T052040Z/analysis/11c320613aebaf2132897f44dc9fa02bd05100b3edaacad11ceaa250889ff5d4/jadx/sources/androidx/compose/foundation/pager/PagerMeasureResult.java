package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.SnapPosition$Start;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.Density;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PagerMeasureResult implements MeasureResult {
    public final int afterContentPadding;
    public final int beyondViewportPageCount;
    public final boolean canScrollForward;
    public final long childConstraints;
    public final CoroutineScope coroutineScope;
    public final MeasuredPage currentPage;
    public final float currentPageOffsetFraction;
    public final Density density;
    public final List extraPagesAfter;
    public final List extraPagesBefore;
    public final MeasuredPage firstVisiblePage;
    public final int firstVisiblePageScrollOffset;
    public final MeasureResult measureResult;
    public final Orientation orientation;
    public final int pageSize;
    public final int pageSpacing;
    public final boolean remeasureNeeded;
    public final SnapPosition$Start snapPosition;
    public final int viewportEndOffset;
    public final int viewportStartOffset;
    public final List visiblePagesInfo;

    public PagerMeasureResult(List list, int i, int i2, int i3, Orientation orientation, int i4, int i5, int i6, MeasuredPage measuredPage, MeasuredPage measuredPage2, float f, int i7, boolean z, SnapPosition$Start snapPosition$Start, MeasureResult measureResult, boolean z2, List list2, List list3, CoroutineScope coroutineScope, Density density, long j) {
        this.visiblePagesInfo = list;
        this.pageSize = i;
        this.pageSpacing = i2;
        this.afterContentPadding = i3;
        this.orientation = orientation;
        this.viewportStartOffset = i4;
        this.viewportEndOffset = i5;
        this.beyondViewportPageCount = i6;
        this.firstVisiblePage = measuredPage;
        this.currentPage = measuredPage2;
        this.currentPageOffsetFraction = f;
        this.firstVisiblePageScrollOffset = i7;
        this.canScrollForward = z;
        this.snapPosition = snapPosition$Start;
        this.measureResult = measureResult;
        this.remeasureNeeded = z2;
        this.extraPagesBefore = list2;
        this.extraPagesAfter = list3;
        this.coroutineScope = coroutineScope;
        this.density = density;
        this.childConstraints = j;
    }

    public final PagerMeasureResult copyWithScrollDeltaWithoutRemeasure(int i) {
        int i2;
        int i3 = this.pageSize + this.pageSpacing;
        if (this.remeasureNeeded) {
            return null;
        }
        List list = this.visiblePagesInfo;
        if (list.isEmpty() || this.firstVisiblePage == null || (i2 = this.firstVisiblePageScrollOffset - i) < 0 || i2 >= i3) {
            return null;
        }
        float f = this.currentPageOffsetFraction - (i3 != 0 ? i / i3 : 0.0f);
        if (this.currentPage == null || f >= 0.5f || f <= -0.5f) {
            return null;
        }
        MeasuredPage measuredPage = (MeasuredPage) CollectionsKt.first(list);
        MeasuredPage measuredPage2 = (MeasuredPage) CollectionsKt.last(list);
        int i4 = this.viewportEndOffset;
        int i5 = this.viewportStartOffset;
        if (i < 0) {
            if (Math.min((measuredPage.offset + i3) - i5, (measuredPage2.offset + i3) - i4) <= (-i)) {
                return null;
            }
        } else if (Math.min(i5 - measuredPage.offset, i4 - measuredPage2.offset) <= i) {
            return null;
        }
        int size = list.size();
        for (int i6 = 0; i6 < size; i6++) {
            ((MeasuredPage) list.get(i6)).applyScrollDelta(i);
        }
        List list2 = this.extraPagesBefore;
        int size2 = list2.size();
        for (int i7 = 0; i7 < size2; i7++) {
            ((MeasuredPage) list2.get(i7)).applyScrollDelta(i);
        }
        List list3 = this.extraPagesAfter;
        int size3 = list3.size();
        for (int i8 = 0; i8 < size3; i8++) {
            ((MeasuredPage) list3.get(i8)).applyScrollDelta(i);
        }
        return new PagerMeasureResult(this.visiblePagesInfo, this.pageSize, this.pageSpacing, this.afterContentPadding, this.orientation, this.viewportStartOffset, this.viewportEndOffset, this.beyondViewportPageCount, this.firstVisiblePage, this.currentPage, f, i2, this.canScrollForward || i > 0, this.snapPosition, this.measureResult, this.remeasureNeeded, this.extraPagesBefore, this.extraPagesAfter, this.coroutineScope, this.density, this.childConstraints);
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final Map getAlignmentLines() {
        return this.measureResult.getAlignmentLines();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final int getHeight() {
        return this.measureResult.getHeight();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final Function1 getRulers() {
        return this.measureResult.getRulers();
    }

    /* renamed from: getViewportSize-YbymL2g, reason: not valid java name */
    public final long m112getViewportSizeYbymL2g() {
        MeasureResult measureResult = this.measureResult;
        return (measureResult.getWidth() << 32) | (measureResult.getHeight() & 4294967295L);
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final int getWidth() {
        return this.measureResult.getWidth();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final void placeChildren() {
        this.measureResult.placeChildren();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ PagerMeasureResult(int r24, int r25, int r26, int r27, int r28, int r29, androidx.compose.foundation.gestures.snapping.SnapPosition$Start r30, androidx.compose.ui.layout.MeasureResult r31, kotlinx.coroutines.CoroutineScope r32, androidx.compose.ui.unit.Density r33, long r34) {
        /*
            r23 = this;
            r13 = 0
            r16 = 0
            kotlin.collections.EmptyList r1 = kotlin.collections.EmptyList.INSTANCE
            androidx.compose.foundation.gestures.Orientation r5 = androidx.compose.foundation.gestures.Orientation.Horizontal
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r17 = r1
            r18 = r1
            r0 = r23
            r2 = r24
            r3 = r25
            r4 = r26
            r6 = r27
            r7 = r28
            r8 = r29
            r14 = r30
            r15 = r31
            r19 = r32
            r20 = r33
            r21 = r34
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.PagerMeasureResult.<init>(int, int, int, int, int, int, androidx.compose.foundation.gestures.snapping.SnapPosition$Start, androidx.compose.ui.layout.MeasureResult, kotlinx.coroutines.CoroutineScope, androidx.compose.ui.unit.Density, long):void");
    }
}
