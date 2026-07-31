package org.wikipedia.readinglist.recommended;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.fragment.app.Fragment;
import coil3.util.ContextsKt;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.Reflection;
import okhttp3.Request;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$2;
import org.wikipedia.places.PlacesFragment$special$$inlined$viewModels$default$3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RecommendedReadingListSourceFragment extends Fragment {
    public final Request.Builder viewModel$delegate;

    public RecommendedReadingListSourceFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new HomeFragment$special$$inlined$viewModels$default$2(29, new HomeFragment$special$$inlined$viewModels$default$2(28, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(RecommendedReadingListSourceViewModel.class), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 8), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 14), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 9));
    }

    public final RecommendedReadingListSourceViewModel getViewModel() {
        return (RecommendedReadingListSourceViewModel) this.viewModel$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        ComposeView composeView = new ComposeView(requireContext(), null, 6);
        String str = getViewModel().fromSettings ? "settings_hub_select" : "rrl_hub_select";
        ArrayList arrayList = getViewModel().availableSources;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((RecommendedReadingListSource) it.next()).getEventString());
        }
        WikiGamesEvent.submit$default("impression", str, arrayList2.toString(), null, null, null, null, null, 504);
        composeView.setContent(new ComposableLambdaImpl(new RecommendedReadingListSourceFragment$$ExternalSyntheticLambda0(this, str, 0), true, -1966573910));
        return composeView;
    }
}
