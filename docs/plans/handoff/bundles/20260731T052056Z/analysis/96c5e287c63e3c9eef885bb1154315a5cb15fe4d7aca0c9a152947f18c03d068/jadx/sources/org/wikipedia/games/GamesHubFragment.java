package org.wikipedia.games;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import coil3.util.ContextsKt;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okhttp3.Request;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$2;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.games.onthisday.OnThisDayGameArchiveCalendarHelper;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.random.RandomActivity$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/games/GamesHubFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class GamesHubFragment extends Fragment {
    public final Fragment.AnonymousClass10 launchOnThisDayGameActivity = (Fragment.AnonymousClass10) registerForActivityResult(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(19, this), new FragmentManager$FragmentIntentSenderContract(3));
    public OnThisDayGameArchiveCalendarHelper onThisDayGameArchiveCalendarHelper;
    public final Request.Builder viewModel$delegate;

    public GamesHubFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new HomeFragment$special$$inlined$viewModels$default$2(15, new HomeFragment$special$$inlined$viewModels$default$2(14, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(GamesHubViewModel.class), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 24), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 7), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 25));
    }

    public final GamesHubViewModel getViewModel() {
        return (GamesHubViewModel) this.viewModel$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        WikiGamesEvent.submit$default(956, null, null, "impression", "games_hub", null, getViewModel().selectedLanguage, null);
        OnThisDayGameArchiveCalendarHelper onThisDayGameArchiveCalendarHelper = new OnThisDayGameArchiveCalendarHelper(this, getViewModel().selectedLanguage, new MainActivity$$ExternalSyntheticLambda1(10, this));
        this.onThisDayGameArchiveCalendarHelper = onThisDayGameArchiveCalendarHelper;
        getChildFragmentManager().registerFragmentLifecycleCallbacks(onThisDayGameArchiveCalendarHelper.fragmentLifecycleCallbacks, true);
        CoordinatorLayout coordinatorLayout = new CoordinatorLayout(requireContext(), null);
        ComposeView composeView = new ComposeView(requireContext(), null, 6);
        composeView.setLayoutParams(new CoordinatorLayout.LayoutParams(-1, -1));
        composeView.setContent(new ComposableLambdaImpl(new RandomActivity$$ExternalSyntheticLambda1(4, this, composeView), true, -364168987));
        coordinatorLayout.addView(composeView);
        return coordinatorLayout;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.mCalled = true;
        OnThisDayGameArchiveCalendarHelper onThisDayGameArchiveCalendarHelper = this.onThisDayGameArchiveCalendarHelper;
        if (onThisDayGameArchiveCalendarHelper != null) {
            onThisDayGameArchiveCalendarHelper.fragment.getChildFragmentManager().unregisterFragmentLifecycleCallbacks(onThisDayGameArchiveCalendarHelper.fragmentLifecycleCallbacks);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("onThisDayGameArchiveCalendarHelper");
            throw null;
        }
    }
}
