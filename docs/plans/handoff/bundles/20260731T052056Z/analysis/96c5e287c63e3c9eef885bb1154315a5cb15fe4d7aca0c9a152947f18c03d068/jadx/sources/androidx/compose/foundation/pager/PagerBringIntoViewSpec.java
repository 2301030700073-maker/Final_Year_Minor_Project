package androidx.compose.foundation.pager;

import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PagerBringIntoViewSpec implements BringIntoViewSpec {
    public final BringIntoViewSpec defaultBringIntoViewSpec;
    public final LayoutDirection layoutDirection;
    public final PagerState pagerState;

    public PagerBringIntoViewSpec(PagerState pagerState, BringIntoViewSpec bringIntoViewSpec, LayoutDirection layoutDirection) {
        this.pagerState = pagerState;
        this.defaultBringIntoViewSpec = bringIntoViewSpec;
        this.layoutDirection = layoutDirection;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
    
        if ((r8 + r9) > r10) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x001b, code lost:
    
        if (r8 <= 1.0f) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
    
        r3 = true;
     */
    @Override // androidx.compose.foundation.gestures.BringIntoViewSpec
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float calculateScrollDistance(float r8, float r9, float r10) {
        /*
            Method dump skipped, instructions count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.PagerBringIntoViewSpec.calculateScrollDistance(float, float, float):float");
    }

    @Override // androidx.compose.foundation.gestures.BringIntoViewSpec
    public final SpringSpec getScrollAnimationSpec() {
        BringIntoViewSpec.Companion.getClass();
        return BringIntoViewSpec.Companion.DefaultScrollAnimationSpec;
    }
}
