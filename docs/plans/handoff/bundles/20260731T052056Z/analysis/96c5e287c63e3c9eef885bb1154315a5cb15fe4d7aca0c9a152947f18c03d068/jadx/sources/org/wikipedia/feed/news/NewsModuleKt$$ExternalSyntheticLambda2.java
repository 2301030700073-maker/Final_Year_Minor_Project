package org.wikipedia.feed.news;

import androidx.compose.foundation.pager.DefaultPagerState;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okhttp3.HttpUrl;
import okio.Okio__OkioKt;
import org.jsoup.select.NodeTraversor;
import org.wikipedia.activitytab.ImpactModuleKt;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda29;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda28;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda7;
import org.wikipedia.settings.homefeed.ModulesViewModel;
import org.wikipedia.util.TabUtil;
import org.wikipedia.util.UiState;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeOnboardingActivity;
import org.wikipedia.yearinreview.YearInReviewDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class NewsModuleKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Function f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;

    public /* synthetic */ NewsModuleKt$$ExternalSyntheticLambda2(Modifier modifier, String str, String str2, Function1 function1, Function0 function0, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.$r8$classId = 2;
        this.f$0 = modifier;
        this.f$1 = str;
        this.f$4 = str2;
        this.f$2 = function1;
        this.f$3 = function0;
        this.f$5 = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$5;
        Object obj4 = this.f$2;
        Object obj5 = this.f$4;
        Function function = this.f$3;
        Object obj6 = this.f$0;
        Object obj7 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                HttpUrl.Companion.NewsModule((WikiSite) obj6, (List) obj7, (Function1) obj4, (Function0) function, (Function0) obj5, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                ImpactModuleKt.EditingInsightsModule((Modifier) obj6, (UiState) obj7, (Function1) obj4, (Function0) function, (Function0) obj5, (WikiErrorClickEvents) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                TabsBoxKt.SearchTopAppBar((Modifier) obj6, (String) obj7, (String) obj5, (Function1) obj4, (Function0) function, (ComposableLambdaImpl) obj3, (GapComposer) obj, Updater.updateChangedFlags(196609));
                break;
            case 3:
                ((Integer) obj2).getClass();
                TabUtil.ComposeLangLinksScreen((Modifier) obj6, (UiState) obj7, (Function1) obj4, (WikiErrorClickEvents) obj5, (Function0) function, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 4:
                ((Integer) obj2).getClass();
                Okio__OkioKt.FeedConfigurationScreen((ModulesViewModel) obj6, (Function0) function, (Function0) obj5, (Function0) obj3, (Function0) obj7, (Function0) obj4, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                NodeTraversor.HomeFeedSettingsScreen((Modifier) obj6, (Function0) function, (Function0) obj5, (Function0) obj3, (Function0) obj7, (Function0) obj4, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 6:
                ((Integer) obj2).getClass();
                int i2 = ReadingChallengeOnboardingActivity.$r8$clinit;
                ((ReadingChallengeOnboardingActivity) obj6).OnboardingScreen((Modifier) obj4, (List) obj7, (Function0) function, (Function0) obj5, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(7));
                break;
            default:
                List list = (List) obj7;
                PagerState pagerState = (PagerState) obj6;
                Function2 function2 = (Function2) function;
                Function2 function22 = (Function2) obj5;
                Function1 function1 = (Function1) obj4;
                MutableState mutableState = (MutableState) obj3;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    int size = list.size();
                    boolean changedInstance = gapComposer.changedInstance(list) | gapComposer.changed(pagerState) | gapComposer.changed(function2);
                    Object rememberedValue = gapComposer.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new HomeScreenKt$$ExternalSyntheticLambda29(list, pagerState, function2, 21);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Function0 function0 = (Function0) rememberedValue;
                    boolean changedInstance2 = gapComposer.changedInstance(list) | gapComposer.changed(pagerState) | gapComposer.changed(function22);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        GamesHubScreenKt$$ExternalSyntheticLambda28 gamesHubScreenKt$$ExternalSyntheticLambda28 = new GamesHubScreenKt$$ExternalSyntheticLambda28(list, pagerState, function22, mutableState, 5);
                        gapComposer.updateRememberedValue(gamesHubScreenKt$$ExternalSyntheticLambda28);
                        rememberedValue2 = gamesHubScreenKt$$ExternalSyntheticLambda28;
                    }
                    Function0 function02 = (Function0) rememberedValue2;
                    boolean changedInstance3 = gapComposer.changedInstance(list) | gapComposer.changed(pagerState) | gapComposer.changed(function1);
                    Object rememberedValue3 = gapComposer.rememberedValue();
                    if (changedInstance3 || rememberedValue3 == neverEqualPolicy) {
                        AboutActivityKt$$ExternalSyntheticLambda7 aboutActivityKt$$ExternalSyntheticLambda7 = new AboutActivityKt$$ExternalSyntheticLambda7(list, pagerState, function1, mutableState, 17);
                        gapComposer.updateRememberedValue(aboutActivityKt$$ExternalSyntheticLambda7);
                        rememberedValue3 = aboutActivityKt$$ExternalSyntheticLambda7;
                    }
                    YearInReviewDialog.MainBottomBar(list, pagerState, size, function0, function02, (Function1) rememberedValue3, gapComposer, 0);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ NewsModuleKt$$ExternalSyntheticLambda2(Modifier modifier, UiState uiState, Function1 function1, WikiErrorClickEvents wikiErrorClickEvents, Function0 function0, Function1 function12, int i) {
        this.$r8$classId = 3;
        this.f$0 = modifier;
        this.f$1 = uiState;
        this.f$2 = function1;
        this.f$4 = wikiErrorClickEvents;
        this.f$3 = function0;
        this.f$5 = function12;
    }

    public /* synthetic */ NewsModuleKt$$ExternalSyntheticLambda2(Object obj, Object obj2, Function1 function1, Function0 function0, Function0 function02, Object obj3, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = function1;
        this.f$3 = function0;
        this.f$4 = function02;
        this.f$5 = obj3;
    }

    public /* synthetic */ NewsModuleKt$$ExternalSyntheticLambda2(Object obj, Function0 function0, Function0 function02, Function0 function03, Function0 function04, Function0 function05, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$3 = function0;
        this.f$4 = function02;
        this.f$5 = function03;
        this.f$1 = function04;
        this.f$2 = function05;
    }

    public /* synthetic */ NewsModuleKt$$ExternalSyntheticLambda2(List list, DefaultPagerState defaultPagerState, Function2 function2, Function2 function22, Function1 function1, MutableState mutableState) {
        this.$r8$classId = 7;
        this.f$1 = list;
        this.f$0 = defaultPagerState;
        this.f$3 = function2;
        this.f$4 = function22;
        this.f$2 = function1;
        this.f$5 = mutableState;
    }

    public /* synthetic */ NewsModuleKt$$ExternalSyntheticLambda2(ReadingChallengeOnboardingActivity readingChallengeOnboardingActivity, Modifier modifier, List list, Function0 function0, Function0 function02, Function0 function03, int i) {
        this.$r8$classId = 6;
        this.f$0 = readingChallengeOnboardingActivity;
        this.f$2 = modifier;
        this.f$1 = list;
        this.f$3 = function0;
        this.f$4 = function02;
        this.f$5 = function03;
    }
}
