package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutationInterruptedException;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ScrollingLogic$doFlingAnimation$2$reverseScope$1 implements ScrollScope {
    public final /* synthetic */ ScrollingLogic$nestedScrollScope$1 $nestedScrollScope;
    public final /* synthetic */ ScrollingLogic this$0;

    public ScrollingLogic$doFlingAnimation$2$reverseScope$1(ScrollingLogic scrollingLogic, ScrollingLogic$nestedScrollScope$1 scrollingLogic$nestedScrollScope$1) {
        this.this$0 = scrollingLogic;
        this.$nestedScrollScope = scrollingLogic$nestedScrollScope$1;
    }

    @Override // androidx.compose.foundation.gestures.ScrollScope
    public final float scrollBy(float f) {
        float abs = Math.abs(f);
        ScrollingLogic scrollingLogic = this.this$0;
        if (abs != RecyclerView.DECELERATION_RATE && !((Boolean) scrollingLogic.isScrollableNodeAttached.invoke()).booleanValue()) {
            throw new MutationInterruptedException(1, "The fling animation was cancelled");
        }
        return scrollingLogic.reverseIfNeeded(scrollingLogic.m103toFloatk4lQ0M(this.$nestedScrollScope.m106scrollByWithOverscrollOzD1aCk(scrollingLogic.m102reverseIfNeededMKHz9U(scrollingLogic.m104toOffsettuRUvjQ(f)), 2)));
    }
}
