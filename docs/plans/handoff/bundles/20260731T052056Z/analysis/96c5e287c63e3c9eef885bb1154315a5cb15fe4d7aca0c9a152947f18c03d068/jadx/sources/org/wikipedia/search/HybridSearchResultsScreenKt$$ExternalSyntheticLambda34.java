package org.wikipedia.search;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.wikipedia.util.UiState;
import org.wikipedia.yearinreview.YearInReviewDialog;
import org.wikipedia.yearinreview.YearInReviewScreenData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HybridSearchResultsScreenKt$$ExternalSyntheticLambda34 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ int f$4;
    public final /* synthetic */ int f$5;

    public /* synthetic */ HybridSearchResultsScreenKt$$ExternalSyntheticLambda34(Modifier modifier, String str, int i, String str2, YearInReviewScreenData.HighlightsScreen highlightsScreen, int i2) {
        this.$r8$classId = 1;
        this.f$0 = modifier;
        this.f$1 = str;
        this.f$4 = i;
        this.f$2 = str2;
        this.f$3 = highlightsScreen;
        this.f$5 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = this.f$4;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$3;
        Object obj4 = this.f$2;
        Object obj5 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                NoSearchResultsKt.SemanticSearchResultHeader(this.f$0, (String) obj5, (Function0) obj4, (Function0) obj3, (GapComposer) obj, updateChangedFlags, this.f$5);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(this.f$5 | 1);
                YearInReviewDialog.ShareableHighlightsCard(this.f$0, (String) obj5, this.f$4, (String) obj4, (YearInReviewScreenData.HighlightsScreen) obj3, (GapComposer) obj, updateChangedFlags2);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                YearInReviewDialog.YearInReviewOnboardingScreen(this.f$0, (UiState) obj5, (Function0) obj4, (Function0) obj3, (GapComposer) obj, updateChangedFlags3, this.f$5);
                break;
        }
        return unit;
    }

    public /* synthetic */ HybridSearchResultsScreenKt$$ExternalSyntheticLambda34(Modifier modifier, Object obj, Function0 function0, Function0 function02, int i, int i2, int i3) {
        this.$r8$classId = i3;
        this.f$0 = modifier;
        this.f$1 = obj;
        this.f$2 = function0;
        this.f$3 = function02;
        this.f$4 = i;
        this.f$5 = i2;
    }
}
