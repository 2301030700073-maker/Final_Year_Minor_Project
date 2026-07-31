package org.schabi.newpipe.fragments.list;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import coil3.ComponentRegistry;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.function.Supplier;
import net.newpipe.app.AppKt;
import okhttp3.ConnectionPool;
import okio.Options;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.fragments.BaseStateFragment;
import org.schabi.newpipe.info_list.InfoListAdapter;
import org.schabi.newpipe.info_list.ItemViewMode;
import org.schabi.newpipe.player.ui.MainPlayerUi;
import org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda43;
import org.schabi.newpipe.streams.WebMReader;
import org.schabi.newpipe.util.SavedState;
import org.schabi.newpipe.util.StateSaver;
import org.schabi.newpipe.views.SuperScrollLayoutManager;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class BaseListFragment<I, N> extends BaseStateFragment<I> implements StateSaver.WriteRead, SharedPreferences.OnSharedPreferenceChangeListener {
    public static final /* synthetic */ int $r8$clinit = 0;
    public InfoListAdapter infoListAdapter;
    public RecyclerView itemsList;
    public SavedState savedState;
    public final boolean useDefaultStateSaving = true;
    public int updateFlags = 0;
    public int focusedPosition = -1;

    @Override // org.schabi.newpipe.util.StateSaver.WriteRead
    public final String generateSuffix() {
        return "." + this.infoListAdapter.infoItemList.size() + ".list";
    }

    public ItemViewMode getItemViewMode() {
        return Options.Companion.getItemViewMode(requireContext());
    }

    public Supplier getListHeaderSupplier() {
        return null;
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public void handleError() {
        super.handleError();
        showListFooter(false);
        AppKt.animateHideRecyclerViewAllowingScrolling(this.itemsList);
    }

    public abstract boolean hasMoreItems();

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public void hideLoading() {
        super.hideLoading();
        AppKt.animate(this.itemsList, true, 300L);
    }

    @Override // org.schabi.newpipe.BaseFragment
    public final void initListeners() {
        InfoListAdapter infoListAdapter = this.infoListAdapter;
        ConnectionPool connectionPool = new ConnectionPool(this, 29);
        ComponentRegistry.Builder builder = infoListAdapter.infoItemBuilder;
        builder.mappers = connectionPool;
        builder.keyers = new BaseListFragment$$ExternalSyntheticLambda0(this, 0);
        builder.lazyFetcherFactories = new BaseListFragment$$ExternalSyntheticLambda0(this, 1);
        builder.lazyDecoderFactories = new BaseListFragment$$ExternalSyntheticLambda0(this, 2);
        useNormalItemListScrollListener();
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, org.schabi.newpipe.BaseFragment
    public void initViews(View view, Bundle bundle) {
        super.initViews(view, bundle);
        this.itemsList = (RecyclerView) view.findViewById(R.id.items_list);
        refreshItemViewMode();
        Supplier listHeaderSupplier = getListHeaderSupplier();
        if (listHeaderSupplier != null) {
            InfoListAdapter infoListAdapter = this.infoListAdapter;
            boolean z = listHeaderSupplier != infoListAdapter.headerSupplier;
            infoListAdapter.headerSupplier = listHeaderSupplier;
            if (z) {
                infoListAdapter.notifyDataSetChanged();
            }
        }
        this.itemsList.setAdapter(this.infoListAdapter);
    }

    public abstract void loadMoreItems();

    @Override // org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (this.infoListAdapter == null) {
            this.infoListAdapter = new InfoListAdapter(this.activity);
        }
    }

    @Override // org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        PreferenceManager.getDefaultSharedPreferences(this.activity).registerOnSharedPreferenceChangeListener(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        Options.Companion supportActionBar = this.activity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayShowTitleEnabled(true);
            supportActionBar.setDisplayHomeAsUpEnabled(!this.useAsFrontPage);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (this.useDefaultStateSaving) {
            StateSaver.onDestroy(this.savedState);
        }
        PreferenceManager.getDefaultSharedPreferences(this.activity).unregisterOnSharedPreferenceChangeListener(this);
    }

    @Override // org.schabi.newpipe.BaseFragment
    public void onRestoreInstanceState(Bundle bundle) {
        if (this.useDefaultStateSaving) {
            this.savedState = StateSaver.tryToRestore(bundle, this);
        }
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        int i = this.updateFlags;
        if (i != 0) {
            if ((i & 50) != 0) {
                refreshItemViewMode();
            }
            this.updateFlags = 0;
        }
    }

    @Override // org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.useDefaultStateSaving) {
            this.savedState = StateSaver.tryToSave(this.activity.isChangingConfigurations(), this.savedState, bundle, this);
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (getString(R.string.list_view_mode_key).equals(str)) {
            this.updateFlags |= 50;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        int i = this.focusedPosition;
        Integer valueOf = Integer.valueOf(i);
        if (i < 0) {
            return;
        }
        this.itemsList.post(new Processor$$ExternalSyntheticLambda2(this, valueOf, 21));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        int i;
        try {
            View focusedChild = this.itemsList.getFocusedChild();
            RecyclerView recyclerView = this.itemsList;
            View findContainingItemView = recyclerView.findContainingItemView(focusedChild);
            i = (findContainingItemView == null ? null : recyclerView.getChildViewHolder(findContainingItemView)).getBindingAdapterPosition();
        } catch (NullPointerException unused) {
            i = -1;
        }
        this.focusedPosition = i;
        super.onStop();
    }

    @Override // org.schabi.newpipe.util.StateSaver.WriteRead
    public void readFrom(Queue queue) {
        if (this.useDefaultStateSaving) {
            this.infoListAdapter.infoItemList.clear();
            this.infoListAdapter.infoItemList.addAll((List) queue.poll());
            Integer num = (Integer) queue.poll();
            if (num == null || num.intValue() < 0) {
                return;
            }
            this.itemsList.post(new Processor$$ExternalSyntheticLambda2(this, num, 21));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void refreshItemViewMode() {
        SuperScrollLayoutManager superScrollLayoutManager;
        ItemViewMode itemViewMode = getItemViewMode();
        RecyclerView recyclerView = this.itemsList;
        AppCompatActivity appCompatActivity = this.activity;
        if (itemViewMode == ItemViewMode.GRID) {
            Resources resources = appCompatActivity.getResources();
            int dimensionPixelSize = (int) ((resources.getDisplayMetrics().density * 24.0f) + resources.getDimensionPixelSize(R.dimen.video_item_grid_thumbnail_image_width));
            int i = resources.getDisplayMetrics().widthPixels;
            int i2 = i / dimensionPixelSize;
            if (i - (dimensionPixelSize * i2) != 0 && (((i ^ dimensionPixelSize) >> 31) | 1) < 0) {
                i2--;
            }
            GridLayoutManager gridLayoutManager = new GridLayoutManager(this.activity, i2);
            InfoListAdapter infoListAdapter = this.infoListAdapter;
            infoListAdapter.getClass();
            gridLayoutManager.mSpanSizeLookup = new InfoListAdapter.AnonymousClass1(infoListAdapter, i2, 0);
            superScrollLayoutManager = gridLayoutManager;
        } else {
            superScrollLayoutManager = new SuperScrollLayoutManager(appCompatActivity);
        }
        recyclerView.setLayoutManager(superScrollLayoutManager);
        InfoListAdapter infoListAdapter2 = this.infoListAdapter;
        infoListAdapter2.itemMode = itemViewMode;
        infoListAdapter2.notifyDataSetChanged();
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public void showEmptyState() {
        super.showEmptyState();
        showListFooter(false);
        AppKt.animateHideRecyclerViewAllowingScrolling(this.itemsList);
    }

    public void showInfoItemDialog(StreamInfoItem streamInfoItem) {
        try {
            new WebMReader.Segment(getActivity(), getContext(), this, streamInfoItem).create().show();
        } catch (IllegalArgumentException e) {
            WebMReader.Segment.reportErrorDuringInitialization(e, streamInfoItem);
        }
    }

    public final void showListFooter(boolean z) {
        this.itemsList.post(new VideoPlayerUi$$ExternalSyntheticLambda43(2, this, z));
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public void showLoading() {
        super.showLoading();
        AppKt.animateHideRecyclerViewAllowingScrolling(this.itemsList);
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public void startLoading(boolean z) {
        this.itemsList.clearOnScrollListeners();
        this.itemsList.addOnScrollListener(new MainPlayerUi.AnonymousClass2() { // from class: org.schabi.newpipe.fragments.list.BaseListFragment.2
            @Override // org.schabi.newpipe.player.ui.MainPlayerUi.AnonymousClass2, androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                BaseListFragment baseListFragment = BaseListFragment.this;
                if (i2 != 0) {
                    int i3 = BaseListFragment.$r8$clinit;
                    baseListFragment.useNormalItemListScrollListener();
                    return;
                }
                int i4 = BaseListFragment.$r8$clinit;
                if (baseListFragment.isLoading.get()) {
                    return;
                }
                if (!baseListFragment.hasMoreItems()) {
                    baseListFragment.useNormalItemListScrollListener();
                } else if (baseListFragment.itemsList.canScrollVertically(1) || baseListFragment.itemsList.canScrollVertically(-1)) {
                    baseListFragment.useNormalItemListScrollListener();
                } else {
                    baseListFragment.loadMoreItems();
                }
            }
        });
        super.startLoading(z);
    }

    public final void useNormalItemListScrollListener() {
        this.itemsList.clearOnScrollListeners();
        this.itemsList.addOnScrollListener(new MainPlayerUi.AnonymousClass2(this, 1));
    }

    @Override // org.schabi.newpipe.util.StateSaver.WriteRead
    public void writeTo(LinkedList linkedList) {
        int i;
        if (this.useDefaultStateSaving) {
            linkedList.add(this.infoListAdapter.infoItemList);
            try {
                View focusedChild = this.itemsList.getFocusedChild();
                RecyclerView recyclerView = this.itemsList;
                View findContainingItemView = recyclerView.findContainingItemView(focusedChild);
                i = (findContainingItemView == null ? null : recyclerView.getChildViewHolder(findContainingItemView)).getBindingAdapterPosition();
            } catch (NullPointerException unused) {
                i = -1;
            }
            linkedList.add(Integer.valueOf(i));
        }
    }

    public void onItemSelected() {
    }
}
