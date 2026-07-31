package com.fsck.k9.ui.messageview;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.camera.core.impl.Config;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import androidx.collection.LongSparseArray;
import androidx.compose.ui.platform.WeakCache;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.DefaultLifecycleObserverAdapter;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.util.RelationUtil;
import androidx.savedstate.Recreator;
import androidx.viewpager2.adapter.FragmentViewHolder;
import androidx.viewpager2.widget.CompositeOnPageChangeCallback;
import androidx.viewpager2.widget.ViewPager2;
import androidx.work.OperationKt;
import app.k9mail.legacy.message.controller.MessageReference;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract;
import com.fsck.k9.ui.messagelist.MessageListItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import net.openid.appauth.internal.Logger;
import net.thunderbird.core.common.state.debug.CommonStatePrettyPrinter;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageViewContainerFragment extends Fragment {
    public MessageReference activeMessageReference;
    public MessageViewContainerAdapter adapter;
    public MessageHomeActivity fragmentListener;
    public MessageReference messageReference;
    public boolean showAccountIndicator = true;
    public ViewPager2 viewPager;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class MessageViewContainerAdapter extends RecyclerView.Adapter {
        public final Fragment.AnonymousClass7 mFragmentEventDispatcher;
        public final FragmentManager mFragmentManager;
        public CommonStatePrettyPrinter mFragmentMaxLifecycleEnforcer;
        public final LongSparseArray mFragments;
        public boolean mHasStaleFragments;
        public boolean mIsInGracePeriod;
        public final LongSparseArray mItemIdToViewHolder;
        public final Lifecycle mLifecycle;
        public final LongSparseArray mSavedStates;
        public List messageList;
        public final boolean showAccountIndicator;

        public MessageViewContainerAdapter(MessageViewContainerFragment messageViewContainerFragment, boolean z) {
            FragmentManager childFragmentManager = messageViewContainerFragment.getChildFragmentManager();
            LifecycleRegistry lifecycleRegistry = messageViewContainerFragment.mLifecycleRegistry;
            Object obj = null;
            this.mFragments = new LongSparseArray(obj);
            this.mSavedStates = new LongSparseArray(obj);
            this.mItemIdToViewHolder = new LongSparseArray(obj);
            Fragment.AnonymousClass7 anonymousClass7 = new Fragment.AnonymousClass7();
            anonymousClass7.this$0 = new CopyOnWriteArrayList();
            this.mFragmentEventDispatcher = anonymousClass7;
            this.mIsInGracePeriod = false;
            this.mHasStaleFragments = false;
            this.mFragmentManager = childFragmentManager;
            this.mLifecycle = lifecycleRegistry;
            setHasStableIds(true);
            this.showAccountIndicator = z;
            this.messageList = EmptyList.INSTANCE;
        }

        public static void addViewToContainer(View view, FrameLayout frameLayout) {
            if (frameLayout.getChildCount() > 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Design assumption violated.");
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
            List list = this.messageList;
            if (list != null && list.isEmpty()) {
                return false;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((MessageListItem) it.next()).uniqueId == j) {
                    return true;
                }
            }
            return false;
        }

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
        public final int getItemCount() {
            return this.messageList.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final long getItemId(int i) {
            return ((MessageListItem) this.messageList.get(i)).uniqueId;
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
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Design assumption violated: a ViewHolder can only be bound to one item at a time.");
                        return null;
                    }
                    l = Long.valueOf(longSparseArray.keyAt(i2));
                }
                i2++;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onAttachedToRecyclerView(RecyclerView recyclerView) {
            int i = 1;
            RelationUtil.checkArgument(this.mFragmentMaxLifecycleEnforcer == null);
            CommonStatePrettyPrinter commonStatePrettyPrinter = new CommonStatePrettyPrinter();
            commonStatePrettyPrinter.lastFullDumpTimestamp = this;
            commonStatePrettyPrinter.fullDumpCooldown = -1L;
            this.mFragmentMaxLifecycleEnforcer = commonStatePrettyPrinter;
            ViewPager2 inferViewPager = CommonStatePrettyPrinter.inferViewPager(recyclerView);
            commonStatePrettyPrinter.formatter = inferViewPager;
            CompositeOnPageChangeCallback compositeOnPageChangeCallback = new CompositeOnPageChangeCallback(i, commonStatePrettyPrinter);
            commonStatePrettyPrinter.logger = compositeOnPageChangeCallback;
            ((ArrayList) inferViewPager.mExternalPageChangeCallbacks.mCallbacks).add(compositeOnPageChangeCallback);
            RecyclerView.RecyclerViewDataObserver recyclerViewDataObserver = new RecyclerView.RecyclerViewDataObserver(1, commonStatePrettyPrinter);
            commonStatePrettyPrinter.clock = recyclerViewDataObserver;
            this.mObservable.registerObserver(recyclerViewDataObserver);
            Recreator recreator = new Recreator(4, commonStatePrettyPrinter);
            commonStatePrettyPrinter.logTag = recreator;
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
            long itemId = getItemId(i);
            LongSparseArray longSparseArray2 = this.mFragments;
            if (longSparseArray2.indexOfKey(itemId) < 0) {
                if (i < 0 || i >= this.messageList.size()) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
                    return;
                }
                MessageReference messageReference = ((MessageListItem) this.messageList.get(i)).getMessageReference();
                MessageViewFragment messageViewFragment = new MessageViewFragment();
                OperationKt.withArguments(messageViewFragment, new Pair("reference", messageReference.toIdentityString()), new Pair("showAccountIndicator", Boolean.valueOf(this.showAccountIndicator)));
                Fragment.SavedState savedState = (Fragment.SavedState) this.mSavedStates.get(itemId);
                if (messageViewFragment.mFragmentManager != null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Fragment already added");
                    return;
                }
                if (savedState == null || (bundle = savedState.mState) == null) {
                    bundle = null;
                }
                messageViewFragment.mSavedFragmentState = bundle;
                longSparseArray2.put(itemId, messageViewFragment);
            }
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
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
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            frameLayout.setId(View.generateViewId());
            frameLayout.setSaveEnabled(false);
            return new FragmentViewHolder(frameLayout);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onDetachedFromRecyclerView(RecyclerView recyclerView) {
            CommonStatePrettyPrinter commonStatePrettyPrinter = this.mFragmentMaxLifecycleEnforcer;
            commonStatePrettyPrinter.getClass();
            ViewPager2 inferViewPager = CommonStatePrettyPrinter.inferViewPager(recyclerView);
            ((ArrayList) inferViewPager.mExternalPageChangeCallbacks.mCallbacks).remove((CompositeOnPageChangeCallback) commonStatePrettyPrinter.logger);
            MessageViewContainerAdapter messageViewContainerAdapter = (MessageViewContainerAdapter) commonStatePrettyPrinter.lastFullDumpTimestamp;
            messageViewContainerAdapter.mObservable.unregisterObserver((RecyclerView.RecyclerViewDataObserver) commonStatePrettyPrinter.clock);
            messageViewContainerAdapter.mLifecycle.removeObserver((Recreator) commonStatePrettyPrinter.logTag);
            commonStatePrettyPrinter.formatter = null;
            this.mFragmentMaxLifecycleEnforcer = null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final /* bridge */ /* synthetic */ boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
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
            Fragment fragment = (Fragment) this.mFragments.get(fragmentViewHolder.mItemId);
            if (fragment == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Design assumption violated.");
                return;
            }
            FrameLayout frameLayout = (FrameLayout) fragmentViewHolder.itemView;
            View view = fragment.mView;
            if (!fragment.isAdded() && view != null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Design assumption violated.");
                return;
            }
            boolean isAdded = fragment.isAdded();
            FragmentManager fragmentManager = this.mFragmentManager;
            if (isAdded && view == null) {
                Base64Util base64Util = new Base64Util(this, fragment, frameLayout);
                WeakCache weakCache = fragmentManager.mLifecycleCallbacksDispatcher;
                weakCache.getClass();
                ((CopyOnWriteArrayList) weakCache.referenceQueue).add(new FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder(base64Util));
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
            if (fragmentManager.isStateSaved()) {
                if (fragmentManager.mDestroyed) {
                    return;
                }
                this.mLifecycle.addObserver(new DefaultLifecycleObserverAdapter(this, fragmentViewHolder));
                return;
            }
            Base64Util base64Util2 = new Base64Util(this, fragment, frameLayout);
            WeakCache weakCache2 = fragmentManager.mLifecycleCallbacksDispatcher;
            weakCache2.getClass();
            ((CopyOnWriteArrayList) weakCache2.referenceQueue).add(new FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder(base64Util2));
            Fragment.AnonymousClass7 anonymousClass7 = this.mFragmentEventDispatcher;
            anonymousClass7.getClass();
            ArrayList arrayList = new ArrayList();
            Iterator it = ((CopyOnWriteArrayList) anonymousClass7.this$0).iterator();
            if (it.hasNext()) {
                throw Config.CC.m(it);
            }
            try {
                fragment.setMenuVisibility(false);
                BackStackRecord backStackRecord = new BackStackRecord(fragmentManager);
                backStackRecord.doAddOp(0, fragment, "f" + fragmentViewHolder.mItemId, 1);
                backStackRecord.setMaxLifecycle(fragment, Lifecycle.State.STARTED);
                backStackRecord.commitNow();
                this.mFragmentMaxLifecycleEnforcer.updateFragmentMaxLifecycle(false);
            } finally {
                Fragment.AnonymousClass7.dispatchPostEvents(arrayList);
            }
        }

        public final void removeFragment(long j) {
            ViewParent parent;
            LongSparseArray longSparseArray = this.mFragments;
            Fragment fragment = (Fragment) longSparseArray.get(j);
            if (fragment == null) {
                return;
            }
            View view = fragment.mView;
            if (view != null && (parent = view.getParent()) != null) {
                ((FrameLayout) parent).removeAllViews();
            }
            boolean containsItem = containsItem(j);
            LongSparseArray longSparseArray2 = this.mSavedStates;
            if (!containsItem) {
                longSparseArray2.remove(j);
            }
            if (!fragment.isAdded()) {
                longSparseArray.remove(j);
                return;
            }
            FragmentManager fragmentManager = this.mFragmentManager;
            if (fragmentManager.isStateSaved()) {
                this.mHasStaleFragments = true;
                return;
            }
            boolean isAdded = fragment.isAdded();
            Fragment.AnonymousClass7 anonymousClass7 = this.mFragmentEventDispatcher;
            if (isAdded && containsItem(j)) {
                anonymousClass7.getClass();
                ArrayList arrayList = new ArrayList();
                Iterator it = ((CopyOnWriteArrayList) anonymousClass7.this$0).iterator();
                if (it.hasNext()) {
                    throw Config.CC.m(it);
                }
                Fragment.SavedState saveFragmentInstanceState = fragmentManager.saveFragmentInstanceState(fragment);
                Fragment.AnonymousClass7.dispatchPostEvents(arrayList);
                longSparseArray2.put(j, saveFragmentInstanceState);
            }
            anonymousClass7.getClass();
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = ((CopyOnWriteArrayList) anonymousClass7.this$0).iterator();
            if (it2.hasNext()) {
                throw Config.CC.m(it2);
            }
            try {
                BackStackRecord backStackRecord = new BackStackRecord(fragmentManager);
                backStackRecord.remove(fragment);
                backStackRecord.commitNow();
                longSparseArray.remove(j);
            } finally {
                Fragment.AnonymousClass7.dispatchPostEvents(arrayList2);
            }
        }
    }

    public final MessageViewFragment getMessageViewFragment() {
        if (this.mState < 7) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
            return null;
        }
        MessageViewContainerAdapter messageViewContainerAdapter = this.adapter;
        if (messageViewContainerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        MessageReference messageReference = this.messageReference;
        if (messageReference == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageReference");
            throw null;
        }
        for (MessageListItem messageListItem : messageViewContainerAdapter.messageList) {
            if (messageListItem.getMessageReference().equals(messageReference)) {
                long j = messageListItem.uniqueId;
                Fragment findFragmentByTag = getChildFragmentManager().findFragmentByTag("f" + j);
                findFragmentByTag.getClass();
                return (MessageViewFragment) findFragmentByTag;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Collection contains no element matching the predicate.");
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        context.getClass();
        super.onAttach(context);
        try {
            this.fragmentListener = (MessageHomeActivity) context;
        } catch (ClassCastException unused) {
            throw new ClassCastException("This fragment must be attached to a MessageViewContainerListener");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        MessageReference parse;
        super.onCreate(bundle);
        if (bundle == null) {
            Bundle bundle2 = this.mArguments;
            parse = MathKt.parse(bundle2 != null ? bundle2.getString("reference") : null);
            if (parse == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing argument reference");
                return;
            }
        } else {
            parse = MathKt.parse(bundle.getString("messageReference"));
            if (parse == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing state messageReference");
                return;
            }
        }
        this.messageReference = parse;
        Bundle bundle3 = this.mArguments;
        boolean z = bundle3 != null ? bundle3.getBoolean("showAccountIndicator") : this.showAccountIndicator;
        this.showAccountIndicator = z;
        this.adapter = new MessageViewContainerAdapter(this, z);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.message_view_container, viewGroup, false);
        int dimension = (int) layoutInflater.getContext().getResources().getDimension(R.dimen.message_view_pager_page_margin);
        View findViewById = inflate.findViewById(R.id.message_viewpager);
        findViewById.getClass();
        ViewPager2 viewPager2 = (ViewPager2) findViewById;
        this.viewPager = viewPager2;
        viewPager2.setUserInputEnabled(true);
        ViewPager2 viewPager22 = this.viewPager;
        if (viewPager22 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewPager");
            throw null;
        }
        viewPager22.setOffscreenPageLimit(-1);
        ViewPager2 viewPager23 = this.viewPager;
        if (viewPager23 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewPager");
            throw null;
        }
        viewPager23.setPageTransformer(new Logger(dimension));
        ViewPager2 viewPager24 = this.viewPager;
        if (viewPager24 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewPager");
            throw null;
        }
        ((ArrayList) viewPager24.mExternalPageChangeCallbacks.mCallbacks).add(new CompositeOnPageChangeCallback(2, this));
        ViewPager2 viewPager25 = this.viewPager;
        if (viewPager25 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewPager");
            throw null;
        }
        View childAt = viewPager25.getChildAt(0);
        RecyclerView recyclerView = childAt instanceof RecyclerView ? (RecyclerView) childAt : null;
        if (recyclerView == null) {
            return inflate;
        }
        final ViewPager2 viewPager26 = this.viewPager;
        if (viewPager26 != null) {
            new ItemTouchHelper(new ItemTouchHelper.SimpleCallback() { // from class: com.fsck.k9.ui.messageview.MessageViewContainerFragmentKt$reduceHorizontalDragSensitivity$itemTouchHelper$1
                {
                    super(0, 12);
                }

                @Override // androidx.recyclerview.widget.ItemTouchHelper.SimpleCallback
                public final float getSwipeThreshold(RecyclerView.ViewHolder viewHolder) {
                    viewHolder.getClass();
                    return 0.4f;
                }

                @Override // androidx.recyclerview.widget.ItemTouchHelper.SimpleCallback
                public final float getSwipeVelocityThreshold(float f) {
                    return 3.0f;
                }

                @Override // androidx.recyclerview.widget.ItemTouchHelper.SimpleCallback
                public final boolean onMove(RecyclerView recyclerView2, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
                    recyclerView2.getClass();
                    viewHolder.getClass();
                    return false;
                }

                @Override // androidx.recyclerview.widget.ItemTouchHelper.SimpleCallback
                public final void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
                    viewHolder.getClass();
                    ViewPager2 viewPager27 = ViewPager2.this;
                    if (i == 4) {
                        viewPager27.setCurrentItem(viewPager27.getCurrentItem() + 1);
                    } else {
                        if (i != 8) {
                            return;
                        }
                        viewPager27.setCurrentItem(viewPager27.getCurrentItem() - 1);
                    }
                }
            }).attachToRecyclerView(recyclerView);
            return inflate;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewPager");
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        MessageReference messageReference = this.messageReference;
        if (messageReference != null) {
            bundle.putString("messageReference", messageReference.toIdentityString());
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("messageReference");
            throw null;
        }
    }

    public final void setActiveMessage(int i) {
        MessageViewContainerAdapter messageViewContainerAdapter = this.adapter;
        if (messageViewContainerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        MessageListItem messageListItem = (MessageListItem) CollectionsKt.getOrNull(i, messageViewContainerAdapter.messageList);
        MessageReference messageReference = messageListItem != null ? messageListItem.getMessageReference() : null;
        if (messageReference == null || messageReference.equals(this.activeMessageReference)) {
            return;
        }
        this.messageReference = messageReference;
        this.activeMessageReference = messageReference;
        MessageHomeActivity messageHomeActivity = this.fragmentListener;
        if (messageHomeActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
            throw null;
        }
        MessageListFragmentBridgeContract messageListFragmentBridgeContract = messageHomeActivity.messageListFragment;
        if (messageListFragmentBridgeContract != null) {
            messageListFragmentBridgeContract.setActiveMessage(messageReference);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
        }
    }
}
