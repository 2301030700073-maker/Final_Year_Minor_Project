package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.customview.view.AbsSavedState;
import b.e.i.f;
import b.e.i.q;
import b.m.b.AbstractC0168b0;
import b.m.b.AbstractC0176f0;
import b.m.b.AbstractC0182i0;
import b.m.b.AbstractC0186k0;
import b.m.b.C0165a;
import b.m.b.C0166a0;
import b.m.b.C0167b;
import b.m.b.C0169c;
import b.m.b.C0171d;
import b.m.b.C0178g0;
import b.m.b.C0191o;
import b.m.b.C0196u;
import b.m.b.F;
import b.m.b.InterfaceC0180h0;
import b.m.b.InterfaceC0184j0;
import b.m.b.J0;
import b.m.b.K;
import b.m.b.K0;
import b.m.b.L;
import b.m.b.L0;
import b.m.b.M;
import b.m.b.N;
import b.m.b.O;
import b.m.b.P;
import b.m.b.Q;
import b.m.b.RunnableC0198w;
import b.m.b.U;
import b.m.b.V;
import b.m.b.X;
import b.m.b.Y;
import b.m.b.Z;
import b.m.b.m0;
import b.m.b.n0;
import b.m.b.o0;
import b.m.b.p0;
import b.m.b.q0;
import b.m.b.t0;
import b.m.b.u0;
import b.m.b.v0;
import b.m.b.w0;
import b.m.b.y0;
import c.a.c.a.a;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.system.QuickStepContract;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup {
    public static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC = true;
    public static final boolean ALLOW_THREAD_GAP_WORK = true;
    public static final boolean DEBUG = false;
    public static final int DEFAULT_ORIENTATION = 1;
    public static final boolean DISPATCH_TEMP_DETACH = false;
    public static final boolean FORCE_ABS_FOCUS_SEARCH_DIRECTION = false;
    public static final boolean FORCE_INVALIDATE_DISPLAY_LIST = false;
    public static final long FOREVER_NS = Long.MAX_VALUE;
    public static final int HORIZONTAL = 0;
    public static final boolean IGNORE_DETACHED_FOCUSED_CHILD = false;
    public static final int INVALID_POINTER = -1;
    public static final int INVALID_TYPE = -1;
    public static final Class[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
    public static final int MAX_SCROLL_DURATION = 2000;
    public static final int[] NESTED_SCROLLING_ATTRS = {R.attr.nestedScrollingEnabled};
    public static final long NO_ID = -1;
    public static final int NO_POSITION = -1;
    public static final boolean POST_UPDATES_ON_ANIMATION = true;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    public static final String TAG = "RecyclerView";
    public static final int TOUCH_SLOP_DEFAULT = 0;
    public static final int TOUCH_SLOP_PAGING = 1;
    public static final String TRACE_BIND_VIEW_TAG = "RV OnBindView";
    public static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
    public static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
    public static final String TRACE_NESTED_PREFETCH_TAG = "RV Nested Prefetch";
    public static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
    public static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
    public static final String TRACE_PREFETCH_TAG = "RV Prefetch";
    public static final String TRACE_SCROLL_TAG = "RV Scroll";
    public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
    public static final boolean VERBOSE_TRACING = false;
    public static final int VERTICAL = 1;
    public static final Interpolator sQuinticInterpolator;
    public y0 mAccessibilityDelegate;
    public final AccessibilityManager mAccessibilityManager;
    public Q mAdapter;
    public C0167b mAdapterHelper;
    public boolean mAdapterUpdateDuringMeasure;
    public EdgeEffect mBottomGlow;
    public U mChildDrawingOrderCallback;
    public C0171d mChildHelper;
    public boolean mClipToPadding;
    public boolean mDataSetHasChangedAfterLayout;
    public boolean mDispatchItemsChangedEvent;
    public int mDispatchScrollCounter;
    public int mEatenAccessibilityChangeFlags;
    public V mEdgeEffectFactory;
    public boolean mEnableFastScroller;
    public boolean mFirstLayoutComplete;
    public RunnableC0198w mGapWorker;
    public boolean mHasFixedSize;
    public boolean mIgnoreMotionEventTillDown;
    public int mInitialTouchX;
    public int mInitialTouchY;
    public int mInterceptRequestLayoutDepth;
    public InterfaceC0184j0 mInterceptingOnItemTouchListener;
    public boolean mIsAttached;
    public Z mItemAnimator;
    public X mItemAnimatorListener;
    public Runnable mItemAnimatorRunner;
    public final ArrayList mItemDecorations;
    public boolean mItemsAddedOrRemoved;
    public boolean mItemsChanged;
    public int mLastTouchX;
    public int mLastTouchY;
    public AbstractC0176f0 mLayout;
    public int mLayoutOrScrollCounter;
    public boolean mLayoutSuppressed;
    public boolean mLayoutWasDefered;
    public EdgeEffect mLeftGlow;
    public final int mMaxFlingVelocity;
    public final int mMinFlingVelocity;
    public final int[] mMinMaxLayoutPositions;
    public final int[] mNestedOffsets;
    public final p0 mObserver;
    public List mOnChildAttachStateListeners;
    public AbstractC0182i0 mOnFlingListener;
    public final ArrayList mOnItemTouchListeners;
    public final List mPendingAccessibilityImportanceChange;
    public SavedState mPendingSavedState;
    public boolean mPostedAnimatorRunner;
    public C0196u mPrefetchRegistry;
    public boolean mPreserveFocusAfterLayout;
    public final n0 mRecycler;
    public o0 mRecyclerListener;
    public final int[] mReusableIntPair;
    public EdgeEffect mRightGlow;
    public float mScaledHorizontalScrollFactor;
    public float mScaledVerticalScrollFactor;
    public AbstractC0186k0 mScrollListener;
    public List mScrollListeners;
    public final int[] mScrollOffset;
    public int mScrollPointerId;
    public int mScrollState;
    public f mScrollingChildHelper;
    public final t0 mState;
    public final Rect mTempRect;
    public final Rect mTempRect2;
    public final RectF mTempRectF;
    public EdgeEffect mTopGlow;
    public int mTouchSlop;
    public final Runnable mUpdateChildViewsRunnable;
    public VelocityTracker mVelocityTracker;
    public final v0 mViewFlinger;
    public final K0 mViewInfoProcessCallback;
    public final L0 mViewInfoStore;

    static {
        Class cls = Integer.TYPE;
        LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[]{Context.class, AttributeSet.class, cls, cls};
        sQuinticInterpolator = new M();
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    private void addAnimatingView(w0 w0Var) {
        View view = w0Var.itemView;
        boolean z = view.getParent() == this;
        this.mRecycler.l(getChildViewHolder(view));
        if (w0Var.isTmpDetached()) {
            this.mChildHelper.b(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z) {
            this.mChildHelper.a(view, -1, true);
            return;
        }
        C0171d c0171d = this.mChildHelper;
        int indexOfChild = c0171d.f1139a.f1119a.indexOfChild(view);
        if (indexOfChild >= 0) {
            c0171d.f1140b.h(indexOfChild);
            c0171d.i(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    private void animateChange(w0 w0Var, w0 w0Var2, Y y, Y y2, boolean z, boolean z2) {
        w0Var.setIsRecyclable(false);
        if (z) {
            addAnimatingView(w0Var);
        }
        if (w0Var != w0Var2) {
            if (z2) {
                addAnimatingView(w0Var2);
            }
            w0Var.mShadowedHolder = w0Var2;
            addAnimatingView(w0Var);
            this.mRecycler.l(w0Var);
            w0Var2.setIsRecyclable(false);
            w0Var2.mShadowingHolder = w0Var;
        }
        if (this.mItemAnimator.a(w0Var, w0Var2, y, y2)) {
            postAnimationRunner();
        }
    }

    private void cancelScroll() {
        resetScroll();
        setScrollState(0);
    }

    public static void clearNestedRecyclerViewIfNotNested(w0 w0Var) {
        WeakReference weakReference = w0Var.mNestedRecyclerView;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            while (view != null) {
                if (view == w0Var.itemView) {
                    return;
                }
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            w0Var.mNestedRecyclerView = null;
        }
    }

    private void createLayoutManager(Context context, String str, AttributeSet attributeSet, int i, int i2) {
        Constructor constructor;
        if (str != null) {
            String trim = str.trim();
            if (trim.isEmpty()) {
                return;
            }
            String fullClassName = getFullClassName(context, trim);
            try {
                Class<? extends U> asSubclass = Class.forName(fullClassName, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(AbstractC0176f0.class);
                Object[] objArr = null;
                try {
                    constructor = asSubclass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
                    objArr = new Object[]{context, attributeSet, Integer.valueOf(i), Integer.valueOf(i2)};
                } catch (NoSuchMethodException e) {
                    try {
                        constructor = asSubclass.getConstructor(new Class[0]);
                    } catch (NoSuchMethodException e2) {
                        e2.initCause(e);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + fullClassName, e2);
                    }
                }
                constructor.setAccessible(true);
                setLayoutManager((AbstractC0176f0) constructor.newInstance(objArr));
            } catch (ClassCastException e3) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + fullClassName, e3);
            } catch (ClassNotFoundException e4) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + fullClassName, e4);
            } catch (IllegalAccessException e5) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + fullClassName, e5);
            } catch (InstantiationException e6) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + fullClassName, e6);
            } catch (InvocationTargetException e7) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + fullClassName, e7);
            }
        }
    }

    private boolean didChildRangeChange(int i, int i2) {
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        int[] iArr = this.mMinMaxLayoutPositions;
        return (iArr[0] == i && iArr[1] == i2) ? false : true;
    }

    private void dispatchContentChangedIfNecessary() {
        int i = this.mEatenAccessibilityChangeFlags;
        this.mEatenAccessibilityChangeFlags = 0;
        if (i == 0 || !isAccessibilityEnabled()) {
            return;
        }
        AccessibilityEvent obtain = AccessibilityEvent.obtain();
        obtain.setEventType(2048);
        obtain.setContentChangeTypes(i);
        sendAccessibilityEventUnchecked(obtain);
    }

    private void dispatchLayoutStep1() {
        this.mState.a(1);
        fillRemainingScrollValues(this.mState);
        this.mState.i = false;
        startInterceptRequestLayout();
        L0 l0 = this.mViewInfoStore;
        l0.mLayoutHolderMap.clear();
        l0.mOldChangedHolders.a();
        onEnterLayoutOrScroll();
        processAdapterUpdatesAndSetAnimationFlags();
        saveFocusInfo();
        t0 t0Var = this.mState;
        t0Var.h = t0Var.j && this.mItemsChanged;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        t0 t0Var2 = this.mState;
        t0Var2.g = t0Var2.k;
        t0Var2.e = this.mAdapter.getItemCount();
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        if (this.mState.j) {
            int e = this.mChildHelper.e();
            for (int i = 0; i < e; i++) {
                w0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i));
                if (!childViewHolderInt.shouldIgnore() && (!childViewHolderInt.isInvalid() || this.mAdapter.mHasStableIds)) {
                    Z z = this.mItemAnimator;
                    Z.b(childViewHolderInt);
                    childViewHolderInt.getUnmodifiedPayloads();
                    this.mViewInfoStore.c(childViewHolderInt, z.i(childViewHolderInt));
                    if (this.mState.h && childViewHolderInt.isUpdated() && !childViewHolderInt.isRemoved() && !childViewHolderInt.shouldIgnore() && !childViewHolderInt.isInvalid()) {
                        this.mViewInfoStore.mOldChangedHolders.e(getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                    }
                }
            }
        }
        if (this.mState.k) {
            saveOldPositions();
            t0 t0Var3 = this.mState;
            boolean z2 = t0Var3.f;
            t0Var3.f = false;
            this.mLayout.onLayoutChildren(this.mRecycler, t0Var3);
            this.mState.f = z2;
            for (int i2 = 0; i2 < this.mChildHelper.e(); i2++) {
                w0 childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.d(i2));
                if (!childViewHolderInt2.shouldIgnore()) {
                    J0 j0 = (J0) this.mViewInfoStore.mLayoutHolderMap.getOrDefault(childViewHolderInt2, null);
                    if (!((j0 == null || (j0.f1113a & 4) == 0) ? false : true)) {
                        Z.b(childViewHolderInt2);
                        boolean hasAnyOfTheFlags = childViewHolderInt2.hasAnyOfTheFlags(QuickStepContract.SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED);
                        Z z3 = this.mItemAnimator;
                        childViewHolderInt2.getUnmodifiedPayloads();
                        Y i3 = z3.i(childViewHolderInt2);
                        if (hasAnyOfTheFlags) {
                            recordAnimationInfoIfBouncedHiddenView(childViewHolderInt2, i3);
                        } else {
                            L0 l02 = this.mViewInfoStore;
                            J0 j02 = (J0) l02.mLayoutHolderMap.getOrDefault(childViewHolderInt2, null);
                            if (j02 == null) {
                                j02 = J0.a();
                                l02.mLayoutHolderMap.put(childViewHolderInt2, j02);
                            }
                            j02.f1113a |= 2;
                            j02.f1114b = i3;
                        }
                    }
                }
            }
            clearOldPositions();
        } else {
            clearOldPositions();
        }
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mState.f1208d = 2;
    }

    private void dispatchLayoutStep2() {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.a(6);
        this.mAdapterHelper.c();
        this.mState.e = this.mAdapter.getItemCount();
        this.mState.f1207c = 0;
        if (this.mPendingSavedState != null) {
            Q q = this.mAdapter;
            int ordinal = q.mStateRestorationPolicy.ordinal();
            if (ordinal == 1 ? q.getItemCount() > 0 : ordinal != 2) {
                Parcelable parcelable = this.mPendingSavedState.f192c;
                if (parcelable != null) {
                    this.mLayout.onRestoreInstanceState(parcelable);
                }
                this.mPendingSavedState = null;
            }
        }
        t0 t0Var = this.mState;
        t0Var.g = false;
        this.mLayout.onLayoutChildren(this.mRecycler, t0Var);
        t0 t0Var2 = this.mState;
        t0Var2.f = false;
        t0Var2.j = t0Var2.j && this.mItemAnimator != null;
        this.mState.f1208d = 4;
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
    }

    private void dispatchLayoutStep3() {
        boolean j;
        this.mState.a(4);
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        t0 t0Var = this.mState;
        t0Var.f1208d = 1;
        if (t0Var.j) {
            for (int e = this.mChildHelper.e() - 1; e >= 0; e--) {
                w0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(e));
                if (!childViewHolderInt.shouldIgnore()) {
                    long changedHolderKey = getChangedHolderKey(childViewHolderInt);
                    Objects.requireNonNull(this.mItemAnimator);
                    Y y = new Y();
                    View view = childViewHolderInt.itemView;
                    y.f1121a = view.getLeft();
                    y.f1122b = view.getTop();
                    view.getRight();
                    view.getBottom();
                    w0 w0Var = (w0) this.mViewInfoStore.mOldChangedHolders.d(changedHolderKey, null);
                    if (w0Var == null || w0Var.shouldIgnore()) {
                        this.mViewInfoStore.b(childViewHolderInt, y);
                    } else {
                        boolean d2 = this.mViewInfoStore.d(w0Var);
                        boolean d3 = this.mViewInfoStore.d(childViewHolderInt);
                        if (d2 && w0Var == childViewHolderInt) {
                            this.mViewInfoStore.b(childViewHolderInt, y);
                        } else {
                            Y e2 = this.mViewInfoStore.e(w0Var, 4);
                            this.mViewInfoStore.b(childViewHolderInt, y);
                            Y e3 = this.mViewInfoStore.e(childViewHolderInt, 8);
                            if (e2 == null) {
                                handleMissingPreInfoForChangeError(changedHolderKey, childViewHolderInt, w0Var);
                            } else {
                                animateChange(w0Var, childViewHolderInt, e2, e3, d2, d3);
                            }
                        }
                    }
                }
            }
            L0 l0 = this.mViewInfoStore;
            K0 k0 = this.mViewInfoProcessCallback;
            int i = l0.mLayoutHolderMap.f656c;
            while (true) {
                i--;
                if (i < 0) {
                    break;
                }
                w0 w0Var2 = (w0) l0.mLayoutHolderMap.g(i);
                J0 j0 = (J0) l0.mLayoutHolderMap.h(i);
                int i2 = j0.f1113a;
                if ((i2 & 3) == 3) {
                    RecyclerView recyclerView = ((N) k0).f1118a;
                    recyclerView.mLayout.removeAndRecycleView(w0Var2.itemView, recyclerView.mRecycler);
                } else if ((i2 & 1) != 0) {
                    Y y2 = j0.f1114b;
                    if (y2 == null) {
                        RecyclerView recyclerView2 = ((N) k0).f1118a;
                        recyclerView2.mLayout.removeAndRecycleView(w0Var2.itemView, recyclerView2.mRecycler);
                    } else {
                        Y y3 = j0.f1115c;
                        N n = (N) k0;
                        n.f1118a.mRecycler.l(w0Var2);
                        n.f1118a.animateDisappearance(w0Var2, y2, y3);
                    }
                } else if ((i2 & 14) == 14) {
                    ((N) k0).f1118a.animateAppearance(w0Var2, j0.f1114b, j0.f1115c);
                } else if ((i2 & 12) == 12) {
                    Y y4 = j0.f1114b;
                    Y y5 = j0.f1115c;
                    N n2 = (N) k0;
                    Objects.requireNonNull(n2);
                    w0Var2.setIsRecyclable(false);
                    RecyclerView recyclerView3 = n2.f1118a;
                    if (!recyclerView3.mDataSetHasChangedAfterLayout) {
                        C0191o c0191o = (C0191o) recyclerView3.mItemAnimator;
                        Objects.requireNonNull(c0191o);
                        if (y4.f1121a == y5.f1121a && y4.f1122b == y5.f1122b) {
                            c0191o.d(w0Var2);
                            j = false;
                        } else {
                            j = c0191o.j(w0Var2, y4.f1121a, y4.f1122b, y5.f1121a, y5.f1122b);
                        }
                        if (j) {
                            n2.f1118a.postAnimationRunner();
                        }
                    } else if (recyclerView3.mItemAnimator.a(w0Var2, w0Var2, y4, y5)) {
                        n2.f1118a.postAnimationRunner();
                    }
                } else if ((i2 & 4) != 0) {
                    Y y6 = j0.f1114b;
                    N n3 = (N) k0;
                    n3.f1118a.mRecycler.l(w0Var2);
                    n3.f1118a.animateDisappearance(w0Var2, y6, null);
                } else if ((i2 & 8) != 0) {
                    ((N) k0).f1118a.animateAppearance(w0Var2, j0.f1114b, j0.f1115c);
                }
                J0.b(j0);
            }
        }
        this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        t0 t0Var2 = this.mState;
        t0Var2.f1206b = t0Var2.e;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        t0Var2.j = false;
        t0Var2.k = false;
        this.mLayout.mRequestedSimpleAnimations = false;
        ArrayList arrayList = this.mRecycler.f1192b;
        if (arrayList != null) {
            arrayList.clear();
        }
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0.mPrefetchMaxObservedInInitialPrefetch) {
            abstractC0176f0.mPrefetchMaxCountObserved = 0;
            abstractC0176f0.mPrefetchMaxObservedInInitialPrefetch = false;
            this.mRecycler.m();
        }
        this.mLayout.onLayoutCompleted(this.mState);
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        L0 l02 = this.mViewInfoStore;
        l02.mLayoutHolderMap.clear();
        l02.mOldChangedHolders.a();
        int[] iArr = this.mMinMaxLayoutPositions;
        if (didChildRangeChange(iArr[0], iArr[1])) {
            dispatchOnScrolled(0, 0);
        }
        recoverFocusFromState();
        resetFocusInfo();
    }

    private boolean dispatchToOnItemTouchListeners(MotionEvent motionEvent) {
        InterfaceC0184j0 interfaceC0184j0 = this.mInterceptingOnItemTouchListener;
        if (interfaceC0184j0 == null) {
            if (motionEvent.getAction() == 0) {
                return false;
            }
            return findInterceptingOnItemTouchListener(motionEvent);
        }
        interfaceC0184j0.onTouchEvent(this, motionEvent);
        int action = motionEvent.getAction();
        if (action == 3 || action == 1) {
            this.mInterceptingOnItemTouchListener = null;
        }
        return true;
    }

    private boolean findInterceptingOnItemTouchListener(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.mOnItemTouchListeners.size();
        for (int i = 0; i < size; i++) {
            InterfaceC0184j0 interfaceC0184j0 = (InterfaceC0184j0) this.mOnItemTouchListeners.get(i);
            if (interfaceC0184j0.onInterceptTouchEvent(this, motionEvent) && action != 3) {
                this.mInterceptingOnItemTouchListener = interfaceC0184j0;
                return true;
            }
        }
        return false;
    }

    private void findMinMaxChildLayoutPositions(int[] iArr) {
        int e = this.mChildHelper.e();
        if (e == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i = Integer.MAX_VALUE;
        int i2 = UNDEFINED_DURATION;
        for (int i3 = 0; i3 < e; i3++) {
            w0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i3));
            if (!childViewHolderInt.shouldIgnore()) {
                int layoutPosition = childViewHolderInt.getLayoutPosition();
                if (layoutPosition < i) {
                    i = layoutPosition;
                }
                if (layoutPosition > i2) {
                    i2 = layoutPosition;
                }
            }
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    public static RecyclerView findNestedRecyclerView(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView findNestedRecyclerView = findNestedRecyclerView(viewGroup.getChildAt(i));
            if (findNestedRecyclerView != null) {
                return findNestedRecyclerView;
            }
        }
        return null;
    }

    private View findNextViewToFocus() {
        w0 findViewHolderForAdapterPosition;
        int i = this.mState.l;
        if (i == -1) {
            i = 0;
        }
        int b2 = this.mState.b();
        for (int i2 = i; i2 < b2; i2++) {
            w0 findViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i2);
            if (findViewHolderForAdapterPosition2 == null) {
                break;
            }
            if (findViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                return findViewHolderForAdapterPosition2.itemView;
            }
        }
        int min = Math.min(b2, i);
        do {
            min--;
            if (min < 0 || (findViewHolderForAdapterPosition = findViewHolderForAdapterPosition(min)) == null) {
                return null;
            }
        } while (!findViewHolderForAdapterPosition.itemView.hasFocusable());
        return findViewHolderForAdapterPosition.itemView;
    }

    public static w0 getChildViewHolderInt(View view) {
        if (view == null) {
            return null;
        }
        return ((C0178g0) view.getLayoutParams()).f1153a;
    }

    public static void getDecoratedBoundsWithMarginsInt(View view, Rect rect) {
        C0178g0 c0178g0 = (C0178g0) view.getLayoutParams();
        Rect rect2 = c0178g0.f1154b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) c0178g0).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) c0178g0).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) c0178g0).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) c0178g0).bottomMargin);
    }

    private int getDeepestFocusedViewWithId(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id = view.getId();
            }
        }
        return id;
    }

    private String getFullClassName(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        }
        if (str.contains(".")) {
            return str;
        }
        return RecyclerView.class.getPackage().getName() + '.' + str;
    }

    private f getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new f(this);
        }
        return this.mScrollingChildHelper;
    }

    private void handleMissingPreInfoForChangeError(long j, w0 w0Var, w0 w0Var2) {
        int e = this.mChildHelper.e();
        for (int i = 0; i < e; i++) {
            w0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i));
            if (childViewHolderInt != w0Var && getChangedHolderKey(childViewHolderInt) == j) {
                Q q = this.mAdapter;
                if (q == null || !q.mHasStableIds) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:");
                    sb.append(childViewHolderInt);
                    sb.append(" \n View Holder 2:");
                    sb.append(w0Var);
                    throw new IllegalStateException(a.b(this, sb));
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:");
                sb2.append(childViewHolderInt);
                sb2.append(" \n View Holder 2:");
                sb2.append(w0Var);
                throw new IllegalStateException(a.b(this, sb2));
            }
        }
        Log.e(TAG, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + w0Var2 + " cannot be found but it is necessary for " + w0Var + exceptionLabel());
    }

    private boolean hasUpdatedView() {
        int e = this.mChildHelper.e();
        for (int i = 0; i < e; i++) {
            w0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.isUpdated()) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"InlinedApi"})
    private void initAutofill() {
        if (q.h(this) == 0) {
            setImportantForAutofill(8);
        }
    }

    private void initChildrenHelper() {
        this.mChildHelper = new C0171d(new O(this));
    }

    private boolean isPreferredNextFocus(View view, View view2, int i) {
        int i2;
        if (view2 == null || view2 == this || findContainingItemView(view2) == null) {
            return false;
        }
        if (view == null || findContainingItemView(view) == null) {
            return true;
        }
        this.mTempRect.set(0, 0, view.getWidth(), view.getHeight());
        this.mTempRect2.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        offsetDescendantRectToMyCoords(view2, this.mTempRect2);
        char c2 = 65535;
        int i3 = this.mLayout.getLayoutDirection() == 1 ? -1 : 1;
        Rect rect = this.mTempRect;
        int i4 = rect.left;
        int i5 = this.mTempRect2.left;
        if ((i4 < i5 || rect.right <= i5) && this.mTempRect.right < this.mTempRect2.right) {
            i2 = 1;
        } else {
            Rect rect2 = this.mTempRect;
            int i6 = rect2.right;
            int i7 = this.mTempRect2.right;
            i2 = ((i6 > i7 || rect2.left >= i7) && this.mTempRect.left > this.mTempRect2.left) ? -1 : 0;
        }
        Rect rect3 = this.mTempRect;
        int i8 = rect3.top;
        int i9 = this.mTempRect2.top;
        if ((i8 < i9 || rect3.bottom <= i9) && this.mTempRect.bottom < this.mTempRect2.bottom) {
            c2 = 1;
        } else {
            Rect rect4 = this.mTempRect;
            int i10 = rect4.bottom;
            int i11 = this.mTempRect2.bottom;
            if ((i10 <= i11 && rect4.top < i11) || this.mTempRect.top <= this.mTempRect2.top) {
                c2 = 0;
            }
        }
        if (i == 1) {
            return c2 < 0 || (c2 == 0 && i2 * i3 <= 0);
        }
        if (i == 2) {
            return c2 > 0 || (c2 == 0 && i2 * i3 >= 0);
        }
        if (i == 17) {
            return i2 < 0;
        }
        if (i == 33) {
            return c2 < 0;
        }
        if (i == 66) {
            return i2 > 0;
        }
        if (i == 130) {
            return c2 > 0;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid direction: ");
        sb.append(i);
        throw new IllegalArgumentException(a.b(this, sb));
    }

    private void nestedScrollByInternal(int i, int i2, MotionEvent motionEvent, int i3) {
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 == null) {
            Log.e(TAG, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        boolean canScrollHorizontally = abstractC0176f0.canScrollHorizontally();
        boolean canScrollVertically = this.mLayout.canScrollVertically();
        int i4 = canScrollHorizontally ? 1 : 0;
        if (canScrollVertically) {
            i4 |= 2;
        }
        startNestedScroll(i4, i3);
        if (dispatchNestedPreScroll(canScrollHorizontally ? i : 0, canScrollVertically ? i2 : 0, this.mReusableIntPair, this.mScrollOffset, i3)) {
            int[] iArr2 = this.mReusableIntPair;
            i -= iArr2[0];
            i2 -= iArr2[1];
        }
        scrollByInternal(canScrollHorizontally ? i : 0, canScrollVertically ? i2 : 0, motionEvent, i3);
        if (this.mGapWorker != null && (i != 0 || i2 != 0)) {
            this.mGapWorker.a(this, i, i2);
        }
        stopNestedScroll(i3);
    }

    private void onPointerUp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mScrollPointerId) {
            int i = actionIndex == 0 ? 1 : 0;
            this.mScrollPointerId = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.mLastTouchX = x;
            this.mInitialTouchX = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.mLastTouchY = y;
            this.mInitialTouchY = y;
        }
    }

    private boolean predictiveItemAnimationsEnabled() {
        return this.mItemAnimator != null && this.mLayout.supportsPredictiveItemAnimations();
    }

    private void processAdapterUpdatesAndSetAnimationFlags() {
        boolean z = false;
        if (this.mDataSetHasChangedAfterLayout) {
            C0167b c0167b = this.mAdapterHelper;
            c0167b.l(c0167b.f1133b);
            c0167b.l(c0167b.f1134c);
            c0167b.g = 0;
            if (this.mDispatchItemsChangedEvent) {
                this.mLayout.onItemsChanged(this);
            }
        }
        if (predictiveItemAnimationsEnabled()) {
            this.mAdapterHelper.j();
        } else {
            this.mAdapterHelper.c();
        }
        boolean z2 = this.mItemsAddedOrRemoved || this.mItemsChanged;
        this.mState.j = this.mFirstLayoutComplete && this.mItemAnimator != null && (this.mDataSetHasChangedAfterLayout || z2 || this.mLayout.mRequestedSimpleAnimations) && (!this.mDataSetHasChangedAfterLayout || this.mAdapter.mHasStableIds);
        t0 t0Var = this.mState;
        if (t0Var.j && z2 && !this.mDataSetHasChangedAfterLayout && predictiveItemAnimationsEnabled()) {
            z = true;
        }
        t0Var.k = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void pullGlows(float r7, float r8, float r9, float r10) {
        /*
            r6 = this;
            r0 = 0
            int r1 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            r2 = 1065353216(0x3f800000, float:1.0)
            r3 = 1
            if (r1 >= 0) goto L21
            r6.ensureLeftGlow()
            android.widget.EdgeEffect r1 = r6.mLeftGlow
            float r4 = -r8
            int r5 = r6.getWidth()
            float r5 = (float) r5
            float r4 = r4 / r5
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            float r9 = r2 - r9
            r1.onPull(r4, r9)
        L1f:
            r9 = r3
            goto L3c
        L21:
            int r1 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r1 <= 0) goto L3b
            r6.ensureRightGlow()
            android.widget.EdgeEffect r1 = r6.mRightGlow
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r4 = r8 / r4
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            r1.onPull(r4, r9)
            goto L1f
        L3b:
            r9 = 0
        L3c:
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 >= 0) goto L56
            r6.ensureTopGlow()
            android.widget.EdgeEffect r9 = r6.mTopGlow
            float r1 = -r10
            int r2 = r6.getHeight()
            float r2 = (float) r2
            float r1 = r1 / r2
            int r2 = r6.getWidth()
            float r2 = (float) r2
            float r7 = r7 / r2
            r9.onPull(r1, r7)
            goto L72
        L56:
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 <= 0) goto L71
            r6.ensureBottomGlow()
            android.widget.EdgeEffect r9 = r6.mBottomGlow
            int r1 = r6.getHeight()
            float r1 = (float) r1
            float r1 = r10 / r1
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r7 = r7 / r4
            float r2 = r2 - r7
            r9.onPull(r1, r2)
            goto L72
        L71:
            r3 = r9
        L72:
            if (r3 != 0) goto L7c
            int r7 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r7 != 0) goto L7c
            int r7 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r7 == 0) goto L7f
        L7c:
            b.e.i.q.y(r6)
        L7f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.pullGlows(float, float, float, float):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void recoverFocusFromState() {
        /*
            r6 = this;
            boolean r0 = r6.mPreserveFocusAfterLayout
            if (r0 == 0) goto Lad
            b.m.b.Q r0 = r6.mAdapter
            if (r0 == 0) goto Lad
            boolean r0 = r6.hasFocus()
            if (r0 == 0) goto Lad
            int r0 = r6.getDescendantFocusability()
            r1 = 393216(0x60000, float:5.51013E-40)
            if (r0 == r1) goto Lad
            int r0 = r6.getDescendantFocusability()
            r1 = 131072(0x20000, float:1.83671E-40)
            if (r0 != r1) goto L26
            boolean r0 = r6.isFocused()
            if (r0 == 0) goto L26
            goto Lad
        L26:
            boolean r0 = r6.isFocused()
            if (r0 != 0) goto L55
            android.view.View r0 = r6.getFocusedChild()
            boolean r1 = androidx.recyclerview.widget.RecyclerView.IGNORE_DETACHED_FOCUSED_CHILD
            if (r1 == 0) goto L4c
            android.view.ViewParent r1 = r0.getParent()
            if (r1 == 0) goto L40
            boolean r1 = r0.hasFocus()
            if (r1 != 0) goto L4c
        L40:
            b.m.b.d r0 = r6.mChildHelper
            int r0 = r0.e()
            if (r0 != 0) goto L55
            r6.requestFocus()
            return
        L4c:
            b.m.b.d r1 = r6.mChildHelper
            boolean r0 = r1.k(r0)
            if (r0 != 0) goto L55
            return
        L55:
            b.m.b.t0 r0 = r6.mState
            long r0 = r0.m
            r2 = -1
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            r5 = 0
            if (r4 == 0) goto L6b
            b.m.b.Q r4 = r6.mAdapter
            boolean r4 = r4.mHasStableIds
            if (r4 == 0) goto L6b
            b.m.b.w0 r0 = r6.findViewHolderForItemId(r0)
            goto L6c
        L6b:
            r0 = r5
        L6c:
            if (r0 == 0) goto L86
            b.m.b.d r1 = r6.mChildHelper
            android.view.View r4 = r0.itemView
            java.util.List r1 = r1.f1141c
            boolean r1 = r1.contains(r4)
            if (r1 != 0) goto L86
            android.view.View r1 = r0.itemView
            boolean r1 = r1.hasFocusable()
            if (r1 != 0) goto L83
            goto L86
        L83:
            android.view.View r5 = r0.itemView
            goto L92
        L86:
            b.m.b.d r0 = r6.mChildHelper
            int r0 = r0.e()
            if (r0 <= 0) goto L92
            android.view.View r5 = r6.findNextViewToFocus()
        L92:
            if (r5 == 0) goto Lad
            b.m.b.t0 r6 = r6.mState
            int r6 = r6.n
            long r0 = (long) r6
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto Laa
            android.view.View r6 = r5.findViewById(r6)
            if (r6 == 0) goto Laa
            boolean r0 = r6.isFocusable()
            if (r0 == 0) goto Laa
            r5 = r6
        Laa:
            r5.requestFocus()
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.recoverFocusFromState():void");
    }

    private void releaseGlows() {
        boolean z;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = this.mLeftGlow.isFinished();
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.mTopGlow;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mRightGlow;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z |= this.mBottomGlow.isFinished();
        }
        if (z) {
            q.y(this);
        }
    }

    private void requestChildOnScreen(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.mTempRect.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof C0178g0) {
            C0178g0 c0178g0 = (C0178g0) layoutParams;
            if (!c0178g0.f1155c) {
                Rect rect = c0178g0.f1154b;
                Rect rect2 = this.mTempRect;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.mTempRect);
            offsetRectIntoDescendantCoords(view, this.mTempRect);
        }
        this.mLayout.requestChildRectangleOnScreen(this, view, this.mTempRect, !this.mFirstLayoutComplete, view2 == null);
    }

    private void resetFocusInfo() {
        t0 t0Var = this.mState;
        t0Var.m = -1L;
        t0Var.l = -1;
        t0Var.n = -1;
    }

    private void resetScroll() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        stopNestedScroll(0);
        releaseGlows();
    }

    private void saveFocusInfo() {
        View focusedChild = (this.mPreserveFocusAfterLayout && hasFocus() && this.mAdapter != null) ? getFocusedChild() : null;
        w0 findContainingViewHolder = focusedChild != null ? findContainingViewHolder(focusedChild) : null;
        if (findContainingViewHolder == null) {
            resetFocusInfo();
            return;
        }
        this.mState.m = this.mAdapter.mHasStableIds ? findContainingViewHolder.mItemId : -1L;
        this.mState.l = this.mDataSetHasChangedAfterLayout ? -1 : findContainingViewHolder.isRemoved() ? findContainingViewHolder.mOldPosition : findContainingViewHolder.getAbsoluteAdapterPosition();
        this.mState.n = getDeepestFocusedViewWithId(findContainingViewHolder.itemView);
    }

    private void setAdapterInternal(Q q, boolean z, boolean z2) {
        Q q2 = this.mAdapter;
        if (q2 != null) {
            q2.mObservable.unregisterObserver(this.mObserver);
            Objects.requireNonNull(this.mAdapter);
        }
        if (!z || z2) {
            removeAndRecycleViews();
        }
        C0167b c0167b = this.mAdapterHelper;
        c0167b.l(c0167b.f1133b);
        c0167b.l(c0167b.f1134c);
        c0167b.g = 0;
        Q q3 = this.mAdapter;
        this.mAdapter = q;
        if (q != null) {
            q.mObservable.registerObserver(this.mObserver);
        }
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 != null) {
            abstractC0176f0.onAdapterChanged(q3, this.mAdapter);
        }
        n0 n0Var = this.mRecycler;
        Q q4 = this.mAdapter;
        n0Var.b();
        m0 d2 = n0Var.d();
        Objects.requireNonNull(d2);
        if (q3 != null) {
            d2.f1186b--;
        }
        if (!z && d2.f1186b == 0) {
            d2.a();
        }
        if (q4 != null) {
            d2.f1186b++;
        }
        this.mState.f = true;
    }

    private void stopScrollersInternal() {
        F f;
        this.mViewFlinger.c();
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 == null || (f = abstractC0176f0.mSmoothScroller) == null) {
            return;
        }
        f.stop();
    }

    public void absorbGlows(int i, int i2) {
        if (i < 0) {
            ensureLeftGlow();
            if (this.mLeftGlow.isFinished()) {
                this.mLeftGlow.onAbsorb(-i);
            }
        } else if (i > 0) {
            ensureRightGlow();
            if (this.mRightGlow.isFinished()) {
                this.mRightGlow.onAbsorb(i);
            }
        }
        if (i2 < 0) {
            ensureTopGlow();
            if (this.mTopGlow.isFinished()) {
                this.mTopGlow.onAbsorb(-i2);
            }
        } else if (i2 > 0) {
            ensureBottomGlow();
            if (this.mBottomGlow.isFinished()) {
                this.mBottomGlow.onAbsorb(i2);
            }
        }
        if (i == 0 && i2 == 0) {
            return;
        }
        q.y(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList arrayList, int i, int i2) {
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 == null || !abstractC0176f0.onAddFocusables()) {
            super.addFocusables(arrayList, i, i2);
        }
    }

    public void addItemDecoration(AbstractC0168b0 abstractC0168b0, int i) {
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 != null) {
            abstractC0176f0.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i < 0) {
            this.mItemDecorations.add(abstractC0168b0);
        } else {
            this.mItemDecorations.add(i, abstractC0168b0);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void addOnChildAttachStateChangeListener(InterfaceC0180h0 interfaceC0180h0) {
        if (this.mOnChildAttachStateListeners == null) {
            this.mOnChildAttachStateListeners = new ArrayList();
        }
        this.mOnChildAttachStateListeners.add(interfaceC0180h0);
    }

    public void addOnItemTouchListener(InterfaceC0184j0 interfaceC0184j0) {
        this.mOnItemTouchListeners.add(interfaceC0184j0);
    }

    public void addOnScrollListener(AbstractC0186k0 abstractC0186k0) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList();
        }
        this.mScrollListeners.add(abstractC0186k0);
    }

    public void animateAppearance(w0 w0Var, Y y, Y y2) {
        boolean z;
        w0Var.setIsRecyclable(false);
        C0191o c0191o = (C0191o) this.mItemAnimator;
        Objects.requireNonNull(c0191o);
        if (y == null || (y.f1121a == y2.f1121a && y.f1122b == y2.f1122b)) {
            c0191o.o(w0Var);
            w0Var.itemView.setAlpha(RecentsState.NO_OFFSET);
            c0191o.i.add(w0Var);
            z = true;
        } else {
            z = c0191o.j(w0Var, y.f1121a, y.f1122b, y2.f1121a, y2.f1122b);
        }
        if (z) {
            postAnimationRunner();
        }
    }

    public void animateDisappearance(w0 w0Var, Y y, Y y2) {
        boolean z;
        addAnimatingView(w0Var);
        w0Var.setIsRecyclable(false);
        C0191o c0191o = (C0191o) this.mItemAnimator;
        Objects.requireNonNull(c0191o);
        int i = y.f1121a;
        int i2 = y.f1122b;
        View view = w0Var.itemView;
        int left = y2 == null ? view.getLeft() : y2.f1121a;
        int top = y2 == null ? view.getTop() : y2.f1122b;
        if (w0Var.isRemoved() || (i == left && i2 == top)) {
            c0191o.o(w0Var);
            c0191o.h.add(w0Var);
            z = true;
        } else {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            z = c0191o.j(w0Var, i, i2, left, top);
        }
        if (z) {
            postAnimationRunner();
        }
    }

    public void assertInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            return;
        }
        if (str != null) {
            throw new IllegalStateException(a.b(this, a.f(str)));
        }
        throw new IllegalStateException(a.b(this, a.f("Cannot call this method unless RecyclerView is computing a layout or scrolling")));
    }

    public void assertNotInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException(a.b(this, a.f("Cannot call this method while RecyclerView is computing a layout or scrolling")));
        }
        if (this.mDispatchScrollCounter > 0) {
            Log.w(TAG, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(a.b(this, a.f(""))));
        }
    }

    public boolean canReuseUpdatedViewHolder(w0 w0Var) {
        Z z = this.mItemAnimator;
        return z == null || z.c(w0Var, w0Var.getUnmodifiedPayloads());
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0178g0) && this.mLayout.checkLayoutParams((C0178g0) layoutParams);
    }

    public void clearOldPositions() {
        int h = this.mChildHelper.h();
        for (int i = 0; i < h; i++) {
            w0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.clearOldPosition();
            }
        }
        n0 n0Var = this.mRecycler;
        int size = n0Var.f1193c.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((w0) n0Var.f1193c.get(i2)).clearOldPosition();
        }
        int size2 = n0Var.f1191a.size();
        for (int i3 = 0; i3 < size2; i3++) {
            ((w0) n0Var.f1191a.get(i3)).clearOldPosition();
        }
        ArrayList arrayList = n0Var.f1192b;
        if (arrayList != null) {
            int size3 = arrayList.size();
            for (int i4 = 0; i4 < size3; i4++) {
                ((w0) n0Var.f1192b.get(i4)).clearOldPosition();
            }
        }
    }

    public void clearOnChildAttachStateChangeListeners() {
        List list = this.mOnChildAttachStateListeners;
        if (list != null) {
            list.clear();
        }
    }

    public void clearOnScrollListeners() {
        List list = this.mScrollListeners;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 != null && abstractC0176f0.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 != null && abstractC0176f0.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 != null && abstractC0176f0.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollRange(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 != null && abstractC0176f0.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 != null && abstractC0176f0.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 != null && abstractC0176f0.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollRange(this.mState);
        }
        return 0;
    }

    public void considerReleasingGlowsOnScroll(int i, int i2) {
        boolean z;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished() || i <= 0) {
            z = false;
        } else {
            this.mLeftGlow.onRelease();
            z = this.mLeftGlow.isFinished();
        }
        EdgeEffect edgeEffect2 = this.mRightGlow;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i < 0) {
            this.mRightGlow.onRelease();
            z |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i2 > 0) {
            this.mTopGlow.onRelease();
            z |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i2 < 0) {
            this.mBottomGlow.onRelease();
            z |= this.mBottomGlow.isFinished();
        }
        if (z) {
            q.y(this);
        }
    }

    public void consumePendingUpdateOperations() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            Trace.beginSection(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
            dispatchLayout();
            Trace.endSection();
            return;
        }
        if (this.mAdapterHelper.g()) {
            if ((this.mAdapterHelper.g & 4) != 0) {
                if (!((this.mAdapterHelper.g & 11) != 0)) {
                    Trace.beginSection(TRACE_HANDLE_ADAPTER_UPDATES_TAG);
                    startInterceptRequestLayout();
                    onEnterLayoutOrScroll();
                    this.mAdapterHelper.j();
                    if (!this.mLayoutWasDefered) {
                        if (hasUpdatedView()) {
                            dispatchLayout();
                        } else {
                            this.mAdapterHelper.b();
                        }
                    }
                    stopInterceptRequestLayout(true);
                    onExitLayoutOrScroll();
                    Trace.endSection();
                    return;
                }
            }
            if (this.mAdapterHelper.g()) {
                Trace.beginSection(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
                dispatchLayout();
                Trace.endSection();
            }
        }
    }

    public void defaultOnMeasure(int i, int i2) {
        setMeasuredDimension(AbstractC0176f0.chooseSize(i, getPaddingRight() + getPaddingLeft(), q.k(this)), AbstractC0176f0.chooseSize(i2, getPaddingBottom() + getPaddingTop(), getMinimumHeight()));
    }

    public void dispatchChildAttached(View view) {
        w0 childViewHolderInt = getChildViewHolderInt(view);
        onChildAttachedToWindow(view);
        Q q = this.mAdapter;
        if (q != null && childViewHolderInt != null) {
            Objects.requireNonNull(q);
        }
        List list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                ((InterfaceC0180h0) this.mOnChildAttachStateListeners.get(size)).a(view);
            }
        }
    }

    public void dispatchChildDetached(View view) {
        w0 childViewHolderInt = getChildViewHolderInt(view);
        onChildDetachedFromWindow(view);
        Q q = this.mAdapter;
        if (q != null && childViewHolderInt != null) {
            Objects.requireNonNull(q);
        }
        List list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                ((InterfaceC0180h0) this.mOnChildAttachStateListeners.get(size)).b(view);
            }
        }
    }

    public void dispatchLayout() {
        if (this.mAdapter == null) {
            Log.w(TAG, "No adapter attached; skipping layout");
            return;
        }
        if (this.mLayout == null) {
            Log.e(TAG, "No layout manager attached; skipping layout");
            return;
        }
        t0 t0Var = this.mState;
        boolean z = false;
        t0Var.i = false;
        if (t0Var.f1208d == 1) {
            dispatchLayoutStep1();
            this.mLayout.setExactMeasureSpecsFrom(this);
            dispatchLayoutStep2();
        } else {
            C0167b c0167b = this.mAdapterHelper;
            if (!c0167b.f1134c.isEmpty() && !c0167b.f1133b.isEmpty()) {
                z = true;
            }
            if (!z && this.mLayout.mWidth == getWidth() && this.mLayout.mHeight == getHeight()) {
                this.mLayout.setExactMeasureSpecsFrom(this);
            } else {
                this.mLayout.setExactMeasureSpecsFrom(this);
                dispatchLayoutStep2();
            }
        }
        dispatchLayoutStep3();
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().b(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().d(i, i2, i3, i4, iArr);
    }

    public void dispatchOnScrollStateChanged(int i) {
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 != null) {
            abstractC0176f0.onScrollStateChanged(i);
        }
        onScrollStateChanged(i);
        AbstractC0186k0 abstractC0186k0 = this.mScrollListener;
        if (abstractC0186k0 != null) {
            abstractC0186k0.onScrollStateChanged(this, i);
        }
        List list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                ((AbstractC0186k0) this.mScrollListeners.get(size)).onScrollStateChanged(this, i);
            }
        }
    }

    public void dispatchOnScrolled(int i, int i2) {
        this.mDispatchScrollCounter++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        onScrolled(i, i2);
        AbstractC0186k0 abstractC0186k0 = this.mScrollListener;
        if (abstractC0186k0 != null) {
            abstractC0186k0.onScrolled(this, i, i2);
        }
        List list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                ((AbstractC0186k0) this.mScrollListeners.get(size)).onScrolled(this, i, i2);
            }
        }
        this.mDispatchScrollCounter--;
    }

    public void dispatchPendingImportantForAccessibilityChanges() {
        int i;
        for (int size = this.mPendingAccessibilityImportanceChange.size() - 1; size >= 0; size--) {
            w0 w0Var = (w0) this.mPendingAccessibilityImportanceChange.get(size);
            if (w0Var.itemView.getParent() == this && !w0Var.shouldIgnore() && (i = w0Var.mPendingAccessibilityState) != -1) {
                q.G(w0Var.itemView, i);
                w0Var.mPendingAccessibilityState = -1;
            }
        }
        this.mPendingAccessibilityImportanceChange.clear();
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(SparseArray sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        super.draw(canvas);
        int size = this.mItemDecorations.size();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            ((AbstractC0168b0) this.mItemDecorations.get(i)).onDrawOver(canvas, this, this.mState);
        }
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.mClipToPadding ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, RecentsState.NO_OFFSET);
            EdgeEffect edgeEffect2 = this.mLeftGlow;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.mClipToPadding) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.mTopGlow;
            z |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.mRightGlow;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.mClipToPadding ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(-paddingTop, -width);
            EdgeEffect edgeEffect6 = this.mRightGlow;
            z |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.mBottomGlow;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.mClipToPadding) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.mBottomGlow;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z2 = true;
            }
            z |= z2;
            canvas.restoreToCount(save4);
        }
        if ((z || this.mItemAnimator == null || this.mItemDecorations.size() <= 0 || !this.mItemAnimator.h()) ? z : true) {
            q.y(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    public void ensureBottomGlow() {
        if (this.mBottomGlow != null) {
            return;
        }
        EdgeEffect createEdgeEffect = this.mEdgeEffectFactory.createEdgeEffect(this, 3);
        this.mBottomGlow = createEdgeEffect;
        if (this.mClipToPadding) {
            createEdgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            createEdgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void ensureLeftGlow() {
        if (this.mLeftGlow != null) {
            return;
        }
        EdgeEffect createEdgeEffect = this.mEdgeEffectFactory.createEdgeEffect(this, 0);
        this.mLeftGlow = createEdgeEffect;
        if (this.mClipToPadding) {
            createEdgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            createEdgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public void ensureRightGlow() {
        if (this.mRightGlow != null) {
            return;
        }
        EdgeEffect createEdgeEffect = this.mEdgeEffectFactory.createEdgeEffect(this, 2);
        this.mRightGlow = createEdgeEffect;
        if (this.mClipToPadding) {
            createEdgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            createEdgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public void ensureTopGlow() {
        if (this.mTopGlow != null) {
            return;
        }
        EdgeEffect createEdgeEffect = this.mEdgeEffectFactory.createEdgeEffect(this, 1);
        this.mTopGlow = createEdgeEffect;
        if (this.mClipToPadding) {
            createEdgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            createEdgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public String exceptionLabel() {
        StringBuilder f = a.f(" ");
        f.append(super.toString());
        f.append(", adapter:");
        f.append(this.mAdapter);
        f.append(", layout:");
        f.append(this.mLayout);
        f.append(", context:");
        f.append(getContext());
        return f.toString();
    }

    public final void fillRemainingScrollValues(t0 t0Var) {
        if (getScrollState() != 2) {
            t0Var.o = 0;
            t0Var.p = 0;
        } else {
            OverScroller overScroller = this.mViewFlinger.f1219c;
            t0Var.o = overScroller.getFinalX() - overScroller.getCurrX();
            t0Var.p = overScroller.getFinalY() - overScroller.getCurrY();
        }
    }

    public View findChildViewUnder(float f, float f2) {
        for (int e = this.mChildHelper.e() - 1; e >= 0; e--) {
            View d2 = this.mChildHelper.d(e);
            float translationX = d2.getTranslationX();
            float translationY = d2.getTranslationY();
            if (f >= d2.getLeft() + translationX && f <= d2.getRight() + translationX && f2 >= d2.getTop() + translationY && f2 <= d2.getBottom() + translationY) {
                return d2;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:?, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View findContainingItemView(android.view.View r3) {
        /*
            r2 = this;
            android.view.ViewParent r0 = r3.getParent()
        L4:
            if (r0 == 0) goto L14
            if (r0 == r2) goto L14
            boolean r1 = r0 instanceof android.view.View
            if (r1 == 0) goto L14
            r3 = r0
            android.view.View r3 = (android.view.View) r3
            android.view.ViewParent r0 = r3.getParent()
            goto L4
        L14:
            if (r0 != r2) goto L17
            goto L18
        L17:
            r3 = 0
        L18:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.findContainingItemView(android.view.View):android.view.View");
    }

    public w0 findContainingViewHolder(View view) {
        View findContainingItemView = findContainingItemView(view);
        if (findContainingItemView == null) {
            return null;
        }
        return getChildViewHolder(findContainingItemView);
    }

    public w0 findViewHolderForAdapterPosition(int i) {
        w0 w0Var = null;
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        int h = this.mChildHelper.h();
        for (int i2 = 0; i2 < h; i2++) {
            w0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i2));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && getAdapterPositionInRecyclerView(childViewHolderInt) == i) {
                C0171d c0171d = this.mChildHelper;
                if (!c0171d.f1141c.contains(childViewHolderInt.itemView)) {
                    return childViewHolderInt;
                }
                w0Var = childViewHolderInt;
            }
        }
        return w0Var;
    }

    public w0 findViewHolderForItemId(long j) {
        Q q = this.mAdapter;
        w0 w0Var = null;
        if (q != null && q.mHasStableIds) {
            int h = this.mChildHelper.h();
            for (int i = 0; i < h; i++) {
                w0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i));
                if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && childViewHolderInt.mItemId == j) {
                    C0171d c0171d = this.mChildHelper;
                    if (!c0171d.f1141c.contains(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    }
                    w0Var = childViewHolderInt;
                }
            }
        }
        return w0Var;
    }

    public w0 findViewHolderForLayoutPosition(int i) {
        return findViewHolderForPosition(i, false);
    }

    @Deprecated
    public w0 findViewHolderForPosition(int i) {
        return findViewHolderForPosition(i, false);
    }

    public boolean fling(int i, int i2) {
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 == null) {
            Log.e(TAG, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        }
        if (this.mLayoutSuppressed) {
            return false;
        }
        boolean canScrollHorizontally = abstractC0176f0.canScrollHorizontally();
        boolean canScrollVertically = this.mLayout.canScrollVertically();
        int i3 = (!canScrollHorizontally || Math.abs(i) < this.mMinFlingVelocity) ? 0 : i;
        int i4 = (!canScrollVertically || Math.abs(i2) < this.mMinFlingVelocity) ? 0 : i2;
        if (i3 == 0 && i4 == 0) {
            return false;
        }
        float f = i3;
        float f2 = i4;
        if (!dispatchNestedPreFling(f, f2)) {
            boolean z = canScrollHorizontally || canScrollVertically;
            dispatchNestedFling(f, f2, z);
            if (z) {
                int i5 = canScrollHorizontally ? 1 : 0;
                if (canScrollVertically) {
                    i5 |= 2;
                }
                startNestedScroll(i5, 1);
                int i6 = this.mMaxFlingVelocity;
                int max = Math.max(-i6, Math.min(i3, i6));
                int i7 = this.mMaxFlingVelocity;
                int max2 = Math.max(-i7, Math.min(i4, i7));
                v0 v0Var = this.mViewFlinger;
                v0Var.g.setScrollState(2);
                v0Var.f1218b = 0;
                v0Var.f1217a = 0;
                Interpolator interpolator = v0Var.f1220d;
                Interpolator interpolator2 = sQuinticInterpolator;
                if (interpolator != interpolator2) {
                    v0Var.f1220d = interpolator2;
                    v0Var.f1219c = new OverScroller(v0Var.g.getContext(), sQuinticInterpolator);
                }
                v0Var.f1219c.fling(0, 0, max, max2, UNDEFINED_DURATION, Integer.MAX_VALUE, UNDEFINED_DURATION, Integer.MAX_VALUE);
                v0Var.a();
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i) {
        View view2;
        boolean z;
        View onInterceptFocusSearch = this.mLayout.onInterceptFocusSearch();
        if (onInterceptFocusSearch != null) {
            return onInterceptFocusSearch;
        }
        boolean z2 = (this.mAdapter == null || this.mLayout == null || isComputingLayout() || this.mLayoutSuppressed) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z2 && (i == 2 || i == 1)) {
            if (this.mLayout.canScrollVertically()) {
                int i2 = i == 2 ? 130 : 33;
                z = focusFinder.findNextFocus(this, view, i2) == null;
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i = i2;
                }
            } else {
                z = false;
            }
            if (!z && this.mLayout.canScrollHorizontally()) {
                int i3 = (this.mLayout.getLayoutDirection() == 1) ^ (i == 2) ? 66 : 17;
                boolean z3 = focusFinder.findNextFocus(this, view, i3) == null;
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i = i3;
                }
                z = z3;
            }
            if (z) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                this.mLayout.onFocusSearchFailed(view, i, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            }
            view2 = focusFinder.findNextFocus(this, view, i);
        } else {
            View findNextFocus = focusFinder.findNextFocus(this, view, i);
            if (findNextFocus == null && z2) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                view2 = this.mLayout.onFocusSearchFailed(view, i, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            } else {
                view2 = findNextFocus;
            }
        }
        if (view2 == null || view2.hasFocusable()) {
            return isPreferredNextFocus(view, view2, i) ? view2 : super.focusSearch(view, i);
        }
        if (getFocusedChild() == null) {
            return super.focusSearch(view, i);
        }
        requestChildOnScreen(view2, null);
        return view;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 != null) {
            return abstractC0176f0.generateDefaultLayoutParams();
        }
        throw new IllegalStateException(a.b(this, a.f("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 != null) {
            return abstractC0176f0.generateLayoutParams(getContext(), attributeSet);
        }
        throw new IllegalStateException(a.b(this, a.f("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public Q getAdapter() {
        return this.mAdapter;
    }

    public int getAdapterPositionInRecyclerView(w0 w0Var) {
        if (w0Var.hasAnyOfTheFlags(524) || !w0Var.isBound()) {
            return -1;
        }
        C0167b c0167b = this.mAdapterHelper;
        int i = w0Var.mPosition;
        int size = c0167b.f1133b.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0165a c0165a = (C0165a) c0167b.f1133b.get(i2);
            int i3 = c0165a.f1127a;
            if (i3 != 1) {
                if (i3 == 2) {
                    int i4 = c0165a.f1128b;
                    if (i4 <= i) {
                        int i5 = c0165a.f1130d;
                        if (i4 + i5 > i) {
                            return -1;
                        }
                        i -= i5;
                    } else {
                        continue;
                    }
                } else if (i3 == 8) {
                    int i6 = c0165a.f1128b;
                    if (i6 == i) {
                        i = c0165a.f1130d;
                    } else {
                        if (i6 < i) {
                            i--;
                        }
                        if (c0165a.f1130d <= i) {
                            i++;
                        }
                    }
                }
            } else if (c0165a.f1128b <= i) {
                i += c0165a.f1130d;
            }
        }
        return i;
    }

    @Override // android.view.View
    public int getBaseline() {
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 == null) {
            return super.getBaseline();
        }
        Objects.requireNonNull(abstractC0176f0);
        return -1;
    }

    public long getChangedHolderKey(w0 w0Var) {
        return this.mAdapter.mHasStableIds ? w0Var.mItemId : w0Var.mPosition;
    }

    public int getChildAdapterPosition(View view) {
        w0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getAbsoluteAdapterPosition();
        }
        return -1;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        U u = this.mChildDrawingOrderCallback;
        return u == null ? super.getChildDrawingOrder(i, i2) : u.a(i, i2);
    }

    public long getChildItemId(View view) {
        w0 childViewHolderInt;
        Q q = this.mAdapter;
        if (q == null || !q.mHasStableIds || (childViewHolderInt = getChildViewHolderInt(view)) == null) {
            return -1L;
        }
        return childViewHolderInt.mItemId;
    }

    public int getChildLayoutPosition(View view) {
        w0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getLayoutPosition();
        }
        return -1;
    }

    @Deprecated
    public int getChildPosition(View view) {
        return getChildAdapterPosition(view);
    }

    public w0 getChildViewHolder(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return getChildViewHolderInt(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.mClipToPadding;
    }

    public y0 getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        getDecoratedBoundsWithMarginsInt(view, rect);
    }

    public V getEdgeEffectFactory() {
        return this.mEdgeEffectFactory;
    }

    public Z getItemAnimator() {
        return this.mItemAnimator;
    }

    public Rect getItemDecorInsetsForChild(View view) {
        C0178g0 c0178g0 = (C0178g0) view.getLayoutParams();
        if (!c0178g0.f1155c) {
            return c0178g0.f1154b;
        }
        if (this.mState.g && (c0178g0.b() || c0178g0.f1153a.isInvalid())) {
            return c0178g0.f1154b;
        }
        Rect rect = c0178g0.f1154b;
        rect.set(0, 0, 0, 0);
        int size = this.mItemDecorations.size();
        for (int i = 0; i < size; i++) {
            this.mTempRect.set(0, 0, 0, 0);
            ((AbstractC0168b0) this.mItemDecorations.get(i)).getItemOffsets(this.mTempRect, view, this, this.mState);
            int i2 = rect.left;
            Rect rect2 = this.mTempRect;
            rect.left = i2 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        c0178g0.f1155c = false;
        return rect;
    }

    public AbstractC0168b0 getItemDecorationAt(int i) {
        int itemDecorationCount = getItemDecorationCount();
        if (i >= 0 && i < itemDecorationCount) {
            return (AbstractC0168b0) this.mItemDecorations.get(i);
        }
        throw new IndexOutOfBoundsException(i + " is an invalid index for size " + itemDecorationCount);
    }

    public int getItemDecorationCount() {
        return this.mItemDecorations.size();
    }

    public AbstractC0176f0 getLayoutManager() {
        return this.mLayout;
    }

    public int getMaxFlingVelocity() {
        return this.mMaxFlingVelocity;
    }

    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }

    public long getNanoTime() {
        if (ALLOW_THREAD_GAP_WORK) {
            return System.nanoTime();
        }
        return 0L;
    }

    public AbstractC0182i0 getOnFlingListener() {
        return null;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }

    public m0 getRecycledViewPool() {
        return this.mRecycler.d();
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    public boolean hasFixedSize() {
        return this.mHasFixedSize;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().g(0);
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.g();
    }

    public void initAdapterManager() {
        this.mAdapterHelper = new C0167b(new P(this));
    }

    public void initFastScroller(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
            throw new IllegalArgumentException(a.b(this, a.f("Trying to set fast scroller without both required drawables.")));
        }
        Resources resources = getContext().getResources();
        new FastScroller(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(com.android.systemui.shared.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(com.android.systemui.shared.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(com.android.systemui.shared.R.dimen.fastscroll_margin));
    }

    public void invalidateGlows() {
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    public void invalidateItemDecorations() {
        if (this.mItemDecorations.size() == 0) {
            return;
        }
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 != null) {
            abstractC0176f0.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public boolean isAccessibilityEnabled() {
        AccessibilityManager accessibilityManager = this.mAccessibilityManager;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    public boolean isAnimating() {
        Z z = this.mItemAnimator;
        return z != null && z.h();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    public boolean isComputingLayout() {
        return this.mLayoutOrScrollCounter > 0;
    }

    @Deprecated
    public boolean isLayoutFrozen() {
        return isLayoutSuppressed();
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.mLayoutSuppressed;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().f765d;
    }

    public void jumpToPositionForSmoothScroller(int i) {
        if (this.mLayout == null) {
            return;
        }
        setScrollState(2);
        this.mLayout.scrollToPosition(i);
        awakenScrollBars();
    }

    public void markItemDecorInsetsDirty() {
        int h = this.mChildHelper.h();
        for (int i = 0; i < h; i++) {
            ((C0178g0) this.mChildHelper.g(i).getLayoutParams()).f1155c = true;
        }
        n0 n0Var = this.mRecycler;
        int size = n0Var.f1193c.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0178g0 c0178g0 = (C0178g0) ((w0) n0Var.f1193c.get(i2)).itemView.getLayoutParams();
            if (c0178g0 != null) {
                c0178g0.f1155c = true;
            }
        }
    }

    public void markKnownViewsInvalid() {
        int h = this.mChildHelper.h();
        for (int i = 0; i < h; i++) {
            w0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.addFlags(6);
            }
        }
        markItemDecorInsetsDirty();
        n0 n0Var = this.mRecycler;
        int size = n0Var.f1193c.size();
        for (int i2 = 0; i2 < size; i2++) {
            w0 w0Var = (w0) n0Var.f1193c.get(i2);
            if (w0Var != null) {
                w0Var.addFlags(6);
                w0Var.addChangePayload(null);
            }
        }
        Q q = n0Var.h.mAdapter;
        if (q == null || !q.mHasStableIds) {
            n0Var.f();
        }
    }

    public void nestedScrollBy(int i, int i2) {
        nestedScrollByInternal(i, i2, null, 1);
    }

    public void offsetChildrenHorizontal(int i) {
        int e = this.mChildHelper.e();
        for (int i2 = 0; i2 < e; i2++) {
            this.mChildHelper.d(i2).offsetLeftAndRight(i);
        }
    }

    public void offsetChildrenVertical(int i) {
        int e = this.mChildHelper.e();
        for (int i2 = 0; i2 < e; i2++) {
            this.mChildHelper.d(i2).offsetTopAndBottom(i);
        }
    }

    public void offsetPositionRecordsForInsert(int i, int i2) {
        int h = this.mChildHelper.h();
        for (int i3 = 0; i3 < h; i3++) {
            w0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i3));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= i) {
                childViewHolderInt.offsetPosition(i2, false);
                this.mState.f = true;
            }
        }
        n0 n0Var = this.mRecycler;
        int size = n0Var.f1193c.size();
        for (int i4 = 0; i4 < size; i4++) {
            w0 w0Var = (w0) n0Var.f1193c.get(i4);
            if (w0Var != null && w0Var.mPosition >= i) {
                w0Var.offsetPosition(i2, true);
            }
        }
        requestLayout();
    }

    public void offsetPositionRecordsForMove(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int h = this.mChildHelper.h();
        int i10 = -1;
        if (i < i2) {
            i4 = i;
            i3 = i2;
            i5 = -1;
        } else {
            i3 = i;
            i4 = i2;
            i5 = 1;
        }
        for (int i11 = 0; i11 < h; i11++) {
            w0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i11));
            if (childViewHolderInt != null && (i9 = childViewHolderInt.mPosition) >= i4 && i9 <= i3) {
                if (i9 == i) {
                    childViewHolderInt.offsetPosition(i2 - i, false);
                } else {
                    childViewHolderInt.offsetPosition(i5, false);
                }
                this.mState.f = true;
            }
        }
        n0 n0Var = this.mRecycler;
        if (i < i2) {
            i7 = i;
            i6 = i2;
        } else {
            i6 = i;
            i10 = 1;
            i7 = i2;
        }
        int size = n0Var.f1193c.size();
        for (int i12 = 0; i12 < size; i12++) {
            w0 w0Var = (w0) n0Var.f1193c.get(i12);
            if (w0Var != null && (i8 = w0Var.mPosition) >= i7 && i8 <= i6) {
                if (i8 == i) {
                    w0Var.offsetPosition(i2 - i, false);
                } else {
                    w0Var.offsetPosition(i10, false);
                }
            }
        }
        requestLayout();
    }

    public void offsetPositionRecordsForRemove(int i, int i2, boolean z) {
        int i3 = i + i2;
        int h = this.mChildHelper.h();
        for (int i4 = 0; i4 < h; i4++) {
            w0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i4));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                int i5 = childViewHolderInt.mPosition;
                if (i5 >= i3) {
                    childViewHolderInt.offsetPosition(-i2, z);
                    this.mState.f = true;
                } else if (i5 >= i) {
                    childViewHolderInt.addFlags(8);
                    childViewHolderInt.offsetPosition(-i2, z);
                    childViewHolderInt.mPosition = i - 1;
                    this.mState.f = true;
                }
            }
        }
        n0 n0Var = this.mRecycler;
        int size = n0Var.f1193c.size();
        while (true) {
            size--;
            if (size < 0) {
                requestLayout();
                return;
            }
            w0 w0Var = (w0) n0Var.f1193c.get(size);
            if (w0Var != null) {
                int i6 = w0Var.mPosition;
                if (i6 >= i3) {
                    w0Var.offsetPosition(-i2, z);
                } else if (i6 >= i) {
                    w0Var.addFlags(8);
                    n0Var.g(size);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mLayoutOrScrollCounter = 0;
        this.mIsAttached = true;
        this.mFirstLayoutComplete = this.mFirstLayoutComplete && !isLayoutRequested();
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 != null) {
            abstractC0176f0.mIsAttachedToWindow = true;
            abstractC0176f0.onAttachedToWindow();
        }
        this.mPostedAnimatorRunner = false;
        if (ALLOW_THREAD_GAP_WORK) {
            RunnableC0198w runnableC0198w = (RunnableC0198w) RunnableC0198w.e.get();
            this.mGapWorker = runnableC0198w;
            if (runnableC0198w == null) {
                this.mGapWorker = new RunnableC0198w();
                Display f = q.f(this);
                float f2 = 60.0f;
                if (!isInEditMode() && f != null) {
                    float refreshRate = f.getRefreshRate();
                    if (refreshRate >= 30.0f) {
                        f2 = refreshRate;
                    }
                }
                RunnableC0198w runnableC0198w2 = this.mGapWorker;
                runnableC0198w2.f1223c = (long) (1.0E9f / f2);
                RunnableC0198w.e.set(runnableC0198w2);
            }
            this.mGapWorker.f1221a.add(this);
        }
    }

    public void onChildAttachedToWindow(View view) {
    }

    public void onChildDetachedFromWindow(View view) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        RunnableC0198w runnableC0198w;
        super.onDetachedFromWindow();
        Z z = this.mItemAnimator;
        if (z != null) {
            z.g();
        }
        stopScroll();
        this.mIsAttached = false;
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 != null) {
            n0 n0Var = this.mRecycler;
            abstractC0176f0.mIsAttachedToWindow = false;
            abstractC0176f0.onDetachedFromWindow(this, n0Var);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        removeCallbacks(this.mItemAnimatorRunner);
        Objects.requireNonNull(this.mViewInfoStore);
        while (J0.f1112d.a() != null) {
        }
        if (!ALLOW_THREAD_GAP_WORK || (runnableC0198w = this.mGapWorker) == null) {
            return;
        }
        runnableC0198w.f1221a.remove(this);
        this.mGapWorker = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.mItemDecorations.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC0168b0) this.mItemDecorations.get(i)).onDraw(canvas, this, this.mState);
        }
    }

    public void onEnterLayoutOrScroll() {
        this.mLayoutOrScrollCounter++;
    }

    public void onExitLayoutOrScroll() {
        onExitLayoutOrScroll(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0068  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onGenericMotionEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            b.m.b.f0 r0 = r5.mLayout
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            boolean r0 = r5.mLayoutSuppressed
            if (r0 == 0) goto Lb
            return r1
        Lb:
            int r0 = r6.getAction()
            r2 = 8
            if (r0 != r2) goto L78
            int r0 = r6.getSource()
            r0 = r0 & 2
            r2 = 0
            if (r0 == 0) goto L3e
            b.m.b.f0 r0 = r5.mLayout
            boolean r0 = r0.canScrollVertically()
            if (r0 == 0) goto L2c
            r0 = 9
            float r0 = r6.getAxisValue(r0)
            float r0 = -r0
            goto L2d
        L2c:
            r0 = r2
        L2d:
            b.m.b.f0 r3 = r5.mLayout
            boolean r3 = r3.canScrollHorizontally()
            if (r3 == 0) goto L3c
            r3 = 10
            float r3 = r6.getAxisValue(r3)
            goto L64
        L3c:
            r3 = r2
            goto L64
        L3e:
            int r0 = r6.getSource()
            r3 = 4194304(0x400000, float:5.877472E-39)
            r0 = r0 & r3
            if (r0 == 0) goto L62
            r0 = 26
            float r0 = r6.getAxisValue(r0)
            b.m.b.f0 r3 = r5.mLayout
            boolean r3 = r3.canScrollVertically()
            if (r3 == 0) goto L57
            float r0 = -r0
            goto L3c
        L57:
            b.m.b.f0 r3 = r5.mLayout
            boolean r3 = r3.canScrollHorizontally()
            if (r3 == 0) goto L62
            r3 = r0
            r0 = r2
            goto L64
        L62:
            r0 = r2
            r3 = r0
        L64:
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L6c
            int r2 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r2 == 0) goto L78
        L6c:
            float r2 = r5.mScaledHorizontalScrollFactor
            float r3 = r3 * r2
            int r2 = (int) r3
            float r3 = r5.mScaledVerticalScrollFactor
            float r0 = r0 * r3
            int r0 = (int) r0
            r3 = 1
            r5.nestedScrollByInternal(r2, r0, r6, r3)
        L78:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (this.mLayoutSuppressed) {
            return false;
        }
        this.mInterceptingOnItemTouchListener = null;
        if (findInterceptingOnItemTouchListener(motionEvent)) {
            cancelScroll();
            return true;
        }
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 == null) {
            return false;
        }
        boolean canScrollHorizontally = abstractC0176f0.canScrollHorizontally();
        boolean canScrollVertically = this.mLayout.canScrollVertically();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.mIgnoreMotionEventTillDown) {
                this.mIgnoreMotionEventTillDown = false;
            }
            this.mScrollPointerId = motionEvent.getPointerId(0);
            int x = (int) (motionEvent.getX() + 0.5f);
            this.mLastTouchX = x;
            this.mInitialTouchX = x;
            int y = (int) (motionEvent.getY() + 0.5f);
            this.mLastTouchY = y;
            this.mInitialTouchY = y;
            if (this.mScrollState == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                stopNestedScroll(1);
            }
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
            int i = canScrollHorizontally ? 1 : 0;
            if (canScrollVertically) {
                i |= 2;
            }
            startNestedScroll(i, 0);
        } else if (actionMasked == 1) {
            this.mVelocityTracker.clear();
            stopNestedScroll(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
            if (findPointerIndex < 0) {
                StringBuilder f = a.f("Error processing scroll; pointer index for id ");
                f.append(this.mScrollPointerId);
                f.append(" not found. Did any MotionEvents get skipped?");
                Log.e(TAG, f.toString());
                return false;
            }
            int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.mScrollState != 1) {
                int i2 = x2 - this.mInitialTouchX;
                int i3 = y2 - this.mInitialTouchY;
                if (!canScrollHorizontally || Math.abs(i2) <= this.mTouchSlop) {
                    z = false;
                } else {
                    this.mLastTouchX = x2;
                    z = true;
                }
                if (canScrollVertically && Math.abs(i3) > this.mTouchSlop) {
                    this.mLastTouchY = y2;
                    z = true;
                }
                if (z) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            cancelScroll();
        } else if (actionMasked == 5) {
            this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
            int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.mLastTouchX = x3;
            this.mInitialTouchX = x3;
            int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.mLastTouchY = y3;
            this.mInitialTouchY = y3;
        } else if (actionMasked == 6) {
            onPointerUp(motionEvent);
        }
        return this.mScrollState == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Trace.beginSection(TRACE_ON_LAYOUT_TAG);
        dispatchLayout();
        Trace.endSection();
        this.mFirstLayoutComplete = true;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 == null) {
            defaultOnMeasure(i, i2);
            return;
        }
        boolean z = false;
        if (abstractC0176f0.isAutoMeasureEnabled()) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.mLayout.onMeasure(i, i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z = true;
            }
            if (z || this.mAdapter == null) {
                return;
            }
            if (this.mState.f1208d == 1) {
                dispatchLayoutStep1();
            }
            this.mLayout.setMeasureSpecs(i, i2);
            this.mState.i = true;
            dispatchLayoutStep2();
            this.mLayout.setMeasuredDimensionFromChildren(i, i2);
            if (this.mLayout.shouldMeasureTwice()) {
                this.mLayout.setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.mState.i = true;
                dispatchLayoutStep2();
                this.mLayout.setMeasuredDimensionFromChildren(i, i2);
                return;
            }
            return;
        }
        if (this.mHasFixedSize) {
            this.mLayout.onMeasure(i, i2);
            return;
        }
        if (this.mAdapterUpdateDuringMeasure) {
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            processAdapterUpdatesAndSetAnimationFlags();
            onExitLayoutOrScroll();
            t0 t0Var = this.mState;
            if (t0Var.k) {
                t0Var.g = true;
            } else {
                this.mAdapterHelper.c();
                this.mState.g = false;
            }
            this.mAdapterUpdateDuringMeasure = false;
            stopInterceptRequestLayout(false);
        } else if (this.mState.k) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        Q q = this.mAdapter;
        if (q != null) {
            this.mState.e = q.getItemCount();
        } else {
            this.mState.e = 0;
        }
        startInterceptRequestLayout();
        this.mLayout.onMeasure(i, i2);
        stopInterceptRequestLayout(false);
        this.mState.g = false;
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.mPendingSavedState = savedState;
        super.onRestoreInstanceState(savedState.f94a);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.mPendingSavedState;
        if (savedState2 != null) {
            savedState.f192c = savedState2.f192c;
        } else {
            AbstractC0176f0 abstractC0176f0 = this.mLayout;
            if (abstractC0176f0 != null) {
                savedState.f192c = abstractC0176f0.onSaveInstanceState();
            } else {
                savedState.f192c = null;
            }
        }
        return savedState;
    }

    public void onScrollStateChanged(int i) {
    }

    public void onScrolled(int i, int i2) {
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        invalidateGlows();
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f4  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            Method dump skipped, instructions count: 486
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void postAnimationRunner() {
        if (this.mPostedAnimatorRunner || !this.mIsAttached) {
            return;
        }
        q.z(this, this.mItemAnimatorRunner);
        this.mPostedAnimatorRunner = true;
    }

    public void processDataSetCompletelyChanged(boolean z) {
        this.mDispatchItemsChangedEvent = z | this.mDispatchItemsChangedEvent;
        this.mDataSetHasChangedAfterLayout = true;
        markKnownViewsInvalid();
    }

    public void recordAnimationInfoIfBouncedHiddenView(w0 w0Var, Y y) {
        w0Var.setFlags(0, QuickStepContract.SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED);
        if (this.mState.h && w0Var.isUpdated() && !w0Var.isRemoved() && !w0Var.shouldIgnore()) {
            this.mViewInfoStore.mOldChangedHolders.e(getChangedHolderKey(w0Var), w0Var);
        }
        this.mViewInfoStore.c(w0Var, y);
    }

    public void removeAndRecycleViews() {
        Z z = this.mItemAnimator;
        if (z != null) {
            z.g();
        }
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 != null) {
            abstractC0176f0.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        }
        this.mRecycler.b();
    }

    public boolean removeAnimatingView(View view) {
        startInterceptRequestLayout();
        C0171d c0171d = this.mChildHelper;
        int indexOfChild = c0171d.f1139a.f1119a.indexOfChild(view);
        boolean z = true;
        if (indexOfChild == -1) {
            c0171d.l(view);
        } else if (c0171d.f1140b.d(indexOfChild)) {
            c0171d.f1140b.f(indexOfChild);
            c0171d.l(view);
            c0171d.f1139a.c(indexOfChild);
        } else {
            z = false;
        }
        if (z) {
            w0 childViewHolderInt = getChildViewHolderInt(view);
            this.mRecycler.l(childViewHolderInt);
            this.mRecycler.i(childViewHolderInt);
        }
        stopInterceptRequestLayout(!z);
        return z;
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z) {
        w0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.isTmpDetached()) {
                childViewHolderInt.mFlags &= -257;
            } else if (!childViewHolderInt.shouldIgnore()) {
                StringBuilder sb = new StringBuilder();
                sb.append("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(childViewHolderInt);
                throw new IllegalArgumentException(a.b(this, sb));
            }
        }
        view.clearAnimation();
        dispatchChildDetached(view);
        super.removeDetachedView(view, z);
    }

    public void removeItemDecoration(AbstractC0168b0 abstractC0168b0) {
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 != null) {
            abstractC0176f0.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(abstractC0168b0);
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void removeItemDecorationAt(int i) {
        int itemDecorationCount = getItemDecorationCount();
        if (i >= 0 && i < itemDecorationCount) {
            removeItemDecoration(getItemDecorationAt(i));
            return;
        }
        throw new IndexOutOfBoundsException(i + " is an invalid index for size " + itemDecorationCount);
    }

    public void removeOnChildAttachStateChangeListener(InterfaceC0180h0 interfaceC0180h0) {
        List list = this.mOnChildAttachStateListeners;
        if (list == null) {
            return;
        }
        list.remove(interfaceC0180h0);
    }

    public void removeOnItemTouchListener(InterfaceC0184j0 interfaceC0184j0) {
        this.mOnItemTouchListeners.remove(interfaceC0184j0);
        if (this.mInterceptingOnItemTouchListener == interfaceC0184j0) {
            this.mInterceptingOnItemTouchListener = null;
        }
    }

    public void removeOnScrollListener(AbstractC0186k0 abstractC0186k0) {
        List list = this.mScrollListeners;
        if (list != null) {
            list.remove(abstractC0186k0);
        }
    }

    public void repositionShadowingViews() {
        w0 w0Var;
        int e = this.mChildHelper.e();
        for (int i = 0; i < e; i++) {
            View d2 = this.mChildHelper.d(i);
            w0 childViewHolder = getChildViewHolder(d2);
            if (childViewHolder != null && (w0Var = childViewHolder.mShadowingHolder) != null) {
                View view = w0Var.itemView;
                int left = d2.getLeft();
                int top = d2.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.mLayout.onRequestChildFocus1(this, view, view2) && view2 != null) {
            requestChildOnScreen(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.mLayout.requestChildRectangleOnScreen(this, view, rect, z, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.mOnItemTouchListeners.size();
        for (int i = 0; i < size; i++) {
            ((InterfaceC0184j0) this.mOnItemTouchListeners.get(i)).onRequestDisallowInterceptTouchEvent(z);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mInterceptRequestLayoutDepth != 0 || this.mLayoutSuppressed) {
            this.mLayoutWasDefered = true;
        } else {
            super.requestLayout();
        }
    }

    public void saveOldPositions() {
        int h = this.mChildHelper.h();
        for (int i = 0; i < h; i++) {
            w0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i));
            if (!childViewHolderInt.shouldIgnore() && childViewHolderInt.mOldPosition == -1) {
                childViewHolderInt.mOldPosition = childViewHolderInt.mPosition;
            }
        }
    }

    @Override // android.view.View
    public void scrollBy(int i, int i2) {
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 == null) {
            Log.e(TAG, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        boolean canScrollHorizontally = abstractC0176f0.canScrollHorizontally();
        boolean canScrollVertically = this.mLayout.canScrollVertically();
        if (canScrollHorizontally || canScrollVertically) {
            if (!canScrollHorizontally) {
                i = 0;
            }
            if (!canScrollVertically) {
                i2 = 0;
            }
            scrollByInternal(i, i2, null, 0);
        }
    }

    public boolean scrollByInternal(int i, int i2, MotionEvent motionEvent, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        consumePendingUpdateOperations();
        if (this.mAdapter != null) {
            int[] iArr = this.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            scrollStep(i, i2, iArr);
            int[] iArr2 = this.mReusableIntPair;
            int i8 = iArr2[0];
            int i9 = iArr2[1];
            i4 = i9;
            i5 = i8;
            i6 = i - i8;
            i7 = i2 - i9;
        } else {
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 0;
        }
        if (!this.mItemDecorations.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.mReusableIntPair;
        iArr3[0] = 0;
        iArr3[1] = 0;
        dispatchNestedScroll(i5, i4, i6, i7, this.mScrollOffset, i3, iArr3);
        int[] iArr4 = this.mReusableIntPair;
        int i10 = i6 - iArr4[0];
        int i11 = i7 - iArr4[1];
        boolean z = (iArr4[0] == 0 && iArr4[1] == 0) ? false : true;
        int i12 = this.mLastTouchX;
        int[] iArr5 = this.mScrollOffset;
        this.mLastTouchX = i12 - iArr5[0];
        this.mLastTouchY -= iArr5[1];
        int[] iArr6 = this.mNestedOffsets;
        iArr6[0] = iArr6[0] + iArr5[0];
        iArr6[1] = iArr6[1] + iArr5[1];
        if (getOverScrollMode() != 2) {
            if (motionEvent != null) {
                if (!((motionEvent.getSource() & 8194) == 8194)) {
                    pullGlows(motionEvent.getX(), i10, motionEvent.getY(), i11);
                }
            }
            considerReleasingGlowsOnScroll(i, i2);
        }
        if (i5 != 0 || i4 != 0) {
            dispatchOnScrolled(i5, i4);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z && i5 == 0 && i4 == 0) ? false : true;
    }

    public void scrollStep(int i, int i2, int[] iArr) {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        Trace.beginSection(TRACE_SCROLL_TAG);
        fillRemainingScrollValues(this.mState);
        int scrollHorizontallyBy = i != 0 ? this.mLayout.scrollHorizontallyBy(i, this.mRecycler, this.mState) : 0;
        int scrollVerticallyBy = i2 != 0 ? this.mLayout.scrollVerticallyBy(i2, this.mRecycler, this.mState) : 0;
        Trace.endSection();
        repositionShadowingViews();
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        if (iArr != null) {
            iArr[0] = scrollHorizontallyBy;
            iArr[1] = scrollVerticallyBy;
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        Log.w(TAG, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    public void scrollToPosition(int i) {
        if (this.mLayoutSuppressed) {
            return;
        }
        stopScroll();
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 == null) {
            Log.e(TAG, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            abstractC0176f0.scrollToPosition(i);
            awakenScrollBars();
        }
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (shouldDeferAccessibilityEvent(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(y0 y0Var) {
        this.mAccessibilityDelegate = y0Var;
        q.D(this, y0Var);
    }

    public void setAdapter(Q q) {
        setLayoutFrozen(false);
        setAdapterInternal(q, false, true);
        processDataSetCompletelyChanged(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(U u) {
        if (u == this.mChildDrawingOrderCallback) {
            return;
        }
        this.mChildDrawingOrderCallback = u;
        setChildrenDrawingOrderEnabled(u != null);
    }

    public boolean setChildImportantForAccessibilityInternal(w0 w0Var, int i) {
        if (!isComputingLayout()) {
            q.G(w0Var.itemView, i);
            return true;
        }
        w0Var.mPendingAccessibilityState = i;
        this.mPendingAccessibilityImportanceChange.add(w0Var);
        return false;
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.mClipToPadding) {
            invalidateGlows();
        }
        this.mClipToPadding = z;
        super.setClipToPadding(z);
        if (this.mFirstLayoutComplete) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(V v) {
        if (v == null) {
            throw null;
        }
        this.mEdgeEffectFactory = v;
        invalidateGlows();
    }

    public void setHasFixedSize(boolean z) {
        this.mHasFixedSize = z;
    }

    public void setItemAnimator(Z z) {
        Z z2 = this.mItemAnimator;
        if (z2 != null) {
            z2.g();
            this.mItemAnimator.f1123a = null;
        }
        this.mItemAnimator = z;
        if (z != null) {
            z.f1123a = this.mItemAnimatorListener;
        }
    }

    public void setItemViewCacheSize(int i) {
        n0 n0Var = this.mRecycler;
        n0Var.e = i;
        n0Var.m();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(AbstractC0176f0 abstractC0176f0) {
        if (abstractC0176f0 == this.mLayout) {
            return;
        }
        stopScroll();
        if (this.mLayout != null) {
            Z z = this.mItemAnimator;
            if (z != null) {
                z.g();
            }
            this.mLayout.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
            this.mRecycler.b();
            if (this.mIsAttached) {
                AbstractC0176f0 abstractC0176f02 = this.mLayout;
                n0 n0Var = this.mRecycler;
                abstractC0176f02.mIsAttachedToWindow = false;
                abstractC0176f02.onDetachedFromWindow(this, n0Var);
            }
            this.mLayout.setRecyclerView(null);
            this.mLayout = null;
        } else {
            this.mRecycler.b();
        }
        C0171d c0171d = this.mChildHelper;
        C0169c c0169c = c0171d.f1140b;
        c0169c.f1136a = 0L;
        C0169c c0169c2 = c0169c.f1137b;
        if (c0169c2 != null) {
            c0169c2.g();
        }
        int size = c0171d.f1141c.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            O o = c0171d.f1139a;
            View view = (View) c0171d.f1141c.get(size);
            Objects.requireNonNull(o);
            w0 childViewHolderInt = getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                o.f1119a.setChildImportantForAccessibilityInternal(childViewHolderInt, childViewHolderInt.mWasImportantForAccessibilityBeforeHidden);
                childViewHolderInt.mWasImportantForAccessibilityBeforeHidden = 0;
            }
            c0171d.f1141c.remove(size);
        }
        O o2 = c0171d.f1139a;
        int b2 = o2.b();
        for (int i = 0; i < b2; i++) {
            View a2 = o2.a(i);
            o2.f1119a.dispatchChildDetached(a2);
            a2.clearAnimation();
        }
        o2.f1119a.removeAllViews();
        this.mLayout = abstractC0176f0;
        if (abstractC0176f0 != null) {
            if (abstractC0176f0.mRecyclerView != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("LayoutManager ");
                sb.append(abstractC0176f0);
                sb.append(" is already attached to a RecyclerView:");
                throw new IllegalArgumentException(a.b(abstractC0176f0.mRecyclerView, sb));
            }
            abstractC0176f0.setRecyclerView(this);
            if (this.mIsAttached) {
                AbstractC0176f0 abstractC0176f03 = this.mLayout;
                abstractC0176f03.mIsAttachedToWindow = true;
                abstractC0176f03.onAttachedToWindow();
            }
        }
        this.mRecycler.m();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        f scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.f765d) {
            q.M(scrollingChildHelper.f764c);
        }
        scrollingChildHelper.f765d = z;
    }

    public void setOnFlingListener(AbstractC0182i0 abstractC0182i0) {
        this.mOnFlingListener = abstractC0182i0;
    }

    @Deprecated
    public void setOnScrollListener(AbstractC0186k0 abstractC0186k0) {
        this.mScrollListener = abstractC0186k0;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.mPreserveFocusAfterLayout = z;
    }

    public void setRecycledViewPool(m0 m0Var) {
        n0 n0Var = this.mRecycler;
        if (n0Var.g != null) {
            r0.f1186b--;
        }
        n0Var.g = m0Var;
        if (m0Var == null || n0Var.h.getAdapter() == null) {
            return;
        }
        n0Var.g.f1186b++;
    }

    public void setRecyclerListener(o0 o0Var) {
        this.mRecyclerListener = o0Var;
    }

    public void setScrollState(int i) {
        if (i == this.mScrollState) {
            return;
        }
        this.mScrollState = i;
        if (i != 2) {
            stopScrollersInternal();
        }
        dispatchOnScrollStateChanged(i);
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i != 0) {
            if (i == 1) {
                this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w(TAG, "setScrollingTouchSlop(): bad argument constant " + i + "; using default value");
        }
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(u0 u0Var) {
    }

    public boolean shouldDeferAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (!isComputingLayout()) {
            return false;
        }
        int contentChangeTypes = accessibilityEvent != null ? accessibilityEvent.getContentChangeTypes() : 0;
        this.mEatenAccessibilityChangeFlags |= contentChangeTypes != 0 ? contentChangeTypes : 0;
        return true;
    }

    public void smoothScrollBy(int i, int i2) {
        smoothScrollBy(i, i2, null);
    }

    public void smoothScrollToPosition(int i) {
        if (this.mLayoutSuppressed) {
            return;
        }
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            abstractC0176f0.smoothScrollToPosition(this, this.mState, i);
        }
    }

    public void startInterceptRequestLayout() {
        int i = this.mInterceptRequestLayoutDepth + 1;
        this.mInterceptRequestLayoutDepth = i;
        if (i != 1 || this.mLayoutSuppressed) {
            return;
        }
        this.mLayoutWasDefered = false;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return getScrollingChildHelper().h(i, 0);
    }

    public void stopInterceptRequestLayout(boolean z) {
        if (this.mInterceptRequestLayoutDepth < 1) {
            this.mInterceptRequestLayoutDepth = 1;
        }
        if (!z && !this.mLayoutSuppressed) {
            this.mLayoutWasDefered = false;
        }
        if (this.mInterceptRequestLayoutDepth == 1) {
            if (z && this.mLayoutWasDefered && !this.mLayoutSuppressed && this.mLayout != null && this.mAdapter != null) {
                dispatchLayout();
            }
            if (!this.mLayoutSuppressed) {
                this.mLayoutWasDefered = false;
            }
        }
        this.mInterceptRequestLayoutDepth--;
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        getScrollingChildHelper().i(0);
    }

    public void stopScroll() {
        setScrollState(0);
        stopScrollersInternal();
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        if (z != this.mLayoutSuppressed) {
            assertNotInLayoutOrScroll("Do not suppressLayout in layout or scroll");
            if (z) {
                long uptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, 0));
                this.mLayoutSuppressed = true;
                this.mIgnoreMotionEventTillDown = true;
                stopScroll();
                return;
            }
            this.mLayoutSuppressed = false;
            if (this.mLayoutWasDefered && this.mLayout != null && this.mAdapter != null) {
                requestLayout();
            }
            this.mLayoutWasDefered = false;
        }
    }

    public void swapAdapter(Q q, boolean z) {
        setLayoutFrozen(false);
        setAdapterInternal(q, true, z);
        processDataSetCompletelyChanged(true);
        requestLayout();
    }

    public void viewRangeUpdate(int i, int i2, Object obj) {
        int i3;
        int i4;
        int h = this.mChildHelper.h();
        int i5 = i2 + i;
        for (int i6 = 0; i6 < h; i6++) {
            View g = this.mChildHelper.g(i6);
            w0 childViewHolderInt = getChildViewHolderInt(g);
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && (i4 = childViewHolderInt.mPosition) >= i && i4 < i5) {
                childViewHolderInt.addFlags(2);
                childViewHolderInt.addChangePayload(obj);
                ((C0178g0) g.getLayoutParams()).f1155c = true;
            }
        }
        n0 n0Var = this.mRecycler;
        int size = n0Var.f1193c.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            w0 w0Var = (w0) n0Var.f1193c.get(size);
            if (w0Var != null && (i3 = w0Var.mPosition) >= i && i3 < i5) {
                w0Var.addFlags(2);
                n0Var.g(size);
            }
        }
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.android.systemui.shared.R.attr.recyclerViewStyle);
    }

    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        return getScrollingChildHelper().e(i, i2, i3, i4, iArr, i5, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0038 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public b.m.b.w0 findViewHolderForPosition(int r6, boolean r7) {
        /*
            r5 = this;
            b.m.b.d r0 = r5.mChildHelper
            int r0 = r0.h()
            r1 = 0
            r2 = 0
        L8:
            if (r2 >= r0) goto L3c
            b.m.b.d r3 = r5.mChildHelper
            android.view.View r3 = r3.g(r2)
            b.m.b.w0 r3 = getChildViewHolderInt(r3)
            if (r3 == 0) goto L39
            boolean r4 = r3.isRemoved()
            if (r4 != 0) goto L39
            if (r7 == 0) goto L23
            int r4 = r3.mPosition
            if (r4 == r6) goto L2a
            goto L39
        L23:
            int r4 = r3.getLayoutPosition()
            if (r4 == r6) goto L2a
            goto L39
        L2a:
            b.m.b.d r1 = r5.mChildHelper
            android.view.View r4 = r3.itemView
            java.util.List r1 = r1.f1141c
            boolean r1 = r1.contains(r4)
            if (r1 == 0) goto L38
            r1 = r3
            goto L39
        L38:
            return r3
        L39:
            int r2 = r2 + 1
            goto L8
        L3c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.findViewHolderForPosition(int, boolean):b.m.b.w0");
    }

    public void onExitLayoutOrScroll(boolean z) {
        int i = this.mLayoutOrScrollCounter - 1;
        this.mLayoutOrScrollCounter = i;
        if (i < 1) {
            this.mLayoutOrScrollCounter = 0;
            if (z) {
                dispatchContentChangedIfNecessary();
                dispatchPendingImportantForAccessibilityChanges();
            }
        }
    }

    public void smoothScrollBy(int i, int i2, Interpolator interpolator) {
        smoothScrollBy(i, i2, interpolator, UNDEFINED_DURATION);
    }

    public class SavedState extends AbsSavedState {
        public static final Parcelable.Creator CREATOR = new q0();

        /* renamed from: c, reason: collision with root package name */
        public Parcelable f192c;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f192c = parcel.readParcelable(classLoader == null ? AbstractC0176f0.class.getClassLoader() : classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f94a, i);
            parcel.writeParcelable(this.f192c, 0);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int[] iArr = b.m.a.f1075a;
        this.mObserver = new p0(this);
        this.mRecycler = new n0(this);
        this.mViewInfoStore = new L0();
        this.mUpdateChildViewsRunnable = new K(this);
        this.mTempRect = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRectF = new RectF();
        this.mItemDecorations = new ArrayList();
        this.mOnItemTouchListeners = new ArrayList();
        this.mInterceptRequestLayoutDepth = 0;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        this.mLayoutOrScrollCounter = 0;
        this.mDispatchScrollCounter = 0;
        this.mEdgeEffectFactory = new V();
        this.mItemAnimator = new C0191o();
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScaledHorizontalScrollFactor = Float.MIN_VALUE;
        this.mScaledVerticalScrollFactor = Float.MIN_VALUE;
        this.mPreserveFocusAfterLayout = true;
        this.mViewFlinger = new v0(this);
        this.mPrefetchRegistry = ALLOW_THREAD_GAP_WORK ? new C0196u() : null;
        this.mState = new t0();
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        this.mItemAnimatorListener = new C0166a0(this);
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[2];
        this.mScrollOffset = new int[2];
        this.mNestedOffsets = new int[2];
        this.mReusableIntPair = new int[2];
        this.mPendingAccessibilityImportanceChange = new ArrayList();
        this.mItemAnimatorRunner = new L(this);
        this.mViewInfoProcessCallback = new N(this);
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mScaledHorizontalScrollFactor = viewConfiguration.getScaledHorizontalScrollFactor();
        this.mScaledVerticalScrollFactor = viewConfiguration.getScaledVerticalScrollFactor();
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.mItemAnimator.f1123a = this.mItemAnimatorListener;
        initAdapterManager();
        initChildrenHelper();
        initAutofill();
        if (q.g(this) == 0) {
            setImportantForAccessibility(1);
        }
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new y0(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        saveAttributeDataForStyleable(context, iArr, attributeSet, obtainStyledAttributes, i, 0);
        String string = obtainStyledAttributes.getString(8);
        if (obtainStyledAttributes.getInt(2, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.mClipToPadding = obtainStyledAttributes.getBoolean(1, true);
        boolean z = obtainStyledAttributes.getBoolean(3, false);
        this.mEnableFastScroller = z;
        if (z) {
            initFastScroller((StateListDrawable) obtainStyledAttributes.getDrawable(6), obtainStyledAttributes.getDrawable(7), (StateListDrawable) obtainStyledAttributes.getDrawable(4), obtainStyledAttributes.getDrawable(5));
        }
        obtainStyledAttributes.recycle();
        createLayoutManager(context, string, attributeSet, i, 0);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, NESTED_SCROLLING_ATTRS, i, 0);
        saveAttributeDataForStyleable(context, NESTED_SCROLLING_ATTRS, attributeSet, obtainStyledAttributes2, i, 0);
        boolean z2 = obtainStyledAttributes2.getBoolean(0, true);
        obtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z2);
    }

    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return getScrollingChildHelper().c(i, i2, iArr, iArr2, i3);
    }

    public boolean hasNestedScrollingParent(int i) {
        return getScrollingChildHelper().f(i) != null;
    }

    public void smoothScrollBy(int i, int i2, Interpolator interpolator, int i3) {
        smoothScrollBy(i, i2, interpolator, i3, false);
    }

    public boolean startNestedScroll(int i, int i2) {
        return getScrollingChildHelper().h(i, i2);
    }

    public void stopNestedScroll(int i) {
        getScrollingChildHelper().i(i);
    }

    public final void dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        getScrollingChildHelper().e(i, i2, i3, i4, iArr, i5, iArr2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 != null) {
            return abstractC0176f0.generateLayoutParams(layoutParams);
        }
        throw new IllegalStateException(a.b(this, a.f("RecyclerView has no LayoutManager")));
    }

    public void smoothScrollBy(int i, int i2, Interpolator interpolator, int i3, boolean z) {
        AbstractC0176f0 abstractC0176f0 = this.mLayout;
        if (abstractC0176f0 == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        if (!abstractC0176f0.canScrollHorizontally()) {
            i = 0;
        }
        if (!this.mLayout.canScrollVertically()) {
            i2 = 0;
        }
        if (i == 0 && i2 == 0) {
            return;
        }
        if (i3 == Integer.MIN_VALUE || i3 > 0) {
            if (z) {
                int i4 = i != 0 ? 1 : 0;
                if (i2 != 0) {
                    i4 |= 2;
                }
                startNestedScroll(i4, 1);
            }
            this.mViewFlinger.b(i, i2, i3, interpolator);
            return;
        }
        scrollBy(i, i2);
    }

    public void addItemDecoration(AbstractC0168b0 abstractC0168b0) {
        addItemDecoration(abstractC0168b0, -1);
    }
}
