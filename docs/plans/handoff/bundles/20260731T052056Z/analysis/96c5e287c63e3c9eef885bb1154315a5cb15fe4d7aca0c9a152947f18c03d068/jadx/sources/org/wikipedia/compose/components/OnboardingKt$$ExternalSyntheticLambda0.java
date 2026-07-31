package org.wikipedia.compose.components;

import androidx.compose.animation.CrossfadeKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TooltipKt;
import androidx.compose.material3.TooltipScopeImpl;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.style.TextAlign;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda30;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class OnboardingKt$$ExternalSyntheticLambda0 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;

    public /* synthetic */ OnboardingKt$$ExternalSyntheticLambda0(int i, String str) {
        this.$r8$classId = i;
        this.f$0 = str;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(this.f$0, null, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor, null, 0L, null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer, 0, 0, 130042);
                    break;
                }
            case 1:
                GapComposer gapComposer2 = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    CrossfadeKt.AnimatedContent(this.f$0, null, null, null, null, null, TabsBoxKt.lambda$1491806916, gapComposer2, 1572864, 62);
                    break;
                }
            case 2:
                GapComposer gapComposer3 = (GapComposer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(this.f$0, null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer3, 0, 0, 262142);
                    break;
                }
            case 3:
                GapComposer gapComposer4 = (GapComposer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(this.f$0, null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer4, 0, 0, 262142);
                    break;
                }
            case 4:
                GapComposer gapComposer5 = (GapComposer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(this.f$0, null, ((WikipediaColor) gapComposer5.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer5, 0, 0, 262138);
                    break;
                }
            case 5:
                TooltipScopeImpl tooltipScopeImpl = (TooltipScopeImpl) obj;
                GapComposer gapComposer6 = (GapComposer) obj2;
                int intValue6 = ((Integer) obj3).intValue();
                tooltipScopeImpl.getClass();
                TooltipKt.m310PlainTooltipgv3ox5I(tooltipScopeImpl, OffsetKt.m134paddingVpY3zN4$default(Modifier.Companion.$$INSTANCE, 16.0f, RecyclerView.DECELERATION_RATE, 2), RecyclerView.DECELERATION_RATE, null, 0L, ((WikipediaColor) gapComposer6.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, Expect_jvmKt.rememberComposableLambda(1648345618, new HomeScreenKt$$ExternalSyntheticLambda30(this.f$0, 5, (byte) 0), gapComposer6), gapComposer6, (intValue6 & 14) | 805306416);
                break;
            default:
                GapComposer gapComposer7 = (GapComposer) obj2;
                int intValue7 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 17) != 16)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(this.f$0, null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer7, 0, 0, 262142);
                    break;
                }
        }
        return unit;
    }
}
