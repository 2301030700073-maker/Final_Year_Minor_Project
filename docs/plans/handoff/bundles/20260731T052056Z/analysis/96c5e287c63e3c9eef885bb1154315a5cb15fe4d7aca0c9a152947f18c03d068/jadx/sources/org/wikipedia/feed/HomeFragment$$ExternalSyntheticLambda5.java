package org.wikipedia.feed;

import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.navigation.NavHostController;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okhttp3.Cookie;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.compose.components.NotificationBellState;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.compose.components.menu.PageOverflowMenuViewModel;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.donate.donationreminder.DonationReminderScreenKt;
import org.wikipedia.donate.donationreminder.DonationReminderViewModel;
import org.wikipedia.feed.image.FeaturedImageCard;
import org.wikipedia.games.GamesHubViewModel;
import org.wikipedia.games.onthisday.OnThisDayGameArchiveCalendarHelper;
import org.wikipedia.language.AppLanguageState;
import org.wikipedia.util.UiState;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeFragment$$ExternalSyntheticLambda5 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Object f$7;

    public /* synthetic */ HomeFragment$$ExternalSyntheticLambda5(HomeFragment homeFragment, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4, MutableState mutableState5, MutableState mutableState6, MutableState mutableState7) {
        this.$r8$classId = 0;
        this.f$0 = homeFragment;
        this.f$1 = mutableState;
        this.f$2 = mutableState2;
        this.f$3 = mutableState3;
        this.f$4 = mutableState4;
        this.f$5 = mutableState5;
        this.f$6 = mutableState6;
        this.f$7 = mutableState7;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$7;
        Object obj4 = this.f$2;
        Object obj5 = this.f$6;
        Object obj6 = this.f$5;
        Object obj7 = this.f$4;
        Object obj8 = this.f$3;
        Object obj9 = this.f$1;
        Object obj10 = this.f$0;
        switch (i) {
            case 0:
                HomeFragment homeFragment = (HomeFragment) obj10;
                State state = (State) obj9;
                MutableState mutableState = (MutableState) obj4;
                State state2 = (State) obj8;
                State state3 = (State) obj7;
                State state4 = (State) obj6;
                State state5 = (State) obj5;
                MutableState mutableState2 = (MutableState) obj3;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(1 & intValue, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    WikiSite wikiSite = (WikiSite) state.getValue();
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    AppLanguageState languageState = Jsoup.getInstance().getLanguageState();
                    HomeTab homeTab = (HomeTab) mutableState.getValue();
                    CommunityContentState communityContentState = (CommunityContentState) state2.getValue();
                    ForYouContentState forYouContentState = (ForYouContentState) state3.getValue();
                    PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState = (PageOverflowMenuViewModel.PageOverflowMenuState) ((PageOverflowMenuViewModel) homeFragment.pageOverflowMenuViewModel$delegate.getValue()).pageOverflowMenuState$delegate.getValue();
                    TabsState tabsState = (TabsState) state4.getValue();
                    NotificationBellState notificationBellState = (NotificationBellState) state5.getValue();
                    boolean changedInstance = gapComposer.changedInstance(homeFragment) | gapComposer.changed(state) | gapComposer.changed(mutableState);
                    Object rememberedValue = gapComposer.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new UtilsKt$$ExternalSyntheticLambda1(homeFragment, state, mutableState, 22);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    ForYouCardKt.HomeScreen(wikiSite, languageState, homeTab, communityContentState, forYouContentState, pageOverflowMenuState, tabsState, notificationBellState, (Function1) rememberedValue, gapComposer, 0);
                    if (((HomeTab) mutableState.getValue()) == HomeTab.FOR_YOU && !((Boolean) mutableState2.getValue()).booleanValue() && !((ForYouContentState) state3.getValue()).modules.isEmpty()) {
                        gapComposer.startReplaceGroup(1605439443);
                        Object rememberedValue2 = gapComposer.rememberedValue();
                        if (rememberedValue2 == neverEqualPolicy) {
                            rememberedValue2 = new ForYouCardKt$$ExternalSyntheticLambda2(mutableState2, 22);
                            gapComposer.updateRememberedValue(rememberedValue2);
                        }
                        Function0 function0 = (Function0) rememberedValue2;
                        TabsBoxKt.m905WikipediaAlertDialogsK9R1Co(null, UtilsKt.stringResource(R.string.explore_feed_swipe_to_explore_prompt_title, gapComposer), SizeKt.fillMaxWidth(Modifier.Companion.$$INSTANCE, 1.0f), 0, UtilsKt.stringResource(R.string.explore_feed_swipe_to_explore_prompt_message, gapComposer), null, 0, ForYouCardKt.f35lambda$168430649, UtilsKt.stringResource(R.string.onboarding_got_it, gapComposer), 0L, null, 0L, function0, function0, null, gapComposer, 12583296, 3456, 20073);
                        gapComposer.end(false);
                        break;
                    } else {
                        gapComposer.startReplaceGroup(1606588799);
                        gapComposer.end(false);
                        break;
                    }
                }
            case 1:
                ((Integer) obj2).getClass();
                ContextsKt.NavHost((NavHostController) obj10, (Modifier) obj9, (Alignment) obj8, (Function1) obj7, (Function1) obj6, (Function1) obj5, (Function1) obj4, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(115015729));
                break;
            case 2:
                ((Integer) obj2).getClass();
                DonationReminderScreenKt.DonationReminderScreen((Modifier) obj10, (DonationReminderViewModel) obj9, (WikiErrorClickEvents) obj8, (Function0) obj7, (Function1) obj6, (Function0) obj5, (Function0) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                Cookie.Companion.FeaturedArticleModule((WikiSite) obj10, (PageSummary) obj9, (Function1) obj8, (Function0) obj7, (Function0) obj6, (Function1) obj5, (Function1) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 4:
                ((Integer) obj2).getClass();
                UriUtil.FeaturedImageModule((WikiSite) obj10, (FeaturedImageCard) obj9, (Function1) obj8, (Function0) obj7, (Function1) obj6, (Function1) obj5, (Function1) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            default:
                ((Integer) obj2).getClass();
                Jsoup.GamesHubScreen((GamesHubViewModel) obj10, (UiState) obj9, (OnThisDayGameArchiveCalendarHelper) obj8, (Function2) obj7, (Function0) obj6, (Function1) obj5, (List) obj4, (InfiniteTransition) obj3, (GapComposer) obj, Updater.updateChangedFlags(16777217));
                break;
        }
        return unit;
    }

    public /* synthetic */ HomeFragment$$ExternalSyntheticLambda5(Object obj, Object obj2, Object obj3, Function function, Function function2, Function function3, Object obj4, Object obj5, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$3 = obj3;
        this.f$4 = function;
        this.f$5 = function2;
        this.f$6 = function3;
        this.f$2 = obj4;
        this.f$7 = obj5;
    }
}
