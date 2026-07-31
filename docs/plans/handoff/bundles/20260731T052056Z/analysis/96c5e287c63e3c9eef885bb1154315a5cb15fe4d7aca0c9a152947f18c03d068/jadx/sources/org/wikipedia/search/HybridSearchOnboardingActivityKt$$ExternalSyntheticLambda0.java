package org.wikipedia.search;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.CardKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import coil3.util.UtilsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.wikipedia.R;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeOnboardingActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function0 f$0;
    public final /* synthetic */ Function0 f$1;

    public /* synthetic */ HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0(Function0 function0, Function0 function02, int i) {
        this.$r8$classId = 3;
        this.f$0 = function0;
        this.f$1 = function02;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Function0 function0 = this.f$1;
        Function0 function02 = this.f$0;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    CardKt.m266HorizontalDivider9IZ8Weo(null, 0.5f, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor, gapComposer, 48, 1);
                    boolean changed = gapComposer.changed(function02);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == Composer$Companion.Empty) {
                        rememberedValue = new SearchResultsScreenKt$$ExternalSyntheticLambda1(3, function02);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    HybridSearchOnboardingActivityKt.MainBottomBar((Function0) rememberedValue, function0, gapComposer, 0);
                    break;
                }
                break;
            case 1:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    TabsBoxKt.TwoButtonBottomBar(OffsetKt.m133paddingVpY3zN4(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f, 16.0f), UtilsKt.stringResource(R.string.onboarding_continue, gapComposer2), UtilsKt.stringResource(R.string.activity_tab_menu_info, gapComposer2), this.f$0, this.f$1, gapComposer2, 6);
                    break;
                }
            case 2:
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    TabsBoxKt.TwoButtonBottomBar(OffsetKt.m133paddingVpY3zN4(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f, 16.0f), UtilsKt.stringResource(R.string.explore_feed_new_update_prompt_primary_button_text, gapComposer3), UtilsKt.stringResource(R.string.explore_feed_new_update_prompt_secondary_button_text, gapComposer3), this.f$0, this.f$1, gapComposer3, 6);
                    break;
                }
            case 3:
                ((Integer) obj2).getClass();
                HybridSearchOnboardingActivityKt.MainBottomBar(function02, function0, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            default:
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                int i2 = ReadingChallengeOnboardingActivity.$r8$clinit;
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    TabsBoxKt.TwoButtonBottomBar(OffsetKt.m133paddingVpY3zN4(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f, 16.0f), UtilsKt.stringResource(R.string.reading_challenge_onboarding_join_button, gapComposer4), UtilsKt.stringResource(R.string.reading_challenge_onboarding_learn_more_button, gapComposer4), this.f$0, this.f$1, gapComposer4, 6);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0(Function0 function0, Function0 function02, int i, byte b) {
        this.$r8$classId = i;
        this.f$0 = function0;
        this.f$1 = function02;
    }
}
