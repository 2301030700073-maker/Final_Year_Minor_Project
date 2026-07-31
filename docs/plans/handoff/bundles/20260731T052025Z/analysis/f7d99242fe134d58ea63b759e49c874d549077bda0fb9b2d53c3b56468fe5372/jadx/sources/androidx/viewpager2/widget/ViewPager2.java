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
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.collection.LongSparseArray;
import androidx.compose.ui.Modifier;
import androidx.core.provider.CallbackWrapper$2;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.DefaultLifecycleObserverAdapter;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.OrientationHelper$1;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper$1;
import androidx.room.RoomOpenDelegate;
import androidx.viewpager2.R$styleable;
import androidx.viewpager2.widget.ScrollEventAdapter;
import androidx.viewpager2.widget.ViewPager2;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.ui.messageview.MessageViewContainerFragment;
import java.util.ArrayList;
import java.util.WeakHashMap;
import kotlinx.collections.immutable.implementations.immutableList.ObjectRef;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.james.mime4j.stream.MimeTokenStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ViewPager2 extends ViewGroup {
    public Dispatcher mAccessibilityProvider;
    public int mCurrentItem;
    public final AnonymousClass1 mCurrentItemDataSetChangeObserver;
    public boolean mCurrentItemDirty;
    public final CompositeOnPageChangeCallback mExternalPageChangeCallbacks;
    public Fragment.AnonymousClass7 mFakeDragger;
    public LinearLayoutManagerImpl mLayoutManager;
    public int mOffscreenPageLimit;
    public CompositeOnPageChangeCallback mPageChangeEventDispatcher;
    public PageTransformerAdapter mPageTransformerAdapter;
    public PagerSnapHelperImpl mPagerSnapHelper;
    public Parcelable mPendingAdapterState;
    public int mPendingCurrentItem;
    public RecyclerViewImpl mRecyclerView;
    public RecyclerView.ItemAnimator mSavedItemAnimator;
    public boolean mSavedItemAnimatorPresent;
    public ScrollEventAdapter mScrollEventAdapter;
    public final Rect mTmpChildRect;
    public final Rect mTmpContainerRect;
    public boolean mUserInputEnabled;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.viewpager2.widget.ViewPager2$1, reason: invalid class name */
    public final class AnonymousClass1 extends RecyclerView.AdapterDataObserver {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass1(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onChanged() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    ViewPager2 viewPager2 = (ViewPager2) obj;
                    viewPager2.mCurrentItemDirty = true;
                    viewPager2.mScrollEventAdapter.mDataSetChangeHappened = true;
                    break;
                default:
                    ((Dispatcher) obj).updatePageAccessibilityActions();
                    break;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i, int i2, Object obj) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeInserted(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeMoved(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeRemoved(int i, int i2) {
            onChanged();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LinearLayoutManagerImpl extends LinearLayoutManager {
        public LinearLayoutManagerImpl(Context context) {
            super(context);
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
        public final void onInitializeAccessibilityNodeInfo(MimeTokenStream mimeTokenStream, RecyclerView.State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(mimeTokenStream, state, accessibilityNodeInfoCompat);
            ViewPager2.this.mAccessibilityProvider.getClass();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public final void onInitializeAccessibilityNodeInfoForItem(MimeTokenStream mimeTokenStream, RecyclerView.State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            int i;
            int i2;
            ViewPager2 viewPager2 = (ViewPager2) ViewPager2.this.mAccessibilityProvider.runningSyncCalls;
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
            accessibilityNodeInfoCompat.setCollectionItemInfo(ObjectRef.obtain(false, i, 1, i2, 1));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public final boolean performAccessibilityAction(MimeTokenStream mimeTokenStream, RecyclerView.State state, int i, Bundle bundle) {
            ViewPager2.this.mAccessibilityProvider.getClass();
            return super.performAccessibilityAction(mimeTokenStream, state, i, bundle);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public final boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            return false;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface PageTransformer {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class PagerSnapHelperImpl extends RecyclerView.OnFlingListener {
        public OrientationHelper$1 mHorizontalHelper;
        public RecyclerViewImpl mRecyclerView;
        public final SnapHelper$1 mScrollListener = new RecyclerView.OnScrollListener() { // from class: androidx.recyclerview.widget.SnapHelper$1
            public boolean mScrolled = false;

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public final void onScrollStateChanged(int i) {
                if (i == 0 && this.mScrolled) {
                    this.mScrolled = false;
                    ViewPager2.PagerSnapHelperImpl.this.snapToTargetExistingView();
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
                if (i == 0 && i2 == 0) {
                    return;
                }
                this.mScrolled = true;
            }
        };
        public OrientationHelper$1 mVerticalHelper;

        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.recyclerview.widget.SnapHelper$1] */
        public PagerSnapHelperImpl() {
        }

        public static int distanceToCenter(View view, RoomOpenDelegate roomOpenDelegate) {
            return ((roomOpenDelegate.getDecoratedMeasurement(view) / 2) + roomOpenDelegate.getDecoratedStart(view)) - ((roomOpenDelegate.getTotalSpace() / 2) + roomOpenDelegate.getStartAfterPadding());
        }

        public static View findCenterView(RecyclerView.LayoutManager layoutManager, RoomOpenDelegate roomOpenDelegate) {
            int childCount = layoutManager.getChildCount();
            View view = null;
            if (childCount == 0) {
                return null;
            }
            int totalSpace = (roomOpenDelegate.getTotalSpace() / 2) + roomOpenDelegate.getStartAfterPadding();
            int i = Integer.MAX_VALUE;
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = layoutManager.getChildAt(i2);
                int abs = Math.abs(((roomOpenDelegate.getDecoratedMeasurement(childAt) / 2) + roomOpenDelegate.getDecoratedStart(childAt)) - totalSpace);
                if (abs < i) {
                    view = childAt;
                    i = abs;
                }
            }
            return view;
        }

        public final int[] calculateDistanceToFinalSnap(RecyclerView.LayoutManager layoutManager, View view) {
            int[] iArr = new int[2];
            if (layoutManager.canScrollHorizontally()) {
                iArr[0] = distanceToCenter(view, getHorizontalHelper(layoutManager));
            } else {
                iArr[0] = 0;
            }
            if (layoutManager.canScrollVertically()) {
                iArr[1] = distanceToCenter(view, getVerticalHelper(layoutManager));
                return iArr;
            }
            iArr[1] = 0;
            return iArr;
        }

        public final View findSnapView(RecyclerView.LayoutManager layoutManager) {
            Object obj = ViewPager2.this.mFakeDragger.this$0;
            if (layoutManager.canScrollVertically()) {
                return findCenterView(layoutManager, getVerticalHelper(layoutManager));
            }
            if (layoutManager.canScrollHorizontally()) {
                return findCenterView(layoutManager, getHorizontalHelper(layoutManager));
            }
            return null;
        }

        public final RoomOpenDelegate getHorizontalHelper(RecyclerView.LayoutManager layoutManager) {
            OrientationHelper$1 orientationHelper$1 = this.mHorizontalHelper;
            if (orientationHelper$1 == null || ((RecyclerView.LayoutManager) orientationHelper$1.identityHash) != layoutManager) {
                this.mHorizontalHelper = new OrientationHelper$1(layoutManager, 0);
            }
            return this.mHorizontalHelper;
        }

        public final RoomOpenDelegate getVerticalHelper(RecyclerView.LayoutManager layoutManager) {
            OrientationHelper$1 orientationHelper$1 = this.mVerticalHelper;
            if (orientationHelper$1 == null || ((RecyclerView.LayoutManager) orientationHelper$1.identityHash) != layoutManager) {
                this.mVerticalHelper = new OrientationHelper$1(layoutManager, 1);
            }
            return this.mVerticalHelper;
        }

        public final void snapToTargetExistingView() {
            RecyclerView.LayoutManager layoutManager;
            View findSnapView;
            RecyclerViewImpl recyclerViewImpl = this.mRecyclerView;
            if (recyclerViewImpl == null || (layoutManager = recyclerViewImpl.getLayoutManager()) == null || (findSnapView = findSnapView(layoutManager)) == null) {
                return;
            }
            int[] calculateDistanceToFinalSnap = calculateDistanceToFinalSnap(layoutManager, findSnapView);
            int i = calculateDistanceToFinalSnap[0];
            if (i == 0 && calculateDistanceToFinalSnap[1] == 0) {
                return;
            }
            this.mRecyclerView.smoothScrollBy$1(i, calculateDistanceToFinalSnap[1], false);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class RecyclerViewImpl extends RecyclerView {
        public RecyclerViewImpl(Context context) {
            super(context);
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
            accessibilityEvent.setSource((ViewPager2) viewPager2.mAccessibilityProvider.runningSyncCalls);
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AbsSavedState.AnonymousClass2(9);
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

    public ViewPager2(Context context) {
        super(context);
        this.mTmpContainerRect = new Rect();
        this.mTmpChildRect = new Rect();
        this.mExternalPageChangeCallbacks = new CompositeOnPageChangeCallback();
        this.mCurrentItemDirty = false;
        this.mCurrentItemDataSetChangeObserver = new AnonymousClass1(0, this);
        this.mPendingCurrentItem = -1;
        this.mSavedItemAnimator = null;
        this.mSavedItemAnimatorPresent = false;
        this.mUserInputEnabled = true;
        this.mOffscreenPageLimit = -1;
        initialize(context, null);
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
        RecyclerViewImpl recyclerViewImpl = this.mRecyclerView;
        if (getOrientation() == 0) {
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

    public final void initialize(Context context, AttributeSet attributeSet) {
        this.mAccessibilityProvider = new Dispatcher(this);
        RecyclerViewImpl recyclerViewImpl = new RecyclerViewImpl(context);
        this.mRecyclerView = recyclerViewImpl;
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        recyclerViewImpl.setId(View.generateViewId());
        this.mRecyclerView.setDescendantFocusability(131072);
        LinearLayoutManagerImpl linearLayoutManagerImpl = new LinearLayoutManagerImpl(context);
        this.mLayoutManager = linearLayoutManagerImpl;
        this.mRecyclerView.setLayoutManager(linearLayoutManagerImpl);
        final int i = 1;
        this.mRecyclerView.setScrollingTouchSlop(1);
        int[] iArr = R$styleable.ViewPager2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, obtainStyledAttributes, 0, 0);
        final int i2 = 0;
        try {
            setOrientation(obtainStyledAttributes.getInt(0, 0));
            obtainStyledAttributes.recycle();
            this.mRecyclerView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            this.mRecyclerView.addOnChildAttachStateChangeListener(new AnonymousClass4());
            ScrollEventAdapter scrollEventAdapter = new ScrollEventAdapter(this);
            this.mScrollEventAdapter = scrollEventAdapter;
            this.mFakeDragger = new Fragment.AnonymousClass7(scrollEventAdapter);
            PagerSnapHelperImpl pagerSnapHelperImpl = new PagerSnapHelperImpl();
            this.mPagerSnapHelper = pagerSnapHelperImpl;
            RecyclerViewImpl recyclerViewImpl2 = this.mRecyclerView;
            RecyclerViewImpl recyclerViewImpl3 = pagerSnapHelperImpl.mRecyclerView;
            if (recyclerViewImpl3 != recyclerViewImpl2) {
                SnapHelper$1 snapHelper$1 = pagerSnapHelperImpl.mScrollListener;
                if (recyclerViewImpl3 != null) {
                    ArrayList arrayList = recyclerViewImpl3.mScrollListeners;
                    if (arrayList != null) {
                        arrayList.remove(snapHelper$1);
                    }
                    pagerSnapHelperImpl.mRecyclerView.setOnFlingListener(null);
                }
                pagerSnapHelperImpl.mRecyclerView = recyclerViewImpl2;
                if (recyclerViewImpl2 != null) {
                    if (recyclerViewImpl2.getOnFlingListener() != null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("An instance of OnFlingListener already set.");
                        return;
                    }
                    pagerSnapHelperImpl.mRecyclerView.addOnScrollListener(snapHelper$1);
                    pagerSnapHelperImpl.mRecyclerView.setOnFlingListener(pagerSnapHelperImpl);
                    new Scroller(pagerSnapHelperImpl.mRecyclerView.getContext(), new DecelerateInterpolator());
                    pagerSnapHelperImpl.snapToTargetExistingView();
                }
            }
            this.mRecyclerView.addOnScrollListener(this.mScrollEventAdapter);
            CompositeOnPageChangeCallback compositeOnPageChangeCallback = new CompositeOnPageChangeCallback();
            this.mPageChangeEventDispatcher = compositeOnPageChangeCallback;
            this.mScrollEventAdapter.mCallback = compositeOnPageChangeCallback;
            OnPageChangeCallback onPageChangeCallback = new OnPageChangeCallback(this) { // from class: androidx.viewpager2.widget.ViewPager2.2
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
            OnPageChangeCallback onPageChangeCallback2 = new OnPageChangeCallback(this) { // from class: androidx.viewpager2.widget.ViewPager2.2
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
            ((ArrayList) compositeOnPageChangeCallback.mCallbacks).add(onPageChangeCallback);
            ((ArrayList) this.mPageChangeEventDispatcher.mCallbacks).add(onPageChangeCallback2);
            Dispatcher dispatcher = this.mAccessibilityProvider;
            RecyclerViewImpl recyclerViewImpl4 = this.mRecyclerView;
            dispatcher.getClass();
            recyclerViewImpl4.setImportantForAccessibility(2);
            dispatcher.runningAsyncCalls = new AnonymousClass1(i, dispatcher);
            ViewPager2 viewPager2 = (ViewPager2) dispatcher.runningSyncCalls;
            if (viewPager2.getImportantForAccessibility() == 0) {
                viewPager2.setImportantForAccessibility(1);
            }
            ((ArrayList) this.mPageChangeEventDispatcher.mCallbacks).add(this.mExternalPageChangeCallbacks);
            PageTransformerAdapter pageTransformerAdapter = new PageTransformerAdapter(this.mLayoutManager);
            this.mPageTransformerAdapter = pageTransformerAdapter;
            ((ArrayList) this.mPageChangeEventDispatcher.mCallbacks).add(pageTransformerAdapter);
            RecyclerViewImpl recyclerViewImpl5 = this.mRecyclerView;
            attachViewToParent(recyclerViewImpl5, 0, recyclerViewImpl5.getLayoutParams());
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final boolean isRtl() {
        return this.mLayoutManager.mRecyclerView.getLayoutDirection() == 1;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i;
        int i2;
        int itemCount;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        ViewPager2 viewPager2 = (ViewPager2) this.mAccessibilityProvider.runningSyncCalls;
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
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, false, 0));
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
        int measuredWidth = this.mRecyclerView.getMeasuredWidth();
        int measuredHeight = this.mRecyclerView.getMeasuredHeight();
        int paddingLeft = getPaddingLeft();
        Rect rect = this.mTmpContainerRect;
        rect.left = paddingLeft;
        rect.right = (i3 - i) - getPaddingRight();
        rect.top = getPaddingTop();
        rect.bottom = (i4 - i2) - getPaddingBottom();
        Rect rect2 = this.mTmpChildRect;
        Gravity.apply(8388659, measuredWidth, measuredHeight, rect, rect2);
        this.mRecyclerView.layout(rect2.left, rect2.top, rect2.right, rect2.bottom);
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
        savedState.mRecyclerViewId = this.mRecyclerView.getId();
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
        RecyclerView.Adapter adapter = this.mRecyclerView.getAdapter();
        if (adapter instanceof MessageViewContainerFragment.MessageViewContainerAdapter) {
            MessageViewContainerFragment.MessageViewContainerAdapter messageViewContainerAdapter = (MessageViewContainerFragment.MessageViewContainerAdapter) adapter;
            messageViewContainerAdapter.getClass();
            LongSparseArray longSparseArray = messageViewContainerAdapter.mFragments;
            int size = longSparseArray.size();
            LongSparseArray longSparseArray2 = messageViewContainerAdapter.mSavedStates;
            Bundle bundle = new Bundle(longSparseArray2.size() + size);
            for (int i2 = 0; i2 < longSparseArray.size(); i2++) {
                long keyAt = longSparseArray.keyAt(i2);
                Fragment fragment = (Fragment) longSparseArray.get(keyAt);
                if (fragment != null && fragment.isAdded()) {
                    String m = CameraDevices$CC.m(keyAt, "f#");
                    FragmentManager fragmentManager = messageViewContainerAdapter.mFragmentManager;
                    fragmentManager.getClass();
                    if (fragment.mFragmentManager != fragmentManager) {
                        fragmentManager.throwException(new IllegalStateException(Modifier.CC.m("Fragment ", fragment, " is not currently in the FragmentManager")));
                        throw null;
                    }
                    bundle.putString(m, fragment.mWho);
                }
            }
            for (int i3 = 0; i3 < longSparseArray2.size(); i3++) {
                long keyAt2 = longSparseArray2.keyAt(i3);
                if (messageViewContainerAdapter.containsItem(keyAt2)) {
                    bundle.putParcelable(CameraDevices$CC.m(keyAt2, "s#"), (Parcelable) longSparseArray2.get(keyAt2));
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
        this.mAccessibilityProvider.getClass();
        if (i != 8192 && i != 4096) {
            return super.performAccessibilityAction(i, bundle);
        }
        Dispatcher dispatcher = this.mAccessibilityProvider;
        dispatcher.getClass();
        ViewPager2 viewPager2 = (ViewPager2) dispatcher.runningSyncCalls;
        if (i != 8192 && i != 4096) {
            throw new IllegalStateException();
        }
        int currentItem = i == 8192 ? viewPager2.getCurrentItem() - 1 : viewPager2.getCurrentItem() + 1;
        if (viewPager2.mUserInputEnabled) {
            viewPager2.setCurrentItemInternal(currentItem, true);
        }
        return true;
    }

    public final void restorePendingState() {
        RecyclerView.Adapter adapter;
        Fragment findActiveFragment;
        if (this.mPendingCurrentItem == -1 || (adapter = getAdapter()) == null) {
            return;
        }
        Parcelable parcelable = this.mPendingAdapterState;
        if (parcelable != null) {
            if (adapter instanceof MessageViewContainerFragment.MessageViewContainerAdapter) {
                MessageViewContainerFragment.MessageViewContainerAdapter messageViewContainerAdapter = (MessageViewContainerFragment.MessageViewContainerAdapter) adapter;
                LongSparseArray longSparseArray = messageViewContainerAdapter.mFragments;
                LongSparseArray longSparseArray2 = messageViewContainerAdapter.mSavedStates;
                if (!longSparseArray2.isEmpty() || !longSparseArray.isEmpty()) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Expected the adapter to be 'fresh' while restoring state.");
                    return;
                }
                Bundle bundle = (Bundle) parcelable;
                if (bundle.getClassLoader() == null) {
                    bundle.setClassLoader(MessageViewContainerFragment.MessageViewContainerAdapter.class.getClassLoader());
                }
                for (String str : bundle.keySet()) {
                    if (str.startsWith("f#") && str.length() > 2) {
                        long parseLong = Long.parseLong(str.substring(2));
                        FragmentManager fragmentManager = messageViewContainerAdapter.mFragmentManager;
                        fragmentManager.getClass();
                        String string = bundle.getString(str);
                        if (string == null) {
                            findActiveFragment = null;
                        } else {
                            findActiveFragment = fragmentManager.mFragmentStore.findActiveFragment(string);
                            if (findActiveFragment == null) {
                                fragmentManager.throwException(new IllegalStateException(ImageAnalysis$$ExternalSyntheticLambda3.m("Fragment no longer exists for key ", str, ": unique id ", string)));
                                throw null;
                            }
                        }
                        longSparseArray.put(parseLong, findActiveFragment);
                    } else {
                        if (!str.startsWith("s#") || str.length() <= 2) {
                            UriKt$$ExternalSyntheticBUOutline0.m("Unexpected key in savedState: ".concat(str));
                            return;
                        }
                        long parseLong2 = Long.parseLong(str.substring(2));
                        Fragment.SavedState savedState = (Fragment.SavedState) bundle.getParcelable(str);
                        if (messageViewContainerAdapter.containsItem(parseLong2)) {
                            longSparseArray2.put(parseLong2, savedState);
                        }
                    }
                }
                if (!longSparseArray.isEmpty()) {
                    messageViewContainerAdapter.mHasStaleFragments = true;
                    messageViewContainerAdapter.mIsInGracePeriod = true;
                    messageViewContainerAdapter.gcFragments();
                    Handler handler = new Handler(Looper.getMainLooper());
                    Fragment.AnonymousClass1 anonymousClass1 = new Fragment.AnonymousClass1(25, messageViewContainerAdapter);
                    messageViewContainerAdapter.mLifecycle.addObserver(new DefaultLifecycleObserverAdapter(5, handler, anonymousClass1));
                    handler.postDelayed(anonymousClass1, 10000L);
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
        RecyclerView.Adapter adapter2 = this.mRecyclerView.getAdapter();
        Dispatcher dispatcher = this.mAccessibilityProvider;
        if (adapter2 != null) {
            adapter2.mObservable.unregisterObserver((AnonymousClass1) dispatcher.runningAsyncCalls);
        } else {
            dispatcher.getClass();
        }
        AnonymousClass1 anonymousClass1 = this.mCurrentItemDataSetChangeObserver;
        if (adapter2 != null) {
            adapter2.mObservable.unregisterObserver(anonymousClass1);
        }
        this.mRecyclerView.setAdapter(adapter);
        this.mCurrentItem = 0;
        restorePendingState();
        Dispatcher dispatcher2 = this.mAccessibilityProvider;
        dispatcher2.updatePageAccessibilityActions();
        if (adapter != null) {
            adapter.mObservable.registerObserver((AnonymousClass1) dispatcher2.runningAsyncCalls);
        }
        if (adapter != null) {
            adapter.mObservable.registerObserver(anonymousClass1);
        }
    }

    public final void setCurrentItem(int i, boolean z) {
        Object obj = this.mFakeDragger.this$0;
        setCurrentItemInternal(i, z);
    }

    public final void setCurrentItemInternal(int i, boolean z) {
        CompositeOnPageChangeCallback compositeOnPageChangeCallback;
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
        if (min == i2 && this.mScrollEventAdapter.mScrollState == 0) {
            return;
        }
        if (min == i2 && z) {
            return;
        }
        double d = i2;
        this.mCurrentItem = min;
        this.mAccessibilityProvider.updatePageAccessibilityActions();
        ScrollEventAdapter scrollEventAdapter = this.mScrollEventAdapter;
        if (scrollEventAdapter.mScrollState != 0) {
            scrollEventAdapter.updateScrollEventValues();
            ScrollEventAdapter.ScrollEventValues scrollEventValues = scrollEventAdapter.mScrollValues;
            d = scrollEventValues.mPosition + scrollEventValues.mOffset;
        }
        ScrollEventAdapter scrollEventAdapter2 = this.mScrollEventAdapter;
        scrollEventAdapter2.getClass();
        scrollEventAdapter2.mAdapterState = z ? 2 : 3;
        boolean z2 = scrollEventAdapter2.mTarget != min;
        scrollEventAdapter2.mTarget = min;
        scrollEventAdapter2.dispatchStateChanged(2);
        if (z2 && (compositeOnPageChangeCallback = scrollEventAdapter2.mCallback) != null) {
            compositeOnPageChangeCallback.onPageSelected(min);
        }
        if (!z) {
            this.mRecyclerView.scrollToPosition(min);
            return;
        }
        double d2 = min;
        double abs = Math.abs(d2 - d);
        RecyclerViewImpl recyclerViewImpl = this.mRecyclerView;
        if (abs <= 3.0d) {
            recyclerViewImpl.smoothScrollToPosition(min);
            return;
        }
        recyclerViewImpl.scrollToPosition(d2 > d ? min - 3 : min + 3);
        RecyclerViewImpl recyclerViewImpl2 = this.mRecyclerView;
        recyclerViewImpl2.post(new CallbackWrapper$2(min, recyclerViewImpl2));
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        super.setLayoutDirection(i);
        this.mAccessibilityProvider.updatePageAccessibilityActions();
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 1 && i != -1) {
            UriKt$$ExternalSyntheticBUOutline0.m("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
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
        PageTransformerAdapter pageTransformerAdapter = this.mPageTransformerAdapter;
        if (pageTransformer == pageTransformerAdapter.mPageTransformer) {
            return;
        }
        pageTransformerAdapter.mPageTransformer = pageTransformer;
        if (pageTransformer == null) {
            return;
        }
        ScrollEventAdapter scrollEventAdapter = this.mScrollEventAdapter;
        scrollEventAdapter.updateScrollEventValues();
        ScrollEventAdapter.ScrollEventValues scrollEventValues = scrollEventAdapter.mScrollValues;
        double d = scrollEventValues.mPosition + scrollEventValues.mOffset;
        int i = (int) d;
        float f = (float) (d - i);
        this.mPageTransformerAdapter.onPageScrolled(i, f, Math.round(getPageSize() * f));
    }

    public void setUserInputEnabled(boolean z) {
        this.mUserInputEnabled = z;
        this.mAccessibilityProvider.updatePageAccessibilityActions();
    }

    public final void updateCurrentItem() {
        PagerSnapHelperImpl pagerSnapHelperImpl = this.mPagerSnapHelper;
        if (pagerSnapHelperImpl == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Design assumption violated.");
            return;
        }
        View findSnapView = pagerSnapHelperImpl.findSnapView(this.mLayoutManager);
        if (findSnapView == null) {
            return;
        }
        this.mLayoutManager.getClass();
        int position = RecyclerView.LayoutManager.getPosition(findSnapView);
        if (position != this.mCurrentItem && getScrollState() == 0) {
            this.mPageChangeEventDispatcher.onPageSelected(position);
        }
        this.mCurrentItemDirty = false;
    }

    public void setCurrentItem(int i) {
        setCurrentItem(i, true);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.viewpager2.widget.ViewPager2$4, reason: invalid class name */
    public final class AnonymousClass4 implements RecyclerView.OnChildAttachStateChangeListener {
        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public final void onChildViewAttachedToWindow(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            if (((ViewGroup.MarginLayoutParams) layoutParams).width == -1 && ((ViewGroup.MarginLayoutParams) layoutParams).height == -1) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Pages must fill the whole ViewPager2 (use match_parent)");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public final void onChildViewDetachedFromWindow(View view) {
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class OnPageChangeCallback {
        public abstract void onPageSelected(int i);

        public void onPageScrollStateChanged(int i) {
        }

        public void onPageScrolled(int i, float f, int i2) {
        }
    }

    public ViewPager2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTmpContainerRect = new Rect();
        this.mTmpChildRect = new Rect();
        this.mExternalPageChangeCallbacks = new CompositeOnPageChangeCallback();
        this.mCurrentItemDirty = false;
        this.mCurrentItemDataSetChangeObserver = new AnonymousClass1(0, this);
        this.mPendingCurrentItem = -1;
        this.mSavedItemAnimator = null;
        this.mSavedItemAnimatorPresent = false;
        this.mUserInputEnabled = true;
        this.mOffscreenPageLimit = -1;
        initialize(context, attributeSet);
    }

    public ViewPager2(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTmpContainerRect = new Rect();
        this.mTmpChildRect = new Rect();
        this.mExternalPageChangeCallbacks = new CompositeOnPageChangeCallback();
        this.mCurrentItemDirty = false;
        this.mCurrentItemDataSetChangeObserver = new AnonymousClass1(0, this);
        this.mPendingCurrentItem = -1;
        this.mSavedItemAnimator = null;
        this.mSavedItemAnimatorPresent = false;
        this.mUserInputEnabled = true;
        this.mOffscreenPageLimit = -1;
        initialize(context, attributeSet);
    }

    public ViewPager2(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mTmpContainerRect = new Rect();
        this.mTmpChildRect = new Rect();
        this.mExternalPageChangeCallbacks = new CompositeOnPageChangeCallback();
        this.mCurrentItemDirty = false;
        this.mCurrentItemDataSetChangeObserver = new AnonymousClass1(0, this);
        this.mPendingCurrentItem = -1;
        this.mSavedItemAnimator = null;
        this.mSavedItemAnimatorPresent = false;
        this.mUserInputEnabled = true;
        this.mOffscreenPageLimit = -1;
        initialize(context, attributeSet);
    }
}
