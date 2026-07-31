package org.wikipedia.search;

import android.content.ComponentCallbacks;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelKt;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Request;
import org.wikipedia.WikipediaApp;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.places.PlacesFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.watchlist.WatchlistFragment$special$$inlined$viewModels$default$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/search/SearchResultsFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SearchResultsFragment extends Fragment {
    public ComposeView composeView;
    public final ParcelableSnapshotMutableState showHybridSearch$delegate;
    public final Request.Builder viewModel$delegate;

    public SearchResultsFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new WatchlistFragment$special$$inlined$viewModels$default$1(2, new WatchlistFragment$special$$inlined$viewModels$default$1(1, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(SearchResultsViewModel.class), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 10), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 15), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 11));
        this.showHybridSearch$delegate = Updater.mutableStateOf$default(Boolean.FALSE);
    }

    public final SearchFragment callback() {
        ComponentCallbacks activity;
        if (SearchFragment.class.isInstance(getTargetFragment(true))) {
            activity = getTargetFragment(true);
        } else {
            Fragment fragment = this.mParentFragment;
            if (fragment != null) {
                if (SearchFragment.class.isInstance(fragment)) {
                    activity = this.mParentFragment;
                } else if (SearchFragment.class.isInstance(requireParentFragment().mParentFragment)) {
                    activity = requireParentFragment().mParentFragment;
                }
            }
            activity = SearchFragment.class.isInstance(getActivity()) ? getActivity() : null;
        }
        return (SearchFragment) activity;
    }

    public final String getSearchLanguageCode$1() {
        if (isAdded()) {
            return ((SearchFragment) requireParentFragment()).searchLanguageCode;
        }
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m();
    }

    public final boolean getShowHybridSearch() {
        return ((Boolean) this.showHybridSearch$delegate.getValue()).booleanValue();
    }

    public final SearchResultsViewModel getViewModel() {
        return (SearchResultsViewModel) this.viewModel$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        Continuation continuation = null;
        int i = 0;
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(getViewLifecycleOwner()), null, null, new SearchResultsFragment$onCreateView$1(this, continuation, i), 3);
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(getViewLifecycleOwner()), null, null, new SearchResultsFragment$onCreateView$1(this, continuation, 3), 3);
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(getViewLifecycleOwner()), null, null, new SearchResultsFragment$onCreateView$1(this, continuation, 5), 3);
        ComposeView composeView = new ComposeView(requireActivity(), null, 6);
        this.composeView = composeView;
        composeView.setContent(new ComposableLambdaImpl(new SearchResultsFragment$$ExternalSyntheticLambda0(this, i), true, 1162921479));
        return composeView;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.mCalled = true;
        this.composeView = null;
    }

    public final void setShowHybridSearch(boolean z) {
        this.showHybridSearch$delegate.setValue(Boolean.valueOf(z));
    }
}
