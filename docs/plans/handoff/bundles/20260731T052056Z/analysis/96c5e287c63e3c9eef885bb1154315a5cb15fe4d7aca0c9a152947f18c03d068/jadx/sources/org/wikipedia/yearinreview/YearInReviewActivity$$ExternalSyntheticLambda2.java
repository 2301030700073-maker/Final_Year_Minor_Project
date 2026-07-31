package org.wikipedia.yearinreview;

import androidx.lifecycle.ViewModelKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.settings.Prefs;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class YearInReviewActivity$$ExternalSyntheticLambda2 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ YearInReviewActivity f$0;

    public /* synthetic */ YearInReviewActivity$$ExternalSyntheticLambda2(YearInReviewActivity yearInReviewActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = yearInReviewActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        YearInReviewActivity yearInReviewActivity = this.f$0;
        switch (i) {
            case 0:
                int i2 = YearInReviewActivity.$r8$clinit;
                yearInReviewActivity.finish();
                break;
            case 1:
                int i3 = YearInReviewActivity.$r8$clinit;
                Prefs prefs = Prefs.INSTANCE;
                YearInReviewModel yearInReviewModel = (YearInReviewModel) Prefs.getYearInReviewModelData().get(2025);
                if ((yearInReviewModel != null ? yearInReviewModel.slideViewedCount : 0) >= 2 && Prefs.getYearInReviewSurveyState() == YearInReviewSurveyState.NOT_TRIGGERED) {
                    Prefs.setYearInReviewSurveyState(YearInReviewSurveyState.SHOULD_SHOW);
                }
                yearInReviewActivity.finish();
                break;
            default:
                int i4 = YearInReviewActivity.$r8$clinit;
                YearInReviewViewModel yearInReviewViewModel = (YearInReviewViewModel) yearInReviewActivity.viewModel$delegate.getValue();
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(yearInReviewViewModel), yearInReviewViewModel.handler, null, new YearInReviewViewModel$fetchPersonalizedData$1(yearInReviewViewModel, null), 2);
                break;
        }
        return unit;
    }
}
