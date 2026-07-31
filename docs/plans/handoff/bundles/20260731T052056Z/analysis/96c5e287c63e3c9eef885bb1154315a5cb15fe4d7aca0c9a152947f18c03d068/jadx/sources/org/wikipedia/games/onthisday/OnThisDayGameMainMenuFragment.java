package org.wikipedia.games.onthisday;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.BackStackRecord;
import androidx.lifecycle.ViewModelKt;
import androidx.room.Room;
import j$.time.LocalDate;
import j$.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.databinding.FragmentNewsBinding;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.SingleLiveData$sam$androidx_lifecycle_Observer$0;
import org.wikipedia.views.WikiErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;", "Lorg/wikipedia/games/onthisday/OnThisDayGameBaseFragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OnThisDayGameMainMenuFragment extends OnThisDayGameBaseFragment {
    public FragmentNewsBinding _binding;
    public final Request.Builder viewModel$delegate;

    public OnThisDayGameMainMenuFragment() {
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(OnThisDayGameViewModel.class), new Function0(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameMainMenuFragment$special$$inlined$activityViewModels$default$1
            public final /* synthetic */ OnThisDayGameMainMenuFragment $this_activityViewModels;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.$this_activityViewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                OnThisDayGameMainMenuFragment onThisDayGameMainMenuFragment = this.$this_activityViewModels;
                switch (i4) {
                    case 0:
                        return onThisDayGameMainMenuFragment.requireActivity().getViewModelStore();
                    case 1:
                        return onThisDayGameMainMenuFragment.requireActivity().getDefaultViewModelCreationExtras();
                    default:
                        return onThisDayGameMainMenuFragment.requireActivity().getDefaultViewModelProviderFactory();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameMainMenuFragment$special$$inlined$activityViewModels$default$1
            public final /* synthetic */ OnThisDayGameMainMenuFragment $this_activityViewModels;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.$this_activityViewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                OnThisDayGameMainMenuFragment onThisDayGameMainMenuFragment = this.$this_activityViewModels;
                switch (i4) {
                    case 0:
                        return onThisDayGameMainMenuFragment.requireActivity().getViewModelStore();
                    case 1:
                        return onThisDayGameMainMenuFragment.requireActivity().getDefaultViewModelCreationExtras();
                    default:
                        return onThisDayGameMainMenuFragment.requireActivity().getDefaultViewModelProviderFactory();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameMainMenuFragment$special$$inlined$activityViewModels$default$1
            public final /* synthetic */ OnThisDayGameMainMenuFragment $this_activityViewModels;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.$this_activityViewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                OnThisDayGameMainMenuFragment onThisDayGameMainMenuFragment = this.$this_activityViewModels;
                switch (i4) {
                    case 0:
                        return onThisDayGameMainMenuFragment.requireActivity().getViewModelStore();
                    case 1:
                        return onThisDayGameMainMenuFragment.requireActivity().getDefaultViewModelCreationExtras();
                    default:
                        return onThisDayGameMainMenuFragment.requireActivity().getDefaultViewModelProviderFactory();
                }
            }
        });
    }

    public final OnThisDayGameViewModel getViewModel$2() {
        return (OnThisDayGameViewModel) this.viewModel$delegate.getValue();
    }

    @Override // org.wikipedia.games.onthisday.OnThisDayGameBaseFragment
    public final void onArchiveDateSelected(LocalDate localDate) {
        OnThisDayGameViewModel viewModel$2 = getViewModel$2();
        viewModel$2.currentDate = localDate;
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$2), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$2, 0), null, new OnThisDayGameViewModel$loadGameState$2(viewModel$2, false, null), 2);
        BackStackRecord backStackRecord = new BackStackRecord(requireActivity().getSupportFragmentManager());
        backStackRecord.replace(R.id.fragmentContainer, new OnThisDayGamePlayFragment(), null);
        backStackRecord.commit();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.fragment_on_this_day_game_main_menu, viewGroup, false);
        int i = R.id.dateText;
        TextView textView = (TextView) Room.findChildViewById(inflate, R.id.dateText);
        if (textView != null) {
            i = R.id.errorView;
            WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.errorView);
            if (wikiErrorView != null) {
                i = R.id.gameMenuContainer;
                LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.gameMenuContainer);
                if (linearLayout != null) {
                    i = R.id.gameMessageText;
                    TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.gameMessageText);
                    if (textView2 != null) {
                        i = R.id.playArchiveButton;
                        Button button = (Button) Room.findChildViewById(inflate, R.id.playArchiveButton);
                        if (button != null) {
                            i = R.id.playGameButton;
                            Button button2 = (Button) Room.findChildViewById(inflate, R.id.playGameButton);
                            if (button2 != null) {
                                i = R.id.progressBar;
                                ProgressBar progressBar = (ProgressBar) Room.findChildViewById(inflate, R.id.progressBar);
                                if (progressBar != null) {
                                    this._binding = new FragmentNewsBinding((FrameLayout) inflate, textView, wikiErrorView, linearLayout, textView2, button, button2, progressBar);
                                    WikiGamesEvent.submit$default(984, Boolean.valueOf(getViewModel$2().isArchiveGame), null, "impression", "game_play", "game_start", null, null);
                                    FragmentNewsBinding fragmentNewsBinding = this._binding;
                                    fragmentNewsBinding.getClass();
                                    FrameLayout frameLayout = (FrameLayout) fragmentNewsBinding.rootView;
                                    frameLayout.getClass();
                                    return frameLayout;
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        FragmentNewsBinding fragmentNewsBinding = this._binding;
        fragmentNewsBinding.getClass();
        ((WikiErrorView) fragmentNewsBinding.gradientView).setRetryClickListener(new OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0(this, 0));
        FragmentNewsBinding fragmentNewsBinding2 = this._binding;
        fragmentNewsBinding2.getClass();
        ((WikiErrorView) fragmentNewsBinding2.gradientView).setBackClickListener(new OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0(this, 1));
        getViewModel$2()._gameState.observe(getViewLifecycleOwner(), new SingleLiveData$sam$androidx_lifecycle_Observer$0(new MainActivity$$ExternalSyntheticLambda1(14, this), 2));
    }

    public final void showGameMenu() {
        FragmentNewsBinding fragmentNewsBinding = this._binding;
        fragmentNewsBinding.getClass();
        TextView textView = (TextView) fragmentNewsBinding.appBarLayout;
        ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
        LocalDate localDate = getViewModel$2().currentDate;
        localDate.getClass();
        textView.setText(DateUtil.getShortDateString(localDate));
        FragmentNewsBinding fragmentNewsBinding2 = this._binding;
        fragmentNewsBinding2.getClass();
        ((LinearLayout) fragmentNewsBinding2.headerImageView).setVisibility(0);
        FragmentNewsBinding fragmentNewsBinding3 = this._binding;
        fragmentNewsBinding3.getClass();
        ((ProgressBar) fragmentNewsBinding3.toolbarContainer).setVisibility(8);
        FragmentNewsBinding fragmentNewsBinding4 = this._binding;
        fragmentNewsBinding4.getClass();
        ((WikiErrorView) fragmentNewsBinding4.gradientView).setVisibility(8);
    }
}
