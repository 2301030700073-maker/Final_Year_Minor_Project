package org.wikipedia.search;

import androidx.compose.material3.TextKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.style.TextAlign;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HybridSearchViewsKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ HybridSearchViewsKt$$ExternalSyntheticLambda1(Modifier modifier, String str, int i) {
        this.$r8$classId = 0;
        this.f$0 = modifier;
        this.f$1 = str;
        this.f$2 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$2;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                NoSearchResultsKt.SearchResultTitleOnlyBottomContent(Updater.updateChangedFlags(i2 | 1), (GapComposer) obj, this.f$0, this.f$1);
                break;
            case 1:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(this.f$1, this.f$0, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, new TextAlign(i2), 0L, 0, false, 0, 0, null, null, gapComposer, 0, 0, 261112);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(this.f$1, this.f$0, ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).secondaryColor, null, 0L, null, null, 0L, new TextAlign(i2), 0L, 0, false, 0, 0, null, null, gapComposer2, 0, 0, 261112);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ HybridSearchViewsKt$$ExternalSyntheticLambda1(String str, Modifier modifier, int i, int i2) {
        this.$r8$classId = i2;
        this.f$1 = str;
        this.f$0 = modifier;
        this.f$2 = i;
    }
}
