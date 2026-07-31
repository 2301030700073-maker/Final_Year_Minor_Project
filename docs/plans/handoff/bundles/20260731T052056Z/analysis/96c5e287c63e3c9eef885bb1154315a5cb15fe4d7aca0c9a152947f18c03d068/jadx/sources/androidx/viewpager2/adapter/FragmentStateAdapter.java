package androidx.viewpager2.adapter;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import androidx.collection.LongSparseArray;
import androidx.compose.ui.Modifier;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.fragment.app.FragmentStateManager;
import androidx.lifecycle.DefaultLifecycleObserverAdapter;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleRegistry;
import androidx.paging.PagingDataAdapter$1;
import androidx.recyclerview.widget.RecyclerView;
import androidx.savedstate.Recreator;
import androidx.viewpager2.widget.ViewPager2;
import androidx.work.OperationKt;
import coil3.memory.MemoryCacheService;
import coil3.size.ViewSizeResolver$CC;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.main.MainFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class FragmentStateAdapter extends RecyclerView.Adapter {
    public final MemoryCacheService mFragmentEventDispatcher;
    public final FragmentManagerImpl mFragmentManager;
    public FragmentMaxLifecycleEnforcer mFragmentMaxLifecycleEnforcer;
    public final LongSparseArray mFragments;
    public boolean mHasStaleFragments;
    public boolean mIsInGracePeriod;
    public final LongSparseArray mItemIdToViewHolder;
    public final LifecycleRegistry mLifecycle;
    public final LongSparseArray mSavedStates;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FragmentMaxLifecycleEnforcer {
        public PagingDataAdapter$1 mDataObserver;
        public Recreator mLifecycleObserver;
        public MainFragment.PageChangeCallback mPageChangeCallback;
        public long mPrimaryItemId = -1;
        public ViewPager2 mViewPager;

        public FragmentMaxLifecycleEnforcer() {
        }

        public static ViewPager2 inferViewPager(RecyclerView recyclerView) {
            ViewParent parent = recyclerView.getParent();
            if (parent instanceof ViewPager2) {
                return (ViewPager2) parent;
            }
            Gson$$ExternalSyntheticBUOutline0.m$1("Expected ViewPager2 instance. Got: ", parent);
            return null;
        }

        public final void updateFragmentMaxLifecycle(boolean z) {
            int currentItem;
            Fragment fragment;
            FragmentStateAdapter fragmentStateAdapter = FragmentStateAdapter.this;
            MemoryCacheService memoryCacheService = fragmentStateAdapter.mFragmentEventDispatcher;
            LongSparseArray longSparseArray = fragmentStateAdapter.mFragments;
            FragmentManagerImpl fragmentManagerImpl = fragmentStateAdapter.mFragmentManager;
            if (fragmentManagerImpl.isStateSaved() || this.mViewPager.getScrollState() != 0 || longSparseArray.isEmpty() || fragmentStateAdapter.getItemCount() == 0 || (currentItem = this.mViewPager.getCurrentItem()) >= fragmentStateAdapter.getItemCount()) {
                return;
            }
            long j = currentItem;
            if ((j != this.mPrimaryItemId || z) && (fragment = (Fragment) longSparseArray.get(j)) != null && fragment.isAdded()) {
                this.mPrimaryItemId = j;
                fragmentManagerImpl.getClass();
                BackStackRecord backStackRecord = new BackStackRecord(fragmentManagerImpl);
                ArrayList arrayList = new ArrayList();
                Fragment fragment2 = null;
                for (int i = 0; i < longSparseArray.size(); i++) {
                    long keyAt = longSparseArray.keyAt(i);
                    Fragment fragment3 = (Fragment) longSparseArray.valueAt(i);
                    if (fragment3.isAdded()) {
                        if (keyAt != this.mPrimaryItemId) {
                            backStackRecord.setMaxLifecycle(fragment3, Lifecycle$State.STARTED);
                            memoryCacheService.getClass();
                            ArrayList arrayList2 = new ArrayList();
                            Iterator it = ((CopyOnWriteArrayList) memoryCacheService.imageLoader).iterator();
                            if (it.hasNext()) {
                                throw Modifier.CC.m(it);
                            }
                            arrayList.add(arrayList2);
                        } else {
                            fragment2 = fragment3;
                        }
                        boolean z2 = keyAt == this.mPrimaryItemId;
                        if (fragment3.mMenuVisible != z2) {
                            fragment3.mMenuVisible = z2;
                        }
                    }
                }
                if (fragment2 != null) {
                    backStackRecord.setMaxLifecycle(fragment2, Lifecycle$State.RESUMED);
                    memoryCacheService.getClass();
                    ArrayList arrayList3 = new ArrayList();
                    Iterator it2 = ((CopyOnWriteArrayList) memoryCacheService.imageLoader).iterator();
                    if (it2.hasNext()) {
                        throw Modifier.CC.m(it2);
                    }
                    arrayList.add(arrayList3);
                }
                if (backStackRecord.mOps.isEmpty()) {
                    return;
                }
                backStackRecord.commitNow();
                Collections.reverse(arrayList);
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    List list = (List) it3.next();
                    memoryCacheService.getClass();
                    MemoryCacheService.dispatchPostEvents(list);
                }
            }
        }
    }

    public FragmentStateAdapter(FragmentManagerImpl fragmentManagerImpl, LifecycleRegistry lifecycleRegistry) {
        Object obj = null;
        this.mFragments = new LongSparseArray(obj);
        this.mSavedStates = new LongSparseArray(obj);
        this.mItemIdToViewHolder = new LongSparseArray(obj);
        MemoryCacheService memoryCacheService = new MemoryCacheService((char) 0, 9);
        memoryCacheService.imageLoader = new CopyOnWriteArrayList();
        this.mFragmentEventDispatcher = memoryCacheService;
        this.mIsInGracePeriod = false;
        this.mHasStaleFragments = false;
        this.mFragmentManager = fragmentManagerImpl;
        this.mLifecycle = lifecycleRegistry;
        setHasStableIds(true);
    }

    public static void addViewToContainer(View view, FrameLayout frameLayout) {
        if (frameLayout.getChildCount() > 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Design assumption violated.");
            return;
        }
        if (view.getParent() == frameLayout) {
            return;
        }
        if (frameLayout.getChildCount() > 0) {
            frameLayout.removeAllViews();
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        frameLayout.addView(view);
    }

    public final boolean containsItem(long j) {
        return j >= 0 && j < ((long) getItemCount());
    }

    public abstract Fragment createFragment(int i);

    public final void gcFragments() {
        LongSparseArray longSparseArray;
        LongSparseArray longSparseArray2;
        Fragment fragment;
        View view;
        if (!this.mHasStaleFragments || this.mFragmentManager.isStateSaved()) {
            return;
        }
        ArraySet arraySet = new ArraySet(0);
        int i = 0;
        while (true) {
            longSparseArray = this.mFragments;
            int size = longSparseArray.size();
            longSparseArray2 = this.mItemIdToViewHolder;
            if (i >= size) {
                break;
            }
            long keyAt = longSparseArray.keyAt(i);
            if (!containsItem(keyAt)) {
                arraySet.add(Long.valueOf(keyAt));
                longSparseArray2.remove(keyAt);
            }
            i++;
        }
        if (!this.mIsInGracePeriod) {
            this.mHasStaleFragments = false;
            for (int i2 = 0; i2 < longSparseArray.size(); i2++) {
                long keyAt2 = longSparseArray.keyAt(i2);
                if (longSparseArray2.indexOfKey(keyAt2) < 0 && ((fragment = (Fragment) longSparseArray.get(keyAt2)) == null || (view = fragment.mView) == null || view.getParent() == null)) {
                    arraySet.add(Long.valueOf(keyAt2));
                }
            }
        }
        ArrayMap.KeyIterator keyIterator = new ArrayMap.KeyIterator(arraySet);
        while (keyIterator.hasNext()) {
            removeFragment(((Long) keyIterator.next()).longValue());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i) {
        return i;
    }

    public final Long itemForViewHolder(int i) {
        int i2 = 0;
        Long l = null;
        while (true) {
            LongSparseArray longSparseArray = this.mItemIdToViewHolder;
            if (i2 >= longSparseArray.size()) {
                return l;
            }
            if (((Integer) longSparseArray.valueAt(i2)).intValue() == i) {
                if (l != null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Design assumption violated: a ViewHolder can only be bound to one item at a time.");
                    return null;
                }
                l = Long.valueOf(longSparseArray.keyAt(i2));
            }
            i2++;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onAttachedToRecyclerView(RecyclerView recyclerView) {
        if (this.mFragmentMaxLifecycleEnforcer != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m();
            return;
        }
        FragmentMaxLifecycleEnforcer fragmentMaxLifecycleEnforcer = new FragmentMaxLifecycleEnforcer();
        this.mFragmentMaxLifecycleEnforcer = fragmentMaxLifecycleEnforcer;
        ViewPager2 inferViewPager = FragmentMaxLifecycleEnforcer.inferViewPager(recyclerView);
        fragmentMaxLifecycleEnforcer.mViewPager = inferViewPager;
        MainFragment.PageChangeCallback pageChangeCallback = new MainFragment.PageChangeCallback(1, fragmentMaxLifecycleEnforcer);
        fragmentMaxLifecycleEnforcer.mPageChangeCallback = pageChangeCallback;
        inferViewPager.registerOnPageChangeCallback(pageChangeCallback);
        PagingDataAdapter$1 pagingDataAdapter$1 = new PagingDataAdapter$1(3, fragmentMaxLifecycleEnforcer);
        fragmentMaxLifecycleEnforcer.mDataObserver = pagingDataAdapter$1;
        registerAdapterDataObserver(pagingDataAdapter$1);
        Recreator recreator = new Recreator(5, fragmentMaxLifecycleEnforcer);
        fragmentMaxLifecycleEnforcer.mLifecycleObserver = recreator;
        this.mLifecycle.addObserver(recreator);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        Bundle bundle;
        FragmentViewHolder fragmentViewHolder = (FragmentViewHolder) viewHolder;
        long j = fragmentViewHolder.mItemId;
        FrameLayout frameLayout = (FrameLayout) fragmentViewHolder.itemView;
        int id = frameLayout.getId();
        Long itemForViewHolder = itemForViewHolder(id);
        LongSparseArray longSparseArray = this.mItemIdToViewHolder;
        if (itemForViewHolder != null && itemForViewHolder.longValue() != j) {
            removeFragment(itemForViewHolder.longValue());
            longSparseArray.remove(itemForViewHolder.longValue());
        }
        longSparseArray.put(j, Integer.valueOf(id));
        long j2 = i;
        LongSparseArray longSparseArray2 = this.mFragments;
        if (longSparseArray2.indexOfKey(j2) < 0) {
            Fragment createFragment = createFragment(i);
            Fragment.SavedState savedState = (Fragment.SavedState) this.mSavedStates.get(j2);
            if (createFragment.mFragmentManager != null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Fragment already added");
                return;
            }
            if (savedState == null || (bundle = savedState.mState) == null) {
                bundle = null;
            }
            createFragment.mSavedFragmentState = bundle;
            longSparseArray2.put(j2, createFragment);
        }
        if (frameLayout.isAttachedToWindow()) {
            placeFragmentInViewHolder(fragmentViewHolder);
        }
        gcFragments();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        int i2 = FragmentViewHolder.$r8$clinit;
        FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        frameLayout.setId(View.generateViewId());
        frameLayout.setSaveEnabled(false);
        return new FragmentViewHolder(frameLayout);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        FragmentMaxLifecycleEnforcer fragmentMaxLifecycleEnforcer = this.mFragmentMaxLifecycleEnforcer;
        fragmentMaxLifecycleEnforcer.getClass();
        ViewPager2 inferViewPager = FragmentMaxLifecycleEnforcer.inferViewPager(recyclerView);
        ((ArrayList) inferViewPager.mExternalPageChangeCallbacks.this$0).remove(fragmentMaxLifecycleEnforcer.mPageChangeCallback);
        FragmentStateAdapter fragmentStateAdapter = FragmentStateAdapter.this;
        fragmentStateAdapter.unregisterAdapterDataObserver(fragmentMaxLifecycleEnforcer.mDataObserver);
        fragmentStateAdapter.mLifecycle.removeObserver(fragmentMaxLifecycleEnforcer.mLifecycleObserver);
        fragmentMaxLifecycleEnforcer.mViewPager = null;
        this.mFragmentMaxLifecycleEnforcer = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        placeFragmentInViewHolder((FragmentViewHolder) viewHolder);
        gcFragments();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        Long itemForViewHolder = itemForViewHolder(((FrameLayout) ((FragmentViewHolder) viewHolder).itemView).getId());
        if (itemForViewHolder != null) {
            removeFragment(itemForViewHolder.longValue());
            this.mItemIdToViewHolder.remove(itemForViewHolder.longValue());
        }
    }

    public final void placeFragmentInViewHolder(FragmentViewHolder fragmentViewHolder) {
        final Fragment fragment = (Fragment) this.mFragments.get(fragmentViewHolder.mItemId);
        if (fragment == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Design assumption violated.");
            return;
        }
        final FrameLayout frameLayout = (FrameLayout) fragmentViewHolder.itemView;
        View view = fragment.mView;
        if (!fragment.isAdded() && view != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Design assumption violated.");
            return;
        }
        boolean isAdded = fragment.isAdded();
        FragmentManagerImpl fragmentManagerImpl = this.mFragmentManager;
        if (isAdded && view == null) {
            fragmentManagerImpl.registerFragmentLifecycleCallbacks(new OperationKt(this) { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.2
                @Override // androidx.work.OperationKt
                public final void onFragmentViewCreated(FragmentManagerImpl fragmentManagerImpl2, Fragment fragment2, View view2) {
                    if (fragment2 == fragment) {
                        fragmentManagerImpl2.unregisterFragmentLifecycleCallbacks(this);
                        FragmentStateAdapter.addViewToContainer(view2, frameLayout);
                    }
                }
            }, false);
            return;
        }
        if (fragment.isAdded() && view.getParent() != null) {
            if (view.getParent() != frameLayout) {
                addViewToContainer(view, frameLayout);
                return;
            }
            return;
        }
        if (fragment.isAdded()) {
            addViewToContainer(view, frameLayout);
            return;
        }
        if (fragmentManagerImpl.isStateSaved()) {
            if (fragmentManagerImpl.mDestroyed) {
                return;
            }
            this.mLifecycle.addObserver(new DefaultLifecycleObserverAdapter(this, fragmentViewHolder));
            return;
        }
        fragmentManagerImpl.registerFragmentLifecycleCallbacks(new OperationKt(this) { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.2
            @Override // androidx.work.OperationKt
            public final void onFragmentViewCreated(FragmentManagerImpl fragmentManagerImpl2, Fragment fragment2, View view2) {
                if (fragment2 == fragment) {
                    fragmentManagerImpl2.unregisterFragmentLifecycleCallbacks(this);
                    FragmentStateAdapter.addViewToContainer(view2, frameLayout);
                }
            }
        }, false);
        MemoryCacheService memoryCacheService = this.mFragmentEventDispatcher;
        memoryCacheService.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = ((CopyOnWriteArrayList) memoryCacheService.imageLoader).iterator();
        if (it.hasNext()) {
            throw Modifier.CC.m(it);
        }
        try {
            if (fragment.mMenuVisible) {
                fragment.mMenuVisible = false;
            }
            BackStackRecord backStackRecord = new BackStackRecord(fragmentManagerImpl);
            backStackRecord.doAddOp(0, fragment, "f" + fragmentViewHolder.mItemId, 1);
            backStackRecord.setMaxLifecycle(fragment, Lifecycle$State.STARTED);
            backStackRecord.commitNow();
            this.mFragmentMaxLifecycleEnforcer.updateFragmentMaxLifecycle(false);
        } finally {
            MemoryCacheService.dispatchPostEvents(arrayList);
        }
    }

    public final void removeFragment(long j) {
        Fragment fragment;
        ViewParent parent;
        LongSparseArray longSparseArray = this.mFragments;
        Fragment fragment2 = (Fragment) longSparseArray.get(j);
        if (fragment2 == null) {
            return;
        }
        View view = fragment2.mView;
        if (view != null && (parent = view.getParent()) != null) {
            ((FrameLayout) parent).removeAllViews();
        }
        boolean containsItem = containsItem(j);
        LongSparseArray longSparseArray2 = this.mSavedStates;
        if (!containsItem) {
            longSparseArray2.remove(j);
        }
        if (!fragment2.isAdded()) {
            longSparseArray.remove(j);
            return;
        }
        FragmentManagerImpl fragmentManagerImpl = this.mFragmentManager;
        if (fragmentManagerImpl.isStateSaved()) {
            this.mHasStaleFragments = true;
            return;
        }
        boolean isAdded = fragment2.isAdded();
        MemoryCacheService memoryCacheService = this.mFragmentEventDispatcher;
        if (isAdded && containsItem(j)) {
            memoryCacheService.getClass();
            ArrayList arrayList = new ArrayList();
            Iterator it = ((CopyOnWriteArrayList) memoryCacheService.imageLoader).iterator();
            if (it.hasNext()) {
                throw Modifier.CC.m(it);
            }
            FragmentStateManager fragmentStateManager = (FragmentStateManager) ((HashMap) fragmentManagerImpl.mFragmentStore.defaults).get(fragment2.mWho);
            if (fragmentStateManager == null || (fragment = fragmentStateManager.mFragment) != fragment2) {
                fragmentManagerImpl.throwException(new IllegalStateException(ViewSizeResolver$CC.m("Fragment ", fragment2, " is not currently in the FragmentManager")));
                throw null;
            }
            Fragment.SavedState savedState = fragment.mState > -1 ? new Fragment.SavedState(fragmentStateManager.saveState()) : null;
            MemoryCacheService.dispatchPostEvents(arrayList);
            longSparseArray2.put(j, savedState);
        }
        memoryCacheService.getClass();
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = ((CopyOnWriteArrayList) memoryCacheService.imageLoader).iterator();
        if (it2.hasNext()) {
            throw Modifier.CC.m(it2);
        }
        try {
            BackStackRecord backStackRecord = new BackStackRecord(fragmentManagerImpl);
            backStackRecord.remove(fragment2);
            backStackRecord.commitNow();
            longSparseArray.remove(j);
        } finally {
            MemoryCacheService.dispatchPostEvents(arrayList2);
        }
    }
}
