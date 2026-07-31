package org.wikipedia.feed;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import okio.Okio__OkioKt;
import org.wikipedia.compose.components.NotificationBellState;
import org.wikipedia.compose.components.menu.PageOverflowMenuViewModel;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.ForYouModule;
import org.wikipedia.feed.topread.TopRead;
import org.wikipedia.feed.wikigames.GamesModuleKt;
import org.wikipedia.language.AppLanguageState;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.util.TabUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeScreenKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ WikiSite f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Object f$7;
    public final /* synthetic */ Function1 f$8;

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda3(int i, Function1 function1, NotificationBellState notificationBellState, PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState, WikiSite wikiSite, CommunityContentState communityContentState, ForYouContentState forYouContentState, HomeTab homeTab, TabsState tabsState, AppLanguageState appLanguageState) {
        this.$r8$classId = 0;
        this.f$0 = wikiSite;
        this.f$1 = appLanguageState;
        this.f$2 = homeTab;
        this.f$3 = communityContentState;
        this.f$4 = forYouContentState;
        this.f$5 = pageOverflowMenuState;
        this.f$6 = tabsState;
        this.f$7 = notificationBellState;
        this.f$8 = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$7;
        Object obj4 = this.f$6;
        Object obj5 = this.f$5;
        Object obj6 = this.f$4;
        Object obj7 = this.f$3;
        Object obj8 = this.f$2;
        Object obj9 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(1);
                ForYouCardKt.HomeScreen(this.f$0, (AppLanguageState) obj9, (HomeTab) obj8, (CommunityContentState) obj7, (ForYouContentState) obj6, (PageOverflowMenuViewModel.PageOverflowMenuState) obj5, (TabsState) obj4, (NotificationBellState) obj3, this.f$8, (GapComposer) obj, updateChangedFlags);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(12582913);
                TabUtil.DidYouKnowModule(this.f$0, (List) obj9, (Function0) obj8, (Function0) obj7, this.f$8, (Function0) obj6, (Function0) obj5, (ComposableLambdaImpl) obj4, (Function2) obj3, (GapComposer) obj, updateChangedFlags2);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(385);
                ReadingListFragment.MultiSelectCallback.OnThisDayModule(this.f$0, (List) obj9, (ComposableLambdaImpl) obj8, (Function0) obj7, (Function0) obj6, this.f$8, (Function3) obj5, (Function0) obj4, (Function0) obj3, (GapComposer) obj, updateChangedFlags3);
                break;
            case 3:
                ((Integer) obj2).getClass();
                int updateChangedFlags4 = Updater.updateChangedFlags(385);
                Okio__OkioKt.TopReadModule(this.f$0, (TopRead) obj9, (ComposableLambdaImpl) obj8, (Function0) obj7, (Function0) obj6, this.f$8, (Function2) obj5, (Function0) obj4, (Function0) obj3, (GapComposer) obj, updateChangedFlags4);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags5 = Updater.updateChangedFlags(1);
                GamesModuleKt.GamesModule((Modifier) obj9, this.f$0, (ForYouModule.Games) obj8, this.f$8, (Function0) obj7, (Function2) obj6, (Function0) obj5, (Function1) obj4, (Function1) obj3, (GapComposer) obj, updateChangedFlags5);
                break;
        }
        return unit;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda3(Modifier modifier, WikiSite wikiSite, ForYouModule.Games games, Function1 function1, Function0 function0, Function2 function2, Function0 function02, Function1 function12, Function1 function13, int i) {
        this.$r8$classId = 4;
        this.f$1 = modifier;
        this.f$0 = wikiSite;
        this.f$2 = games;
        this.f$8 = function1;
        this.f$3 = function0;
        this.f$4 = function2;
        this.f$5 = function02;
        this.f$6 = function12;
        this.f$7 = function13;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda3(WikiSite wikiSite, Object obj, ComposableLambdaImpl composableLambdaImpl, Function0 function0, Function0 function02, Function1 function1, Function function, Function0 function03, Function0 function04, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = wikiSite;
        this.f$1 = obj;
        this.f$2 = composableLambdaImpl;
        this.f$3 = function0;
        this.f$4 = function02;
        this.f$8 = function1;
        this.f$5 = function;
        this.f$6 = function03;
        this.f$7 = function04;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda3(WikiSite wikiSite, List list, Function0 function0, Function0 function02, Function1 function1, Function0 function03, Function0 function04, ComposableLambdaImpl composableLambdaImpl, Function2 function2, int i) {
        this.$r8$classId = 1;
        this.f$0 = wikiSite;
        this.f$1 = list;
        this.f$2 = function0;
        this.f$3 = function02;
        this.f$8 = function1;
        this.f$4 = function03;
        this.f$5 = function04;
        this.f$6 = composableLambdaImpl;
        this.f$7 = function2;
    }
}
