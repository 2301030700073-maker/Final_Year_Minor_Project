package org.wikipedia.readinglist.recommended;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import coil3.util.ContextsKt;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import okhttp3.Request;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$2;
import org.wikipedia.places.PlacesFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.search.SearchFragment$$ExternalSyntheticLambda1;
import org.wikipedia.util.SingleLiveData$sam$androidx_lifecycle_Observer$0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RecommendedReadingListInterestsFragment extends Fragment {
    public final Fragment.AnonymousClass10 searchLauncher;
    public final Request.Builder viewModel$delegate;

    public RecommendedReadingListInterestsFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new HomeFragment$special$$inlined$viewModels$default$2(27, new HomeFragment$special$$inlined$viewModels$default$2(26, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(RecommendedReadingListInterestsViewModel.class), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 6), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 13), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 7));
        this.searchLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new SearchFragment$$ExternalSyntheticLambda1(5, this), new FragmentManager$FragmentIntentSenderContract(3));
    }

    public final RecommendedReadingListInterestsViewModel getViewModel() {
        return (RecommendedReadingListInterestsViewModel) this.viewModel$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        int i = 0;
        getViewModel().randomizeEvent.observe(getViewLifecycleOwner(), new SingleLiveData$sam$androidx_lifecycle_Observer$0(new RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda1(this, i), 7));
        WikiGamesEvent.submit$default("impression", "rrl_interests_select", null, null, null, null, null, null, 508);
        ComposeView composeView = new ComposeView(requireContext(), null, 6);
        composeView.setContent(new ComposableLambdaImpl(new RecommendedReadingListInterestsFragment$$ExternalSyntheticLambda2(this, i), true, 351374958));
        return composeView;
    }
}
