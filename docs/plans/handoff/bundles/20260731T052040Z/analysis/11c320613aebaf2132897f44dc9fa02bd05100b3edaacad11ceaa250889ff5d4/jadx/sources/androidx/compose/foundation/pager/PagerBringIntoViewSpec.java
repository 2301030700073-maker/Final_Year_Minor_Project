package androidx.compose.foundation.pager;

import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PagerBringIntoViewSpec implements BringIntoViewSpec {
    public final BringIntoViewSpec defaultBringIntoViewSpec;
    public final LayoutDirection layoutDirection;
    public final DefaultPagerState pagerState;

    public PagerBringIntoViewSpec(DefaultPagerState defaultPagerState, BringIntoViewSpec bringIntoViewSpec, LayoutDirection layoutDirection) {
        this.pagerState = defaultPagerState;
        this.defaultBringIntoViewSpec = bringIntoViewSpec;
        this.layoutDirection = layoutDirection;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0014, code lost:
    
        if ((r12 + r13) > r14) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x001f, code lost:
    
        if (r12 <= 1.0f) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0016, code lost:
    
        r5 = true;
     */
    @Override // androidx.compose.foundation.gestures.BringIntoViewSpec
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float calculateScrollDistance(float r12, float r13, float r14) {
        /*
            r11 = this;
            androidx.compose.foundation.pager.DefaultPagerState r0 = r11.pagerState
            androidx.compose.runtime.ParcelableSnapshotMutableState r1 = r0.isLastScrollForwardState
            androidx.compose.foundation.gestures.BringIntoViewSpec r2 = r11.defaultBringIntoViewSpec
            float r2 = r2.calculateScrollDistance(r12, r13, r14)
            r3 = 0
            int r4 = (r12 > r3 ? 1 : (r12 == r3 ? 0 : -1))
            r5 = 0
            r6 = 1
            if (r4 <= 0) goto L18
            float r12 = r12 + r13
            int r12 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r12 <= 0) goto L22
        L16:
            r5 = r6
            goto L22
        L18:
            float r12 = r12 + r13
            java.util.LinkedHashMap r13 = androidx.compose.animation.core.VisibilityThresholdsKt.VisibilityThresholdMap
            r13 = 1065353216(0x3f800000, float:1.0)
            int r12 = (r12 > r13 ? 1 : (r12 == r13 ? 0 : -1))
            if (r12 > 0) goto L22
            goto L16
        L22:
            float r12 = java.lang.Math.abs(r2)
            int r12 = (r12 > r3 ? 1 : (r12 == r3 ? 0 : -1))
            androidx.compose.ui.unit.LayoutDirection r13 = androidx.compose.ui.unit.LayoutDirection.Rtl
            androidx.compose.foundation.gestures.Orientation r4 = androidx.compose.foundation.gestures.Orientation.Horizontal
            androidx.compose.ui.unit.LayoutDirection r11 = r11.layoutDirection
            r6 = -1082130432(0xffffffffbf800000, float:-1.0)
            if (r12 != 0) goto L33
            goto L6b
        L33:
            if (r5 == 0) goto L6b
            if (r11 != r13) goto L48
            androidx.compose.foundation.pager.PagerMeasureResult r11 = r0.getLayoutInfo()
            androidx.compose.foundation.gestures.Orientation r11 = r11.orientation
            if (r11 != r4) goto L48
            int r11 = r0.firstVisiblePageOffset
            int r11 = -r11
            int r12 = r0.getPageSizeWithSpacing$foundation()
            int r12 = r12 + r11
            goto L4a
        L48:
            int r12 = r0.firstVisiblePageOffset
        L4a:
            float r11 = (float) r12
            float r11 = r11 * r6
        L4c:
            int r12 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r12 <= 0) goto L5b
            int r12 = (r11 > r2 ? 1 : (r11 == r2 ? 0 : -1))
            if (r12 >= 0) goto L5b
            int r12 = r0.getPageSizeWithSpacing$foundation()
            float r12 = (float) r12
            float r11 = r11 + r12
            goto L4c
        L5b:
            int r12 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r12 >= 0) goto L6a
            int r12 = (r11 > r2 ? 1 : (r11 == r2 ? 0 : -1))
            if (r12 <= 0) goto L6a
            int r12 = r0.getPageSizeWithSpacing$foundation()
            float r12 = (float) r12
            float r11 = r11 - r12
            goto L5b
        L6a:
            return r11
        L6b:
            int r12 = r0.firstVisiblePageOffset
            int r12 = java.lang.Math.abs(r12)
            double r7 = (double) r12
            r9 = 4517329193108106637(0x3eb0c6f7a0b5ed8d, double:1.0E-6)
            int r12 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r12 >= 0) goto L7c
            return r3
        L7c:
            if (r11 != r13) goto L8f
            androidx.compose.foundation.pager.PagerMeasureResult r12 = r0.getLayoutInfo()
            androidx.compose.foundation.gestures.Orientation r12 = r12.orientation
            if (r12 != r4) goto L8f
            int r12 = r0.firstVisiblePageOffset
            int r12 = -r12
            int r2 = r0.getPageSizeWithSpacing$foundation()
            int r2 = r2 + r12
            goto L91
        L8f:
            int r2 = r0.firstVisiblePageOffset
        L91:
            float r12 = (float) r2
            float r12 = r12 * r6
            if (r11 != r13) goto Lb1
            androidx.compose.foundation.pager.PagerMeasureResult r11 = r0.getLayoutInfo()
            androidx.compose.foundation.gestures.Orientation r11 = r11.orientation
            if (r11 != r4) goto Lb1
            java.lang.Object r11 = r1.getValue()
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 == 0) goto Laa
            goto Lc2
        Laa:
            int r11 = r0.getPageSizeWithSpacing$foundation()
        Lae:
            float r11 = (float) r11
            float r12 = r12 + r11
            goto Lc2
        Lb1:
            java.lang.Object r11 = r1.getValue()
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 == 0) goto Lc2
            int r11 = r0.getPageSizeWithSpacing$foundation()
            goto Lae
        Lc2:
            float r11 = -r14
            float r11 = kotlin.ranges.RangesKt.coerceIn(r12, r11, r14)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.PagerBringIntoViewSpec.calculateScrollDistance(float, float, float):float");
    }

    @Override // androidx.compose.foundation.gestures.BringIntoViewSpec
    public final SpringSpec getScrollAnimationSpec() {
        BringIntoViewSpec.Companion.getClass();
        return BringIntoViewSpec.Companion.DefaultScrollAnimationSpec;
    }
}
