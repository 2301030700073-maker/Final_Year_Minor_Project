package org.wikipedia.activitytab;

import android.content.Context;
import android.content.Intent;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.lifecycle.ViewModelKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import okio.Okio__OkioKt;
import okio.Path;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.activitytab.ActivityTabFragment;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.games.GamesHubActivity;
import org.wikipedia.games.onthisday.OnThisDayGameActivity;
import org.wikipedia.games.onthisday.OnThisDayGameProvider;
import org.wikipedia.login.LoginActivity;
import org.wikipedia.main.MainFragment;
import org.wikipedia.navtab.NavTab;
import org.wikipedia.suggestededits.SuggestedEditsTasksActivity;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ActivityTabFragment$$ExternalSyntheticLambda1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ActivityTabFragment f$0;

    public /* synthetic */ ActivityTabFragment$$ExternalSyntheticLambda1(ActivityTabFragment activityTabFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = activityTabFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ActivityTabFragment activityTabFragment = this.f$0;
        switch (i) {
            case 0:
                AppCompatActivity requireActivity = activityTabFragment.requireActivity();
                int i2 = GamesHubActivity.$r8$clinit;
                requireActivity.startActivity(new Intent(activityTabFragment.requireContext(), (Class<?>) GamesHubActivity.class));
                break;
            case 1:
                AppCompatActivity requireActivity2 = activityTabFragment.requireActivity();
                int i3 = OnThisDayGameActivity.$r8$clinit;
                Context requireContext = activityTabFragment.requireContext();
                Constants.InvokeSource invokeSource = Constants.InvokeSource.ACTIVITY_TAB;
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                requireActivity2.startActivity(OnThisDayGameProvider.newIntent$default(requireContext, invokeSource, Jsoup.getInstance().getWikiSite(), null, 0, 24));
                break;
            case 2:
                ActivityTabFragment.Callback callback = activityTabFragment.callback();
                if (callback != null) {
                    ((MainFragment) callback).onNavigateTo(NavTab.SEARCH);
                    break;
                }
                break;
            case 3:
                ActivityTabFragment.Callback callback2 = activityTabFragment.callback();
                if (callback2 != null) {
                    ((MainFragment) callback2).onNavigateTo(NavTab.READING_LISTS);
                    break;
                }
                break;
            case 4:
                WikiGamesEvent.submit$default("activity_tab", "explore_click", Integer.valueOf(activityTabFragment.getViewModel().getTotalEditsCount()), null, null, null, null, null, null, null, null, null, 16372);
                ActivityTabFragment.Callback callback3 = activityTabFragment.callback();
                if (callback3 != null) {
                    ((MainFragment) callback3).onNavigateTo(NavTab.READING_LISTS);
                    break;
                }
                break;
            case 5:
                ActivityTabViewModel viewModel = activityTabFragment.getViewModel();
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1(viewModel, 1), null, new ActivityTabViewModel$loadReadingHistory$2(viewModel, null), 2);
                break;
            case 6:
                activityTabFragment.getViewModel().loadAll();
                break;
            case 7:
                StateFlowImpl stateFlowImpl = activityTabFragment.getViewModel()._scrollToGames;
                Boolean bool = Boolean.FALSE;
                stateFlowImpl.getClass();
                stateFlowImpl.updateState(null, bool);
                break;
            case 8:
                WikiGamesEvent.submit$default("activity_tab_login", "create_account_click", null, null, null, null, null, null, null, null, null, null, 16380);
                int i4 = LoginActivity.$r8$clinit;
                activityTabFragment.startActivity(Path.Companion.newIntent(activityTabFragment.requireContext(), "activity_tab", true), null);
                break;
            case 9:
                WikiGamesEvent.submit$default("activity_tab_login", "login_click", null, null, null, null, null, null, null, null, null, null, 16380);
                int i5 = LoginActivity.$r8$clinit;
                activityTabFragment.startActivity(Path.Companion.newIntent(activityTabFragment.requireContext(), "activity_tab", false), null);
                break;
            case 10:
                ActivityTabViewModel viewModel2 = activityTabFragment.getViewModel();
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), new ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1(viewModel2, 2), null, new ThumbNode$onAttach$1(23, viewModel2, null), 2);
                break;
            case 11:
                Integer valueOf = Integer.valueOf(activityTabFragment.getViewModel().getTotalEditsCount());
                UiState uiState = (UiState) activityTabFragment.getViewModel()._donationUiState.getValue();
                WikiGamesEvent.submit$default("activity_tab", "last_donation_click", valueOf, (!(uiState instanceof UiState.Success) || ((UiState.Success) uiState).data == null) ? "empty" : "complete", null, null, null, null, null, null, null, null, 16356);
                AppCompatActivity requireActivity3 = activityTabFragment.requireActivity();
                BaseActivity baseActivity = requireActivity3 instanceof BaseActivity ? (BaseActivity) requireActivity3 : null;
                if (baseActivity != null) {
                    int i6 = BaseActivity.$r8$clinit;
                    Okio__OkioKt.show(baseActivity.getSupportFragmentManager(), Path.Companion.newInstance$default(12, "appmenu_activity", null));
                    break;
                }
                break;
            case 12:
                WikiGamesEvent.submit$default("activity_tab", "sugg_edit_click", Integer.valueOf(activityTabFragment.getViewModel().getTotalEditsCount()), null, null, null, null, null, null, null, null, null, 16372);
                AppCompatActivity requireActivity4 = activityTabFragment.requireActivity();
                int i7 = SuggestedEditsTasksActivity.$r8$clinit;
                requireActivity4.startActivity(new Intent(activityTabFragment.requireActivity(), (Class<?>) SuggestedEditsTasksActivity.class));
                break;
            case IMAGE_VALUE:
                activityTabFragment.getViewModel().loadImpact();
                break;
            default:
                activityTabFragment.getViewModel().loadImpact();
                break;
        }
        return unit;
    }
}
