package org.wikipedia.search;

import androidx.compose.runtime.MutableState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.settings.dev.playground.ENTRY;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeOnboardingActivity;
import org.wikipedia.yearinreview.YearInReviewOnboardingActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HybridSearchResultsScreenKt$$ExternalSyntheticLambda32 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MutableState f$0;

    public /* synthetic */ HybridSearchResultsScreenKt$$ExternalSyntheticLambda32(MutableState mutableState, int i) {
        this.$r8$classId = i;
        this.f$0 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MutableState mutableState = this.f$0;
        switch (i) {
            case 0:
                mutableState.setValue(Boolean.FALSE);
                break;
            case 1:
                WikiGamesEvent.submit$default("random_cancel_click", "rrl_interests_select", null, null, null, null, null, null, 508);
                mutableState.setValue(Boolean.FALSE);
                break;
            case 2:
                mutableState.setValue(Boolean.TRUE);
                break;
            case 3:
                WikiGamesEvent.submit$default("updates_click", "discover_settings", null, null, null, null, null, null, 508);
                mutableState.setValue(Boolean.TRUE);
                break;
            case 4:
                mutableState.setValue(Boolean.FALSE);
                break;
            case 5:
                mutableState.setValue(Boolean.FALSE);
                break;
            case 6:
                mutableState.setValue(Boolean.FALSE);
                break;
            case 7:
                mutableState.setValue(ENTRY.RANDOM_BULK);
                break;
            case 8:
                mutableState.setValue(ENTRY.SINGLE);
                break;
            case 9:
                mutableState.setValue(Boolean.FALSE);
                break;
            case 10:
                mutableState.setValue(Boolean.FALSE);
                break;
            case 11:
                int i2 = ReadingChallengeOnboardingActivity.$r8$clinit;
                mutableState.setValue(Boolean.FALSE);
                break;
            case 12:
                int i3 = YearInReviewOnboardingActivity.$r8$clinit;
                mutableState.setValue(Boolean.FALSE);
                break;
            default:
                mutableState.setValue(null);
                break;
        }
        return unit;
    }
}
