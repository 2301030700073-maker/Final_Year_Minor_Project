package org.wikipedia.feed.topread;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt;
import j$.time.LocalDate;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.Reflection;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.databinding.FragmentMostReadBinding;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$2;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.feed.news.NewsFragment;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.util.DateUtil;
import org.wikipedia.views.DrawableItemDecoration;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/feed/topread/TopReadFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "RecyclerAdapter", "org/wikipedia/media/AvPlayer", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TopReadFragment extends Fragment {
    public FragmentMostReadBinding _binding;
    public final Request.Builder viewModel$delegate;

    public TopReadFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new HomeFragment$special$$inlined$viewModels$default$2(12, new HomeFragment$special$$inlined$viewModels$default$2(11, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(TopReadViewModel.class), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 20), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 5), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 21));
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.fragment_most_read, viewGroup, false);
        RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.most_read_recycler_view);
        if (recyclerView == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(R.id.most_read_recycler_view)));
            return null;
        }
        this._binding = new FragmentMostReadBinding((LinearLayout) inflate, recyclerView);
        TopReadCard topReadCard = ((TopReadViewModel) this.viewModel$delegate.getValue()).card;
        AppCompatActivity requireActivity = requireActivity();
        ContextsKt supportActionBar = requireActivity.getSupportActionBar();
        int i = 1;
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        ContextsKt supportActionBar2 = requireActivity.getSupportActionBar();
        if (supportActionBar2 != null) {
            ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
            Object value = topReadCard.articles.localDate$delegate.getValue();
            value.getClass();
            supportActionBar2.setTitle(requireActivity.getString(R.string.top_read_activity_title, DateUtil.getShortDateString((LocalDate) value)));
        }
        FragmentMostReadBinding fragmentMostReadBinding = this._binding;
        fragmentMostReadBinding.getClass();
        LinearLayout linearLayout = fragmentMostReadBinding.rootView;
        linearLayout.getClass();
        BitmapsKt.setLayoutDirectionByLang(linearLayout, topReadCard.site.languageCode);
        FragmentMostReadBinding fragmentMostReadBinding2 = this._binding;
        fragmentMostReadBinding2.getClass();
        fragmentMostReadBinding2.mostReadRecyclerView.setLayoutManager(new LinearLayoutManager(1));
        FragmentMostReadBinding fragmentMostReadBinding3 = this._binding;
        fragmentMostReadBinding3.getClass();
        fragmentMostReadBinding3.mostReadRecyclerView.addItemDecoration(new DrawableItemDecoration(requireContext(), false, false, 28));
        FragmentMostReadBinding fragmentMostReadBinding4 = this._binding;
        fragmentMostReadBinding4.getClass();
        fragmentMostReadBinding4.mostReadRecyclerView.setNestedScrollingEnabled(false);
        FragmentMostReadBinding fragmentMostReadBinding5 = this._binding;
        fragmentMostReadBinding5.getClass();
        RecyclerView recyclerView2 = fragmentMostReadBinding5.mostReadRecyclerView;
        List list = topReadCard.articles.articles;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((PageSummary) it.next()).getPageTitle(topReadCard.site));
        }
        recyclerView2.setAdapter(new NewsFragment.RecyclerAdapter(arrayList, new AvPlayer(7, this), i));
        FragmentMostReadBinding fragmentMostReadBinding6 = this._binding;
        fragmentMostReadBinding6.getClass();
        LinearLayout linearLayout2 = fragmentMostReadBinding6.rootView;
        linearLayout2.getClass();
        return linearLayout2;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this._binding = null;
        this.mCalled = true;
    }
}
