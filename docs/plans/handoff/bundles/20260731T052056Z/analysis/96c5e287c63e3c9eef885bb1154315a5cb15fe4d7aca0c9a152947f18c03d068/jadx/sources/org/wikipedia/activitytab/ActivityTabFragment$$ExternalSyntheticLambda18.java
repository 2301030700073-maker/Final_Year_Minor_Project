package org.wikipedia.activitytab;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.SafeFlow;
import okhttp3.Cache;
import okhttp3.Headers;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.games.WikiGames;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ActivityTabFragment$$ExternalSyntheticLambda18 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ActivityTabFragment f$0;

    public /* synthetic */ ActivityTabFragment$$ExternalSyntheticLambda18(ActivityTabFragment activityTabFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = activityTabFragment;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = 1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(-750400431, new ActivityTabFragment$$ExternalSyntheticLambda18(this.f$0, i2), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    ActivityTabFragment activityTabFragment = this.f$0;
                    boolean booleanValue = ((Boolean) Updater.collectAsState(activityTabFragment.getViewModel().scrollToGames, gapComposer2).getValue()).booleanValue();
                    boolean z = Headers.Companion.isLoggedIn() && !Headers.Companion.isTemporaryAccount();
                    String userName = Headers.Companion.getUserName();
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    String str = Jsoup.getInstance().getWikiSite().languageCode;
                    Prefs prefs = Prefs.INSTANCE;
                    ActivityTabModules activityTabModules = Prefs.getActivityTabModules();
                    boolean z2 = !Prefs.getDonationResults().isEmpty();
                    boolean isLangSupported = WikiGames.WHICH_CAME_FIRST.isLangSupported(Jsoup.getInstance().getWikiSite().languageCode);
                    boolean z3 = activityTabFragment.getViewModel().shouldRefreshTimelineSilently;
                    UiState uiState = (UiState) Updater.collectAsState(activityTabFragment.getViewModel().readingHistoryState, gapComposer2).getValue();
                    UiState uiState2 = (UiState) Updater.collectAsState(activityTabFragment.getViewModel().donationUiState, gapComposer2).getValue();
                    UiState uiState3 = (UiState) Updater.collectAsState(activityTabFragment.getViewModel().wikiGamesUiState, gapComposer2).getValue();
                    UiState uiState4 = (UiState) Updater.collectAsState(activityTabFragment.getViewModel().impactUiState, gapComposer2).getValue();
                    SafeFlow safeFlow = activityTabFragment.getViewModel().timelineFlow;
                    boolean changedInstance = gapComposer2.changedInstance(activityTabFragment);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                        rememberedValue = new ActivityTabFragment$$ExternalSyntheticLambda1(activityTabFragment, 7);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    activityTabFragment.ActivityTabScreen(z, userName, str, activityTabModules, z2, isLangSupported, z3, booleanValue, uiState, uiState2, uiState3, uiState4, safeFlow, rememberedValue, gapComposer2, 0);
                    break;
                }
                break;
        }
        return unit;
    }
}
