package androidx.viewpager2.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.collection.LongSparseArray;
import androidx.compose.animation.core.Animation;
import androidx.core.provider.CallbackWrapper$2;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.DefaultLifecycleObserverAdapter;
import androidx.lifecycle.LiveData$1;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.R$styleable;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ScrollEventAdapter;
import coil3.Extras;
import coil3.ImageLoader$Builder;
import coil3.memory.MemoryCacheService;
import coil3.size.ViewSizeResolver$CC;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.main.MainFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewPager2 extends ViewGroup {
    public final ImageLoader$Builder mAccessibilityProvider;
    public int mCurrentItem;
    public final AnonymousClass1 mCurrentItemDataSetChangeObserver;
    public boolean mCurrentItemDirty;
    public final MainFragment.PageChangeCallback mExternalPageChangeCallbacks;
    public final MemoryCacheService mFakeDragger;
    public final LinearLayoutManagerImpl mLayoutManager;
    public int mOffscreenPageLimit;
    public final MainFragment.PageChangeCallback mPageChangeEventDispatcher;
    public final PageTransformerAdapter mPageTransformerAdapter;
    public final PagerSnapHelperImpl mPagerSnapHelper;
    public Parcelable mPendingAdapterState;
    public int mPendingCurrentItem;
    public final RecyclerViewImpl mRecyclerView;
    public RecyclerView.ItemAnimator mSavedItemAnimator;
    public boolean mSavedItemAnimatorPresent;
    public final ScrollEventAdapter mScrollEventAdapter;
    public final Rect mTmpChildRect;
    public final Rect mTmpContainerRect;
    public boolean mUserInputEnabled;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LinearLayoutManagerImpl extends LinearLayoutManager {
        public LinearLayoutManagerImpl() {
            super(1);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public final void calculateExtraLayoutSpace(RecyclerView.State state, int[] iArr) {
            ViewPager2 viewPager2 = ViewPager2.this;
            int offscreenPageLimit = viewPager2.getOffscreenPageLimit();
            if (offscreenPageLimit == -1) {
                super.calculateExtraLayoutSpace(state, iArr);
                return;
            }
            int pageSize = viewPager2.getPageSize() * offscreenPageLimit;
            iArr[0] = pageSize;
            iArr[1] = pageSize;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public final void onInitializeAccessibilityNodeInfo(RecyclerView.Recycler recycler, RecyclerView.State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(recycler, state, accessibilityNodeInfoCompat);
            ViewPager2.this.mAccessibilityProvider.getClass();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public final void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler recycler, RecyclerView.State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            int i;
            int i2;
            ViewPager2 viewPager2 = (ViewPager2) ViewPager2.this.mAccessibilityProvider.extras;
            if (viewPager2.getOrientation() == 1) {
                viewPager2.mLayoutManager.getClass();
                i = RecyclerView.LayoutManager.getPosition(view);
            } else {
                i = 0;
            }
            if (viewPager2.getOrientation() == 0) {
                viewPager2.mLayoutManager.getClass();
                i2 = RecyclerView.LayoutManager.getPosition(view);
            } else {
                i2 = 0;
            }
            accessibilityNodeInfoCompat.setCollectionItemInfo(Extras.Key.obtain(false, i, 1, i2, 1));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public final boolean performAccessibilityAction(RecyclerView.Recycler recycler, RecyclerView.State state, int i, Bundle bundle) {
            ViewPager2.this.mAccessibilityProvider.getClass();
            return super.performAccessibilityAction(recycler, state, i, bundle);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public final boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            return false;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface PageTransformer {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PagerSnapHelperImpl extends PagerSnapHelper {
        public PagerSnapHelperImpl() {
        }

        @Override // androidx.recyclerview.widget.PagerSnapHelper
        public final View findSnapView(RecyclerView.LayoutManager layoutManager) {
            Object obj = ViewPager2.this.mFakeDragger.imageLoader;
            return super.findSnapView(layoutManager);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RecyclerViewImpl extends RecyclerView {
        public RecyclerViewImpl(Context context) {
            super(context, null);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public final CharSequence getAccessibilityClassName() {
            ViewPager2.this.mAccessibilityProvider.getClass();
            return super.getAccessibilityClassName();
        }

        @Override // android.view.View
        public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            ViewPager2 viewPager2 = ViewPager2.this;
            accessibilityEvent.setFromIndex(viewPager2.mCurrentItem);
            accessibilityEvent.setToIndex(viewPager2.mCurrentItem);
            accessibilityEvent.setSource((ViewPager2) viewPager2.mAccessibilityProvider.extras);
            accessibilityEvent.setClassName("androidx.viewpager.widget.ViewPager");
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.mUserInputEnabled && super.onInterceptTouchEvent(motionEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.mUserInputEnabled && super.onTouchEvent(motionEvent);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AbsSavedState.AnonymousClass2(8);
        public Parcelable mAdapterState;
        public int mCurrentItem;
        public int mRecyclerViewId;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.mRecyclerViewId = parcel.readInt();
            this.mCurrentItem = parcel.readInt();
            this.mAdapterState = parcel.readParcelable(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.mRecyclerViewId);
            parcel.writeInt(this.mCurrentItem);
            parcel.writeParcelable(this.mAdapterState, i);
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [androidx.viewpager2.widget.ViewPager2$1] */
    public ViewPager2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTmpContainerRect = new Rect();
        this.mTmpChildRect = new Rect();
        MainFragment.PageChangeCallback pageChangeCallback = new MainFragment.PageChangeCallback();
        this.mExternalPageChangeCallbacks = pageChangeCallback;
        final int i = 0;
        this.mCurrentItemDirty = false;
        this.mCurrentItemDataSetChangeObserver = new RecyclerView.AdapterDataObserver() { // from class: androidx.viewpager2.widget.ViewPager2.1
            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public final void onChanged() {
                int i2 = i;
                Object obj = this;
                switch (i2) {
                    case 0:
                        ViewPager2 viewPager2 = (ViewPager2) obj;
                        viewPager2.mCurrentItemDirty = true;
                        viewPager2.mScrollEventAdapter.mDataSetChangeHappened = true;
                        break;
                    default:
                        ((ImageLoader$Builder) obj).updatePageAccessibilityActions();
                        break;
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public final void onItemRangeChanged(int i2, int i3) {
                onChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public final void onItemRangeInserted(int i2, int i3) {
                onChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public final void onItemRangeMoved(int i2, int i3) {
                onChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public final void onItemRangeRemoved(int i2, int i3) {
                onChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public final void onItemRangeChanged(int i2, int i3, Object obj) {
                onChanged();
            }
        };
        this.mPendingCurrentItem = -1;
        this.mSavedItemAnimator = null;
        this.mSavedItemAnimatorPresent = false;
        final int i2 = 1;
        this.mUserInputEnabled = true;
        this.mOffscreenPageLimit = -1;
        this.mAccessibilityProvider = new ImageLoader$Builder(this);
        RecyclerViewImpl recyclerViewImpl = new RecyclerViewImpl(context);
        this.mRecyclerView = recyclerViewImpl;
        recyclerViewImpl.setId(View.generateViewId());
        this.mRecyclerView.setDescendantFocusability(131072);
        LinearLayoutManagerImpl linearLayoutManagerImpl = new LinearLayoutManagerImpl();
        this.mLayoutManager = linearLayoutManagerImpl;
        this.mRecyclerView.setLayoutManager(linearLayoutManagerImpl);
        this.mRecyclerView.setScrollingTouchSlop(1);
        int[] iArr = R$styleable.ViewPager2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, obtainStyledAttributes, 0);
        try {
            setOrientation(obtainStyledAttributes.getInt(0, 0));
            obtainStyledAttributes.recycle();
            this.mRecyclerView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            RecyclerViewImpl recyclerViewImpl2 = this.mRecyclerView;
            AnonymousClass4 anonymousClass4 = new AnonymousClass4();
            ArrayList arrayList = recyclerViewImpl2.mOnChildAttachStateListeners;
            if (arrayList == null) {
                arrayList = new ArrayList();
                recyclerViewImpl2.mOnChildAttachStateListeners = arrayList;
            }
            arrayList.add(anonymousClass4);
            ScrollEventAdapter scrollEventAdapter = new ScrollEventAdapter(this);
            this.mScrollEventAdapter = scrollEventAdapter;
            this.mFakeDragger = new MemoryCacheService(10, scrollEventAdapter);
            PagerSnapHelperImpl pagerSnapHelperImpl = new PagerSnapHelperImpl();
            this.mPagerSnapHelper = pagerSnapHelperImpl;
            pagerSnapHelperImpl.attachToRecyclerView(this.mRecyclerView);
            this.mRecyclerView.addOnScrollListener(this.mScrollEventAdapter);
            MainFragment.PageChangeCallback pageChangeCallback2 = new MainFragment.PageChangeCallback();
            this.mPageChangeEventDispatcher = pageChangeCallback2;
            this.mScrollEventAdapter.mCallback = pageChangeCallback2;
            OnPageChangeCallback onPageChangeCallback = new OnPageChangeCallback(this) { // from class: androidx.viewpager2.widget.ViewPager2.2
                public final /* synthetic */ ViewPager2 this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public void onPageScrollStateChanged(int i3) {
                    switch (i) {
                        case 0:
                            if (i3 == 0) {
                                this.this$0.updateCurrentItem();
                                break;
                            }
                            break;
                    }
                }

                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public final void onPageSelected(int i3) {
                    int i4 = i;
                    ViewPager2 viewPager2 = this.this$0;
                    switch (i4) {
                        case 0:
                            if (viewPager2.mCurrentItem != i3) {
                                viewPager2.mCurrentItem = i3;
                                viewPager2.mAccessibilityProvider.updatePageAccessibilityActions();
                                break;
                            }
                            break;
                        default:
                            viewPager2.clearFocus();
                            if (viewPager2.hasFocus()) {
                                viewPager2.mRecyclerView.requestFocus(2);
                                break;
                            }
                            break;
                    }
                }
            };
            OnPageChangeCallback onPageChangeCallback2 = new OnPageChangeCallback(this) { // from class: androidx.viewpager2.widget.ViewPager2.2
                public final /* synthetic */ ViewPager2 this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public void onPageScrollStateChanged(int i3) {
                    switch (i2) {
                        case 0:
                            if (i3 == 0) {
                                this.this$0.updateCurrentItem();
                                break;
                            }
                            break;
                    }
                }

                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public final void onPageSelected(int i3) {
                    int i4 = i2;
                    ViewPager2 viewPager2 = this.this$0;
                    switch (i4) {
                        case 0:
                            if (viewPager2.mCurrentItem != i3) {
                                viewPager2.mCurrentItem = i3;
                                viewPager2.mAccessibilityProvider.updatePageAccessibilityActions();
                                break;
                            }
                            break;
                        default:
                            viewPager2.clearFocus();
                            if (viewPager2.hasFocus()) {
                                viewPager2.mRecyclerView.requestFocus(2);
                                break;
                            }
                            break;
                    }
                }
            };
            ((ArrayList) pageChangeCallback2.this$0).add(onPageChangeCallback);
            ((ArrayList) this.mPageChangeEventDispatcher.this$0).add(onPageChangeCallback2);
            final ImageLoader$Builder imageLoader$Builder = this.mAccessibilityProvider;
            RecyclerViewImpl recyclerViewImpl3 = this.mRecyclerView;
            imageLoader$Builder.getClass();
            recyclerViewImpl3.setImportantForAccessibility(2);
            imageLoader$Builder.componentRegistry = new RecyclerView.AdapterDataObserver() { // from class: androidx.viewpager2.widget.ViewPager2.1
                @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                public final void onChanged() {
                    int i22 = i2;
                    Object obj = imageLoader$Builder;
                    switch (i22) {
                        case 0:
                            ViewPager2 viewPager2 = (ViewPager2) obj;
                            viewPager2.mCurrentItemDirty = true;
                            viewPager2.mScrollEventAdapter.mDataSetChangeHappened = true;
                            break;
                        default:
                            ((ImageLoader$Builder) obj).updatePageAccessibilityActions();
                            break;
                    }
                }

                @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                public final void onItemRangeChanged(int i22, int i3) {
                    onChanged();
                }

                @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                public final void onItemRangeInserted(int i22, int i3) {
                    onChanged();
                }

                @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                public final void onItemRangeMoved(int i22, int i3) {
                    onChanged();
                }

                @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                public final void onItemRangeRemoved(int i22, int i3) {
                    onChanged();
                }

                @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                public final void onItemRangeChanged(int i22, int i3, Object obj) {
                    onChanged();
                }
            };
            ViewPager2 viewPager2 = (ViewPager2) imageLoader$Builder.extras;
            if (viewPager2.getImportantForAccessibility() == 0) {
                viewPager2.setImportantForAccessibility(1);
            }
            ((ArrayList) this.mPageChangeEventDispatcher.this$0).add(pageChangeCallback);
            PageTransformerAdapter pageTransformerAdapter = new PageTransformerAdapter();
            this.mPageTransformerAdapter = pageTransformerAdapter;
            ((ArrayList) this.mPageChangeEventDispatcher.this$0).add(pageTransformerAdapter);
            RecyclerViewImpl recyclerViewImpl4 = this.mRecyclerView;
            attachViewToParent(recyclerViewImpl4, 0, recyclerViewImpl4.getLayoutParams());
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i) {
        return this.mRecyclerView.canScrollHorizontally(i);
    }

    @Override // android.view.View
    public final boolean canScrollVertically(int i) {
        return this.mRecyclerView.canScrollVertically(i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        Parcelable parcelable = (Parcelable) sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i = ((SavedState) parcelable).mRecyclerViewId;
            sparseArray.put(this.mRecyclerView.getId(), (Parcelable) sparseArray.get(i));
            sparseArray.remove(i);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        restorePendingState();
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        this.mAccessibilityProvider.getClass();
        this.mAccessibilityProvider.getClass();
        return "androidx.viewpager.widget.ViewPager";
    }

    public RecyclerView.Adapter getAdapter() {
        return this.mRecyclerView.getAdapter();
    }

    public int getCurrentItem() {
        return this.mCurrentItem;
    }

    public int getItemDecorationCount() {
        return this.mRecyclerView.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.mOffscreenPageLimit;
    }

    public int getOrientation() {
        return this.mLayoutManager.mOrientation == 1 ? 1 : 0;
    }

    public int getPageSize() {
        int height;
        int paddingBottom;
        int orientation = getOrientation();
        RecyclerViewImpl recyclerViewImpl = this.mRecyclerView;
        if (orientation == 0) {
            height = recyclerViewImpl.getWidth() - recyclerViewImpl.getPaddingLeft();
            paddingBottom = recyclerViewImpl.getPaddingRight();
        } else {
            height = recyclerViewImpl.getHeight() - recyclerViewImpl.getPaddingTop();
            paddingBottom = recyclerViewImpl.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    public int getScrollState() {
        return this.mScrollEventAdapter.mScrollState;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i;
        int i2;
        int itemCount;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        ViewPager2 viewPager2 = (ViewPager2) this.mAccessibilityProvider.extras;
        if (viewPager2.getAdapter() == null) {
            i = 0;
            i2 = 0;
        } else if (viewPager2.getOrientation() == 1) {
            i = viewPager2.getAdapter().getItemCount();
            i2 = 1;
        } else {
            i2 = viewPager2.getAdapter().getItemCount();
            i = 1;
        }
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) Extras.Key.obtain(i, i2, 0).f16default);
        RecyclerView.Adapter adapter = viewPager2.getAdapter();
        if (adapter == null || (itemCount = adapter.getItemCount()) == 0 || !viewPager2.mUserInputEnabled) {
            return;
        }
        if (viewPager2.mCurrentItem > 0) {
            accessibilityNodeInfo.addAction(8192);
        }
        if (viewPager2.mCurrentItem < itemCount - 1) {
            accessibilityNodeInfo.addAction(4096);
        }
        accessibilityNodeInfo.setScrollable(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        RecyclerViewImpl recyclerViewImpl = this.mRecyclerView;
        int measuredWidth = recyclerViewImpl.getMeasuredWidth();
        int measuredHeight = recyclerViewImpl.getMeasuredHeight();
        int paddingLeft = getPaddingLeft();
        Rect rect = this.mTmpContainerRect;
        rect.left = paddingLeft;
        rect.right = (i3 - i) - getPaddingRight();
        rect.top = getPaddingTop();
        rect.bottom = (i4 - i2) - getPaddingBottom();
        Rect rect2 = this.mTmpChildRect;
        Gravity.apply(8388659, measuredWidth, measuredHeight, rect, rect2);
        recyclerViewImpl.layout(rect2.left, rect2.top, rect2.right, rect2.bottom);
        if (this.mCurrentItemDirty) {
            updateCurrentItem();
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        measureChild(this.mRecyclerView, i, i2);
        int measuredWidth = this.mRecyclerView.getMeasuredWidth();
        int measuredHeight = this.mRecyclerView.getMeasuredHeight();
        int measuredState = this.mRecyclerView.getMeasuredState();
        int paddingRight = getPaddingRight() + getPaddingLeft() + measuredWidth;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + measuredHeight;
        setMeasuredDimension(View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i, measuredState), View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i2, measuredState << 16));
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mPendingCurrentItem = savedState.mCurrentItem;
        this.mPendingAdapterState = savedState.mAdapterState;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        RecyclerViewImpl recyclerViewImpl = this.mRecyclerView;
        savedState.mRecyclerViewId = recyclerViewImpl.getId();
        int i = this.mPendingCurrentItem;
        if (i == -1) {
            i = this.mCurrentItem;
        }
        savedState.mCurrentItem = i;
        Parcelable parcelable = this.mPendingAdapterState;
        if (parcelable != null) {
            savedState.mAdapterState = parcelable;
            return savedState;
        }
        RecyclerView.Adapter adapter = recyclerViewImpl.getAdapter();
        if (adapter instanceof FragmentStateAdapter) {
            FragmentStateAdapter fragmentStateAdapter = (FragmentStateAdapter) adapter;
            LongSparseArray longSparseArray = fragmentStateAdapter.mFragments;
            int size = longSparseArray.size();
            LongSparseArray longSparseArray2 = fragmentStateAdapter.mSavedStates;
            Bundle bundle = new Bundle(longSparseArray2.size() + size);
            for (int i2 = 0; i2 < longSparseArray.size(); i2++) {
                long keyAt = longSparseArray.keyAt(i2);
                Fragment fragment = (Fragment) longSparseArray.get(keyAt);
                if (fragment != null && fragment.isAdded()) {
                    String m = Animation.CC.m("f#", keyAt);
                    FragmentManagerImpl fragmentManagerImpl = fragmentStateAdapter.mFragmentManager;
                    fragmentManagerImpl.getClass();
                    if (fragment.mFragmentManager != fragmentManagerImpl) {
                        fragmentManagerImpl.throwException(new IllegalStateException(ViewSizeResolver$CC.m("Fragment ", fragment, " is not currently in the FragmentManager")));
                        throw null;
                    }
                    bundle.putString(m, fragment.mWho);
                }
            }
            for (int i3 = 0; i3 < longSparseArray2.size(); i3++) {
                long keyAt2 = longSparseArray2.keyAt(i3);
                if (fragmentStateAdapter.containsItem(keyAt2)) {
                    bundle.putParcelable(Animation.CC.m("s#", keyAt2), (Parcelable) longSparseArray2.get(keyAt2));
                }
            }
            savedState.mAdapterState = bundle;
        }
        return savedState;
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        throw new IllegalStateException("ViewPager2 does not support direct child views");
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i, Bundle bundle) {
        ImageLoader$Builder imageLoader$Builder = this.mAccessibilityProvider;
        imageLoader$Builder.getClass();
        if (i != 8192 && i != 4096) {
            return super.performAccessibilityAction(i, bundle);
        }
        imageLoader$Builder.getClass();
        ViewPager2 viewPager2 = (ViewPager2) imageLoader$Builder.extras;
        if (i != 8192 && i != 4096) {
            Gson$$ExternalSyntheticBUOutline0.m();
            return false;
        }
        int currentItem = i == 8192 ? viewPager2.getCurrentItem() - 1 : viewPager2.getCurrentItem() + 1;
        if (viewPager2.mUserInputEnabled) {
            viewPager2.setCurrentItemInternal(currentItem, true);
        }
        return true;
    }

    public final void registerOnPageChangeCallback(OnPageChangeCallback onPageChangeCallback) {
        ((ArrayList) this.mExternalPageChangeCallbacks.this$0).add(onPageChangeCallback);
    }

    public final void restorePendingState() {
        RecyclerView.Adapter adapter;
        Fragment findActiveFragment;
        if (this.mPendingCurrentItem == -1 || (adapter = getAdapter()) == null) {
            return;
        }
        Parcelable parcelable = this.mPendingAdapterState;
        if (parcelable != null) {
            if (adapter instanceof FragmentStateAdapter) {
                FragmentStateAdapter fragmentStateAdapter = (FragmentStateAdapter) adapter;
                LongSparseArray longSparseArray = fragmentStateAdapter.mFragments;
                LongSparseArray longSparseArray2 = fragmentStateAdapter.mSavedStates;
                if (!longSparseArray2.isEmpty() || !longSparseArray.isEmpty()) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Expected the adapter to be 'fresh' while restoring state.");
                    return;
                }
                Bundle bundle = (Bundle) parcelable;
                if (bundle.getClassLoader() == null) {
                    bundle.setClassLoader(fragmentStateAdapter.getClass().getClassLoader());
                }
                for (String str : bundle.keySet()) {
                    if (str.startsWith("f#") && str.length() > 2) {
                        long parseLong = Long.parseLong(str.substring(2));
                        FragmentManagerImpl fragmentManagerImpl = fragmentStateAdapter.mFragmentManager;
                        fragmentManagerImpl.getClass();
                        String string = bundle.getString(str);
                        if (string == null) {
                            findActiveFragment = null;
                        } else {
                            findActiveFragment = fragmentManagerImpl.mFragmentStore.findActiveFragment(string);
                            if (findActiveFragment == null) {
                                fragmentManagerImpl.throwException(new IllegalStateException(ViewSizeResolver$CC.m("Fragment no longer exists for key ", str, ": unique id ", string)));
                                throw null;
                            }
                        }
                        longSparseArray.put(parseLong, findActiveFragment);
                    } else {
                        if (!str.startsWith("s#") || str.length() <= 2) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Unexpected key in savedState: ".concat(str));
                            return;
                        }
                        long parseLong2 = Long.parseLong(str.substring(2));
                        Fragment.SavedState savedState = (Fragment.SavedState) bundle.getParcelable(str);
                        if (fragmentStateAdapter.containsItem(parseLong2)) {
                            longSparseArray2.put(parseLong2, savedState);
                        }
                    }
                }
                if (!longSparseArray.isEmpty()) {
                    fragmentStateAdapter.mHasStaleFragments = true;
                    fragmentStateAdapter.mIsInGracePeriod = true;
                    fragmentStateAdapter.gcFragments();
                    Handler handler = new Handler(Looper.getMainLooper());
                    LiveData$1 liveData$1 = new LiveData$1(19, fragmentStateAdapter);
                    fragmentStateAdapter.mLifecycle.addObserver(new DefaultLifecycleObserverAdapter(5, handler, liveData$1));
                    handler.postDelayed(liveData$1, 10000L);
                }
            }
            this.mPendingAdapterState = null;
        }
        int max = Math.max(0, Math.min(this.mPendingCurrentItem, adapter.getItemCount() - 1));
        this.mCurrentItem = max;
        this.mPendingCurrentItem = -1;
        this.mRecyclerView.scrollToPosition(max);
        this.mAccessibilityProvider.updatePageAccessibilityActions();
    }

    public void setAdapter(RecyclerView.Adapter adapter) {
        RecyclerViewImpl recyclerViewImpl = this.mRecyclerView;
        RecyclerView.Adapter adapter2 = recyclerViewImpl.getAdapter();
        ImageLoader$Builder imageLoader$Builder = this.mAccessibilityProvider;
        if (adapter2 != null) {
            adapter2.unregisterAdapterDataObserver((AnonymousClass1) imageLoader$Builder.componentRegistry);
        } else {
            imageLoader$Builder.getClass();
        }
        AnonymousClass1 anonymousClass1 = this.mCurrentItemDataSetChangeObserver;
        if (adapter2 != null) {
            adapter2.unregisterAdapterDataObserver(anonymousClass1);
        }
        recyclerViewImpl.setAdapter(adapter);
        this.mCurrentItem = 0;
        restorePendingState();
        imageLoader$Builder.updatePageAccessibilityActions();
        if (adapter != null) {
            adapter.registerAdapterDataObserver((AnonymousClass1) imageLoader$Builder.componentRegistry);
        }
        if (adapter != null) {
            adapter.registerAdapterDataObserver(anonymousClass1);
        }
    }

    public final void setCurrentItem(int i, boolean z) {
        Object obj = this.mFakeDragger.imageLoader;
        setCurrentItemInternal(i, z);
    }

    public final void setCurrentItemInternal(int i, boolean z) {
        MainFragment.PageChangeCallback pageChangeCallback;
        RecyclerView.Adapter adapter = getAdapter();
        if (adapter == null) {
            if (this.mPendingCurrentItem != -1) {
                this.mPendingCurrentItem = Math.max(i, 0);
                return;
            }
            return;
        }
        if (adapter.getItemCount() <= 0) {
            return;
        }
        int min = Math.min(Math.max(i, 0), adapter.getItemCount() - 1);
        int i2 = this.mCurrentItem;
        ScrollEventAdapter scrollEventAdapter = this.mScrollEventAdapter;
        if (min == i2 && scrollEventAdapter.mScrollState == 0) {
            return;
        }
        if (min == i2 && z) {
            return;
        }
        double d = i2;
        this.mCurrentItem = min;
        this.mAccessibilityProvider.updatePageAccessibilityActions();
        if (scrollEventAdapter.mScrollState != 0) {
            scrollEventAdapter.updateScrollEventValues();
            ScrollEventAdapter.ScrollEventValues scrollEventValues = scrollEventAdapter.mScrollValues;
            d = scrollEventValues.mPosition + scrollEventValues.mOffset;
        }
        scrollEventAdapter.getClass();
        scrollEventAdapter.mAdapterState = z ? 2 : 3;
        boolean z2 = scrollEventAdapter.mTarget != min;
        scrollEventAdapter.mTarget = min;
        scrollEventAdapter.dispatchStateChanged(2);
        if (z2 && (pageChangeCallback = scrollEventAdapter.mCallback) != null) {
            pageChangeCallback.onPageSelected(min);
        }
        RecyclerViewImpl recyclerViewImpl = this.mRecyclerView;
        if (!z) {
            recyclerViewImpl.scrollToPosition(min);
            return;
        }
        double d2 = min;
        if (Math.abs(d2 - d) <= 3.0d) {
            recyclerViewImpl.smoothScrollToPosition(min);
        } else {
            recyclerViewImpl.scrollToPosition(d2 > d ? min - 3 : min + 3);
            recyclerViewImpl.post(new CallbackWrapper$2(min, recyclerViewImpl));
        }
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        super.setLayoutDirection(i);
        this.mAccessibilityProvider.updatePageAccessibilityActions();
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 1 && i != -1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
        } else {
            this.mOffscreenPageLimit = i;
            this.mRecyclerView.requestLayout();
        }
    }

    public void setOrientation(int i) {
        this.mLayoutManager.setOrientation(i);
        this.mAccessibilityProvider.updatePageAccessibilityActions();
    }

    public void setPageTransformer(PageTransformer pageTransformer) {
        boolean z = this.mSavedItemAnimatorPresent;
        if (pageTransformer != null) {
            if (!z) {
                this.mSavedItemAnimator = this.mRecyclerView.getItemAnimator();
                this.mSavedItemAnimatorPresent = true;
            }
            this.mRecyclerView.setItemAnimator(null);
        } else if (z) {
            this.mRecyclerView.setItemAnimator(this.mSavedItemAnimator);
            this.mSavedItemAnimator = null;
            this.mSavedItemAnimatorPresent = false;
        }
        this.mPageTransformerAdapter.getClass();
        if (pageTransformer == null) {
            return;
        }
        this.mPageTransformerAdapter.getClass();
        this.mPageTransformerAdapter.getClass();
    }

    public void setUserInputEnabled(boolean z) {
        this.mUserInputEnabled = z;
        this.mAccessibilityProvider.updatePageAccessibilityActions();
    }

    public final void updateCurrentItem() {
        PagerSnapHelperImpl pagerSnapHelperImpl = this.mPagerSnapHelper;
        if (pagerSnapHelperImpl == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Design assumption violated.");
            return;
        }
        LinearLayoutManagerImpl linearLayoutManagerImpl = this.mLayoutManager;
        View findSnapView = pagerSnapHelperImpl.findSnapView(linearLayoutManagerImpl);
        if (findSnapView == null) {
            return;
        }
        linearLayoutManagerImpl.getClass();
        int position = RecyclerView.LayoutManager.getPosition(findSnapView);
        if (position != this.mCurrentItem && getScrollState() == 0) {
            this.mPageChangeEventDispatcher.onPageSelected(position);
        }
        this.mCurrentItemDirty = false;
    }

    public void setCurrentItem(int i) {
        setCurrentItem(i, true);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.viewpager2.widget.ViewPager2$4, reason: invalid class name */
    public final class AnonymousClass4 implements RecyclerView.OnChildAttachStateChangeListener {
        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public final void onChildViewAttachedToWindow(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            if (((ViewGroup.MarginLayoutParams) layoutParams).width == -1 && ((ViewGroup.MarginLayoutParams) layoutParams).height == -1) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Pages must fill the whole ViewPager2 (use match_parent)");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public final void onChildViewDetachedFromWindow(View view) {
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class OnPageChangeCallback {
        public abstract void onPageSelected(int i);

        public void onPageScrollStateChanged(int i) {
        }

        public void onPageScrolled(int i, float f, int i2) {
        }
    }
}
