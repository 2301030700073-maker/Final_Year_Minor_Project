package org.wikipedia.activitytab;

import androidx.compose.material3.CardKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.SwitchKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda8;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda5 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Function1 f$1;

    public /* synthetic */ ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda5(boolean z, Function1 function1, int i) {
        this.$r8$classId = i;
        this.f$0 = z;
        this.f$1 = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        Function1 function1 = this.f$1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    boolean changed = gapComposer.changed(function1);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new HomeScreenKt$$ExternalSyntheticLambda8(function1, 4);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    long j = ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ColorSchemeKt.LocalColorScheme;
                    SwitchKt.Switch(this.f$0, (Function1) rememberedValue, null, false, CardKt.m276colorsV1nXRL4(((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).progressiveColor, ((ColorScheme) gapComposer.consume(staticProvidableCompositionLocal2)).outline, j, ((ColorScheme) gapComposer.consume(staticProvidableCompositionLocal2)).outline, gapComposer), gapComposer, 0);
                    break;
                }
            case 1:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    boolean changed2 = gapComposer2.changed(function1);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new HomeScreenKt$$ExternalSyntheticLambda8(function1, 9);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    Function1 function12 = (Function1) rememberedValue2;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = WikipediaColorKt.LocalWikipediaColor;
                    long j2 = ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal3)).paperColor;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = ColorSchemeKt.LocalColorScheme;
                    SwitchKt.Switch(this.f$0, function12, null, false, CardKt.m276colorsV1nXRL4(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal3)).paperColor, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal3)).progressiveColor, ((ColorScheme) gapComposer2.consume(staticProvidableCompositionLocal4)).outline, j2, ((ColorScheme) gapComposer2.consume(staticProvidableCompositionLocal4)).outline, gapComposer2), gapComposer2, 0);
                    break;
                }
            default:
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    boolean changed3 = gapComposer3.changed(function1);
                    Object rememberedValue3 = gapComposer3.rememberedValue();
                    if (changed3 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new HomeScreenKt$$ExternalSyntheticLambda8(function1, 25);
                        gapComposer3.updateRememberedValue(rememberedValue3);
                    }
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal5 = WikipediaColorKt.LocalWikipediaColor;
                    long j3 = ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal5)).paperColor;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal6 = ColorSchemeKt.LocalColorScheme;
                    SwitchKt.Switch(this.f$0, (Function1) rememberedValue3, null, false, CardKt.m276colorsV1nXRL4(((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal5)).paperColor, ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal5)).progressiveColor, ((ColorScheme) gapComposer3.consume(staticProvidableCompositionLocal6)).outline, j3, ((ColorScheme) gapComposer3.consume(staticProvidableCompositionLocal6)).outline, gapComposer3), gapComposer3, 0);
                    break;
                }
        }
        return unit;
    }
}
