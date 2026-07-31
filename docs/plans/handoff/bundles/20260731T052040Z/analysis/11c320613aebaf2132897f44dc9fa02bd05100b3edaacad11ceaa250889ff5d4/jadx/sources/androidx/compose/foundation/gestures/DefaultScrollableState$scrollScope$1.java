package androidx.compose.foundation.gestures;

import androidx.compose.foundation.pager.PagerState;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DefaultScrollableState$scrollScope$1 implements ScrollScope {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object this$0;

    public DefaultScrollableState$scrollScope$1(ScrollScope scrollScope, PagerState pagerState) {
        this.this$0 = scrollScope;
    }

    @Override // androidx.compose.foundation.gestures.ScrollScope
    public final float scrollBy(float f) {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 0:
                DefaultScrollableState defaultScrollableState = (DefaultScrollableState) obj;
                if (Float.isNaN(f)) {
                    return 0.0f;
                }
                float floatValue = ((Number) defaultScrollableState.onDelta.invoke(Float.valueOf(f))).floatValue();
                defaultScrollableState.isLastScrollForwardState.setValue(Boolean.valueOf(floatValue > 0.0f));
                defaultScrollableState.isLastScrollBackwardState.setValue(Boolean.valueOf(floatValue < 0.0f));
                return floatValue;
            default:
                return ((ScrollScope) obj).scrollBy(f);
        }
    }

    public DefaultScrollableState$scrollScope$1(DefaultScrollableState defaultScrollableState) {
        this.this$0 = defaultScrollableState;
    }
}
