package com.android.launcher3.allapps;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b.e.i.E.c;
import b.e.i.E.d;
import b.m.b.AbstractC0201z;
import b.m.b.C0200y;
import b.m.b.Q;
import b.m.b.n0;
import b.m.b.t0;
import b.m.b.w0;
import c.a.a.Y0.h;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.allapps.AllAppsGridAdapter;
import com.android.launcher3.allapps.AlphabeticalAppsList;
import com.android.launcher3.model.AppLaunchTracker;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.systemui.shared.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class AllAppsGridAdapter extends Q {
    public final AlphabeticalAppsList mApps;
    public int mAppsPerRow;
    public String mEmptySearchMessage;
    public final GridLayoutManager mGridLayoutMgr;
    public final GridSpanSizer mGridSizer;
    public View.OnFocusChangeListener mIconFocusListener;
    public final BaseDraggingActivity mLauncher;
    public final LayoutInflater mLayoutInflater;
    public Intent mMarketSearchIntent;
    public final View.OnClickListener mOnIconClickListener;
    public View.OnLongClickListener mOnIconLongClickListener;

    public class AppsGridLayoutManager extends GridLayoutManager {
        public AppsGridLayoutManager(Context context) {
            super(context, 1, 1, false);
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager, b.m.b.AbstractC0176f0
        public int getRowCountForAccessibility(n0 n0Var, t0 t0Var) {
            return super.getRowCountForAccessibility(n0Var, t0Var) - getRowsNotForAccessibility(AllAppsGridAdapter.this.mApps.mAdapterItems.size() - 1);
        }

        public final int getRowsNotForAccessibility(int i) {
            ArrayList arrayList = AllAppsGridAdapter.this.mApps.mAdapterItems;
            int max = Math.max(i, arrayList.size() - 1);
            int i2 = 0;
            for (int i3 = 0; i3 <= max; i3++) {
                if (!AllAppsGridAdapter.isViewType(((AlphabeticalAppsList.AdapterItem) arrayList.get(i3)).viewType, 2)) {
                    i2++;
                }
            }
            return i2;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, b.m.b.AbstractC0176f0
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setItemCount(AllAppsGridAdapter.this.mApps.mFilteredApps.size());
            accessibilityEvent.setFromIndex(Math.max(0, accessibilityEvent.getFromIndex() - getRowsNotForAccessibility(accessibilityEvent.getFromIndex())));
            accessibilityEvent.setToIndex(Math.max(0, accessibilityEvent.getToIndex() - getRowsNotForAccessibility(accessibilityEvent.getToIndex())));
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager, b.m.b.AbstractC0176f0
        public void onInitializeAccessibilityNodeInfoForItem(n0 n0Var, t0 t0Var, View view, d dVar) {
            RecyclerView recyclerView;
            Q adapter;
            int adapterPositionInRecyclerView;
            super.onInitializeAccessibilityNodeInfoForItem(n0Var, t0Var, view, dVar);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            AccessibilityNodeInfo.CollectionItemInfo collectionItemInfo = dVar.f753a.getCollectionItemInfo();
            c cVar = collectionItemInfo != null ? new c(collectionItemInfo) : null;
            if (!(layoutParams instanceof C0200y) || cVar == null) {
                return;
            }
            int rowIndex = ((AccessibilityNodeInfo.CollectionItemInfo) cVar.f752a).getRowIndex();
            w0 w0Var = ((C0200y) layoutParams).f1153a;
            int i = -1;
            if (w0Var.mBindingAdapter != null && (recyclerView = w0Var.mOwnerRecyclerView) != null && (adapter = recyclerView.getAdapter()) != null && (adapterPositionInRecyclerView = w0Var.mOwnerRecyclerView.getAdapterPositionInRecyclerView(w0Var)) != -1 && w0Var.mBindingAdapter == adapter) {
                i = adapterPositionInRecyclerView;
            }
            dVar.h(c.a(rowIndex - getRowsNotForAccessibility(i), ((AccessibilityNodeInfo.CollectionItemInfo) cVar.f752a).getRowSpan(), ((AccessibilityNodeInfo.CollectionItemInfo) cVar.f752a).getColumnIndex(), ((AccessibilityNodeInfo.CollectionItemInfo) cVar.f752a).getColumnSpan(), ((AccessibilityNodeInfo.CollectionItemInfo) cVar.f752a).isHeading(), ((AccessibilityNodeInfo.CollectionItemInfo) cVar.f752a).isSelected()));
        }
    }

    public class GridSpanSizer extends AbstractC0201z {
        public GridSpanSizer() {
            this.mCacheSpanIndices = true;
        }

        @Override // b.m.b.AbstractC0201z
        public int getSpanSize(int i) {
            if (AllAppsGridAdapter.isIconViewType(((AlphabeticalAppsList.AdapterItem) AllAppsGridAdapter.this.mApps.mAdapterItems.get(i)).viewType)) {
                return 1;
            }
            return AllAppsGridAdapter.this.mAppsPerRow;
        }
    }

    public class ViewHolder extends w0 {
        public ViewHolder(View view) {
            super(view);
        }
    }

    public AllAppsGridAdapter(BaseDraggingActivity baseDraggingActivity, LayoutInflater layoutInflater, AlphabeticalAppsList alphabeticalAppsList) {
        View.OnLongClickListener onLongClickListener = ItemLongClickListener.INSTANCE_ALL_APPS;
        this.mOnIconLongClickListener = h.f1712a;
        Resources resources = baseDraggingActivity.getResources();
        this.mLauncher = baseDraggingActivity;
        this.mApps = alphabeticalAppsList;
        this.mEmptySearchMessage = resources.getString(R.string.all_apps_loading_message);
        this.mGridSizer = new GridSpanSizer();
        AppsGridLayoutManager appsGridLayoutManager = new AppsGridLayoutManager(baseDraggingActivity);
        this.mGridLayoutMgr = appsGridLayoutManager;
        appsGridLayoutManager.mSpanSizeLookup = this.mGridSizer;
        this.mLayoutInflater = layoutInflater;
        this.mOnIconClickListener = baseDraggingActivity.getItemOnClickListener();
        int i = this.mLauncher.getDeviceProfile().inv.numAllAppsColumns;
        this.mAppsPerRow = i;
        this.mGridLayoutMgr.setSpanCount(i);
    }

    public static boolean isIconViewType(int i) {
        return isViewType(i, 2);
    }

    public static boolean isViewType(int i, int i2) {
        return (i & i2) != 0;
    }

    @Override // b.m.b.Q
    public int getItemCount() {
        return this.mApps.mAdapterItems.size();
    }

    @Override // b.m.b.Q
    public int getItemViewType(int i) {
        return ((AlphabeticalAppsList.AdapterItem) this.mApps.mAdapterItems.get(i)).viewType;
    }

    @Override // b.m.b.Q
    public void onBindViewHolder(w0 w0Var, int i) {
        ViewHolder viewHolder = (ViewHolder) w0Var;
        int i2 = viewHolder.mItemViewType;
        if (i2 == 2) {
            AppInfo appInfo = ((AlphabeticalAppsList.AdapterItem) this.mApps.mAdapterItems.get(i)).appInfo;
            BubbleTextView bubbleTextView = (BubbleTextView) viewHolder.itemView;
            bubbleTextView.reset();
            bubbleTextView.applyFromApplicationInfo(appInfo);
            return;
        }
        if (i2 == 4) {
            TextView textView = (TextView) viewHolder.itemView;
            textView.setText(this.mEmptySearchMessage);
            textView.setGravity(this.mApps.hasNoFilteredResults() ? 17 : 8388627);
        } else {
            if (i2 != 8) {
                return;
            }
            TextView textView2 = (TextView) viewHolder.itemView;
            if (this.mMarketSearchIntent != null) {
                textView2.setVisibility(0);
            } else {
                textView2.setVisibility(8);
            }
        }
    }

    @Override // b.m.b.Q
    public w0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 2) {
            BubbleTextView bubbleTextView = (BubbleTextView) this.mLayoutInflater.inflate(R.layout.all_apps_icon, viewGroup, false);
            bubbleTextView.setOnClickListener(this.mOnIconClickListener);
            bubbleTextView.setOnLongClickListener(this.mOnIconLongClickListener);
            bubbleTextView.mLongPressHelper.mLongPressTimeoutFactor = 1.0f;
            bubbleTextView.setOnFocusChangeListener(this.mIconFocusListener);
            bubbleTextView.getLayoutParams().height = this.mLauncher.getDeviceProfile().allAppsCellHeightPx;
            return new ViewHolder(bubbleTextView);
        }
        if (i == 4) {
            return new ViewHolder(this.mLayoutInflater.inflate(R.layout.all_apps_empty_search, viewGroup, false));
        }
        if (i != 8) {
            if (i == 16) {
                return new ViewHolder(this.mLayoutInflater.inflate(R.layout.all_apps_divider, viewGroup, false));
            }
            throw new RuntimeException("Unexpected view type");
        }
        View inflate = this.mLayoutInflater.inflate(R.layout.all_apps_search_market, viewGroup, false);
        inflate.setOnClickListener(new View.OnClickListener() { // from class: c.a.a.D0.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AllAppsGridAdapter allAppsGridAdapter = AllAppsGridAdapter.this;
                allAppsGridAdapter.mLauncher.k(view, allAppsGridAdapter.mMarketSearchIntent, null, AppLaunchTracker.CONTAINER_SEARCH);
            }
        });
        return new ViewHolder(inflate);
    }

    @Override // b.m.b.Q
    public boolean onFailedToRecycleView(w0 w0Var) {
        return true;
    }
}
