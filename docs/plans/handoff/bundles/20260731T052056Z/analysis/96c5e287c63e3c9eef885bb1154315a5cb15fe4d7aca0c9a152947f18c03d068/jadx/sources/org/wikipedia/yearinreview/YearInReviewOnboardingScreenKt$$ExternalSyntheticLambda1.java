package org.wikipedia.yearinreview;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Function0 f$0;
    public final /* synthetic */ UiState f$1;

    public /* synthetic */ YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda1(Function0 function0, UiState uiState) {
        this.f$0 = function0;
        this.f$1 = uiState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        UiState uiState = this.f$1;
        Function0 function0 = this.f$0;
        GapComposer gapComposer = (GapComposer) obj;
        Integer num = (Integer) obj2;
        switch (i) {
            case 0:
                int intValue = num.intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    YearInReviewDialog.YearInReviewOnboardingBottomBar(function0, uiState, gapComposer, 0);
                    break;
                }
            default:
                num.getClass();
                YearInReviewDialog.YearInReviewOnboardingBottomBar(function0, uiState, gapComposer, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    public /* synthetic */ YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda1(Function0 function0, UiState uiState, int i) {
        this.f$0 = function0;
        this.f$1 = uiState;
    }
}
