package org.wikipedia.feed;

import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.wikipedia.activitytab.ImpactModuleKt;
import org.wikipedia.compose.components.NotificationBellState;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.search.NoSearchResultsKt;
import org.wikipedia.search.SearchResult;
import org.wikipedia.util.UiState;
import org.wikipedia.yearinreview.YearInReviewDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeScreenKt$$ExternalSyntheticLambda18 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda18(int i, TabsState tabsState, NotificationBellState notificationBellState, Function0 function0, Function0 function02, Function0 function03, int i2) {
        this.$r8$classId = 0;
        this.f$0 = i;
        this.f$1 = tabsState;
        this.f$2 = notificationBellState;
        this.f$3 = function0;
        this.f$4 = function02;
        this.f$5 = function03;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = this.f$0;
        Object obj3 = this.f$4;
        Object obj4 = this.f$3;
        Object obj5 = this.f$5;
        Object obj6 = this.f$2;
        Unit unit = Unit.INSTANCE;
        Object obj7 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(1);
                ForYouCardKt.HomeToolbar(this.f$0, (TabsState) obj7, (NotificationBellState) obj6, (Function0) obj4, (Function0) obj3, (Function0) obj5, (GapComposer) obj, updateChangedFlags);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                ArcSplineKt.UpdateInitialAndTargetValues((Transition) obj7, (Transition.TransitionAnimationState) obj6, this.f$3, this.f$4, (FiniteAnimationSpec) obj5, (GapComposer) obj, updateChangedFlags2);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2) | 1;
                ((ComposableLambdaImpl) obj7).invoke(this.f$2, this.f$3, this.f$4, this.f$5, (GapComposer) obj, updateChangedFlags3);
                break;
            case 3:
                ((Integer) obj2).getClass();
                ImpactModuleKt.WikiGamesModule((Modifier) obj7, (UiState) obj6, (Function0) obj4, (Function0) obj3, (WikiErrorClickEvents) obj5, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 4:
                ((Integer) obj2).getClass();
                TabsBoxKt.TwoButtonBottomBar((Modifier) obj7, (String) obj6, (String) obj5, (Function0) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                NoSearchResultsKt.SearchResultPageItem((Modifier) obj7, (SearchResult) obj6, (String) obj3, (Function0) obj4, (Function1) obj5, (GapComposer) obj, Updater.updateChangedFlags(1), this.f$0);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags4 = Updater.updateChangedFlags(1);
                YearInReviewDialog.MainBottomBar((List) obj7, (PagerState) obj6, this.f$0, (Function0) obj4, (Function0) obj3, (Function1) obj5, (GapComposer) obj, updateChangedFlags4);
                break;
        }
        return unit;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda18(int i, int i2, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        this.$r8$classId = i2;
        this.f$1 = obj;
        this.f$2 = obj2;
        this.f$3 = obj3;
        this.f$4 = obj4;
        this.f$5 = obj5;
        this.f$0 = i;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda18(Modifier modifier, String str, String str2, Function0 function0, Function0 function02, int i) {
        this.$r8$classId = 4;
        this.f$1 = modifier;
        this.f$2 = str;
        this.f$5 = str2;
        this.f$3 = function0;
        this.f$4 = function02;
        this.f$0 = i;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda18(Modifier modifier, SearchResult searchResult, String str, Function0 function0, Function1 function1, int i, int i2) {
        this.$r8$classId = 5;
        this.f$1 = modifier;
        this.f$2 = searchResult;
        this.f$4 = str;
        this.f$3 = function0;
        this.f$5 = function1;
        this.f$0 = i2;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda18(List list, PagerState pagerState, int i, Function0 function0, Function0 function02, Function1 function1, int i2) {
        this.$r8$classId = 6;
        this.f$1 = list;
        this.f$2 = pagerState;
        this.f$0 = i;
        this.f$3 = function0;
        this.f$4 = function02;
        this.f$5 = function1;
    }
}
