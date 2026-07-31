package org.wikipedia.readinglist.recommended;

import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$scrollToItem$2;
import androidx.lifecycle.ViewModelKt;
import com.google.android.material.snackbar.Snackbar;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda8;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsViewModel;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ RecommendedReadingListInterestsFragment f$0;

    public /* synthetic */ RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1(RecommendedReadingListInterestsFragment recommendedReadingListInterestsFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = recommendedReadingListInterestsFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        RecommendedReadingListInterestsFragment recommendedReadingListInterestsFragment = this.f$0;
        switch (i) {
            case 0:
                RecommendedReadingListInterestsViewModel.UiState uiState = (RecommendedReadingListInterestsViewModel.UiState) obj;
                uiState.getClass();
                if (uiState.fromRandomize) {
                    AppCompatActivity requireActivity = recommendedReadingListInterestsFragment.requireActivity();
                    String string = recommendedReadingListInterestsFragment.getString(R.string.recommended_reading_list_interest_pick_random_snackbar);
                    string.getClass();
                    Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
                    makeSnackbar$default.setAction(R.string.recommended_reading_list_interest_pick_random_snackbar_action, new HomeFragment$$ExternalSyntheticLambda8(23, recommendedReadingListInterestsFragment, uiState));
                    makeSnackbar$default.show();
                    break;
                }
                break;
            case 1:
                LazyStaggeredGridState lazyStaggeredGridState = (LazyStaggeredGridState) obj;
                lazyStaggeredGridState.getClass();
                RecommendedReadingListInterestsViewModel viewModel = recommendedReadingListInterestsFragment.getViewModel();
                StateFlowImpl stateFlowImpl = viewModel._uiState;
                Object value = stateFlowImpl.getValue();
                Resource.Success success = value instanceof Resource.Success ? (Resource.Success) value : null;
                if (success != null) {
                    RecommendedReadingListInterestsViewModel.UiState uiState2 = (RecommendedReadingListInterestsViewModel.UiState) success.data;
                    List list = uiState2.items;
                    list.getClass();
                    List mutableList = CollectionsKt.toMutableList((Iterable) list);
                    Collections.shuffle(mutableList);
                    RecommendedReadingListInterestsViewModel.UiState uiState3 = new RecommendedReadingListInterestsViewModel.UiState(uiState2.fromSettings, mutableList, CollectionsKt.toSet(CollectionsKt.take(mutableList, 3)), true, uiState2.items, uiState2.selectedItems);
                    stateFlowImpl.updateState(null, new Resource.Success(uiState3));
                    WikiGamesEvent.submit$default("randomizer_click", "rrl_interests_select", null, null, null, null, null, null, 508);
                    viewModel.randomizeEvent.postValue(uiState3);
                }
                AwaitKt.launch$default(ViewModelKt.getLifecycleScope(recommendedReadingListInterestsFragment), null, null, new LazyStaggeredGridState$scrollToItem$2(lazyStaggeredGridState, null), 3);
                break;
            default:
                PageTitle pageTitle = (PageTitle) obj;
                pageTitle.getClass();
                StateFlowImpl stateFlowImpl2 = recommendedReadingListInterestsFragment.getViewModel()._uiState;
                Object value2 = stateFlowImpl2.getValue();
                Resource.Success success2 = value2 instanceof Resource.Success ? (Resource.Success) value2 : null;
                if (success2 != null) {
                    RecommendedReadingListInterestsViewModel.UiState uiState4 = (RecommendedReadingListInterestsViewModel.UiState) success2.data;
                    boolean contains = uiState4.selectedItems.contains(pageTitle);
                    Set set = uiState4.selectedItems;
                    stateFlowImpl2.updateState(null, new Resource.Success(RecommendedReadingListInterestsViewModel.UiState.copy$default(uiState4, null, contains ? UuidKt.minus(set, pageTitle) : UuidKt.plus(set, pageTitle), 59)));
                    break;
                }
                break;
        }
        return unit;
    }
}
