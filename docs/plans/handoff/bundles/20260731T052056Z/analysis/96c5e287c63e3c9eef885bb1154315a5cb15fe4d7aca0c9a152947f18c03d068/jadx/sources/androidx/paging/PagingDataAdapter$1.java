package androidx.paging;

import androidx.compose.ui.node.RulerTrackingMap;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.NestedAdapterWrapper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import java.util.ArrayList;
import java.util.WeakHashMap;
import okhttp3.Cache;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.databinding.FragmentNewsBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PagingDataAdapter$1 extends RecyclerView.AdapterDataObserver {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public /* synthetic */ PagingDataAdapter$1(int i, Object obj) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    public void onChanged() {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 1:
                NestedAdapterWrapper nestedAdapterWrapper = (NestedAdapterWrapper) obj;
                nestedAdapterWrapper.mCachedItemCount = nestedAdapterWrapper.adapter.getItemCount();
                FragmentNewsBinding fragmentNewsBinding = nestedAdapterWrapper.mCallback;
                ((ConcatAdapter) fragmentNewsBinding.rootView).notifyDataSetChanged();
                fragmentNewsBinding.calculateAndUpdateStateRestorationPolicy();
                break;
            case 2:
                RecyclerView recyclerView = (RecyclerView) obj;
                recyclerView.assertNotInLayoutOrScroll(null);
                recyclerView.mState.mStructureChanged = true;
                recyclerView.processDataSetCompletelyChanged(true);
                if (!recyclerView.mAdapterHelper.hasPendingUpdates()) {
                    recyclerView.requestLayout();
                    break;
                }
                break;
            case 3:
                ((FragmentStateAdapter.FragmentMaxLifecycleEnforcer) obj).updateFragmentMaxLifecycle(true);
                break;
            case 4:
                ((Cache.RealCacheRequest) obj).populateTabsFromPagerAdapter();
                break;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    public void onItemRangeChanged(int i, int i2, Object obj) {
        int i3 = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i3) {
            case 1:
                NestedAdapterWrapper nestedAdapterWrapper = (NestedAdapterWrapper) obj2;
                FragmentNewsBinding fragmentNewsBinding = nestedAdapterWrapper.mCallback;
                ((ConcatAdapter) fragmentNewsBinding.rootView).mObservable.notifyItemRangeChanged(i + fragmentNewsBinding.countItemsBefore(nestedAdapterWrapper), i2, obj);
                break;
            case 2:
                RecyclerView recyclerView = (RecyclerView) obj2;
                recyclerView.assertNotInLayoutOrScroll(null);
                RulerTrackingMap rulerTrackingMap = recyclerView.mAdapterHelper;
                ArrayList arrayList = (ArrayList) rulerTrackingMap.values;
                if (i2 >= 1) {
                    arrayList.add(rulerTrackingMap.obtainUpdateOp(obj, 4, i, i2));
                    rulerTrackingMap.size |= 4;
                    if (arrayList.size() == 1) {
                        triggerUpdateProcessor();
                        break;
                    }
                }
                break;
            case 3:
                onChanged();
                break;
            case 4:
                ((Cache.RealCacheRequest) obj2).populateTabsFromPagerAdapter();
                break;
            default:
                super.onItemRangeChanged(i, i2, obj);
                break;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    public final void onItemRangeInserted(int i, int i2) {
        int i3 = this.$r8$classId;
        Object obj = this.this$0;
        switch (i3) {
            case 0:
                CategoryActivity.CategoryMembersAdapter categoryMembersAdapter = (CategoryActivity.CategoryMembersAdapter) obj;
                CategoryActivity.CategoryMembersAdapter._init_$considerAllowingStateRestoration(categoryMembersAdapter);
                categoryMembersAdapter.unregisterAdapterDataObserver(this);
                break;
            case 1:
                NestedAdapterWrapper nestedAdapterWrapper = (NestedAdapterWrapper) obj;
                nestedAdapterWrapper.mCachedItemCount += i2;
                FragmentNewsBinding fragmentNewsBinding = nestedAdapterWrapper.mCallback;
                ((ConcatAdapter) fragmentNewsBinding.rootView).notifyItemRangeInserted(i + fragmentNewsBinding.countItemsBefore(nestedAdapterWrapper), i2);
                if (nestedAdapterWrapper.mCachedItemCount > 0 && nestedAdapterWrapper.adapter.mStateRestorationPolicy == RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY) {
                    fragmentNewsBinding.calculateAndUpdateStateRestorationPolicy();
                    break;
                }
                break;
            case 2:
                RecyclerView recyclerView = (RecyclerView) obj;
                recyclerView.assertNotInLayoutOrScroll(null);
                RulerTrackingMap rulerTrackingMap = recyclerView.mAdapterHelper;
                ArrayList arrayList = (ArrayList) rulerTrackingMap.values;
                if (i2 >= 1) {
                    arrayList.add(rulerTrackingMap.obtainUpdateOp(null, 1, i, i2));
                    rulerTrackingMap.size |= 1;
                    if (arrayList.size() == 1) {
                        triggerUpdateProcessor();
                        break;
                    }
                }
                break;
            case 3:
                onChanged();
                break;
            default:
                ((Cache.RealCacheRequest) obj).populateTabsFromPagerAdapter();
                break;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    public void onItemRangeMoved(int i, int i2) {
        int i3 = this.$r8$classId;
        Object obj = this.this$0;
        switch (i3) {
            case 1:
                NestedAdapterWrapper nestedAdapterWrapper = (NestedAdapterWrapper) obj;
                FragmentNewsBinding fragmentNewsBinding = nestedAdapterWrapper.mCallback;
                int countItemsBefore = fragmentNewsBinding.countItemsBefore(nestedAdapterWrapper);
                ((ConcatAdapter) fragmentNewsBinding.rootView).notifyItemMoved(i + countItemsBefore, i2 + countItemsBefore);
                break;
            case 2:
                RecyclerView recyclerView = (RecyclerView) obj;
                recyclerView.assertNotInLayoutOrScroll(null);
                RulerTrackingMap rulerTrackingMap = recyclerView.mAdapterHelper;
                ArrayList arrayList = (ArrayList) rulerTrackingMap.values;
                if (i != i2) {
                    arrayList.add(rulerTrackingMap.obtainUpdateOp(null, 8, i, i2));
                    rulerTrackingMap.size |= 8;
                    if (arrayList.size() == 1) {
                        triggerUpdateProcessor();
                        break;
                    }
                }
                break;
            case 3:
                onChanged();
                break;
            case 4:
                ((Cache.RealCacheRequest) obj).populateTabsFromPagerAdapter();
                break;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    public void onItemRangeRemoved(int i, int i2) {
        int i3 = this.$r8$classId;
        Object obj = this.this$0;
        switch (i3) {
            case 1:
                NestedAdapterWrapper nestedAdapterWrapper = (NestedAdapterWrapper) obj;
                nestedAdapterWrapper.mCachedItemCount -= i2;
                FragmentNewsBinding fragmentNewsBinding = nestedAdapterWrapper.mCallback;
                ((ConcatAdapter) fragmentNewsBinding.rootView).mObservable.notifyItemRangeRemoved(i + fragmentNewsBinding.countItemsBefore(nestedAdapterWrapper), i2);
                if (nestedAdapterWrapper.mCachedItemCount < 1 && nestedAdapterWrapper.adapter.mStateRestorationPolicy == RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY) {
                    fragmentNewsBinding.calculateAndUpdateStateRestorationPolicy();
                    break;
                }
                break;
            case 2:
                RecyclerView recyclerView = (RecyclerView) obj;
                recyclerView.assertNotInLayoutOrScroll(null);
                RulerTrackingMap rulerTrackingMap = recyclerView.mAdapterHelper;
                ArrayList arrayList = (ArrayList) rulerTrackingMap.values;
                if (i2 >= 1) {
                    arrayList.add(rulerTrackingMap.obtainUpdateOp(null, 2, i, i2));
                    rulerTrackingMap.size |= 2;
                    if (arrayList.size() == 1) {
                        triggerUpdateProcessor();
                        break;
                    }
                }
                break;
            case 3:
                onChanged();
                break;
            case 4:
                ((Cache.RealCacheRequest) obj).populateTabsFromPagerAdapter();
                break;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    public void onStateRestorationPolicyChanged() {
        RecyclerView.Adapter adapter;
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 1:
                ((NestedAdapterWrapper) obj).mCallback.calculateAndUpdateStateRestorationPolicy();
                break;
            case 2:
                RecyclerView recyclerView = (RecyclerView) obj;
                if (recyclerView.mPendingSavedState != null && (adapter = recyclerView.mAdapter) != null) {
                    int ordinal = adapter.mStateRestorationPolicy.ordinal();
                    if (ordinal != 1) {
                        if (ordinal == 2) {
                        }
                    } else if (adapter.getItemCount() <= 0) {
                    }
                    recyclerView.requestLayout();
                    break;
                }
                break;
        }
    }

    public void triggerUpdateProcessor() {
        RecyclerView recyclerView = (RecyclerView) this.this$0;
        if (!recyclerView.mHasFixedSize || !recyclerView.mIsAttached) {
            recyclerView.mAdapterUpdateDuringMeasure = true;
            recyclerView.requestLayout();
        } else {
            RecyclerView.AnonymousClass1 anonymousClass1 = recyclerView.mUpdateChildViewsRunnable;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            recyclerView.postOnAnimation(anonymousClass1);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    public void onItemRangeChanged(int i, int i2) {
        int i3 = this.$r8$classId;
        Object obj = this.this$0;
        switch (i3) {
            case 1:
                NestedAdapterWrapper nestedAdapterWrapper = (NestedAdapterWrapper) obj;
                FragmentNewsBinding fragmentNewsBinding = nestedAdapterWrapper.mCallback;
                int countItemsBefore = fragmentNewsBinding.countItemsBefore(nestedAdapterWrapper);
                ((ConcatAdapter) fragmentNewsBinding.rootView).mObservable.notifyItemRangeChanged(i + countItemsBefore, i2, null);
                break;
            case 3:
                onChanged();
                break;
            case 4:
                ((Cache.RealCacheRequest) obj).populateTabsFromPagerAdapter();
                break;
        }
    }
}
