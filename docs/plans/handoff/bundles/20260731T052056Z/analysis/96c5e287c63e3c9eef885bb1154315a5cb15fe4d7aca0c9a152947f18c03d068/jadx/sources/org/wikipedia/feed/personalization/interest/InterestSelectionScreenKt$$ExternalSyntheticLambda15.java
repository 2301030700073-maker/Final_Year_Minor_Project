package org.wikipedia.feed.personalization.interest;

import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemScopeImpl;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function4;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class InterestSelectionScreenKt$$ExternalSyntheticLambda15 implements Function4 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ InfiniteTransition f$0;

    public /* synthetic */ InterestSelectionScreenKt$$ExternalSyntheticLambda15(InfiniteTransition infiniteTransition, int i) {
        this.$r8$classId = i;
        this.f$0 = infiniteTransition;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        InfiniteTransition infiniteTransition = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                GapComposer gapComposer = (GapComposer) obj3;
                int intValue = ((Integer) obj4).intValue();
                ((LazyStaggeredGridItemScopeImpl) obj).getClass();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 129) != 128)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    BoxKt.Box(Jsoup.shimmerEffect$default(ClipKt.clip(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 200.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(16.0f)), null, infiniteTransition, 15), gapComposer, 0);
                    break;
                }
            default:
                ((Integer) obj2).getClass();
                GapComposer gapComposer2 = (GapComposer) obj3;
                int intValue2 = ((Integer) obj4).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 129) != 128)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    BoxKt.Box(Jsoup.shimmerEffect$default(ClipKt.clip(SizeKt.m140height3ABfNKs(SizeKt.m149width3ABfNKs(companion, 185.0f), 230.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(12.0f)), null, infiniteTransition, 15), gapComposer2, 0);
                    break;
                }
        }
        return unit;
    }
}
