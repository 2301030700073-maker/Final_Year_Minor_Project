package org.schabi.newpipe.local;

import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.util.function.Supplier;
import net.newpipe.app.AppKt;
import okio.Options;
import org.schabi.newpipe.R;
import org.schabi.newpipe.fragments.BaseStateFragment;
import org.schabi.newpipe.info_list.InfoListAdapter;
import org.schabi.newpipe.info_list.ItemViewMode;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class BaseLocalListFragment<I, N> extends BaseStateFragment<I> implements SharedPreferences.OnSharedPreferenceChangeListener {
    public LocalItemListAdapter itemListAdapter;
    public RecyclerView itemsList;
    public int updateFlags = 0;

    public Supplier getListHeaderSupplier() {
        return null;
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public final void handleError() {
        super.handleError();
        resetFragment();
        RecyclerView recyclerView = this.itemsList;
        if (recyclerView != null) {
            recyclerView.post(new BaseLocalListFragment$$ExternalSyntheticLambda0(this));
        }
        RecyclerView recyclerView2 = this.itemsList;
        if (recyclerView2 != null) {
            AppKt.animateHideRecyclerViewAllowingScrolling(recyclerView2);
        }
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public void hideLoading() {
        super.hideLoading();
        RecyclerView recyclerView = this.itemsList;
        if (recyclerView != null) {
            AppKt.animate(recyclerView, true, 200L);
        }
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, org.schabi.newpipe.BaseFragment
    public void initViews(View view, Bundle bundle) {
        super.initViews(view, bundle);
        this.itemListAdapter = new LocalItemListAdapter(this.activity);
        this.itemsList = (RecyclerView) view.findViewById(R.id.items_list);
        refreshItemViewMode$1();
        Supplier listHeaderSupplier = getListHeaderSupplier();
        if (listHeaderSupplier != null) {
            LocalItemListAdapter localItemListAdapter = this.itemListAdapter;
            boolean z = listHeaderSupplier != localItemListAdapter.headerSupplier;
            localItemListAdapter.headerSupplier = listHeaderSupplier;
            if (z) {
                localItemListAdapter.notifyDataSetChanged();
            }
        }
        View inflate = this.activity.getLayoutInflater().inflate(R.layout.pignate_footer, (ViewGroup) this.itemsList, false);
        if (inflate == null) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("rootView");
            return;
        }
        LocalItemListAdapter localItemListAdapter2 = this.itemListAdapter;
        localItemListAdapter2.footer = (LinearLayout) inflate;
        this.itemsList.setAdapter(localItemListAdapter2);
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
        if (supportActionBar == null) {
            return;
        }
        supportActionBar.setDisplayShowTitleEnabled(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        PreferenceManager.getDefaultSharedPreferences(this.activity).unregisterOnSharedPreferenceChangeListener(this);
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.itemsList = null;
        this.itemListAdapter = null;
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        int i = this.updateFlags;
        if (i != 0) {
            if ((i & 50) != 0) {
                refreshItemViewMode$1();
            }
            this.updateFlags = 0;
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (getString(R.string.list_view_mode_key).equals(str)) {
            this.updateFlags |= 50;
        }
    }

    public final void refreshItemViewMode$1() {
        LinearLayoutManager linearLayoutManager;
        ItemViewMode itemViewMode = Options.Companion.getItemViewMode(requireContext());
        RecyclerView recyclerView = this.itemsList;
        AppCompatActivity appCompatActivity = this.activity;
        if (itemViewMode == ItemViewMode.GRID) {
            Resources resources = appCompatActivity.getResources();
            int dimensionPixelSize = (int) ((resources.getDisplayMetrics().density * 24.0f) + resources.getDimensionPixelSize(R.dimen.video_item_grid_thumbnail_image_width));
            int i = resources.getDisplayMetrics().widthPixels;
            int i2 = i / dimensionPixelSize;
            int i3 = 1;
            if (i - (dimensionPixelSize * i2) != 0 && (((i ^ dimensionPixelSize) >> 31) | 1) < 0) {
                i2--;
            }
            GridLayoutManager gridLayoutManager = new GridLayoutManager(this.activity, i2);
            LocalItemListAdapter localItemListAdapter = this.itemListAdapter;
            localItemListAdapter.getClass();
            gridLayoutManager.mSpanSizeLookup = new InfoListAdapter.AnonymousClass1(localItemListAdapter, i2, i3);
            linearLayoutManager = gridLayoutManager;
        } else {
            linearLayoutManager = new LinearLayoutManager(appCompatActivity);
        }
        recyclerView.setLayoutManager(linearLayoutManager);
        LocalItemListAdapter localItemListAdapter2 = this.itemListAdapter;
        localItemListAdapter2.itemViewMode = itemViewMode;
        localItemListAdapter2.notifyDataSetChanged();
    }

    public void resetFragment() {
        LocalItemListAdapter localItemListAdapter = this.itemListAdapter;
        if (localItemListAdapter != null) {
            localItemListAdapter.clearStreamItemList();
        }
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public final void showEmptyState() {
        super.showEmptyState();
        RecyclerView recyclerView = this.itemsList;
        if (recyclerView == null) {
            return;
        }
        recyclerView.post(new BaseLocalListFragment$$ExternalSyntheticLambda0(this));
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public void showLoading() {
        super.showLoading();
        RecyclerView recyclerView = this.itemsList;
        if (recyclerView != null) {
            AppKt.animateHideRecyclerViewAllowingScrolling(recyclerView);
        }
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public void startLoading(boolean z) {
        super.startLoading(true);
        resetFragment();
    }

    @Override // org.schabi.newpipe.BaseFragment
    public void initListeners() {
    }
}
