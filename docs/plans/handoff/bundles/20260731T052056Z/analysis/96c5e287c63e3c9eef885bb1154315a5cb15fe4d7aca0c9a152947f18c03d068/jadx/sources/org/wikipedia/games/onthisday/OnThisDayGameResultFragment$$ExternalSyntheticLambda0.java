package org.wikipedia.games.onthisday;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import okhttp3.Cache;
import okhttp3.Headers;
import org.wikipedia.activitytab.ImpactModuleKt;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.games.onthisday.OnThisDayGameViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class OnThisDayGameResultFragment$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ OnThisDayGameViewModel.GameStatistics f$0;
    public final /* synthetic */ OnThisDayGameResultFragment f$1;

    public /* synthetic */ OnThisDayGameResultFragment$$ExternalSyntheticLambda0(OnThisDayGameViewModel.GameStatistics gameStatistics, OnThisDayGameResultFragment onThisDayGameResultFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = gameStatistics;
        this.f$1 = onThisDayGameResultFragment;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        OnThisDayGameResultFragment onThisDayGameResultFragment = this.f$1;
        OnThisDayGameViewModel.GameStatistics gameStatistics = this.f$0;
        int i2 = 1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(-417326575, new OnThisDayGameResultFragment$$ExternalSyntheticLambda0(gameStatistics, onThisDayGameResultFragment, i2), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(1 & intValue2, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else if (!Headers.Companion.isLoggedIn()) {
                    gapComposer2.startReplaceGroup(1354887445);
                    boolean changedInstance = gapComposer2.changedInstance(onThisDayGameResultFragment);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                        rememberedValue = new WikiGames$$ExternalSyntheticLambda0(14, onThisDayGameResultFragment);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    ImpactModuleKt.OnThisDayGameLoginPromptCard(null, (Function0) rememberedValue, gapComposer2, 0);
                    gapComposer2.end(false);
                    break;
                } else {
                    gapComposer2.startReplaceGroup(1354407720);
                    Modifier fillMaxWidth = SizeKt.fillMaxWidth(Modifier.Companion.$$INSTANCE, 1.0f);
                    int i3 = gameStatistics.totalGamesPlayed;
                    int i4 = gameStatistics.currentStreak;
                    Double d = gameStatistics.averageScore;
                    ImpactModuleKt.WikiGamesStatsCard(fillMaxWidth, i3, i4, gameStatistics.bestStreak, d != null ? d.doubleValue() : 0.0d, false, null, null, gapComposer2, 196614, 192);
                    gapComposer2.end(false);
                    break;
                }
        }
        return unit;
    }
}
