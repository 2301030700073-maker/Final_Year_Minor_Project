package androidx.recyclerview.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.collection.LongSparseArray;
import androidx.collection.SimpleArrayMap;
import androidx.compose.material3.FabPlacement;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0;
import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import androidx.core.os.BundleKt;
import androidx.core.os.TraceCompat;
import androidx.core.util.Pools$SimplePool;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.DifferentialMotionFlingController;
import androidx.core.view.DifferentialMotionFlingTarget;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.poolingcontainer.PoolingContainerListener;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.R$styleable;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.DefaultItemAnimator.AnonymousClass4;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import androidx.transition.Transition;
import androidx.viewpager.widget.ViewPager;
import coil3.Extras;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonBuilder;
import io.reactivex.rxjava3.internal.util.OpenHashSet;
import j$.util.DesugarCollections;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.http1.HeadersReader;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements NestedScrollingChild {
    public static final Class[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
    public static boolean sDebugAssertionsEnabled = false;
    public static final StretchEdgeEffectFactory sDefaultEdgeEffectFactory;
    public static final ViewPager.AnonymousClass2 sQuinticInterpolator;
    public static boolean sVerboseLoggingEnabled = false;
    public RecyclerViewAccessibilityDelegate mAccessibilityDelegate;
    public final AccessibilityManager mAccessibilityManager;
    public Adapter mAdapter;
    public final RulerTrackingMap mAdapterHelper;
    public boolean mAdapterUpdateDuringMeasure;
    public EdgeEffect mBottomGlow;
    public final ChildHelper mChildHelper;
    public boolean mClipToPadding;
    public boolean mDataSetHasChangedAfterLayout;
    public final DifferentialMotionFlingController mDifferentialMotionFlingController;
    public boolean mDispatchItemsChangedEvent;
    public int mDispatchScrollCounter;
    public int mEatenAccessibilityChangeFlags;
    public EdgeEffectFactory mEdgeEffectFactory;
    public boolean mFirstLayoutComplete;
    public GapWorker mGapWorker;
    public boolean mHasFixedSize;
    public boolean mIgnoreMotionEventTillDown;
    public int mInitialTouchX;
    public int mInitialTouchY;
    public int mInterceptRequestLayoutDepth;
    public OnItemTouchListener mInterceptingOnItemTouchListener;
    public boolean mIsAttached;
    public ItemAnimator mItemAnimator;
    public final AnonymousClass7 mItemAnimatorListener;
    public final AnonymousClass1 mItemAnimatorRunner;
    public final ArrayList mItemDecorations;
    public boolean mItemsAddedOrRemoved;
    public boolean mItemsChanged;
    public int mLastAutoMeasureNonExactMeasuredHeight;
    public int mLastAutoMeasureNonExactMeasuredWidth;
    public boolean mLastAutoMeasureSkippedDueToExact;
    public int mLastTouchX;
    public int mLastTouchY;
    public LayoutManager mLayout;
    public int mLayoutOrScrollCounter;
    public boolean mLayoutSuppressed;
    public boolean mLayoutWasDefered;
    public EdgeEffect mLeftGlow;
    public final boolean mLowResRotaryEncoderFeature;
    public final int mMaxFlingVelocity;
    public final int mMinFlingVelocity;
    public final int[] mMinMaxLayoutPositions;
    public final int[] mNestedOffsets;
    public final RecyclerViewDataObserver mObserver;
    public ArrayList mOnChildAttachStateListeners;
    public final ArrayList mOnItemTouchListeners;
    public final ArrayList mPendingAccessibilityImportanceChange;
    public SavedState mPendingSavedState;
    public final float mPhysicalCoef;
    public boolean mPostedAnimatorRunner;
    public final OpenHashSet mPrefetchRegistry;
    public boolean mPreserveFocusAfterLayout;
    public final Recycler mRecycler;
    public final ArrayList mRecyclerListeners;
    public final int[] mReusableIntPair;
    public EdgeEffect mRightGlow;
    public final float mScaledHorizontalScrollFactor;
    public final float mScaledVerticalScrollFactor;
    public OnScrollListener mScrollListener;
    public ArrayList mScrollListeners;
    public final int[] mScrollOffset;
    public int mScrollPointerId;
    public int mScrollState;
    public NestedScrollingChildHelper mScrollingChildHelper;
    public final State mState;
    public final Rect mTempRect;
    public final Rect mTempRect2;
    public final RectF mTempRectF;
    public EdgeEffect mTopGlow;
    public int mTouchSlop;
    public final AnonymousClass1 mUpdateChildViewsRunnable;
    public VelocityTracker mVelocityTracker;
    public final ViewFlinger mViewFlinger;
    public final AnonymousClass7 mViewInfoProcessCallback;
    public final JsonBuilder mViewInfoStore;
    public static final int[] NESTED_SCROLLING_ATTRS = {R.attr.nestedScrollingEnabled};
    public static final float DECELERATION_RATE = (float) (Math.log(0.78d) / Math.log(0.9d));
    public static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC = true;
    public static final boolean ALLOW_THREAD_GAP_WORK = true;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.recyclerview.widget.RecyclerView$7, reason: invalid class name */
    public final class AnonymousClass7 implements DifferentialMotionFlingTarget {
        public /* synthetic */ AnonymousClass7() {
        }

        public void dispatchUpdate(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
            int i = adapterHelper$UpdateOp.cmd;
            RecyclerView recyclerView = RecyclerView.this;
            if (i == 1) {
                recyclerView.mLayout.onItemsAdded(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
                return;
            }
            if (i == 2) {
                recyclerView.mLayout.onItemsRemoved(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
            } else if (i == 4) {
                recyclerView.mLayout.onItemsUpdated(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
            } else {
                if (i != 8) {
                    return;
                }
                recyclerView.mLayout.onItemsMoved(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
            }
        }

        public ViewHolder findViewHolder(int i) {
            RecyclerView recyclerView = RecyclerView.this;
            int unfilteredChildCount = recyclerView.mChildHelper.getUnfilteredChildCount();
            int i2 = 0;
            ViewHolder viewHolder = null;
            while (true) {
                if (i2 >= unfilteredChildCount) {
                    break;
                }
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.getUnfilteredChildAt(i2));
                if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && childViewHolderInt.mPosition == i) {
                    if (!((ArrayList) recyclerView.mChildHelper.mHiddenViews).contains(childViewHolderInt.itemView)) {
                        viewHolder = childViewHolderInt;
                        break;
                    }
                    viewHolder = childViewHolderInt;
                }
                i2++;
            }
            if (viewHolder != null) {
                if (!((ArrayList) recyclerView.mChildHelper.mHiddenViews).contains(viewHolder.itemView)) {
                    return viewHolder;
                }
                if (RecyclerView.sVerboseLoggingEnabled) {
                    Log.d("RecyclerView", "assuming view holder cannot be find because it is hidden");
                }
            }
            return null;
        }

        @Override // androidx.core.view.DifferentialMotionFlingTarget
        public float getScaledScrollFactor() {
            float f;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mLayout.canScrollVertically()) {
                f = recyclerView.mScaledVerticalScrollFactor;
            } else {
                if (!recyclerView.mLayout.canScrollHorizontally()) {
                    return 0.0f;
                }
                f = recyclerView.mScaledHorizontalScrollFactor;
            }
            return -f;
        }

        public void markViewHoldersUpdated(int i, int i2, Object obj) {
            int i3;
            int i4;
            RecyclerView recyclerView = RecyclerView.this;
            int unfilteredChildCount = recyclerView.mChildHelper.getUnfilteredChildCount();
            int i5 = i2 + i;
            for (int i6 = 0; i6 < unfilteredChildCount; i6++) {
                View unfilteredChildAt = recyclerView.mChildHelper.getUnfilteredChildAt(i6);
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(unfilteredChildAt);
                if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && (i4 = childViewHolderInt.mPosition) >= i && i4 < i5) {
                    childViewHolderInt.addFlags(2);
                    childViewHolderInt.addChangePayload(obj);
                    ((LayoutParams) unfilteredChildAt.getLayoutParams()).mInsetsDirty = true;
                }
            }
            Recycler recycler = recyclerView.mRecycler;
            ArrayList arrayList = recycler.mCachedViews;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ViewHolder viewHolder = (ViewHolder) arrayList.get(size);
                if (viewHolder != null && (i3 = viewHolder.mPosition) >= i && i3 < i5) {
                    viewHolder.addFlags(2);
                    recycler.recycleCachedViewAt(size);
                }
            }
            recyclerView.mItemsChanged = true;
        }

        public void offsetPositionsForAdd(int i, int i2) {
            RecyclerView recyclerView = RecyclerView.this;
            int unfilteredChildCount = recyclerView.mChildHelper.getUnfilteredChildCount();
            for (int i3 = 0; i3 < unfilteredChildCount; i3++) {
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.getUnfilteredChildAt(i3));
                if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= i) {
                    if (RecyclerView.sVerboseLoggingEnabled) {
                        Log.d("RecyclerView", "offsetPositionRecordsForInsert attached child " + i3 + " holder " + childViewHolderInt + " now at position " + (childViewHolderInt.mPosition + i2));
                    }
                    childViewHolderInt.offsetPosition(i2, false);
                    recyclerView.mState.mStructureChanged = true;
                }
            }
            ArrayList arrayList = recyclerView.mRecycler.mCachedViews;
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                ViewHolder viewHolder = (ViewHolder) arrayList.get(i4);
                if (viewHolder != null && viewHolder.mPosition >= i) {
                    if (RecyclerView.sVerboseLoggingEnabled) {
                        Log.d("RecyclerView", "offsetPositionRecordsForInsert cached " + i4 + " holder " + viewHolder + " now at position " + (viewHolder.mPosition + i2));
                    }
                    viewHolder.offsetPosition(i2, false);
                }
            }
            recyclerView.requestLayout();
            recyclerView.mItemsAddedOrRemoved = true;
        }

        public void offsetPositionsForMove(int i, int i2) {
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            int i8;
            int i9;
            RecyclerView recyclerView = RecyclerView.this;
            int unfilteredChildCount = recyclerView.mChildHelper.getUnfilteredChildCount();
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
            for (int i11 = 0; i11 < unfilteredChildCount; i11++) {
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.getUnfilteredChildAt(i11));
                if (childViewHolderInt != null && (i9 = childViewHolderInt.mPosition) >= i4 && i9 <= i3) {
                    if (RecyclerView.sVerboseLoggingEnabled) {
                        Log.d("RecyclerView", "offsetPositionRecordsForMove attached child " + i11 + " holder " + childViewHolderInt);
                    }
                    if (childViewHolderInt.mPosition == i) {
                        childViewHolderInt.offsetPosition(i2 - i, false);
                    } else {
                        childViewHolderInt.offsetPosition(i5, false);
                    }
                    recyclerView.mState.mStructureChanged = true;
                }
            }
            ArrayList arrayList = recyclerView.mRecycler.mCachedViews;
            if (i < i2) {
                i7 = i;
                i6 = i2;
            } else {
                i6 = i;
                i7 = i2;
                i10 = 1;
            }
            int size = arrayList.size();
            for (int i12 = 0; i12 < size; i12++) {
                ViewHolder viewHolder = (ViewHolder) arrayList.get(i12);
                if (viewHolder != null && (i8 = viewHolder.mPosition) >= i7 && i8 <= i6) {
                    if (i8 == i) {
                        viewHolder.offsetPosition(i2 - i, false);
                    } else {
                        viewHolder.offsetPosition(i10, false);
                    }
                    if (RecyclerView.sVerboseLoggingEnabled) {
                        Log.d("RecyclerView", "offsetPositionRecordsForMove cached child " + i12 + " holder " + viewHolder);
                    }
                }
            }
            recyclerView.requestLayout();
            recyclerView.mItemsAddedOrRemoved = true;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x003a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void processAppeared(androidx.recyclerview.widget.RecyclerView.ViewHolder r8, androidx.compose.material3.FabPlacement r9, androidx.compose.material3.FabPlacement r10) {
            /*
                r7 = this;
                r0 = 0
                r8.setIsRecyclable(r0)
                androidx.recyclerview.widget.RecyclerView r7 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$ItemAnimator r0 = r7.mItemAnimator
                r1 = r0
                androidx.recyclerview.widget.DefaultItemAnimator r1 = (androidx.recyclerview.widget.DefaultItemAnimator) r1
                if (r9 == 0) goto L1d
                r1.getClass()
                int r3 = r9.left
                int r5 = r10.left
                if (r3 != r5) goto L1f
                int r0 = r9.height
                int r2 = r10.height
                if (r0 == r2) goto L1d
                goto L1f
            L1d:
                r2 = r8
                goto L29
            L1f:
                int r4 = r9.height
                int r6 = r10.height
                r2 = r8
                boolean r8 = r1.animateMove(r2, r3, r4, r5, r6)
                goto L38
            L29:
                r1.resetAnimation(r2)
                android.view.View r8 = r2.itemView
                r9 = 0
                r8.setAlpha(r9)
                java.util.ArrayList r8 = r1.mPendingAdditions
                r8.add(r2)
                r8 = 1
            L38:
                if (r8 == 0) goto L3d
                r7.postAnimationRunner()
            L3d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.AnonymousClass7.processAppeared(androidx.recyclerview.widget.RecyclerView$ViewHolder, androidx.compose.material3.FabPlacement, androidx.compose.material3.FabPlacement):void");
        }

        public void processDisappeared(ViewHolder viewHolder, FabPlacement fabPlacement, FabPlacement fabPlacement2) {
            boolean z;
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.mRecycler.unscrapView(viewHolder);
            recyclerView.addAnimatingView(viewHolder);
            viewHolder.setIsRecyclable(false);
            DefaultItemAnimator defaultItemAnimator = (DefaultItemAnimator) recyclerView.mItemAnimator;
            defaultItemAnimator.getClass();
            int i = fabPlacement.left;
            int i2 = fabPlacement.height;
            View view = viewHolder.itemView;
            int left = fabPlacement2 == null ? view.getLeft() : fabPlacement2.left;
            int top = fabPlacement2 == null ? view.getTop() : fabPlacement2.height;
            if (viewHolder.isRemoved() || (i == left && i2 == top)) {
                defaultItemAnimator.resetAnimation(viewHolder);
                defaultItemAnimator.mPendingRemovals.add(viewHolder);
                z = true;
            } else {
                view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                z = defaultItemAnimator.animateMove(viewHolder, i, i2, left, top);
            }
            if (z) {
                recyclerView.postAnimationRunner();
            }
        }

        public void removeViewAt(int i) {
            RecyclerView recyclerView = RecyclerView.this;
            View childAt = recyclerView.getChildAt(i);
            if (childAt != null) {
                recyclerView.dispatchChildDetached(childAt);
                childAt.clearAnimation();
            }
            recyclerView.removeViewAt(i);
        }

        @Override // androidx.core.view.DifferentialMotionFlingTarget
        public boolean startDifferentialMotionFling(float f) {
            int i;
            int i2;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mLayout.canScrollVertically()) {
                i2 = (int) f;
                i = 0;
            } else if (recyclerView.mLayout.canScrollHorizontally()) {
                i = (int) f;
                i2 = 0;
            } else {
                i = 0;
                i2 = 0;
            }
            if (i == 0 && i2 == 0) {
                return false;
            }
            recyclerView.stopScroll();
            return recyclerView.fling(i, i2, 0, com.google.android.exoplayer2.util.Log.LOG_LEVEL_OFF);
        }

        @Override // androidx.core.view.DifferentialMotionFlingTarget
        public void stopDifferentialMotionFling() {
            RecyclerView.this.stopScroll();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class AdapterDataObservable extends Observable {
        public final boolean hasObservers() {
            return !((Observable) this).mObservers.isEmpty();
        }

        public final void notifyChanged() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onChanged();
            }
        }

        public final void notifyItemMoved(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeMoved(i, i2);
            }
        }

        public final void notifyItemRangeChanged(int i, int i2, Object obj) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeChanged(i, i2, obj);
            }
        }

        public final void notifyItemRangeInserted(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeInserted(i, i2);
            }
        }

        public final void notifyItemRangeRemoved(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeRemoved(i, i2);
            }
        }

        public final void notifyStateRestorationPolicyChanged() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onStateRestorationPolicyChanged();
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Api35Impl {
        public static void setFrameContentVelocity(View view, float f) {
            try {
                view.setFrameContentVelocity(f);
            } catch (LinkageError unused) {
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface ChildDrawingOrderCallback {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class EdgeEffectFactory {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class ItemAnimator {
        public long mAddDuration;
        public long mChangeDuration;
        public ArrayList mFinishedListeners;
        public AnonymousClass7 mListener;
        public long mMoveDuration;
        public long mRemoveDuration;

        public static void buildAdapterChangeFlagsForAnimations(ViewHolder viewHolder) {
            int i = viewHolder.mFlags;
            if (!viewHolder.isInvalid() && (i & 4) == 0) {
                viewHolder.getOldPosition();
                viewHolder.getAbsoluteAdapterPosition();
            }
        }

        public abstract boolean animateChange(ViewHolder viewHolder, ViewHolder viewHolder2, FabPlacement fabPlacement, FabPlacement fabPlacement2);

        /* JADX WARN: Removed duplicated region for block: B:16:0x006c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void dispatchAnimationFinished(androidx.recyclerview.widget.RecyclerView.ViewHolder r10) {
            /*
                r9 = this;
                androidx.recyclerview.widget.RecyclerView$7 r9 = r9.mListener
                if (r9 == 0) goto Lb0
                androidx.recyclerview.widget.RecyclerView r9 = androidx.recyclerview.widget.RecyclerView.this
                r0 = 1
                r10.setIsRecyclable(r0)
                androidx.recyclerview.widget.RecyclerView$ViewHolder r1 = r10.mShadowedHolder
                r2 = 0
                if (r1 == 0) goto L15
                androidx.recyclerview.widget.RecyclerView$ViewHolder r1 = r10.mShadowingHolder
                if (r1 != 0) goto L15
                r10.mShadowedHolder = r2
            L15:
                r10.mShadowingHolder = r2
                boolean r1 = r10.shouldBeKeptAsChild()
                if (r1 != 0) goto Lb0
                android.view.View r1 = r10.itemView
                androidx.recyclerview.widget.RecyclerView$Recycler r2 = r9.mRecycler
                r9.startInterceptRequestLayout()
                androidx.recyclerview.widget.ChildHelper r3 = r9.mChildHelper
                java.lang.Object r4 = r3.mBucket
                okhttp3.internal.http1.HeadersReader r4 = (okhttp3.internal.http1.HeadersReader) r4
                java.lang.Object r5 = r3.mCallback
                androidx.recyclerview.widget.RecyclerView$7 r5 = (androidx.recyclerview.widget.RecyclerView.AnonymousClass7) r5
                int r6 = r3.mRemoveStatus
                r7 = 0
                if (r6 != r0) goto L41
                java.lang.Object r0 = r3.mViewInRemoveView
                android.view.View r0 = (android.view.View) r0
                if (r0 != r1) goto L3b
            L39:
                r0 = r7
                goto L6a
            L3b:
                java.lang.String r9 = "Cannot call removeViewIfHidden within removeView(At) for a different view"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r9)
                return
            L41:
                r8 = 2
                if (r6 == r8) goto Lab
                r3.mRemoveStatus = r8     // Catch: java.lang.Throwable -> L55
                androidx.recyclerview.widget.RecyclerView r6 = androidx.recyclerview.widget.RecyclerView.this     // Catch: java.lang.Throwable -> L55
                int r6 = r6.indexOfChild(r1)     // Catch: java.lang.Throwable -> L55
                r8 = -1
                if (r6 != r8) goto L57
                r3.unhideViewInternal(r1)     // Catch: java.lang.Throwable -> L55
            L52:
                r3.mRemoveStatus = r7
                goto L6a
            L55:
                r9 = move-exception
                goto La8
            L57:
                boolean r8 = r4.get(r6)     // Catch: java.lang.Throwable -> L55
                if (r8 == 0) goto L67
                r4.remove(r6)     // Catch: java.lang.Throwable -> L55
                r3.unhideViewInternal(r1)     // Catch: java.lang.Throwable -> L55
                r5.removeViewAt(r6)     // Catch: java.lang.Throwable -> L55
                goto L52
            L67:
                r3.mRemoveStatus = r7
                goto L39
            L6a:
                if (r0 == 0) goto L95
                androidx.recyclerview.widget.RecyclerView$ViewHolder r3 = androidx.recyclerview.widget.RecyclerView.getChildViewHolderInt(r1)
                r2.unscrapView(r3)
                r2.recycleViewHolderInternal(r3)
                boolean r2 = androidx.recyclerview.widget.RecyclerView.sVerboseLoggingEnabled
                if (r2 == 0) goto L95
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                java.lang.String r3 = "after removing animated view: "
                r2.<init>(r3)
                r2.append(r1)
                java.lang.String r1 = ", "
                r2.append(r1)
                r2.append(r9)
                java.lang.String r1 = r2.toString()
                java.lang.String r2 = "RecyclerView"
                android.util.Log.d(r2, r1)
            L95:
                r1 = r0 ^ 1
                r9.stopInterceptRequestLayout(r1)
                if (r0 != 0) goto Lb0
                boolean r0 = r10.isTmpDetached()
                if (r0 == 0) goto Lb0
                android.view.View r10 = r10.itemView
                r9.removeDetachedView(r10, r7)
                return
            La8:
                r3.mRemoveStatus = r7
                throw r9
            Lab:
                java.lang.String r9 = "Cannot call removeViewIfHidden within removeViewIfHidden"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r9)
            Lb0:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.ItemAnimator.dispatchAnimationFinished(androidx.recyclerview.widget.RecyclerView$ViewHolder):void");
        }

        public abstract void endAnimation(ViewHolder viewHolder);

        public abstract void endAnimations();

        public abstract boolean isRunning();
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class OnFlingListener {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface OnItemTouchListener {
        boolean onInterceptTouchEvent(MotionEvent motionEvent);

        void onRequestDisallowInterceptTouchEvent(boolean z);

        void onTouchEvent(MotionEvent motionEvent);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class RecycledViewPool {
        public int mAttachCountForClearing;
        public Set mAttachedAdaptersForPoolingContainer;
        public SparseArray mScrap;

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class ScrapData {
            public final ArrayList mScrapHeap = new ArrayList();
            public final int mMaxScrap = 5;
            public long mCreateRunningAverageNs = 0;
            public long mBindRunningAverageNs = 0;
        }

        public final ScrapData getScrapDataForType(int i) {
            SparseArray sparseArray = this.mScrap;
            ScrapData scrapData = (ScrapData) sparseArray.get(i);
            if (scrapData != null) {
                return scrapData;
            }
            ScrapData scrapData2 = new ScrapData();
            sparseArray.put(i, scrapData2);
            return scrapData2;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Recycler {
        public final ArrayList mAttachedScrap;
        public final ArrayList mCachedViews;
        public ArrayList mChangedScrap;
        public RecycledViewPool mRecyclerPool;
        public int mRequestedCacheMax;
        public final List mUnmodifiableAttachedScrap;
        public int mViewCacheMax;

        public Recycler() {
            ArrayList arrayList = new ArrayList();
            this.mAttachedScrap = arrayList;
            this.mChangedScrap = null;
            this.mCachedViews = new ArrayList();
            this.mUnmodifiableAttachedScrap = DesugarCollections.unmodifiableList(arrayList);
            this.mRequestedCacheMax = 2;
            this.mViewCacheMax = 2;
        }

        public final void addViewHolderToRecycledViewPool(ViewHolder viewHolder, boolean z) {
            RecyclerView.clearNestedRecyclerViewIfNotNested(viewHolder);
            View view = viewHolder.itemView;
            RecyclerView recyclerView = RecyclerView.this;
            RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate = recyclerView.mAccessibilityDelegate;
            if (recyclerViewAccessibilityDelegate != null) {
                AccessibilityDelegateCompat itemDelegate = recyclerViewAccessibilityDelegate.getItemDelegate();
                ViewCompat.setAccessibilityDelegate(view, itemDelegate instanceof RecyclerViewAccessibilityDelegate.ItemDelegate ? (AccessibilityDelegateCompat) ((RecyclerViewAccessibilityDelegate.ItemDelegate) itemDelegate).mOriginalItemDelegates.remove(view) : null);
            }
            if (z) {
                ArrayList arrayList = recyclerView.mRecyclerListeners;
                if (arrayList.size() > 0) {
                    arrayList.get(0).getClass();
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
                    return;
                }
                Adapter adapter = recyclerView.mAdapter;
                if (adapter != null) {
                    adapter.onViewRecycled(viewHolder);
                }
                if (recyclerView.mState != null) {
                    recyclerView.mViewInfoStore.removeViewHolder(viewHolder);
                }
                if (RecyclerView.sVerboseLoggingEnabled) {
                    Log.d("RecyclerView", "dispatchViewRecycled: " + viewHolder);
                }
            }
            viewHolder.mBindingAdapter = null;
            viewHolder.mOwnerRecyclerView = null;
            RecycledViewPool recycledViewPool = getRecycledViewPool();
            recycledViewPool.getClass();
            int itemViewType = viewHolder.getItemViewType();
            ArrayList arrayList2 = recycledViewPool.getScrapDataForType(itemViewType).mScrapHeap;
            if (((RecycledViewPool.ScrapData) recycledViewPool.mScrap.get(itemViewType)).mMaxScrap <= arrayList2.size()) {
                BundleKt.callPoolingContainerOnRelease(viewHolder.itemView);
            } else if (RecyclerView.sDebugAssertionsEnabled && arrayList2.contains(viewHolder)) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("this scrap item already exists");
            } else {
                viewHolder.resetInternal();
                arrayList2.add(viewHolder);
            }
        }

        public final int convertPreLayoutPositionToPostLayout(int i) {
            RecyclerView recyclerView = RecyclerView.this;
            State state = recyclerView.mState;
            if (i >= 0 && i < state.getItemCount()) {
                return !state.mInPreLayout ? i : recyclerView.mAdapterHelper.findPositionOffset(i, 0);
            }
            StringBuilder m179m = Modifier.CC.m179m("invalid position ", i, ". State item count is ");
            m179m.append(state.getItemCount());
            m179m.append(recyclerView.exceptionLabel());
            throw new IndexOutOfBoundsException(m179m.toString());
        }

        public final RecycledViewPool getRecycledViewPool() {
            if (this.mRecyclerPool == null) {
                RecycledViewPool recycledViewPool = new RecycledViewPool();
                recycledViewPool.mScrap = new SparseArray();
                recycledViewPool.mAttachCountForClearing = 0;
                recycledViewPool.mAttachedAdaptersForPoolingContainer = Collections.newSetFromMap(new IdentityHashMap());
                this.mRecyclerPool = recycledViewPool;
                maybeSendPoolingContainerAttach();
            }
            return this.mRecyclerPool;
        }

        public final void maybeSendPoolingContainerAttach() {
            RecyclerView recyclerView;
            Adapter adapter;
            RecycledViewPool recycledViewPool = this.mRecyclerPool;
            if (recycledViewPool == null || (adapter = (recyclerView = RecyclerView.this).mAdapter) == null || !recyclerView.mIsAttached) {
                return;
            }
            recycledViewPool.mAttachedAdaptersForPoolingContainer.add(adapter);
        }

        public final void poolingContainerDetach(Adapter adapter, boolean z) {
            RecycledViewPool recycledViewPool = this.mRecyclerPool;
            if (recycledViewPool != null) {
                SparseArray sparseArray = recycledViewPool.mScrap;
                Set set = recycledViewPool.mAttachedAdaptersForPoolingContainer;
                set.remove(adapter);
                if (set.size() != 0 || z) {
                    return;
                }
                for (int i = 0; i < sparseArray.size(); i++) {
                    ArrayList arrayList = ((RecycledViewPool.ScrapData) sparseArray.get(sparseArray.keyAt(i))).mScrapHeap;
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        BundleKt.callPoolingContainerOnRelease(((ViewHolder) arrayList.get(i2)).itemView);
                    }
                }
            }
        }

        public final void recycleAndClearCachedViews() {
            ArrayList arrayList = this.mCachedViews;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                recycleCachedViewAt(size);
            }
            arrayList.clear();
            if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                OpenHashSet openHashSet = RecyclerView.this.mPrefetchRegistry;
                int[] iArr = (int[]) openHashSet.keys;
                if (iArr != null) {
                    Arrays.fill(iArr, -1);
                }
                openHashSet.maxSize = 0;
            }
        }

        public final void recycleCachedViewAt(int i) {
            if (RecyclerView.sVerboseLoggingEnabled) {
                Log.d("RecyclerView", "Recycling cached view at index " + i);
            }
            ArrayList arrayList = this.mCachedViews;
            ViewHolder viewHolder = (ViewHolder) arrayList.get(i);
            if (RecyclerView.sVerboseLoggingEnabled) {
                Log.d("RecyclerView", "CachedViewHolder to be recycled: " + viewHolder);
            }
            addViewHolderToRecycledViewPool(viewHolder, true);
            arrayList.remove(i);
        }

        public final void recycleView(View view) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            boolean isTmpDetached = childViewHolderInt.isTmpDetached();
            RecyclerView recyclerView = RecyclerView.this;
            if (isTmpDetached) {
                recyclerView.removeDetachedView(view, false);
            }
            if (childViewHolderInt.isScrap()) {
                childViewHolderInt.unScrap();
            } else if (childViewHolderInt.wasReturnedFromScrap()) {
                childViewHolderInt.clearReturnedFromScrapFlag();
            }
            recycleViewHolderInternal(childViewHolderInt);
            if (recyclerView.mItemAnimator == null || childViewHolderInt.isRecyclable()) {
                return;
            }
            recyclerView.mItemAnimator.endAnimation(childViewHolderInt);
        }

        /* JADX WARN: Code restructure failed: missing block: B:68:0x00d1, code lost:
        
            r5 = r5 - 1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void recycleViewHolderInternal(androidx.recyclerview.widget.RecyclerView.ViewHolder r12) {
            /*
                Method dump skipped, instructions count: 333
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.Recycler.recycleViewHolderInternal(androidx.recyclerview.widget.RecyclerView$ViewHolder):void");
        }

        public final void scrapView(View view) {
            ItemAnimator itemAnimator;
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            boolean hasAnyOfTheFlags = childViewHolderInt.hasAnyOfTheFlags(12);
            RecyclerView recyclerView = RecyclerView.this;
            if (!hasAnyOfTheFlags && childViewHolderInt.isUpdated() && (itemAnimator = recyclerView.mItemAnimator) != null) {
                DefaultItemAnimator defaultItemAnimator = (DefaultItemAnimator) itemAnimator;
                if (childViewHolderInt.getUnmodifiedPayloads().isEmpty() && defaultItemAnimator.mSupportsChangeAnimations && !childViewHolderInt.isInvalid()) {
                    if (this.mChangedScrap == null) {
                        this.mChangedScrap = new ArrayList();
                    }
                    childViewHolderInt.setScrapContainer(this, true);
                    this.mChangedScrap.add(childViewHolderInt);
                    return;
                }
            }
            if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !recyclerView.mAdapter.hasStableIds()) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.".concat(recyclerView.exceptionLabel()));
            } else {
                childViewHolderInt.setScrapContainer(this, false);
                this.mAttachedScrap.add(childViewHolderInt);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:186:0x04ad, code lost:
        
            if ((r13 + r11) >= r30) goto L241;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:148:0x0427  */
        /* JADX WARN: Removed duplicated region for block: B:157:0x0550  */
        /* JADX WARN: Removed duplicated region for block: B:160:0x0574 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:165:0x055c  */
        /* JADX WARN: Removed duplicated region for block: B:183:0x049e  */
        /* JADX WARN: Removed duplicated region for block: B:189:0x04b5  */
        /* JADX WARN: Removed duplicated region for block: B:192:0x04cf  */
        /* JADX WARN: Removed duplicated region for block: B:195:0x04ea  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0083  */
        /* JADX WARN: Removed duplicated region for block: B:219:0x0545  */
        /* JADX WARN: Removed duplicated region for block: B:223:0x04c7  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:246:0x040e  */
        /* JADX WARN: Removed duplicated region for block: B:307:0x0266  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x0271  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.recyclerview.widget.RecyclerView.ViewHolder tryGetViewHolderForPositionByDeadline(int r29, long r30) {
            /*
                Method dump skipped, instructions count: 1451
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.Recycler.tryGetViewHolderForPositionByDeadline(int, long):androidx.recyclerview.widget.RecyclerView$ViewHolder");
        }

        public final void unscrapView(ViewHolder viewHolder) {
            if (viewHolder.mInChangeScrap) {
                this.mChangedScrap.remove(viewHolder);
            } else {
                this.mAttachedScrap.remove(viewHolder);
            }
            viewHolder.mScrapContainer = null;
            viewHolder.mInChangeScrap = false;
            viewHolder.clearReturnedFromScrapFlag();
        }

        public final void updateViewCacheSize() {
            LayoutManager layoutManager = RecyclerView.this.mLayout;
            this.mViewCacheMax = this.mRequestedCacheMax + (layoutManager != null ? layoutManager.mPrefetchMaxCountObserved : 0);
            ArrayList arrayList = this.mCachedViews;
            for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > this.mViewCacheMax; size--) {
                recycleCachedViewAt(size);
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface RecyclerListener {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class RecyclerViewDataObserver extends AdapterDataObserver {
        public RecyclerViewDataObserver() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onChanged() {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.assertNotInLayoutOrScroll(null);
            recyclerView.mState.mStructureChanged = true;
            recyclerView.processDataSetCompletelyChanged(true);
            if (recyclerView.mAdapterHelper.hasPendingUpdates()) {
                return;
            }
            recyclerView.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i, int i2, Object obj) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.assertNotInLayoutOrScroll(null);
            RulerTrackingMap rulerTrackingMap = recyclerView.mAdapterHelper;
            ArrayList arrayList = (ArrayList) rulerTrackingMap.values;
            if (i2 < 1) {
                return;
            }
            arrayList.add(rulerTrackingMap.obtainUpdateOp(4, i, i2, obj));
            rulerTrackingMap.size |= 4;
            if (arrayList.size() == 1) {
                triggerUpdateProcessor();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeInserted(int i, int i2) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.assertNotInLayoutOrScroll(null);
            RulerTrackingMap rulerTrackingMap = recyclerView.mAdapterHelper;
            ArrayList arrayList = (ArrayList) rulerTrackingMap.values;
            if (i2 < 1) {
                return;
            }
            arrayList.add(rulerTrackingMap.obtainUpdateOp(1, i, i2, null));
            rulerTrackingMap.size |= 1;
            if (arrayList.size() == 1) {
                triggerUpdateProcessor();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeMoved(int i, int i2) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.assertNotInLayoutOrScroll(null);
            RulerTrackingMap rulerTrackingMap = recyclerView.mAdapterHelper;
            ArrayList arrayList = (ArrayList) rulerTrackingMap.values;
            if (i == i2) {
                return;
            }
            arrayList.add(rulerTrackingMap.obtainUpdateOp(8, i, i2, null));
            rulerTrackingMap.size |= 8;
            if (arrayList.size() == 1) {
                triggerUpdateProcessor();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeRemoved(int i, int i2) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.assertNotInLayoutOrScroll(null);
            RulerTrackingMap rulerTrackingMap = recyclerView.mAdapterHelper;
            ArrayList arrayList = (ArrayList) rulerTrackingMap.values;
            if (i2 < 1) {
                return;
            }
            arrayList.add(rulerTrackingMap.obtainUpdateOp(2, i, i2, null));
            rulerTrackingMap.size |= 2;
            if (arrayList.size() == 1) {
                triggerUpdateProcessor();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onStateRestorationPolicyChanged() {
            Adapter adapter;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mPendingSavedState == null || (adapter = recyclerView.mAdapter) == null || !adapter.canRestoreState()) {
                return;
            }
            recyclerView.requestLayout();
        }

        public final void triggerUpdateProcessor() {
            RecyclerView recyclerView = RecyclerView.this;
            if (!recyclerView.mHasFixedSize || !recyclerView.mIsAttached) {
                recyclerView.mAdapterUpdateDuringMeasure = true;
                recyclerView.requestLayout();
            } else {
                AnonymousClass1 anonymousClass1 = recyclerView.mUpdateChildViewsRunnable;
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                recyclerView.postOnAnimation(anonymousClass1);
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AbsSavedState.AnonymousClass2(6);
        public Parcelable mLayoutState;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.mLayoutState = parcel.readParcelable(classLoader == null ? LayoutManager.class.getClassLoader() : classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.mLayoutState, 0);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class State {
        public int mDeletedInvisibleItemCountSincePreviousLayout;
        public long mFocusedItemId;
        public int mFocusedItemPosition;
        public int mFocusedSubChildId;
        public boolean mInPreLayout;
        public boolean mIsMeasuring;
        public int mItemCount;
        public int mLayoutStep;
        public int mPreviousLayoutItemCount;
        public boolean mRunPredictiveAnimations;
        public boolean mRunSimpleAnimations;
        public boolean mStructureChanged;
        public int mTargetPosition;
        public boolean mTrackOldChangeHolders;

        public final void assertLayoutStep(int i) {
            if ((this.mLayoutStep & i) != 0) {
                return;
            }
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m("Layout state should be one of ", Integer.toBinaryString(i), " but it is ", Integer.toBinaryString(this.mLayoutStep));
        }

        public final int getItemCount() {
            return this.mInPreLayout ? this.mPreviousLayoutItemCount - this.mDeletedInvisibleItemCountSincePreviousLayout : this.mItemCount;
        }

        public final String toString() {
            return "State{mTargetPosition=" + this.mTargetPosition + ", mData=null, mItemCount=" + this.mItemCount + ", mIsMeasuring=" + this.mIsMeasuring + ", mPreviousLayoutItemCount=" + this.mPreviousLayoutItemCount + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.mDeletedInvisibleItemCountSincePreviousLayout + ", mStructureChanged=" + this.mStructureChanged + ", mInPreLayout=" + this.mInPreLayout + ", mRunSimpleAnimations=" + this.mRunSimpleAnimations + ", mRunPredictiveAnimations=" + this.mRunPredictiveAnimations + '}';
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class StretchEdgeEffectFactory extends EdgeEffectFactory {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class ViewCacheExtension {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ViewFlinger implements Runnable {
        public boolean mEatRunOnAnimationRequest;
        public Interpolator mInterpolator;
        public int mLastFlingX;
        public int mLastFlingY;
        public OverScroller mOverScroller;
        public boolean mReSchedulePostAnimationCallback;

        public ViewFlinger() {
            ViewPager.AnonymousClass2 anonymousClass2 = RecyclerView.sQuinticInterpolator;
            this.mInterpolator = anonymousClass2;
            this.mEatRunOnAnimationRequest = false;
            this.mReSchedulePostAnimationCallback = false;
            this.mOverScroller = new OverScroller(RecyclerView.this.getContext(), anonymousClass2);
        }

        public final void fling(int i, int i2) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.setScrollState(2);
            this.mLastFlingY = 0;
            this.mLastFlingX = 0;
            Interpolator interpolator = this.mInterpolator;
            ViewPager.AnonymousClass2 anonymousClass2 = RecyclerView.sQuinticInterpolator;
            if (interpolator != anonymousClass2) {
                this.mInterpolator = anonymousClass2;
                this.mOverScroller = new OverScroller(recyclerView.getContext(), anonymousClass2);
            }
            this.mOverScroller.fling(0, 0, i, i2, Integer.MIN_VALUE, com.google.android.exoplayer2.util.Log.LOG_LEVEL_OFF, Integer.MIN_VALUE, com.google.android.exoplayer2.util.Log.LOG_LEVEL_OFF);
            postOnAnimation();
        }

        public final void postOnAnimation() {
            if (this.mEatRunOnAnimationRequest) {
                this.mReSchedulePostAnimationCallback = true;
                return;
            }
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.removeCallbacks(this);
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            recyclerView.postOnAnimation(this);
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i;
            int i2;
            int i3;
            int i4;
            RecyclerView recyclerView = RecyclerView.this;
            int[] iArr = recyclerView.mReusableIntPair;
            if (recyclerView.mLayout == null) {
                recyclerView.removeCallbacks(this);
                this.mOverScroller.abortAnimation();
                return;
            }
            this.mReSchedulePostAnimationCallback = false;
            this.mEatRunOnAnimationRequest = true;
            recyclerView.consumePendingUpdateOperations();
            OverScroller overScroller = this.mOverScroller;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i5 = currX - this.mLastFlingX;
                int i6 = currY - this.mLastFlingY;
                this.mLastFlingX = currX;
                this.mLastFlingY = currY;
                int consumeFlingInStretch = RecyclerView.consumeFlingInStretch(i5, recyclerView.mLeftGlow, recyclerView.mRightGlow, recyclerView.getWidth());
                int consumeFlingInStretch2 = RecyclerView.consumeFlingInStretch(i6, recyclerView.mTopGlow, recyclerView.mBottomGlow, recyclerView.getHeight());
                int[] iArr2 = recyclerView.mReusableIntPair;
                iArr2[0] = 0;
                iArr2[1] = 0;
                if (recyclerView.dispatchNestedPreScroll(consumeFlingInStretch, consumeFlingInStretch2, 1, iArr2, null)) {
                    consumeFlingInStretch -= iArr[0];
                    consumeFlingInStretch2 -= iArr[1];
                }
                if (recyclerView.getOverScrollMode() != 2) {
                    recyclerView.considerReleasingGlowsOnScroll(consumeFlingInStretch, consumeFlingInStretch2);
                }
                if (recyclerView.mAdapter != null) {
                    iArr[0] = 0;
                    iArr[1] = 0;
                    recyclerView.scrollStep(consumeFlingInStretch, consumeFlingInStretch2, iArr);
                    int i7 = iArr[0];
                    int i8 = iArr[1];
                    int i9 = consumeFlingInStretch - i7;
                    int i10 = consumeFlingInStretch2 - i8;
                    LinearSmoothScroller linearSmoothScroller = recyclerView.mLayout.mSmoothScroller;
                    if (linearSmoothScroller != null && !linearSmoothScroller.mPendingInitialRun && linearSmoothScroller.mRunning) {
                        int itemCount = recyclerView.mState.getItemCount();
                        if (itemCount == 0) {
                            linearSmoothScroller.stop();
                        } else if (linearSmoothScroller.mTargetPosition >= itemCount) {
                            linearSmoothScroller.mTargetPosition = itemCount - 1;
                            linearSmoothScroller.onAnimation(i7, i8);
                        } else {
                            linearSmoothScroller.onAnimation(i7, i8);
                        }
                    }
                    i = i9;
                    i3 = i7;
                    i2 = i10;
                    i4 = i8;
                } else {
                    i = consumeFlingInStretch;
                    i2 = consumeFlingInStretch2;
                    i3 = 0;
                    i4 = 0;
                }
                if (!recyclerView.mItemDecorations.isEmpty()) {
                    recyclerView.invalidate();
                }
                int[] iArr3 = recyclerView.mReusableIntPair;
                iArr3[0] = 0;
                iArr3[1] = 0;
                recyclerView.dispatchNestedScroll(i3, i4, i, i2, null, 1, iArr3);
                int i11 = i - iArr[0];
                int i12 = i2 - iArr[1];
                if (i3 != 0 || i4 != 0) {
                    recyclerView.dispatchOnScrolled(i3, i4);
                }
                if (!recyclerView.awakenScrollBars()) {
                    recyclerView.invalidate();
                }
                boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i11 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i12 != 0));
                LinearSmoothScroller linearSmoothScroller2 = recyclerView.mLayout.mSmoothScroller;
                if ((linearSmoothScroller2 == null || !linearSmoothScroller2.mPendingInitialRun) && z) {
                    if (recyclerView.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        int i13 = i11 < 0 ? -currVelocity : i11 > 0 ? currVelocity : 0;
                        if (i12 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i12 <= 0) {
                            currVelocity = 0;
                        }
                        if (i13 < 0) {
                            recyclerView.ensureLeftGlow();
                            if (recyclerView.mLeftGlow.isFinished()) {
                                recyclerView.mLeftGlow.onAbsorb(-i13);
                            }
                        } else if (i13 > 0) {
                            recyclerView.ensureRightGlow();
                            if (recyclerView.mRightGlow.isFinished()) {
                                recyclerView.mRightGlow.onAbsorb(i13);
                            }
                        }
                        if (currVelocity < 0) {
                            recyclerView.ensureTopGlow();
                            if (recyclerView.mTopGlow.isFinished()) {
                                recyclerView.mTopGlow.onAbsorb(-currVelocity);
                            }
                        } else if (currVelocity > 0) {
                            recyclerView.ensureBottomGlow();
                            if (recyclerView.mBottomGlow.isFinished()) {
                                recyclerView.mBottomGlow.onAbsorb(currVelocity);
                            }
                        }
                        if (i13 != 0 || currVelocity != 0) {
                            recyclerView.postInvalidateOnAnimation();
                        }
                    }
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                        OpenHashSet openHashSet = recyclerView.mPrefetchRegistry;
                        int[] iArr4 = (int[]) openHashSet.keys;
                        if (iArr4 != null) {
                            Arrays.fill(iArr4, -1);
                        }
                        openHashSet.maxSize = 0;
                    }
                } else {
                    postOnAnimation();
                    GapWorker gapWorker = recyclerView.mGapWorker;
                    if (gapWorker != null) {
                        gapWorker.postFromTraversal(recyclerView, i3, i4);
                    }
                }
                if (Build.VERSION.SDK_INT >= 35) {
                    Api35Impl.setFrameContentVelocity(recyclerView, Math.abs(overScroller.getCurrVelocity()));
                }
            }
            LinearSmoothScroller linearSmoothScroller3 = recyclerView.mLayout.mSmoothScroller;
            if (linearSmoothScroller3 != null && linearSmoothScroller3.mPendingInitialRun) {
                linearSmoothScroller3.onAnimation(0, 0);
            }
            this.mEatRunOnAnimationRequest = false;
            if (!this.mReSchedulePostAnimationCallback) {
                recyclerView.setScrollState(0);
                recyclerView.stopNestedScroll(1);
            } else {
                recyclerView.removeCallbacks(this);
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                recyclerView.postOnAnimation(this);
            }
        }

        public final void smoothScrollBy(int i, int i2, int i3, Interpolator interpolator) {
            RecyclerView recyclerView = RecyclerView.this;
            if (i3 == Integer.MIN_VALUE) {
                int abs = Math.abs(i);
                int abs2 = Math.abs(i2);
                boolean z = abs > abs2;
                int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
                if (!z) {
                    abs = abs2;
                }
                i3 = Math.min((int) (((abs / width) + 1.0f) * 300.0f), 2000);
            }
            int i4 = i3;
            if (interpolator == null) {
                interpolator = RecyclerView.sQuinticInterpolator;
            }
            if (this.mInterpolator != interpolator) {
                this.mInterpolator = interpolator;
                this.mOverScroller = new OverScroller(recyclerView.getContext(), interpolator);
            }
            this.mLastFlingY = 0;
            this.mLastFlingX = 0;
            recyclerView.setScrollState(2);
            this.mOverScroller.startScroll(0, 0, i, i2, i4);
            postOnAnimation();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class ViewHolder {
        static final int FLAG_ADAPTER_FULLUPDATE = 1024;
        static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
        static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
        static final int FLAG_BOUND = 1;
        static final int FLAG_IGNORE = 128;
        static final int FLAG_INVALID = 4;
        static final int FLAG_MOVED = 2048;
        static final int FLAG_NOT_RECYCLABLE = 16;
        static final int FLAG_REMOVED = 8;
        static final int FLAG_RETURNED_FROM_SCRAP = 32;
        static final int FLAG_TMP_DETACHED = 256;
        static final int FLAG_UPDATE = 2;
        private static final List<Object> FULLUPDATE_PAYLOADS = Collections.EMPTY_LIST;
        static final int PENDING_ACCESSIBILITY_STATE_NOT_SET = -1;
        public final View itemView;
        Adapter mBindingAdapter;
        int mFlags;
        WeakReference<RecyclerView> mNestedRecyclerView;
        RecyclerView mOwnerRecyclerView;
        int mPosition = -1;
        int mOldPosition = -1;
        long mItemId = -1;
        int mItemViewType = -1;
        int mPreLayoutPosition = -1;
        ViewHolder mShadowedHolder = null;
        ViewHolder mShadowingHolder = null;
        List<Object> mPayloads = null;
        List<Object> mUnmodifiedPayloads = null;
        private int mIsRecyclableCount = 0;
        Recycler mScrapContainer = null;
        boolean mInChangeScrap = false;
        private int mWasImportantForAccessibilityBeforeHidden = 0;
        int mPendingAccessibilityState = -1;

        public ViewHolder(View view) {
            if (view != null) {
                this.itemView = view;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("itemView may not be null");
                throw null;
            }
        }

        public void addChangePayload(Object obj) {
            if (obj == null) {
                addFlags(1024);
                return;
            }
            if ((1024 & this.mFlags) == 0) {
                if (this.mPayloads == null) {
                    ArrayList arrayList = new ArrayList();
                    this.mPayloads = arrayList;
                    this.mUnmodifiedPayloads = DesugarCollections.unmodifiableList(arrayList);
                }
                this.mPayloads.add(obj);
            }
        }

        public void addFlags(int i) {
            this.mFlags = i | this.mFlags;
        }

        public void clearOldPosition() {
            this.mOldPosition = -1;
            this.mPreLayoutPosition = -1;
        }

        public void clearPayload() {
            List<Object> list = this.mPayloads;
            if (list != null) {
                list.clear();
            }
            this.mFlags &= -1025;
        }

        public void clearReturnedFromScrapFlag() {
            this.mFlags &= -33;
        }

        public void clearTmpDetachFlag() {
            this.mFlags &= -257;
        }

        public boolean doesTransientStatePreventRecycling() {
            if ((this.mFlags & 16) != 0) {
                return false;
            }
            View view = this.itemView;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            return view.hasTransientState();
        }

        public void flagRemovedAndOffsetPosition(int i, int i2, boolean z) {
            addFlags(8);
            offsetPosition(i2, z);
            this.mPosition = i;
        }

        public final int getAbsoluteAdapterPosition() {
            RecyclerView recyclerView = this.mOwnerRecyclerView;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.getAdapterPositionInRecyclerView(this);
        }

        @Deprecated
        public final int getAdapterPosition() {
            return getBindingAdapterPosition();
        }

        public final Adapter getBindingAdapter() {
            return this.mBindingAdapter;
        }

        public final int getBindingAdapterPosition() {
            RecyclerView recyclerView;
            Adapter adapter;
            int adapterPositionInRecyclerView;
            if (this.mBindingAdapter == null || (recyclerView = this.mOwnerRecyclerView) == null || (adapter = recyclerView.getAdapter()) == null || (adapterPositionInRecyclerView = this.mOwnerRecyclerView.getAdapterPositionInRecyclerView(this)) == -1) {
                return -1;
            }
            return adapter.findRelativeAdapterPositionIn(this.mBindingAdapter, this, adapterPositionInRecyclerView);
        }

        public final long getItemId() {
            return this.mItemId;
        }

        public final int getItemViewType() {
            return this.mItemViewType;
        }

        public final int getLayoutPosition() {
            int i = this.mPreLayoutPosition;
            return i == -1 ? this.mPosition : i;
        }

        public final int getOldPosition() {
            return this.mOldPosition;
        }

        @Deprecated
        public final int getPosition() {
            int i = this.mPreLayoutPosition;
            return i == -1 ? this.mPosition : i;
        }

        public List<Object> getUnmodifiedPayloads() {
            if ((this.mFlags & 1024) != 0) {
                return FULLUPDATE_PAYLOADS;
            }
            List<Object> list = this.mPayloads;
            return (list == null || list.size() == 0) ? FULLUPDATE_PAYLOADS : this.mUnmodifiedPayloads;
        }

        public boolean hasAnyOfTheFlags(int i) {
            return (this.mFlags & i) != 0;
        }

        public boolean isAdapterPositionUnknown() {
            return (this.mFlags & 512) != 0 || isInvalid();
        }

        public boolean isAttachedToTransitionOverlay() {
            return (this.itemView.getParent() == null || this.itemView.getParent() == this.mOwnerRecyclerView) ? false : true;
        }

        public boolean isBound() {
            return (this.mFlags & 1) != 0;
        }

        public boolean isInvalid() {
            return (this.mFlags & 4) != 0;
        }

        public final boolean isRecyclable() {
            if ((this.mFlags & 16) != 0) {
                return false;
            }
            View view = this.itemView;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            return !view.hasTransientState();
        }

        public boolean isRemoved() {
            return (this.mFlags & 8) != 0;
        }

        public boolean isScrap() {
            return this.mScrapContainer != null;
        }

        public boolean isTmpDetached() {
            return (this.mFlags & 256) != 0;
        }

        public boolean isUpdated() {
            return (this.mFlags & 2) != 0;
        }

        public boolean needsUpdate() {
            return (this.mFlags & 2) != 0;
        }

        public void offsetPosition(int i, boolean z) {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
            if (this.mPreLayoutPosition == -1) {
                this.mPreLayoutPosition = this.mPosition;
            }
            if (z) {
                this.mPreLayoutPosition += i;
            }
            this.mPosition += i;
            if (this.itemView.getLayoutParams() != null) {
                ((LayoutParams) this.itemView.getLayoutParams()).mInsetsDirty = true;
            }
        }

        public void onEnteredHiddenState(RecyclerView recyclerView) {
            int i = this.mPendingAccessibilityState;
            if (i != -1) {
                this.mWasImportantForAccessibilityBeforeHidden = i;
            } else {
                this.mWasImportantForAccessibilityBeforeHidden = this.itemView.getImportantForAccessibility();
            }
            if (!recyclerView.isComputingLayout()) {
                this.itemView.setImportantForAccessibility(4);
            } else {
                this.mPendingAccessibilityState = 4;
                recyclerView.mPendingAccessibilityImportanceChange.add(this);
            }
        }

        public void onLeftHiddenState(RecyclerView recyclerView) {
            int i = this.mWasImportantForAccessibilityBeforeHidden;
            if (recyclerView.isComputingLayout()) {
                this.mPendingAccessibilityState = i;
                recyclerView.mPendingAccessibilityImportanceChange.add(this);
            } else {
                this.itemView.setImportantForAccessibility(i);
            }
            this.mWasImportantForAccessibilityBeforeHidden = 0;
        }

        public void resetInternal() {
            if (RecyclerView.sDebugAssertionsEnabled && isTmpDetached()) {
                DecodeUtils$$ExternalSyntheticBUOutline0.m$3(this, ". ViewHolders should be fully detached before resetting.", "Attempting to reset temp-detached ViewHolder: ");
                return;
            }
            this.mFlags = 0;
            this.mPosition = -1;
            this.mOldPosition = -1;
            this.mItemId = -1L;
            this.mPreLayoutPosition = -1;
            this.mIsRecyclableCount = 0;
            this.mShadowedHolder = null;
            this.mShadowingHolder = null;
            clearPayload();
            this.mWasImportantForAccessibilityBeforeHidden = 0;
            this.mPendingAccessibilityState = -1;
            RecyclerView.clearNestedRecyclerViewIfNotNested(this);
        }

        public void saveOldPosition() {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
        }

        public void setFlags(int i, int i2) {
            this.mFlags = (i & i2) | (this.mFlags & (~i2));
        }

        public final void setIsRecyclable(boolean z) {
            int i = this.mIsRecyclableCount;
            int i2 = z ? i - 1 : i + 1;
            this.mIsRecyclableCount = i2;
            if (i2 < 0) {
                this.mIsRecyclableCount = 0;
                if (RecyclerView.sDebugAssertionsEnabled) {
                    throw new RuntimeException("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
                }
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            } else if (!z && i2 == 1) {
                this.mFlags |= 16;
            } else if (z && i2 == 0) {
                this.mFlags &= -17;
            }
            if (RecyclerView.sVerboseLoggingEnabled) {
                Log.d("RecyclerView", "setIsRecyclable val:" + z + ":" + this);
            }
        }

        public void setScrapContainer(Recycler recycler, boolean z) {
            this.mScrapContainer = recycler;
            this.mInChangeScrap = z;
        }

        public boolean shouldBeKeptAsChild() {
            return (this.mFlags & 16) != 0;
        }

        public boolean shouldIgnore() {
            return (this.mFlags & 128) != 0;
        }

        public void stopIgnoring() {
            this.mFlags &= -129;
        }

        public String toString() {
            StringBuilder m = SolverVariable$Type$EnumUnboxingSharedUtility.m(getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName(), "{");
            m.append(Integer.toHexString(hashCode()));
            m.append(" position=");
            m.append(this.mPosition);
            m.append(" id=");
            m.append(this.mItemId);
            m.append(", oldPos=");
            m.append(this.mOldPosition);
            m.append(", pLpos:");
            m.append(this.mPreLayoutPosition);
            StringBuilder sb = new StringBuilder(m.toString());
            if (isScrap()) {
                sb.append(" scrap ");
                sb.append(this.mInChangeScrap ? "[changeScrap]" : "[attachedScrap]");
            }
            if (isInvalid()) {
                sb.append(" invalid");
            }
            if (!isBound()) {
                sb.append(" unbound");
            }
            if (needsUpdate()) {
                sb.append(" update");
            }
            if (isRemoved()) {
                sb.append(" removed");
            }
            if (shouldIgnore()) {
                sb.append(" ignored");
            }
            if (isTmpDetached()) {
                sb.append(" tmpDetached");
            }
            if (!isRecyclable()) {
                sb.append(" not recyclable(" + this.mIsRecyclableCount + ")");
            }
            if (isAdapterPositionUnknown()) {
                sb.append(" undefined adapter position");
            }
            if (this.itemView.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        public void unScrap() {
            this.mScrapContainer.unscrapView(this);
        }

        public boolean wasReturnedFromScrap() {
            return (this.mFlags & 32) != 0;
        }
    }

    static {
        Class cls = Integer.TYPE;
        LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[]{Context.class, AttributeSet.class, cls, cls};
        sQuinticInterpolator = new ViewPager.AnonymousClass2(4);
        sDefaultEdgeEffectFactory = new StretchEdgeEffectFactory();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.recyclerview.widget.RecyclerView$1] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r5v5, types: [androidx.recyclerview.widget.RecyclerView$1] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Class[]] */
    public RecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        float legacyScrollFactor;
        char c;
        char c2;
        Throwable th;
        boolean z;
        int i2;
        TypedArray typedArray;
        int i3;
        ClassLoader classLoader;
        Constructor constructor;
        Object[] objArr;
        this.mObserver = new RecyclerViewDataObserver();
        this.mRecycler = new Recycler();
        this.mViewInfoStore = new JsonBuilder(2);
        final int i4 = 0;
        this.mUpdateChildViewsRunnable = new Runnable(this) { // from class: androidx.recyclerview.widget.RecyclerView.1
            public final /* synthetic */ RecyclerView this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                boolean z2;
                int i5 = i4;
                RecyclerView recyclerView = this.this$0;
                switch (i5) {
                    case 0:
                        if (recyclerView.mFirstLayoutComplete && !recyclerView.isLayoutRequested()) {
                            if (!recyclerView.mIsAttached) {
                                recyclerView.requestLayout();
                                break;
                            } else if (!recyclerView.mLayoutSuppressed) {
                                recyclerView.consumePendingUpdateOperations();
                                break;
                            } else {
                                recyclerView.mLayoutWasDefered = true;
                                break;
                            }
                        }
                        break;
                    default:
                        ItemAnimator itemAnimator = recyclerView.mItemAnimator;
                        if (itemAnimator != null) {
                            final DefaultItemAnimator defaultItemAnimator = (DefaultItemAnimator) itemAnimator;
                            long j = defaultItemAnimator.mRemoveDuration;
                            ArrayList arrayList = defaultItemAnimator.mPendingRemovals;
                            boolean isEmpty = arrayList.isEmpty();
                            ArrayList arrayList2 = defaultItemAnimator.mPendingMoves;
                            boolean isEmpty2 = arrayList2.isEmpty();
                            ArrayList arrayList3 = defaultItemAnimator.mPendingChanges;
                            boolean isEmpty3 = arrayList3.isEmpty();
                            ArrayList arrayList4 = defaultItemAnimator.mPendingAdditions;
                            boolean isEmpty4 = arrayList4.isEmpty();
                            if (!isEmpty || !isEmpty2 || !isEmpty4 || !isEmpty3) {
                                Iterator it = arrayList.iterator();
                                while (it.hasNext()) {
                                    ViewHolder viewHolder = (ViewHolder) it.next();
                                    View view = viewHolder.itemView;
                                    ViewPropertyAnimator animate = view.animate();
                                    defaultItemAnimator.mRemoveAnimations.add(viewHolder);
                                    animate.setDuration(j).alpha(0.0f).setListener(defaultItemAnimator.new AnonymousClass4(viewHolder, animate, view)).start();
                                    arrayList = arrayList;
                                    isEmpty = isEmpty;
                                }
                                boolean z3 = isEmpty;
                                arrayList.clear();
                                if (!isEmpty2) {
                                    final ArrayList arrayList5 = new ArrayList();
                                    arrayList5.addAll(arrayList2);
                                    defaultItemAnimator.mMovesList.add(arrayList5);
                                    arrayList2.clear();
                                    final int i6 = 0;
                                    Runnable anonymousClass1 = new Runnable() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.1
                                        public final /* synthetic */ int $r8$classId;
                                        public final /* synthetic */ DefaultItemAnimator this$0;
                                        public final /* synthetic */ ArrayList val$moves;

                                        public /* synthetic */ AnonymousClass1(final DefaultItemAnimator defaultItemAnimator2, final ArrayList arrayList52, final int i62) {
                                            r3 = i62;
                                            r1 = defaultItemAnimator2;
                                            r2 = arrayList52;
                                        }

                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            int i7 = r3;
                                            ArrayList arrayList6 = r2;
                                            switch (i7) {
                                                case 0:
                                                    Iterator it2 = arrayList6.iterator();
                                                    while (true) {
                                                        boolean hasNext = it2.hasNext();
                                                        DefaultItemAnimator defaultItemAnimator2 = r1;
                                                        if (!hasNext) {
                                                            arrayList6.clear();
                                                            defaultItemAnimator2.mMovesList.remove(arrayList6);
                                                            break;
                                                        } else {
                                                            MoveInfo moveInfo = (MoveInfo) it2.next();
                                                            RecyclerView.ViewHolder viewHolder2 = moveInfo.holder;
                                                            int i8 = moveInfo.fromX;
                                                            int i9 = moveInfo.fromY;
                                                            int i10 = moveInfo.toX;
                                                            int i11 = moveInfo.toY;
                                                            defaultItemAnimator2.getClass();
                                                            View view2 = viewHolder2.itemView;
                                                            int i12 = i10 - i8;
                                                            int i13 = i11 - i9;
                                                            if (i12 != 0) {
                                                                view2.animate().translationX(0.0f);
                                                            }
                                                            if (i13 != 0) {
                                                                view2.animate().translationY(0.0f);
                                                            }
                                                            ViewPropertyAnimator animate2 = view2.animate();
                                                            defaultItemAnimator2.mMoveAnimations.add(viewHolder2);
                                                            animate2.setDuration(defaultItemAnimator2.mMoveDuration).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.6
                                                                public final /* synthetic */ ViewPropertyAnimator val$animation;
                                                                public final /* synthetic */ int val$deltaX;
                                                                public final /* synthetic */ int val$deltaY;
                                                                public final /* synthetic */ RecyclerView.ViewHolder val$holder;
                                                                public final /* synthetic */ View val$view;

                                                                public AnonymousClass6(RecyclerView.ViewHolder viewHolder22, int i122, View view22, int i132, ViewPropertyAnimator animate22) {
                                                                    r2 = viewHolder22;
                                                                    r3 = i122;
                                                                    r4 = view22;
                                                                    r5 = i132;
                                                                    r6 = animate22;
                                                                }

                                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                public final void onAnimationCancel(Animator animator) {
                                                                    int i14 = r3;
                                                                    View view3 = r4;
                                                                    if (i14 != 0) {
                                                                        view3.setTranslationX(0.0f);
                                                                    }
                                                                    if (r5 != 0) {
                                                                        view3.setTranslationY(0.0f);
                                                                    }
                                                                }

                                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                public final void onAnimationEnd(Animator animator) {
                                                                    r6.setListener(null);
                                                                    DefaultItemAnimator defaultItemAnimator3 = DefaultItemAnimator.this;
                                                                    RecyclerView.ViewHolder viewHolder3 = r2;
                                                                    defaultItemAnimator3.dispatchAnimationFinished(viewHolder3);
                                                                    defaultItemAnimator3.mMoveAnimations.remove(viewHolder3);
                                                                    defaultItemAnimator3.dispatchFinishedWhenDone();
                                                                }

                                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                public final void onAnimationStart(Animator animator) {
                                                                    DefaultItemAnimator.this.getClass();
                                                                }
                                                            }).start();
                                                        }
                                                    }
                                                case 1:
                                                    Iterator it3 = arrayList6.iterator();
                                                    while (true) {
                                                        boolean hasNext2 = it3.hasNext();
                                                        DefaultItemAnimator defaultItemAnimator3 = r1;
                                                        if (!hasNext2) {
                                                            arrayList6.clear();
                                                            defaultItemAnimator3.mChangesList.remove(arrayList6);
                                                            break;
                                                        } else {
                                                            ChangeInfo changeInfo = (ChangeInfo) it3.next();
                                                            ArrayList arrayList7 = defaultItemAnimator3.mChangeAnimations;
                                                            long j2 = defaultItemAnimator3.mChangeDuration;
                                                            RecyclerView.ViewHolder viewHolder3 = changeInfo.oldHolder;
                                                            View view3 = viewHolder3 == null ? null : viewHolder3.itemView;
                                                            RecyclerView.ViewHolder viewHolder4 = changeInfo.newHolder;
                                                            View view4 = viewHolder4 != null ? viewHolder4.itemView : null;
                                                            if (view3 != null) {
                                                                ViewPropertyAnimator duration = view3.animate().setDuration(j2);
                                                                arrayList7.add(changeInfo.oldHolder);
                                                                duration.translationX(changeInfo.toX - changeInfo.fromX);
                                                                duration.translationY(changeInfo.toY - changeInfo.fromY);
                                                                duration.alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.7
                                                                    public final /* synthetic */ int $r8$classId;
                                                                    public final /* synthetic */ DefaultItemAnimator this$0;
                                                                    public final /* synthetic */ ChangeInfo val$changeInfo;
                                                                    public final /* synthetic */ ViewPropertyAnimator val$oldViewAnim;
                                                                    public final /* synthetic */ View val$view;

                                                                    public /* synthetic */ AnonymousClass7(DefaultItemAnimator defaultItemAnimator32, ChangeInfo changeInfo2, ViewPropertyAnimator duration2, View view32, int i14) {
                                                                        r5 = i14;
                                                                        r1 = defaultItemAnimator32;
                                                                        r2 = changeInfo2;
                                                                        r3 = duration2;
                                                                        r4 = view32;
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationEnd(Animator animator) {
                                                                        int i14 = r5;
                                                                        ChangeInfo changeInfo2 = r2;
                                                                        DefaultItemAnimator defaultItemAnimator4 = r1;
                                                                        View view5 = r4;
                                                                        ViewPropertyAnimator viewPropertyAnimator = r3;
                                                                        switch (i14) {
                                                                            case 0:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo2.oldHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo2.oldHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                            default:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo2.newHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo2.newHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                        }
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationStart(Animator animator) {
                                                                        switch (r5) {
                                                                            case 0:
                                                                                r1.getClass();
                                                                                break;
                                                                            default:
                                                                                r1.getClass();
                                                                                break;
                                                                        }
                                                                    }
                                                                }).start();
                                                            }
                                                            if (view4 != null) {
                                                                ViewPropertyAnimator animate3 = view4.animate();
                                                                arrayList7.add(changeInfo2.newHolder);
                                                                animate3.translationX(0.0f).translationY(0.0f).setDuration(j2).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.7
                                                                    public final /* synthetic */ int $r8$classId;
                                                                    public final /* synthetic */ DefaultItemAnimator this$0;
                                                                    public final /* synthetic */ ChangeInfo val$changeInfo;
                                                                    public final /* synthetic */ ViewPropertyAnimator val$oldViewAnim;
                                                                    public final /* synthetic */ View val$view;

                                                                    public /* synthetic */ AnonymousClass7(DefaultItemAnimator defaultItemAnimator32, ChangeInfo changeInfo2, ViewPropertyAnimator animate32, View view42, int i14) {
                                                                        r5 = i14;
                                                                        r1 = defaultItemAnimator32;
                                                                        r2 = changeInfo2;
                                                                        r3 = animate32;
                                                                        r4 = view42;
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationEnd(Animator animator) {
                                                                        int i14 = r5;
                                                                        ChangeInfo changeInfo2 = r2;
                                                                        DefaultItemAnimator defaultItemAnimator4 = r1;
                                                                        View view5 = r4;
                                                                        ViewPropertyAnimator viewPropertyAnimator = r3;
                                                                        switch (i14) {
                                                                            case 0:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo2.oldHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo2.oldHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                            default:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo2.newHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo2.newHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                        }
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationStart(Animator animator) {
                                                                        switch (r5) {
                                                                            case 0:
                                                                                r1.getClass();
                                                                                break;
                                                                            default:
                                                                                r1.getClass();
                                                                                break;
                                                                        }
                                                                    }
                                                                }).start();
                                                            }
                                                        }
                                                    }
                                                default:
                                                    Iterator it4 = arrayList6.iterator();
                                                    while (true) {
                                                        boolean hasNext3 = it4.hasNext();
                                                        DefaultItemAnimator defaultItemAnimator4 = r1;
                                                        if (!hasNext3) {
                                                            arrayList6.clear();
                                                            defaultItemAnimator4.mAdditionsList.remove(arrayList6);
                                                            break;
                                                        } else {
                                                            RecyclerView.ViewHolder viewHolder5 = (RecyclerView.ViewHolder) it4.next();
                                                            defaultItemAnimator4.getClass();
                                                            View view5 = viewHolder5.itemView;
                                                            ViewPropertyAnimator animate4 = view5.animate();
                                                            defaultItemAnimator4.mAddAnimations.add(viewHolder5);
                                                            animate4.alpha(1.0f).setDuration(defaultItemAnimator4.mAddDuration).setListener(defaultItemAnimator4.new AnonymousClass4(viewHolder5, view5, animate4)).start();
                                                        }
                                                    }
                                            }
                                        }
                                    };
                                    if (z3) {
                                        anonymousClass1.run();
                                    } else {
                                        View view2 = ((DefaultItemAnimator.MoveInfo) arrayList52.get(0)).holder.itemView;
                                        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                                        view2.postOnAnimationDelayed(anonymousClass1, j);
                                    }
                                }
                                if (!isEmpty3) {
                                    final ArrayList arrayList6 = new ArrayList();
                                    arrayList6.addAll(arrayList3);
                                    defaultItemAnimator2.mChangesList.add(arrayList6);
                                    arrayList3.clear();
                                    final int i7 = 1;
                                    Runnable anonymousClass12 = new Runnable() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.1
                                        public final /* synthetic */ int $r8$classId;
                                        public final /* synthetic */ DefaultItemAnimator this$0;
                                        public final /* synthetic */ ArrayList val$moves;

                                        public /* synthetic */ AnonymousClass1(final DefaultItemAnimator defaultItemAnimator2, final ArrayList arrayList62, final int i72) {
                                            r3 = i72;
                                            r1 = defaultItemAnimator2;
                                            r2 = arrayList62;
                                        }

                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            int i72 = r3;
                                            ArrayList arrayList62 = r2;
                                            switch (i72) {
                                                case 0:
                                                    Iterator it2 = arrayList62.iterator();
                                                    while (true) {
                                                        boolean hasNext = it2.hasNext();
                                                        DefaultItemAnimator defaultItemAnimator2 = r1;
                                                        if (!hasNext) {
                                                            arrayList62.clear();
                                                            defaultItemAnimator2.mMovesList.remove(arrayList62);
                                                            break;
                                                        } else {
                                                            MoveInfo moveInfo = (MoveInfo) it2.next();
                                                            RecyclerView.ViewHolder viewHolder22 = moveInfo.holder;
                                                            int i8 = moveInfo.fromX;
                                                            int i9 = moveInfo.fromY;
                                                            int i10 = moveInfo.toX;
                                                            int i11 = moveInfo.toY;
                                                            defaultItemAnimator2.getClass();
                                                            View view22 = viewHolder22.itemView;
                                                            int i122 = i10 - i8;
                                                            int i132 = i11 - i9;
                                                            if (i122 != 0) {
                                                                view22.animate().translationX(0.0f);
                                                            }
                                                            if (i132 != 0) {
                                                                view22.animate().translationY(0.0f);
                                                            }
                                                            ViewPropertyAnimator animate22 = view22.animate();
                                                            defaultItemAnimator2.mMoveAnimations.add(viewHolder22);
                                                            animate22.setDuration(defaultItemAnimator2.mMoveDuration).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.6
                                                                public final /* synthetic */ ViewPropertyAnimator val$animation;
                                                                public final /* synthetic */ int val$deltaX;
                                                                public final /* synthetic */ int val$deltaY;
                                                                public final /* synthetic */ RecyclerView.ViewHolder val$holder;
                                                                public final /* synthetic */ View val$view;

                                                                public AnonymousClass6(RecyclerView.ViewHolder viewHolder222, int i1222, View view222, int i1322, ViewPropertyAnimator animate222) {
                                                                    r2 = viewHolder222;
                                                                    r3 = i1222;
                                                                    r4 = view222;
                                                                    r5 = i1322;
                                                                    r6 = animate222;
                                                                }

                                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                public final void onAnimationCancel(Animator animator) {
                                                                    int i14 = r3;
                                                                    View view3 = r4;
                                                                    if (i14 != 0) {
                                                                        view3.setTranslationX(0.0f);
                                                                    }
                                                                    if (r5 != 0) {
                                                                        view3.setTranslationY(0.0f);
                                                                    }
                                                                }

                                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                public final void onAnimationEnd(Animator animator) {
                                                                    r6.setListener(null);
                                                                    DefaultItemAnimator defaultItemAnimator3 = DefaultItemAnimator.this;
                                                                    RecyclerView.ViewHolder viewHolder3 = r2;
                                                                    defaultItemAnimator3.dispatchAnimationFinished(viewHolder3);
                                                                    defaultItemAnimator3.mMoveAnimations.remove(viewHolder3);
                                                                    defaultItemAnimator3.dispatchFinishedWhenDone();
                                                                }

                                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                public final void onAnimationStart(Animator animator) {
                                                                    DefaultItemAnimator.this.getClass();
                                                                }
                                                            }).start();
                                                        }
                                                    }
                                                case 1:
                                                    Iterator it3 = arrayList62.iterator();
                                                    while (true) {
                                                        boolean hasNext2 = it3.hasNext();
                                                        DefaultItemAnimator defaultItemAnimator32 = r1;
                                                        if (!hasNext2) {
                                                            arrayList62.clear();
                                                            defaultItemAnimator32.mChangesList.remove(arrayList62);
                                                            break;
                                                        } else {
                                                            ChangeInfo changeInfo2 = (ChangeInfo) it3.next();
                                                            ArrayList arrayList7 = defaultItemAnimator32.mChangeAnimations;
                                                            long j2 = defaultItemAnimator32.mChangeDuration;
                                                            RecyclerView.ViewHolder viewHolder3 = changeInfo2.oldHolder;
                                                            View view32 = viewHolder3 == null ? null : viewHolder3.itemView;
                                                            RecyclerView.ViewHolder viewHolder4 = changeInfo2.newHolder;
                                                            View view42 = viewHolder4 != null ? viewHolder4.itemView : null;
                                                            if (view32 != null) {
                                                                ViewPropertyAnimator duration2 = view32.animate().setDuration(j2);
                                                                arrayList7.add(changeInfo2.oldHolder);
                                                                duration2.translationX(changeInfo2.toX - changeInfo2.fromX);
                                                                duration2.translationY(changeInfo2.toY - changeInfo2.fromY);
                                                                duration2.alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.7
                                                                    public final /* synthetic */ int $r8$classId;
                                                                    public final /* synthetic */ DefaultItemAnimator this$0;
                                                                    public final /* synthetic */ ChangeInfo val$changeInfo;
                                                                    public final /* synthetic */ ViewPropertyAnimator val$oldViewAnim;
                                                                    public final /* synthetic */ View val$view;

                                                                    public /* synthetic */ AnonymousClass7(DefaultItemAnimator defaultItemAnimator322, ChangeInfo changeInfo22, ViewPropertyAnimator duration22, View view322, int i14) {
                                                                        r5 = i14;
                                                                        r1 = defaultItemAnimator322;
                                                                        r2 = changeInfo22;
                                                                        r3 = duration22;
                                                                        r4 = view322;
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationEnd(Animator animator) {
                                                                        int i14 = r5;
                                                                        ChangeInfo changeInfo22 = r2;
                                                                        DefaultItemAnimator defaultItemAnimator4 = r1;
                                                                        View view5 = r4;
                                                                        ViewPropertyAnimator viewPropertyAnimator = r3;
                                                                        switch (i14) {
                                                                            case 0:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo22.oldHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo22.oldHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                            default:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo22.newHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo22.newHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                        }
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationStart(Animator animator) {
                                                                        switch (r5) {
                                                                            case 0:
                                                                                r1.getClass();
                                                                                break;
                                                                            default:
                                                                                r1.getClass();
                                                                                break;
                                                                        }
                                                                    }
                                                                }).start();
                                                            }
                                                            if (view42 != null) {
                                                                ViewPropertyAnimator animate32 = view42.animate();
                                                                arrayList7.add(changeInfo22.newHolder);
                                                                animate32.translationX(0.0f).translationY(0.0f).setDuration(j2).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.7
                                                                    public final /* synthetic */ int $r8$classId;
                                                                    public final /* synthetic */ DefaultItemAnimator this$0;
                                                                    public final /* synthetic */ ChangeInfo val$changeInfo;
                                                                    public final /* synthetic */ ViewPropertyAnimator val$oldViewAnim;
                                                                    public final /* synthetic */ View val$view;

                                                                    public /* synthetic */ AnonymousClass7(DefaultItemAnimator defaultItemAnimator322, ChangeInfo changeInfo22, ViewPropertyAnimator animate322, View view422, int i14) {
                                                                        r5 = i14;
                                                                        r1 = defaultItemAnimator322;
                                                                        r2 = changeInfo22;
                                                                        r3 = animate322;
                                                                        r4 = view422;
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationEnd(Animator animator) {
                                                                        int i14 = r5;
                                                                        ChangeInfo changeInfo22 = r2;
                                                                        DefaultItemAnimator defaultItemAnimator4 = r1;
                                                                        View view5 = r4;
                                                                        ViewPropertyAnimator viewPropertyAnimator = r3;
                                                                        switch (i14) {
                                                                            case 0:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo22.oldHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo22.oldHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                            default:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo22.newHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo22.newHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                        }
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationStart(Animator animator) {
                                                                        switch (r5) {
                                                                            case 0:
                                                                                r1.getClass();
                                                                                break;
                                                                            default:
                                                                                r1.getClass();
                                                                                break;
                                                                        }
                                                                    }
                                                                }).start();
                                                            }
                                                        }
                                                    }
                                                default:
                                                    Iterator it4 = arrayList62.iterator();
                                                    while (true) {
                                                        boolean hasNext3 = it4.hasNext();
                                                        DefaultItemAnimator defaultItemAnimator4 = r1;
                                                        if (!hasNext3) {
                                                            arrayList62.clear();
                                                            defaultItemAnimator4.mAdditionsList.remove(arrayList62);
                                                            break;
                                                        } else {
                                                            RecyclerView.ViewHolder viewHolder5 = (RecyclerView.ViewHolder) it4.next();
                                                            defaultItemAnimator4.getClass();
                                                            View view5 = viewHolder5.itemView;
                                                            ViewPropertyAnimator animate4 = view5.animate();
                                                            defaultItemAnimator4.mAddAnimations.add(viewHolder5);
                                                            animate4.alpha(1.0f).setDuration(defaultItemAnimator4.mAddDuration).setListener(defaultItemAnimator4.new AnonymousClass4(viewHolder5, view5, animate4)).start();
                                                        }
                                                    }
                                            }
                                        }
                                    };
                                    if (z3) {
                                        anonymousClass12.run();
                                    } else {
                                        View view3 = ((DefaultItemAnimator.ChangeInfo) arrayList62.get(0)).oldHolder.itemView;
                                        WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                                        view3.postOnAnimationDelayed(anonymousClass12, j);
                                    }
                                }
                                if (!isEmpty4) {
                                    final ArrayList arrayList7 = new ArrayList();
                                    arrayList7.addAll(arrayList4);
                                    defaultItemAnimator2.mAdditionsList.add(arrayList7);
                                    arrayList4.clear();
                                    final int i8 = 2;
                                    Runnable anonymousClass13 = new Runnable() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.1
                                        public final /* synthetic */ int $r8$classId;
                                        public final /* synthetic */ DefaultItemAnimator this$0;
                                        public final /* synthetic */ ArrayList val$moves;

                                        public /* synthetic */ AnonymousClass1(final DefaultItemAnimator defaultItemAnimator2, final ArrayList arrayList72, final int i82) {
                                            r3 = i82;
                                            r1 = defaultItemAnimator2;
                                            r2 = arrayList72;
                                        }

                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            int i72 = r3;
                                            ArrayList arrayList62 = r2;
                                            switch (i72) {
                                                case 0:
                                                    Iterator it2 = arrayList62.iterator();
                                                    while (true) {
                                                        boolean hasNext = it2.hasNext();
                                                        DefaultItemAnimator defaultItemAnimator2 = r1;
                                                        if (!hasNext) {
                                                            arrayList62.clear();
                                                            defaultItemAnimator2.mMovesList.remove(arrayList62);
                                                            break;
                                                        } else {
                                                            MoveInfo moveInfo = (MoveInfo) it2.next();
                                                            RecyclerView.ViewHolder viewHolder222 = moveInfo.holder;
                                                            int i82 = moveInfo.fromX;
                                                            int i9 = moveInfo.fromY;
                                                            int i10 = moveInfo.toX;
                                                            int i11 = moveInfo.toY;
                                                            defaultItemAnimator2.getClass();
                                                            View view222 = viewHolder222.itemView;
                                                            int i1222 = i10 - i82;
                                                            int i1322 = i11 - i9;
                                                            if (i1222 != 0) {
                                                                view222.animate().translationX(0.0f);
                                                            }
                                                            if (i1322 != 0) {
                                                                view222.animate().translationY(0.0f);
                                                            }
                                                            ViewPropertyAnimator animate222 = view222.animate();
                                                            defaultItemAnimator2.mMoveAnimations.add(viewHolder222);
                                                            animate222.setDuration(defaultItemAnimator2.mMoveDuration).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.6
                                                                public final /* synthetic */ ViewPropertyAnimator val$animation;
                                                                public final /* synthetic */ int val$deltaX;
                                                                public final /* synthetic */ int val$deltaY;
                                                                public final /* synthetic */ RecyclerView.ViewHolder val$holder;
                                                                public final /* synthetic */ View val$view;

                                                                public AnonymousClass6(RecyclerView.ViewHolder viewHolder2222, int i12222, View view2222, int i13222, ViewPropertyAnimator animate2222) {
                                                                    r2 = viewHolder2222;
                                                                    r3 = i12222;
                                                                    r4 = view2222;
                                                                    r5 = i13222;
                                                                    r6 = animate2222;
                                                                }

                                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                public final void onAnimationCancel(Animator animator) {
                                                                    int i14 = r3;
                                                                    View view32 = r4;
                                                                    if (i14 != 0) {
                                                                        view32.setTranslationX(0.0f);
                                                                    }
                                                                    if (r5 != 0) {
                                                                        view32.setTranslationY(0.0f);
                                                                    }
                                                                }

                                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                public final void onAnimationEnd(Animator animator) {
                                                                    r6.setListener(null);
                                                                    DefaultItemAnimator defaultItemAnimator3 = DefaultItemAnimator.this;
                                                                    RecyclerView.ViewHolder viewHolder3 = r2;
                                                                    defaultItemAnimator3.dispatchAnimationFinished(viewHolder3);
                                                                    defaultItemAnimator3.mMoveAnimations.remove(viewHolder3);
                                                                    defaultItemAnimator3.dispatchFinishedWhenDone();
                                                                }

                                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                public final void onAnimationStart(Animator animator) {
                                                                    DefaultItemAnimator.this.getClass();
                                                                }
                                                            }).start();
                                                        }
                                                    }
                                                case 1:
                                                    Iterator it3 = arrayList62.iterator();
                                                    while (true) {
                                                        boolean hasNext2 = it3.hasNext();
                                                        DefaultItemAnimator defaultItemAnimator322 = r1;
                                                        if (!hasNext2) {
                                                            arrayList62.clear();
                                                            defaultItemAnimator322.mChangesList.remove(arrayList62);
                                                            break;
                                                        } else {
                                                            ChangeInfo changeInfo22 = (ChangeInfo) it3.next();
                                                            ArrayList arrayList72 = defaultItemAnimator322.mChangeAnimations;
                                                            long j2 = defaultItemAnimator322.mChangeDuration;
                                                            RecyclerView.ViewHolder viewHolder3 = changeInfo22.oldHolder;
                                                            View view322 = viewHolder3 == null ? null : viewHolder3.itemView;
                                                            RecyclerView.ViewHolder viewHolder4 = changeInfo22.newHolder;
                                                            View view422 = viewHolder4 != null ? viewHolder4.itemView : null;
                                                            if (view322 != null) {
                                                                ViewPropertyAnimator duration22 = view322.animate().setDuration(j2);
                                                                arrayList72.add(changeInfo22.oldHolder);
                                                                duration22.translationX(changeInfo22.toX - changeInfo22.fromX);
                                                                duration22.translationY(changeInfo22.toY - changeInfo22.fromY);
                                                                duration22.alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.7
                                                                    public final /* synthetic */ int $r8$classId;
                                                                    public final /* synthetic */ DefaultItemAnimator this$0;
                                                                    public final /* synthetic */ ChangeInfo val$changeInfo;
                                                                    public final /* synthetic */ ViewPropertyAnimator val$oldViewAnim;
                                                                    public final /* synthetic */ View val$view;

                                                                    public /* synthetic */ AnonymousClass7(DefaultItemAnimator defaultItemAnimator3222, ChangeInfo changeInfo222, ViewPropertyAnimator duration222, View view3222, int i14) {
                                                                        r5 = i14;
                                                                        r1 = defaultItemAnimator3222;
                                                                        r2 = changeInfo222;
                                                                        r3 = duration222;
                                                                        r4 = view3222;
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationEnd(Animator animator) {
                                                                        int i14 = r5;
                                                                        ChangeInfo changeInfo222 = r2;
                                                                        DefaultItemAnimator defaultItemAnimator4 = r1;
                                                                        View view5 = r4;
                                                                        ViewPropertyAnimator viewPropertyAnimator = r3;
                                                                        switch (i14) {
                                                                            case 0:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo222.oldHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo222.oldHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                            default:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo222.newHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo222.newHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                        }
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationStart(Animator animator) {
                                                                        switch (r5) {
                                                                            case 0:
                                                                                r1.getClass();
                                                                                break;
                                                                            default:
                                                                                r1.getClass();
                                                                                break;
                                                                        }
                                                                    }
                                                                }).start();
                                                            }
                                                            if (view422 != null) {
                                                                ViewPropertyAnimator animate322 = view422.animate();
                                                                arrayList72.add(changeInfo222.newHolder);
                                                                animate322.translationX(0.0f).translationY(0.0f).setDuration(j2).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.7
                                                                    public final /* synthetic */ int $r8$classId;
                                                                    public final /* synthetic */ DefaultItemAnimator this$0;
                                                                    public final /* synthetic */ ChangeInfo val$changeInfo;
                                                                    public final /* synthetic */ ViewPropertyAnimator val$oldViewAnim;
                                                                    public final /* synthetic */ View val$view;

                                                                    public /* synthetic */ AnonymousClass7(DefaultItemAnimator defaultItemAnimator3222, ChangeInfo changeInfo222, ViewPropertyAnimator animate3222, View view4222, int i14) {
                                                                        r5 = i14;
                                                                        r1 = defaultItemAnimator3222;
                                                                        r2 = changeInfo222;
                                                                        r3 = animate3222;
                                                                        r4 = view4222;
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationEnd(Animator animator) {
                                                                        int i14 = r5;
                                                                        ChangeInfo changeInfo222 = r2;
                                                                        DefaultItemAnimator defaultItemAnimator4 = r1;
                                                                        View view5 = r4;
                                                                        ViewPropertyAnimator viewPropertyAnimator = r3;
                                                                        switch (i14) {
                                                                            case 0:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo222.oldHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo222.oldHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                            default:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo222.newHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo222.newHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                        }
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationStart(Animator animator) {
                                                                        switch (r5) {
                                                                            case 0:
                                                                                r1.getClass();
                                                                                break;
                                                                            default:
                                                                                r1.getClass();
                                                                                break;
                                                                        }
                                                                    }
                                                                }).start();
                                                            }
                                                        }
                                                    }
                                                default:
                                                    Iterator it4 = arrayList62.iterator();
                                                    while (true) {
                                                        boolean hasNext3 = it4.hasNext();
                                                        DefaultItemAnimator defaultItemAnimator4 = r1;
                                                        if (!hasNext3) {
                                                            arrayList62.clear();
                                                            defaultItemAnimator4.mAdditionsList.remove(arrayList62);
                                                            break;
                                                        } else {
                                                            RecyclerView.ViewHolder viewHolder5 = (RecyclerView.ViewHolder) it4.next();
                                                            defaultItemAnimator4.getClass();
                                                            View view5 = viewHolder5.itemView;
                                                            ViewPropertyAnimator animate4 = view5.animate();
                                                            defaultItemAnimator4.mAddAnimations.add(viewHolder5);
                                                            animate4.alpha(1.0f).setDuration(defaultItemAnimator4.mAddDuration).setListener(defaultItemAnimator4.new AnonymousClass4(viewHolder5, view5, animate4)).start();
                                                        }
                                                    }
                                            }
                                        }
                                    };
                                    if (!z3 || !isEmpty2 || !isEmpty3) {
                                        if (z3) {
                                            j = 0;
                                        }
                                        long max = Math.max(!isEmpty2 ? defaultItemAnimator2.mMoveDuration : 0L, isEmpty3 ? 0L : defaultItemAnimator2.mChangeDuration) + j;
                                        z2 = false;
                                        View view4 = ((ViewHolder) arrayList72.get(0)).itemView;
                                        WeakHashMap weakHashMap3 = ViewCompat.sViewPropertyAnimatorMap;
                                        view4.postOnAnimationDelayed(anonymousClass13, max);
                                        recyclerView.mPostedAnimatorRunner = z2;
                                        break;
                                    } else {
                                        anonymousClass13.run();
                                    }
                                }
                            }
                        }
                        z2 = false;
                        recyclerView.mPostedAnimatorRunner = z2;
                }
            }
        };
        this.mTempRect = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRectF = new RectF();
        this.mRecyclerListeners = new ArrayList();
        this.mItemDecorations = new ArrayList();
        this.mOnItemTouchListeners = new ArrayList();
        this.mInterceptRequestLayoutDepth = 0;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        this.mLayoutOrScrollCounter = 0;
        this.mDispatchScrollCounter = 0;
        this.mEdgeEffectFactory = sDefaultEdgeEffectFactory;
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.mListener = null;
        defaultItemAnimator.mFinishedListeners = new ArrayList();
        defaultItemAnimator.mAddDuration = 120L;
        defaultItemAnimator.mRemoveDuration = 120L;
        defaultItemAnimator.mMoveDuration = 250L;
        defaultItemAnimator.mChangeDuration = 250L;
        final int i5 = 1;
        defaultItemAnimator.mSupportsChangeAnimations = true;
        defaultItemAnimator.mPendingRemovals = new ArrayList();
        defaultItemAnimator.mPendingAdditions = new ArrayList();
        defaultItemAnimator.mPendingMoves = new ArrayList();
        defaultItemAnimator.mPendingChanges = new ArrayList();
        defaultItemAnimator.mAdditionsList = new ArrayList();
        defaultItemAnimator.mMovesList = new ArrayList();
        defaultItemAnimator.mChangesList = new ArrayList();
        defaultItemAnimator.mAddAnimations = new ArrayList();
        defaultItemAnimator.mMoveAnimations = new ArrayList();
        defaultItemAnimator.mRemoveAnimations = new ArrayList();
        defaultItemAnimator.mChangeAnimations = new ArrayList();
        this.mItemAnimator = defaultItemAnimator;
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScaledHorizontalScrollFactor = Float.MIN_VALUE;
        this.mScaledVerticalScrollFactor = Float.MIN_VALUE;
        this.mPreserveFocusAfterLayout = true;
        this.mViewFlinger = new ViewFlinger();
        this.mPrefetchRegistry = ALLOW_THREAD_GAP_WORK ? new OpenHashSet() : null;
        State state = new State();
        state.mTargetPosition = -1;
        state.mPreviousLayoutItemCount = 0;
        state.mDeletedInvisibleItemCountSincePreviousLayout = 0;
        state.mLayoutStep = 1;
        state.mItemCount = 0;
        state.mStructureChanged = false;
        state.mInPreLayout = false;
        state.mTrackOldChangeHolders = false;
        state.mIsMeasuring = false;
        state.mRunSimpleAnimations = false;
        state.mRunPredictiveAnimations = false;
        this.mState = state;
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        AnonymousClass7 anonymousClass7 = new AnonymousClass7();
        this.mItemAnimatorListener = anonymousClass7;
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[2];
        this.mScrollOffset = new int[2];
        this.mNestedOffsets = new int[2];
        this.mReusableIntPair = new int[2];
        this.mPendingAccessibilityImportanceChange = new ArrayList();
        this.mItemAnimatorRunner = new Runnable(this) { // from class: androidx.recyclerview.widget.RecyclerView.1
            public final /* synthetic */ RecyclerView this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                boolean z2;
                int i52 = i5;
                RecyclerView recyclerView = this.this$0;
                switch (i52) {
                    case 0:
                        if (recyclerView.mFirstLayoutComplete && !recyclerView.isLayoutRequested()) {
                            if (!recyclerView.mIsAttached) {
                                recyclerView.requestLayout();
                                break;
                            } else if (!recyclerView.mLayoutSuppressed) {
                                recyclerView.consumePendingUpdateOperations();
                                break;
                            } else {
                                recyclerView.mLayoutWasDefered = true;
                                break;
                            }
                        }
                        break;
                    default:
                        ItemAnimator itemAnimator = recyclerView.mItemAnimator;
                        if (itemAnimator != null) {
                            final DefaultItemAnimator defaultItemAnimator2 = (DefaultItemAnimator) itemAnimator;
                            long j = defaultItemAnimator2.mRemoveDuration;
                            ArrayList arrayList = defaultItemAnimator2.mPendingRemovals;
                            boolean isEmpty = arrayList.isEmpty();
                            ArrayList arrayList2 = defaultItemAnimator2.mPendingMoves;
                            boolean isEmpty2 = arrayList2.isEmpty();
                            ArrayList arrayList3 = defaultItemAnimator2.mPendingChanges;
                            boolean isEmpty3 = arrayList3.isEmpty();
                            ArrayList arrayList4 = defaultItemAnimator2.mPendingAdditions;
                            boolean isEmpty4 = arrayList4.isEmpty();
                            if (!isEmpty || !isEmpty2 || !isEmpty4 || !isEmpty3) {
                                Iterator it = arrayList.iterator();
                                while (it.hasNext()) {
                                    ViewHolder viewHolder = (ViewHolder) it.next();
                                    View view = viewHolder.itemView;
                                    ViewPropertyAnimator animate = view.animate();
                                    defaultItemAnimator2.mRemoveAnimations.add(viewHolder);
                                    animate.setDuration(j).alpha(0.0f).setListener(defaultItemAnimator2.new AnonymousClass4(viewHolder, animate, view)).start();
                                    arrayList = arrayList;
                                    isEmpty = isEmpty;
                                }
                                boolean z3 = isEmpty;
                                arrayList.clear();
                                if (!isEmpty2) {
                                    final ArrayList arrayList52 = new ArrayList();
                                    arrayList52.addAll(arrayList2);
                                    defaultItemAnimator2.mMovesList.add(arrayList52);
                                    arrayList2.clear();
                                    final int i62 = 0;
                                    Runnable anonymousClass1 = new Runnable() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.1
                                        public final /* synthetic */ int $r8$classId;
                                        public final /* synthetic */ DefaultItemAnimator this$0;
                                        public final /* synthetic */ ArrayList val$moves;

                                        public /* synthetic */ AnonymousClass1(final DefaultItemAnimator defaultItemAnimator22, final ArrayList arrayList522, final int i622) {
                                            r3 = i622;
                                            r1 = defaultItemAnimator22;
                                            r2 = arrayList522;
                                        }

                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            int i72 = r3;
                                            ArrayList arrayList62 = r2;
                                            switch (i72) {
                                                case 0:
                                                    Iterator it2 = arrayList62.iterator();
                                                    while (true) {
                                                        boolean hasNext = it2.hasNext();
                                                        DefaultItemAnimator defaultItemAnimator22 = r1;
                                                        if (!hasNext) {
                                                            arrayList62.clear();
                                                            defaultItemAnimator22.mMovesList.remove(arrayList62);
                                                            break;
                                                        } else {
                                                            MoveInfo moveInfo = (MoveInfo) it2.next();
                                                            RecyclerView.ViewHolder viewHolder2222 = moveInfo.holder;
                                                            int i82 = moveInfo.fromX;
                                                            int i9 = moveInfo.fromY;
                                                            int i10 = moveInfo.toX;
                                                            int i11 = moveInfo.toY;
                                                            defaultItemAnimator22.getClass();
                                                            View view2222 = viewHolder2222.itemView;
                                                            int i12222 = i10 - i82;
                                                            int i13222 = i11 - i9;
                                                            if (i12222 != 0) {
                                                                view2222.animate().translationX(0.0f);
                                                            }
                                                            if (i13222 != 0) {
                                                                view2222.animate().translationY(0.0f);
                                                            }
                                                            ViewPropertyAnimator animate2222 = view2222.animate();
                                                            defaultItemAnimator22.mMoveAnimations.add(viewHolder2222);
                                                            animate2222.setDuration(defaultItemAnimator22.mMoveDuration).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.6
                                                                public final /* synthetic */ ViewPropertyAnimator val$animation;
                                                                public final /* synthetic */ int val$deltaX;
                                                                public final /* synthetic */ int val$deltaY;
                                                                public final /* synthetic */ RecyclerView.ViewHolder val$holder;
                                                                public final /* synthetic */ View val$view;

                                                                public AnonymousClass6(RecyclerView.ViewHolder viewHolder22222, int i122222, View view22222, int i132222, ViewPropertyAnimator animate22222) {
                                                                    r2 = viewHolder22222;
                                                                    r3 = i122222;
                                                                    r4 = view22222;
                                                                    r5 = i132222;
                                                                    r6 = animate22222;
                                                                }

                                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                public final void onAnimationCancel(Animator animator) {
                                                                    int i14 = r3;
                                                                    View view32 = r4;
                                                                    if (i14 != 0) {
                                                                        view32.setTranslationX(0.0f);
                                                                    }
                                                                    if (r5 != 0) {
                                                                        view32.setTranslationY(0.0f);
                                                                    }
                                                                }

                                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                public final void onAnimationEnd(Animator animator) {
                                                                    r6.setListener(null);
                                                                    DefaultItemAnimator defaultItemAnimator3 = DefaultItemAnimator.this;
                                                                    RecyclerView.ViewHolder viewHolder3 = r2;
                                                                    defaultItemAnimator3.dispatchAnimationFinished(viewHolder3);
                                                                    defaultItemAnimator3.mMoveAnimations.remove(viewHolder3);
                                                                    defaultItemAnimator3.dispatchFinishedWhenDone();
                                                                }

                                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                public final void onAnimationStart(Animator animator) {
                                                                    DefaultItemAnimator.this.getClass();
                                                                }
                                                            }).start();
                                                        }
                                                    }
                                                case 1:
                                                    Iterator it3 = arrayList62.iterator();
                                                    while (true) {
                                                        boolean hasNext2 = it3.hasNext();
                                                        DefaultItemAnimator defaultItemAnimator3222 = r1;
                                                        if (!hasNext2) {
                                                            arrayList62.clear();
                                                            defaultItemAnimator3222.mChangesList.remove(arrayList62);
                                                            break;
                                                        } else {
                                                            ChangeInfo changeInfo222 = (ChangeInfo) it3.next();
                                                            ArrayList arrayList72 = defaultItemAnimator3222.mChangeAnimations;
                                                            long j2 = defaultItemAnimator3222.mChangeDuration;
                                                            RecyclerView.ViewHolder viewHolder3 = changeInfo222.oldHolder;
                                                            View view3222 = viewHolder3 == null ? null : viewHolder3.itemView;
                                                            RecyclerView.ViewHolder viewHolder4 = changeInfo222.newHolder;
                                                            View view4222 = viewHolder4 != null ? viewHolder4.itemView : null;
                                                            if (view3222 != null) {
                                                                ViewPropertyAnimator duration222 = view3222.animate().setDuration(j2);
                                                                arrayList72.add(changeInfo222.oldHolder);
                                                                duration222.translationX(changeInfo222.toX - changeInfo222.fromX);
                                                                duration222.translationY(changeInfo222.toY - changeInfo222.fromY);
                                                                duration222.alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.7
                                                                    public final /* synthetic */ int $r8$classId;
                                                                    public final /* synthetic */ DefaultItemAnimator this$0;
                                                                    public final /* synthetic */ ChangeInfo val$changeInfo;
                                                                    public final /* synthetic */ ViewPropertyAnimator val$oldViewAnim;
                                                                    public final /* synthetic */ View val$view;

                                                                    public /* synthetic */ AnonymousClass7(DefaultItemAnimator defaultItemAnimator32222, ChangeInfo changeInfo2222, ViewPropertyAnimator duration2222, View view32222, int i14) {
                                                                        r5 = i14;
                                                                        r1 = defaultItemAnimator32222;
                                                                        r2 = changeInfo2222;
                                                                        r3 = duration2222;
                                                                        r4 = view32222;
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationEnd(Animator animator) {
                                                                        int i14 = r5;
                                                                        ChangeInfo changeInfo2222 = r2;
                                                                        DefaultItemAnimator defaultItemAnimator4 = r1;
                                                                        View view5 = r4;
                                                                        ViewPropertyAnimator viewPropertyAnimator = r3;
                                                                        switch (i14) {
                                                                            case 0:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo2222.oldHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo2222.oldHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                            default:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo2222.newHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo2222.newHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                        }
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationStart(Animator animator) {
                                                                        switch (r5) {
                                                                            case 0:
                                                                                r1.getClass();
                                                                                break;
                                                                            default:
                                                                                r1.getClass();
                                                                                break;
                                                                        }
                                                                    }
                                                                }).start();
                                                            }
                                                            if (view4222 != null) {
                                                                ViewPropertyAnimator animate3222 = view4222.animate();
                                                                arrayList72.add(changeInfo2222.newHolder);
                                                                animate3222.translationX(0.0f).translationY(0.0f).setDuration(j2).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.7
                                                                    public final /* synthetic */ int $r8$classId;
                                                                    public final /* synthetic */ DefaultItemAnimator this$0;
                                                                    public final /* synthetic */ ChangeInfo val$changeInfo;
                                                                    public final /* synthetic */ ViewPropertyAnimator val$oldViewAnim;
                                                                    public final /* synthetic */ View val$view;

                                                                    public /* synthetic */ AnonymousClass7(DefaultItemAnimator defaultItemAnimator32222, ChangeInfo changeInfo2222, ViewPropertyAnimator animate32222, View view42222, int i14) {
                                                                        r5 = i14;
                                                                        r1 = defaultItemAnimator32222;
                                                                        r2 = changeInfo2222;
                                                                        r3 = animate32222;
                                                                        r4 = view42222;
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationEnd(Animator animator) {
                                                                        int i14 = r5;
                                                                        ChangeInfo changeInfo2222 = r2;
                                                                        DefaultItemAnimator defaultItemAnimator4 = r1;
                                                                        View view5 = r4;
                                                                        ViewPropertyAnimator viewPropertyAnimator = r3;
                                                                        switch (i14) {
                                                                            case 0:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo2222.oldHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo2222.oldHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                            default:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo2222.newHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo2222.newHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                        }
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationStart(Animator animator) {
                                                                        switch (r5) {
                                                                            case 0:
                                                                                r1.getClass();
                                                                                break;
                                                                            default:
                                                                                r1.getClass();
                                                                                break;
                                                                        }
                                                                    }
                                                                }).start();
                                                            }
                                                        }
                                                    }
                                                default:
                                                    Iterator it4 = arrayList62.iterator();
                                                    while (true) {
                                                        boolean hasNext3 = it4.hasNext();
                                                        DefaultItemAnimator defaultItemAnimator4 = r1;
                                                        if (!hasNext3) {
                                                            arrayList62.clear();
                                                            defaultItemAnimator4.mAdditionsList.remove(arrayList62);
                                                            break;
                                                        } else {
                                                            RecyclerView.ViewHolder viewHolder5 = (RecyclerView.ViewHolder) it4.next();
                                                            defaultItemAnimator4.getClass();
                                                            View view5 = viewHolder5.itemView;
                                                            ViewPropertyAnimator animate4 = view5.animate();
                                                            defaultItemAnimator4.mAddAnimations.add(viewHolder5);
                                                            animate4.alpha(1.0f).setDuration(defaultItemAnimator4.mAddDuration).setListener(defaultItemAnimator4.new AnonymousClass4(viewHolder5, view5, animate4)).start();
                                                        }
                                                    }
                                            }
                                        }
                                    };
                                    if (z3) {
                                        anonymousClass1.run();
                                    } else {
                                        View view2 = ((DefaultItemAnimator.MoveInfo) arrayList522.get(0)).holder.itemView;
                                        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                                        view2.postOnAnimationDelayed(anonymousClass1, j);
                                    }
                                }
                                if (!isEmpty3) {
                                    final ArrayList arrayList62 = new ArrayList();
                                    arrayList62.addAll(arrayList3);
                                    defaultItemAnimator22.mChangesList.add(arrayList62);
                                    arrayList3.clear();
                                    final int i72 = 1;
                                    Runnable anonymousClass12 = new Runnable() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.1
                                        public final /* synthetic */ int $r8$classId;
                                        public final /* synthetic */ DefaultItemAnimator this$0;
                                        public final /* synthetic */ ArrayList val$moves;

                                        public /* synthetic */ AnonymousClass1(final DefaultItemAnimator defaultItemAnimator22, final ArrayList arrayList622, final int i722) {
                                            r3 = i722;
                                            r1 = defaultItemAnimator22;
                                            r2 = arrayList622;
                                        }

                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            int i722 = r3;
                                            ArrayList arrayList622 = r2;
                                            switch (i722) {
                                                case 0:
                                                    Iterator it2 = arrayList622.iterator();
                                                    while (true) {
                                                        boolean hasNext = it2.hasNext();
                                                        DefaultItemAnimator defaultItemAnimator22 = r1;
                                                        if (!hasNext) {
                                                            arrayList622.clear();
                                                            defaultItemAnimator22.mMovesList.remove(arrayList622);
                                                            break;
                                                        } else {
                                                            MoveInfo moveInfo = (MoveInfo) it2.next();
                                                            RecyclerView.ViewHolder viewHolder22222 = moveInfo.holder;
                                                            int i82 = moveInfo.fromX;
                                                            int i9 = moveInfo.fromY;
                                                            int i10 = moveInfo.toX;
                                                            int i11 = moveInfo.toY;
                                                            defaultItemAnimator22.getClass();
                                                            View view22222 = viewHolder22222.itemView;
                                                            int i122222 = i10 - i82;
                                                            int i132222 = i11 - i9;
                                                            if (i122222 != 0) {
                                                                view22222.animate().translationX(0.0f);
                                                            }
                                                            if (i132222 != 0) {
                                                                view22222.animate().translationY(0.0f);
                                                            }
                                                            ViewPropertyAnimator animate22222 = view22222.animate();
                                                            defaultItemAnimator22.mMoveAnimations.add(viewHolder22222);
                                                            animate22222.setDuration(defaultItemAnimator22.mMoveDuration).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.6
                                                                public final /* synthetic */ ViewPropertyAnimator val$animation;
                                                                public final /* synthetic */ int val$deltaX;
                                                                public final /* synthetic */ int val$deltaY;
                                                                public final /* synthetic */ RecyclerView.ViewHolder val$holder;
                                                                public final /* synthetic */ View val$view;

                                                                public AnonymousClass6(RecyclerView.ViewHolder viewHolder222222, int i1222222, View view222222, int i1322222, ViewPropertyAnimator animate222222) {
                                                                    r2 = viewHolder222222;
                                                                    r3 = i1222222;
                                                                    r4 = view222222;
                                                                    r5 = i1322222;
                                                                    r6 = animate222222;
                                                                }

                                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                public final void onAnimationCancel(Animator animator) {
                                                                    int i14 = r3;
                                                                    View view32 = r4;
                                                                    if (i14 != 0) {
                                                                        view32.setTranslationX(0.0f);
                                                                    }
                                                                    if (r5 != 0) {
                                                                        view32.setTranslationY(0.0f);
                                                                    }
                                                                }

                                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                public final void onAnimationEnd(Animator animator) {
                                                                    r6.setListener(null);
                                                                    DefaultItemAnimator defaultItemAnimator3 = DefaultItemAnimator.this;
                                                                    RecyclerView.ViewHolder viewHolder3 = r2;
                                                                    defaultItemAnimator3.dispatchAnimationFinished(viewHolder3);
                                                                    defaultItemAnimator3.mMoveAnimations.remove(viewHolder3);
                                                                    defaultItemAnimator3.dispatchFinishedWhenDone();
                                                                }

                                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                public final void onAnimationStart(Animator animator) {
                                                                    DefaultItemAnimator.this.getClass();
                                                                }
                                                            }).start();
                                                        }
                                                    }
                                                case 1:
                                                    Iterator it3 = arrayList622.iterator();
                                                    while (true) {
                                                        boolean hasNext2 = it3.hasNext();
                                                        DefaultItemAnimator defaultItemAnimator32222 = r1;
                                                        if (!hasNext2) {
                                                            arrayList622.clear();
                                                            defaultItemAnimator32222.mChangesList.remove(arrayList622);
                                                            break;
                                                        } else {
                                                            ChangeInfo changeInfo2222 = (ChangeInfo) it3.next();
                                                            ArrayList arrayList72 = defaultItemAnimator32222.mChangeAnimations;
                                                            long j2 = defaultItemAnimator32222.mChangeDuration;
                                                            RecyclerView.ViewHolder viewHolder3 = changeInfo2222.oldHolder;
                                                            View view32222 = viewHolder3 == null ? null : viewHolder3.itemView;
                                                            RecyclerView.ViewHolder viewHolder4 = changeInfo2222.newHolder;
                                                            View view42222 = viewHolder4 != null ? viewHolder4.itemView : null;
                                                            if (view32222 != null) {
                                                                ViewPropertyAnimator duration2222 = view32222.animate().setDuration(j2);
                                                                arrayList72.add(changeInfo2222.oldHolder);
                                                                duration2222.translationX(changeInfo2222.toX - changeInfo2222.fromX);
                                                                duration2222.translationY(changeInfo2222.toY - changeInfo2222.fromY);
                                                                duration2222.alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.7
                                                                    public final /* synthetic */ int $r8$classId;
                                                                    public final /* synthetic */ DefaultItemAnimator this$0;
                                                                    public final /* synthetic */ ChangeInfo val$changeInfo;
                                                                    public final /* synthetic */ ViewPropertyAnimator val$oldViewAnim;
                                                                    public final /* synthetic */ View val$view;

                                                                    public /* synthetic */ AnonymousClass7(DefaultItemAnimator defaultItemAnimator322222, ChangeInfo changeInfo22222, ViewPropertyAnimator duration22222, View view322222, int i14) {
                                                                        r5 = i14;
                                                                        r1 = defaultItemAnimator322222;
                                                                        r2 = changeInfo22222;
                                                                        r3 = duration22222;
                                                                        r4 = view322222;
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationEnd(Animator animator) {
                                                                        int i14 = r5;
                                                                        ChangeInfo changeInfo22222 = r2;
                                                                        DefaultItemAnimator defaultItemAnimator4 = r1;
                                                                        View view5 = r4;
                                                                        ViewPropertyAnimator viewPropertyAnimator = r3;
                                                                        switch (i14) {
                                                                            case 0:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo22222.oldHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo22222.oldHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                            default:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo22222.newHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo22222.newHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                        }
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationStart(Animator animator) {
                                                                        switch (r5) {
                                                                            case 0:
                                                                                r1.getClass();
                                                                                break;
                                                                            default:
                                                                                r1.getClass();
                                                                                break;
                                                                        }
                                                                    }
                                                                }).start();
                                                            }
                                                            if (view42222 != null) {
                                                                ViewPropertyAnimator animate32222 = view42222.animate();
                                                                arrayList72.add(changeInfo22222.newHolder);
                                                                animate32222.translationX(0.0f).translationY(0.0f).setDuration(j2).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.7
                                                                    public final /* synthetic */ int $r8$classId;
                                                                    public final /* synthetic */ DefaultItemAnimator this$0;
                                                                    public final /* synthetic */ ChangeInfo val$changeInfo;
                                                                    public final /* synthetic */ ViewPropertyAnimator val$oldViewAnim;
                                                                    public final /* synthetic */ View val$view;

                                                                    public /* synthetic */ AnonymousClass7(DefaultItemAnimator defaultItemAnimator322222, ChangeInfo changeInfo22222, ViewPropertyAnimator animate322222, View view422222, int i14) {
                                                                        r5 = i14;
                                                                        r1 = defaultItemAnimator322222;
                                                                        r2 = changeInfo22222;
                                                                        r3 = animate322222;
                                                                        r4 = view422222;
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationEnd(Animator animator) {
                                                                        int i14 = r5;
                                                                        ChangeInfo changeInfo22222 = r2;
                                                                        DefaultItemAnimator defaultItemAnimator4 = r1;
                                                                        View view5 = r4;
                                                                        ViewPropertyAnimator viewPropertyAnimator = r3;
                                                                        switch (i14) {
                                                                            case 0:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo22222.oldHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo22222.oldHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                            default:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo22222.newHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo22222.newHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                        }
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationStart(Animator animator) {
                                                                        switch (r5) {
                                                                            case 0:
                                                                                r1.getClass();
                                                                                break;
                                                                            default:
                                                                                r1.getClass();
                                                                                break;
                                                                        }
                                                                    }
                                                                }).start();
                                                            }
                                                        }
                                                    }
                                                default:
                                                    Iterator it4 = arrayList622.iterator();
                                                    while (true) {
                                                        boolean hasNext3 = it4.hasNext();
                                                        DefaultItemAnimator defaultItemAnimator4 = r1;
                                                        if (!hasNext3) {
                                                            arrayList622.clear();
                                                            defaultItemAnimator4.mAdditionsList.remove(arrayList622);
                                                            break;
                                                        } else {
                                                            RecyclerView.ViewHolder viewHolder5 = (RecyclerView.ViewHolder) it4.next();
                                                            defaultItemAnimator4.getClass();
                                                            View view5 = viewHolder5.itemView;
                                                            ViewPropertyAnimator animate4 = view5.animate();
                                                            defaultItemAnimator4.mAddAnimations.add(viewHolder5);
                                                            animate4.alpha(1.0f).setDuration(defaultItemAnimator4.mAddDuration).setListener(defaultItemAnimator4.new AnonymousClass4(viewHolder5, view5, animate4)).start();
                                                        }
                                                    }
                                            }
                                        }
                                    };
                                    if (z3) {
                                        anonymousClass12.run();
                                    } else {
                                        View view3 = ((DefaultItemAnimator.ChangeInfo) arrayList622.get(0)).oldHolder.itemView;
                                        WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                                        view3.postOnAnimationDelayed(anonymousClass12, j);
                                    }
                                }
                                if (!isEmpty4) {
                                    final ArrayList arrayList72 = new ArrayList();
                                    arrayList72.addAll(arrayList4);
                                    defaultItemAnimator22.mAdditionsList.add(arrayList72);
                                    arrayList4.clear();
                                    final int i82 = 2;
                                    Runnable anonymousClass13 = new Runnable() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.1
                                        public final /* synthetic */ int $r8$classId;
                                        public final /* synthetic */ DefaultItemAnimator this$0;
                                        public final /* synthetic */ ArrayList val$moves;

                                        public /* synthetic */ AnonymousClass1(final DefaultItemAnimator defaultItemAnimator22, final ArrayList arrayList722, final int i822) {
                                            r3 = i822;
                                            r1 = defaultItemAnimator22;
                                            r2 = arrayList722;
                                        }

                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            int i722 = r3;
                                            ArrayList arrayList622 = r2;
                                            switch (i722) {
                                                case 0:
                                                    Iterator it2 = arrayList622.iterator();
                                                    while (true) {
                                                        boolean hasNext = it2.hasNext();
                                                        DefaultItemAnimator defaultItemAnimator22 = r1;
                                                        if (!hasNext) {
                                                            arrayList622.clear();
                                                            defaultItemAnimator22.mMovesList.remove(arrayList622);
                                                            break;
                                                        } else {
                                                            MoveInfo moveInfo = (MoveInfo) it2.next();
                                                            RecyclerView.ViewHolder viewHolder222222 = moveInfo.holder;
                                                            int i822 = moveInfo.fromX;
                                                            int i9 = moveInfo.fromY;
                                                            int i10 = moveInfo.toX;
                                                            int i11 = moveInfo.toY;
                                                            defaultItemAnimator22.getClass();
                                                            View view222222 = viewHolder222222.itemView;
                                                            int i1222222 = i10 - i822;
                                                            int i1322222 = i11 - i9;
                                                            if (i1222222 != 0) {
                                                                view222222.animate().translationX(0.0f);
                                                            }
                                                            if (i1322222 != 0) {
                                                                view222222.animate().translationY(0.0f);
                                                            }
                                                            ViewPropertyAnimator animate222222 = view222222.animate();
                                                            defaultItemAnimator22.mMoveAnimations.add(viewHolder222222);
                                                            animate222222.setDuration(defaultItemAnimator22.mMoveDuration).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.6
                                                                public final /* synthetic */ ViewPropertyAnimator val$animation;
                                                                public final /* synthetic */ int val$deltaX;
                                                                public final /* synthetic */ int val$deltaY;
                                                                public final /* synthetic */ RecyclerView.ViewHolder val$holder;
                                                                public final /* synthetic */ View val$view;

                                                                public AnonymousClass6(RecyclerView.ViewHolder viewHolder2222222, int i12222222, View view2222222, int i13222222, ViewPropertyAnimator animate2222222) {
                                                                    r2 = viewHolder2222222;
                                                                    r3 = i12222222;
                                                                    r4 = view2222222;
                                                                    r5 = i13222222;
                                                                    r6 = animate2222222;
                                                                }

                                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                public final void onAnimationCancel(Animator animator) {
                                                                    int i14 = r3;
                                                                    View view32 = r4;
                                                                    if (i14 != 0) {
                                                                        view32.setTranslationX(0.0f);
                                                                    }
                                                                    if (r5 != 0) {
                                                                        view32.setTranslationY(0.0f);
                                                                    }
                                                                }

                                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                public final void onAnimationEnd(Animator animator) {
                                                                    r6.setListener(null);
                                                                    DefaultItemAnimator defaultItemAnimator3 = DefaultItemAnimator.this;
                                                                    RecyclerView.ViewHolder viewHolder3 = r2;
                                                                    defaultItemAnimator3.dispatchAnimationFinished(viewHolder3);
                                                                    defaultItemAnimator3.mMoveAnimations.remove(viewHolder3);
                                                                    defaultItemAnimator3.dispatchFinishedWhenDone();
                                                                }

                                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                public final void onAnimationStart(Animator animator) {
                                                                    DefaultItemAnimator.this.getClass();
                                                                }
                                                            }).start();
                                                        }
                                                    }
                                                case 1:
                                                    Iterator it3 = arrayList622.iterator();
                                                    while (true) {
                                                        boolean hasNext2 = it3.hasNext();
                                                        DefaultItemAnimator defaultItemAnimator322222 = r1;
                                                        if (!hasNext2) {
                                                            arrayList622.clear();
                                                            defaultItemAnimator322222.mChangesList.remove(arrayList622);
                                                            break;
                                                        } else {
                                                            ChangeInfo changeInfo22222 = (ChangeInfo) it3.next();
                                                            ArrayList arrayList722 = defaultItemAnimator322222.mChangeAnimations;
                                                            long j2 = defaultItemAnimator322222.mChangeDuration;
                                                            RecyclerView.ViewHolder viewHolder3 = changeInfo22222.oldHolder;
                                                            View view322222 = viewHolder3 == null ? null : viewHolder3.itemView;
                                                            RecyclerView.ViewHolder viewHolder4 = changeInfo22222.newHolder;
                                                            View view422222 = viewHolder4 != null ? viewHolder4.itemView : null;
                                                            if (view322222 != null) {
                                                                ViewPropertyAnimator duration22222 = view322222.animate().setDuration(j2);
                                                                arrayList722.add(changeInfo22222.oldHolder);
                                                                duration22222.translationX(changeInfo22222.toX - changeInfo22222.fromX);
                                                                duration22222.translationY(changeInfo22222.toY - changeInfo22222.fromY);
                                                                duration22222.alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.7
                                                                    public final /* synthetic */ int $r8$classId;
                                                                    public final /* synthetic */ DefaultItemAnimator this$0;
                                                                    public final /* synthetic */ ChangeInfo val$changeInfo;
                                                                    public final /* synthetic */ ViewPropertyAnimator val$oldViewAnim;
                                                                    public final /* synthetic */ View val$view;

                                                                    public /* synthetic */ AnonymousClass7(DefaultItemAnimator defaultItemAnimator3222222, ChangeInfo changeInfo222222, ViewPropertyAnimator duration222222, View view3222222, int i14) {
                                                                        r5 = i14;
                                                                        r1 = defaultItemAnimator3222222;
                                                                        r2 = changeInfo222222;
                                                                        r3 = duration222222;
                                                                        r4 = view3222222;
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationEnd(Animator animator) {
                                                                        int i14 = r5;
                                                                        ChangeInfo changeInfo222222 = r2;
                                                                        DefaultItemAnimator defaultItemAnimator4 = r1;
                                                                        View view5 = r4;
                                                                        ViewPropertyAnimator viewPropertyAnimator = r3;
                                                                        switch (i14) {
                                                                            case 0:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo222222.oldHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo222222.oldHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                            default:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo222222.newHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo222222.newHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                        }
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationStart(Animator animator) {
                                                                        switch (r5) {
                                                                            case 0:
                                                                                r1.getClass();
                                                                                break;
                                                                            default:
                                                                                r1.getClass();
                                                                                break;
                                                                        }
                                                                    }
                                                                }).start();
                                                            }
                                                            if (view422222 != null) {
                                                                ViewPropertyAnimator animate322222 = view422222.animate();
                                                                arrayList722.add(changeInfo222222.newHolder);
                                                                animate322222.translationX(0.0f).translationY(0.0f).setDuration(j2).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.7
                                                                    public final /* synthetic */ int $r8$classId;
                                                                    public final /* synthetic */ DefaultItemAnimator this$0;
                                                                    public final /* synthetic */ ChangeInfo val$changeInfo;
                                                                    public final /* synthetic */ ViewPropertyAnimator val$oldViewAnim;
                                                                    public final /* synthetic */ View val$view;

                                                                    public /* synthetic */ AnonymousClass7(DefaultItemAnimator defaultItemAnimator3222222, ChangeInfo changeInfo222222, ViewPropertyAnimator animate3222222, View view4222222, int i14) {
                                                                        r5 = i14;
                                                                        r1 = defaultItemAnimator3222222;
                                                                        r2 = changeInfo222222;
                                                                        r3 = animate3222222;
                                                                        r4 = view4222222;
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationEnd(Animator animator) {
                                                                        int i14 = r5;
                                                                        ChangeInfo changeInfo222222 = r2;
                                                                        DefaultItemAnimator defaultItemAnimator4 = r1;
                                                                        View view5 = r4;
                                                                        ViewPropertyAnimator viewPropertyAnimator = r3;
                                                                        switch (i14) {
                                                                            case 0:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo222222.oldHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo222222.oldHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                            default:
                                                                                viewPropertyAnimator.setListener(null);
                                                                                view5.setAlpha(1.0f);
                                                                                view5.setTranslationX(0.0f);
                                                                                view5.setTranslationY(0.0f);
                                                                                defaultItemAnimator4.dispatchAnimationFinished(changeInfo222222.newHolder);
                                                                                defaultItemAnimator4.mChangeAnimations.remove(changeInfo222222.newHolder);
                                                                                defaultItemAnimator4.dispatchFinishedWhenDone();
                                                                                break;
                                                                        }
                                                                    }

                                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                                    public final void onAnimationStart(Animator animator) {
                                                                        switch (r5) {
                                                                            case 0:
                                                                                r1.getClass();
                                                                                break;
                                                                            default:
                                                                                r1.getClass();
                                                                                break;
                                                                        }
                                                                    }
                                                                }).start();
                                                            }
                                                        }
                                                    }
                                                default:
                                                    Iterator it4 = arrayList622.iterator();
                                                    while (true) {
                                                        boolean hasNext3 = it4.hasNext();
                                                        DefaultItemAnimator defaultItemAnimator4 = r1;
                                                        if (!hasNext3) {
                                                            arrayList622.clear();
                                                            defaultItemAnimator4.mAdditionsList.remove(arrayList622);
                                                            break;
                                                        } else {
                                                            RecyclerView.ViewHolder viewHolder5 = (RecyclerView.ViewHolder) it4.next();
                                                            defaultItemAnimator4.getClass();
                                                            View view5 = viewHolder5.itemView;
                                                            ViewPropertyAnimator animate4 = view5.animate();
                                                            defaultItemAnimator4.mAddAnimations.add(viewHolder5);
                                                            animate4.alpha(1.0f).setDuration(defaultItemAnimator4.mAddDuration).setListener(defaultItemAnimator4.new AnonymousClass4(viewHolder5, view5, animate4)).start();
                                                        }
                                                    }
                                            }
                                        }
                                    };
                                    if (!z3 || !isEmpty2 || !isEmpty3) {
                                        if (z3) {
                                            j = 0;
                                        }
                                        long max = Math.max(!isEmpty2 ? defaultItemAnimator22.mMoveDuration : 0L, isEmpty3 ? 0L : defaultItemAnimator22.mChangeDuration) + j;
                                        z2 = false;
                                        View view4 = ((ViewHolder) arrayList722.get(0)).itemView;
                                        WeakHashMap weakHashMap3 = ViewCompat.sViewPropertyAnimatorMap;
                                        view4.postOnAnimationDelayed(anonymousClass13, max);
                                        recyclerView.mPostedAnimatorRunner = z2;
                                        break;
                                    } else {
                                        anonymousClass13.run();
                                    }
                                }
                            }
                        }
                        z2 = false;
                        recyclerView.mPostedAnimatorRunner = z2;
                }
            }
        };
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mViewInfoProcessCallback = new AnonymousClass7();
        this.mDifferentialMotionFlingController = new DifferentialMotionFlingController(getContext(), new AnonymousClass7());
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 26) {
            Method method = ViewConfigurationCompat.sGetScaledScrollFactorMethod;
            legacyScrollFactor = Transition.Impl26.getScaledHorizontalScrollFactor(viewConfiguration);
        } else {
            legacyScrollFactor = ViewConfigurationCompat.getLegacyScrollFactor(viewConfiguration, context);
        }
        this.mScaledHorizontalScrollFactor = legacyScrollFactor;
        this.mScaledVerticalScrollFactor = i6 >= 26 ? Transition.Impl26.getScaledVerticalScrollFactor(viewConfiguration) : ViewConfigurationCompat.getLegacyScrollFactor(viewConfiguration, context);
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mPhysicalCoef = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        setWillNotDraw(getOverScrollMode() == 2);
        this.mItemAnimator.mListener = anonymousClass7;
        AnonymousClass7 anonymousClass72 = new AnonymousClass7();
        RulerTrackingMap rulerTrackingMap = new RulerTrackingMap();
        rulerTrackingMap.rulers = new Pools$SimplePool(30);
        rulerTrackingMap.values = new ArrayList();
        rulerTrackingMap.accessFlags = new ArrayList();
        rulerTrackingMap.size = 0;
        rulerTrackingMap.layoutNodes = anonymousClass72;
        rulerTrackingMap.newRulers = new OpReorderer(rulerTrackingMap);
        this.mAdapterHelper = rulerTrackingMap;
        this.mChildHelper = new ChildHelper(new AnonymousClass7());
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        if ((i6 >= 26 ? ViewCompat.Api26Impl.getImportantForAutofill(this) : 0) == 0 && i6 >= 26) {
            ViewCompat.Api26Impl.setImportantForAutofill(this, 8);
        }
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new RecyclerViewAccessibilityDelegate(this));
        int[] iArr = R$styleable.RecyclerView;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, obtainStyledAttributes, i);
        String string = obtainStyledAttributes.getString(8);
        if (obtainStyledAttributes.getInt(2, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.mClipToPadding = obtainStyledAttributes.getBoolean(1, true);
        if (obtainStyledAttributes.getBoolean(3, false)) {
            StateListDrawable stateListDrawable = (StateListDrawable) obtainStyledAttributes.getDrawable(6);
            Drawable drawable = obtainStyledAttributes.getDrawable(7);
            StateListDrawable stateListDrawable2 = (StateListDrawable) obtainStyledAttributes.getDrawable(4);
            Drawable drawable2 = obtainStyledAttributes.getDrawable(5);
            if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Trying to set fast scroller without both required drawables.".concat(exceptionLabel()));
                throw null;
            }
            Resources resources = getContext().getResources();
            c2 = 2;
            z = 1;
            typedArray = obtainStyledAttributes;
            c = 3;
            i2 = i;
            th = null;
            i3 = 4;
            new FastScroller(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(org.schabi.newpipe.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(org.schabi.newpipe.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(org.schabi.newpipe.R.dimen.fastscroll_margin));
        } else {
            c = 3;
            c2 = 2;
            th = null;
            z = 1;
            i2 = i;
            typedArray = obtainStyledAttributes;
            i3 = 4;
        }
        typedArray.recycle();
        this.mLowResRotaryEncoderFeature = context.getPackageManager().hasSystemFeature("android.hardware.rotaryencoder.lowres");
        if (string != null) {
            String trim = string.trim();
            if (!trim.isEmpty()) {
                if (trim.charAt(0) == '.') {
                    trim = context.getPackageName() + trim;
                } else if (!trim.contains(".")) {
                    trim = RecyclerView.class.getPackage().getName() + '.' + trim;
                }
                String str = trim;
                try {
                    try {
                        if (isInEditMode()) {
                            classLoader = getClass().getClassLoader();
                        } else {
                            try {
                                classLoader = context.getClassLoader();
                            } catch (ClassNotFoundException e) {
                                e = e;
                                th = null;
                                DecodeUtils$$ExternalSyntheticBUOutline0.m((Object) attributeSet.getPositionDescription(), (Object) ": Unable to find LayoutManager ", (Object) str, (Throwable) e);
                                throw th;
                            } catch (IllegalAccessException e2) {
                                e = e2;
                                th = null;
                                DecodeUtils$$ExternalSyntheticBUOutline0.m((Object) attributeSet.getPositionDescription(), (Object) ": Cannot access non-public constructor ", (Object) str, (Throwable) e);
                                throw th;
                            } catch (InstantiationException e3) {
                                e = e3;
                                th = null;
                                DecodeUtils$$ExternalSyntheticBUOutline0.m((Object) attributeSet.getPositionDescription(), (Object) ": Could not instantiate the LayoutManager: ", (Object) str, (Throwable) e);
                                throw th;
                            } catch (InvocationTargetException e4) {
                                e = e4;
                                th = null;
                                DecodeUtils$$ExternalSyntheticBUOutline0.m((Object) attributeSet.getPositionDescription(), (Object) ": Could not instantiate the LayoutManager: ", (Object) str, (Throwable) e);
                                throw th;
                            }
                        }
                        ?? asSubclass = Class.forName(str, false, classLoader).asSubclass(LayoutManager.class);
                        try {
                            constructor = asSubclass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
                            objArr = new Object[i3];
                            objArr[0] = context;
                            objArr[z] = attributeSet;
                            objArr[c2] = Integer.valueOf(i2);
                            objArr[c] = 0;
                        } catch (NoSuchMethodException e5) {
                            try {
                                constructor = asSubclass.getConstructor(th);
                                objArr = null;
                            } catch (NoSuchMethodException e6) {
                                e6.initCause(e5);
                                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + str, e6);
                            }
                        }
                        constructor.setAccessible(z);
                        setLayoutManager((LayoutManager) constructor.newInstance(objArr));
                    } catch (ClassCastException e7) {
                        DecodeUtils$$ExternalSyntheticBUOutline0.m((Object) attributeSet.getPositionDescription(), (Object) ": Class is not a LayoutManager ", (Object) str, (Throwable) e7);
                        throw null;
                    }
                } catch (ClassNotFoundException e8) {
                    e = e8;
                } catch (IllegalAccessException e9) {
                    e = e9;
                } catch (InstantiationException e10) {
                    e = e10;
                } catch (InvocationTargetException e11) {
                    e = e11;
                }
            }
        }
        int[] iArr2 = NESTED_SCROLLING_ATTRS;
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i2, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr2, attributeSet, obtainStyledAttributes2, i2);
        boolean z2 = obtainStyledAttributes2.getBoolean(0, true);
        obtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z2);
        setTag(org.schabi.newpipe.R.id.is_pooling_container_tag, Boolean.TRUE);
    }

    public static void clearNestedRecyclerViewIfNotNested(ViewHolder viewHolder) {
        WeakReference<RecyclerView> weakReference = viewHolder.mNestedRecyclerView;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView == viewHolder.itemView) {
                    return;
                }
                Object parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            viewHolder.mNestedRecyclerView = null;
        }
    }

    public static int consumeFlingInStretch(int i, EdgeEffect edgeEffect, EdgeEffect edgeEffect2, int i2) {
        if (i > 0 && edgeEffect != null && Cookie.Companion.getDistance(edgeEffect) != 0.0f) {
            int round = Math.round(Cookie.Companion.onPullDistance(edgeEffect, ((-i) * 4.0f) / i2, 0.5f) * ((-i2) / 4.0f));
            if (round != i) {
                edgeEffect.finish();
            }
            return i - round;
        }
        if (i >= 0 || edgeEffect2 == null || Cookie.Companion.getDistance(edgeEffect2) == 0.0f) {
            return i;
        }
        float f = i2;
        int round2 = Math.round(Cookie.Companion.onPullDistance(edgeEffect2, (i * 4.0f) / f, 0.5f) * (f / 4.0f));
        if (round2 != i) {
            edgeEffect2.finish();
        }
        return i - round2;
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

    public static ViewHolder getChildViewHolderInt(View view) {
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).mViewHolder;
    }

    private NestedScrollingChildHelper getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new NestedScrollingChildHelper(this);
        }
        return this.mScrollingChildHelper;
    }

    public static void setDebugAssertionsEnabled(boolean z) {
        sDebugAssertionsEnabled = z;
    }

    public static void setVerboseLoggingEnabled(boolean z) {
        sVerboseLoggingEnabled = z;
    }

    public final void addAnimatingView(ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        boolean z = view.getParent() == this;
        this.mRecycler.unscrapView(getChildViewHolder(view));
        boolean isTmpDetached = viewHolder.isTmpDetached();
        ChildHelper childHelper = this.mChildHelper;
        if (isTmpDetached) {
            childHelper.attachViewToParent(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z) {
            childHelper.addView(view, -1, true);
            return;
        }
        int indexOfChild = RecyclerView.this.indexOfChild(view);
        if (indexOfChild < 0) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(view, "view is not a child, cannot hide ");
        } else {
            ((HeadersReader) childHelper.mBucket).set(indexOfChild);
            childHelper.hideViewInternal(view);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i, int i2) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.getClass();
        }
        super.addFocusables(arrayList, i, i2);
    }

    public final void addItemDecoration(ItemDecoration itemDecoration) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
        }
        ArrayList arrayList = this.mItemDecorations;
        if (arrayList.isEmpty()) {
            setWillNotDraw(false);
        }
        arrayList.add(itemDecoration);
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public final void addOnScrollListener(OnScrollListener onScrollListener) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList();
        }
        this.mScrollListeners.add(onScrollListener);
    }

    public final void assertNotInLayoutOrScroll(String str) {
        if (!isComputingLayout()) {
            if (this.mDispatchScrollCounter > 0) {
                Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(exceptionLabel()));
            }
        } else if (str == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Cannot call this method while RecyclerView is computing a layout or scrolling".concat(exceptionLabel()));
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2(str);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && this.mLayout.checkLayoutParams((LayoutParams) layoutParams);
    }

    public final void clearOldPositions() {
        ChildHelper childHelper = this.mChildHelper;
        int unfilteredChildCount = childHelper.getUnfilteredChildCount();
        for (int i = 0; i < unfilteredChildCount; i++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(childHelper.getUnfilteredChildAt(i));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.clearOldPosition();
            }
        }
        Recycler recycler = this.mRecycler;
        ArrayList arrayList = recycler.mAttachedScrap;
        ArrayList arrayList2 = recycler.mCachedViews;
        int size = arrayList2.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((ViewHolder) arrayList2.get(i2)).clearOldPosition();
        }
        int size2 = arrayList.size();
        for (int i3 = 0; i3 < size2; i3++) {
            ((ViewHolder) arrayList.get(i3)).clearOldPosition();
        }
        ArrayList arrayList3 = recycler.mChangedScrap;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i4 = 0; i4 < size3; i4++) {
                ((ViewHolder) recycler.mChangedScrap.get(i4)).clearOldPosition();
            }
        }
    }

    public final void clearOnScrollListeners() {
        ArrayList arrayList = this.mScrollListeners;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollRange(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollRange(this.mState);
        }
        return 0;
    }

    public final void considerReleasingGlowsOnScroll(int i, int i2) {
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
            postInvalidateOnAnimation();
        }
    }

    public final void consumePendingUpdateOperations() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            Trace.beginSection("RV FullInvalidate");
            dispatchLayout();
            Trace.endSection();
            return;
        }
        RulerTrackingMap rulerTrackingMap = this.mAdapterHelper;
        if (rulerTrackingMap.hasPendingUpdates()) {
            int i = rulerTrackingMap.size;
            if ((i & 4) == 0 || (i & 11) != 0) {
                if (rulerTrackingMap.hasPendingUpdates()) {
                    Trace.beginSection("RV FullInvalidate");
                    dispatchLayout();
                    Trace.endSection();
                    return;
                }
                return;
            }
            Trace.beginSection("RV PartialInvalidate");
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            rulerTrackingMap.preProcess();
            if (!this.mLayoutWasDefered) {
                ChildHelper childHelper = this.mChildHelper;
                int childCount = childHelper.getChildCount();
                int i2 = 0;
                while (true) {
                    if (i2 < childCount) {
                        ViewHolder childViewHolderInt = getChildViewHolderInt(childHelper.getChildAt(i2));
                        if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.isUpdated()) {
                            dispatchLayout();
                            break;
                        }
                        i2++;
                    } else {
                        rulerTrackingMap.consumePostponedUpdates();
                        break;
                    }
                }
            }
            stopInterceptRequestLayout(true);
            onExitLayoutOrScroll(true);
            Trace.endSection();
        }
    }

    public final void defaultOnMeasure(int i, int i2) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        setMeasuredDimension(LayoutManager.chooseSize(i, paddingRight, getMinimumWidth()), LayoutManager.chooseSize(i2, getPaddingBottom() + getPaddingTop(), getMinimumHeight()));
    }

    public final void dispatchChildDetached(View view) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        Adapter adapter = this.mAdapter;
        if (adapter != null && childViewHolderInt != null) {
            adapter.onViewDetachedFromWindow(childViewHolderInt);
        }
        ArrayList arrayList = this.mOnChildAttachStateListeners;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ItemTouchHelper itemTouchHelper = (ItemTouchHelper) this.mOnChildAttachStateListeners.get(size);
                if (view == itemTouchHelper.mOverdrawChild) {
                    itemTouchHelper.mOverdrawChild = null;
                }
                ViewHolder childViewHolder = itemTouchHelper.mRecyclerView.getChildViewHolder(view);
                if (childViewHolder != null) {
                    ViewHolder viewHolder = itemTouchHelper.mSelected;
                    if (viewHolder == null || childViewHolder != viewHolder) {
                        itemTouchHelper.endRecoverAnimation(childViewHolder, false);
                        if (itemTouchHelper.mPendingCleanup.remove(childViewHolder.itemView)) {
                            itemTouchHelper.mCallback.clearView(itemTouchHelper.mRecyclerView, childViewHolder);
                        }
                    } else {
                        itemTouchHelper.select(null, 0);
                    }
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        LayoutManager layoutManager = getLayoutManager();
        int i = 0;
        if (layoutManager != null) {
            if (layoutManager.canScrollVertically()) {
                int keyCode = keyEvent.getKeyCode();
                if (keyCode == 92 || keyCode == 93) {
                    int measuredHeight = getMeasuredHeight();
                    if (keyCode == 93) {
                        smoothScrollBy$1(0, measuredHeight, false);
                        return true;
                    }
                    smoothScrollBy$1(0, -measuredHeight, false);
                    return true;
                }
                if (keyCode == 122 || keyCode == 123) {
                    boolean isLayoutReversed = layoutManager.isLayoutReversed();
                    if (keyCode == 122) {
                        if (isLayoutReversed) {
                            i = getAdapter().getItemCount();
                        }
                    } else if (!isLayoutReversed) {
                        i = getAdapter().getItemCount();
                    }
                    smoothScrollToPosition(i);
                    return true;
                }
            } else if (layoutManager.canScrollHorizontally()) {
                int keyCode2 = keyEvent.getKeyCode();
                if (keyCode2 == 92 || keyCode2 == 93) {
                    int measuredWidth = getMeasuredWidth();
                    if (keyCode2 == 93) {
                        smoothScrollBy$1(measuredWidth, 0, false);
                        return true;
                    }
                    smoothScrollBy$1(-measuredWidth, 0, false);
                    return true;
                }
                if (keyCode2 == 122 || keyCode2 == 123) {
                    boolean isLayoutReversed2 = layoutManager.isLayoutReversed();
                    if (keyCode2 == 122) {
                        if (isLayoutReversed2) {
                            i = getAdapter().getItemCount();
                        }
                    } else if (!isLayoutReversed2) {
                        i = getAdapter().getItemCount();
                    }
                    smoothScrollToPosition(i);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:154:0x0356, code lost:
    
        if (((java.util.ArrayList) r7.mHiddenViews).contains(getFocusedChild()) == false) goto L226;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:118:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x03ab  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x03c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void dispatchLayout() {
        /*
            Method dump skipped, instructions count: 1066
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.dispatchLayout():void");
    }

    public final void dispatchLayoutStep1() {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord;
        View findContainingItemView;
        State state = this.mState;
        state.assertLayoutStep(1);
        fillRemainingScrollValues(state);
        state.mIsMeasuring = false;
        startInterceptRequestLayout();
        JsonBuilder jsonBuilder = this.mViewInfoStore;
        SimpleArrayMap simpleArrayMap = (SimpleArrayMap) jsonBuilder.json;
        SimpleArrayMap simpleArrayMap2 = (SimpleArrayMap) jsonBuilder.json;
        simpleArrayMap.clear();
        LongSparseArray longSparseArray = (LongSparseArray) jsonBuilder.root;
        longSparseArray.clear();
        onEnterLayoutOrScroll();
        processAdapterUpdatesAndSetAnimationFlags();
        ViewHolder viewHolder = null;
        View focusedChild = (this.mPreserveFocusAfterLayout && hasFocus() && this.mAdapter != null) ? getFocusedChild() : null;
        if (focusedChild != null && (findContainingItemView = findContainingItemView(focusedChild)) != null) {
            viewHolder = getChildViewHolder(findContainingItemView);
        }
        if (viewHolder == null) {
            state.mFocusedItemId = -1L;
            state.mFocusedItemPosition = -1;
            state.mFocusedSubChildId = -1;
        } else {
            state.mFocusedItemId = this.mAdapter.hasStableIds() ? viewHolder.getItemId() : -1L;
            state.mFocusedItemPosition = this.mDataSetHasChangedAfterLayout ? -1 : viewHolder.isRemoved() ? viewHolder.mOldPosition : viewHolder.getAbsoluteAdapterPosition();
            View view = viewHolder.itemView;
            int id = view.getId();
            while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
                view = ((ViewGroup) view).getFocusedChild();
                if (view.getId() != -1) {
                    id = view.getId();
                }
            }
            state.mFocusedSubChildId = id;
        }
        state.mTrackOldChangeHolders = state.mRunSimpleAnimations && this.mItemsChanged;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        state.mInPreLayout = state.mRunPredictiveAnimations;
        state.mItemCount = this.mAdapter.getItemCount();
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        boolean z = state.mRunSimpleAnimations;
        ChildHelper childHelper = this.mChildHelper;
        if (z) {
            int childCount = childHelper.getChildCount();
            for (int i = 0; i < childCount; i++) {
                ViewHolder childViewHolderInt = getChildViewHolderInt(childHelper.getChildAt(i));
                if (!childViewHolderInt.shouldIgnore() && (!childViewHolderInt.isInvalid() || this.mAdapter.hasStableIds())) {
                    ItemAnimator itemAnimator = this.mItemAnimator;
                    ItemAnimator.buildAdapterChangeFlagsForAnimations(childViewHolderInt);
                    childViewHolderInt.getUnmodifiedPayloads();
                    itemAnimator.getClass();
                    FabPlacement fabPlacement = new FabPlacement();
                    fabPlacement.setFrom(childViewHolderInt);
                    ViewInfoStore$InfoRecord viewInfoStore$InfoRecord2 = (ViewInfoStore$InfoRecord) simpleArrayMap2.get(childViewHolderInt);
                    if (viewInfoStore$InfoRecord2 == null) {
                        viewInfoStore$InfoRecord2 = ViewInfoStore$InfoRecord.obtain();
                        simpleArrayMap2.put(childViewHolderInt, viewInfoStore$InfoRecord2);
                    }
                    viewInfoStore$InfoRecord2.preInfo = fabPlacement;
                    viewInfoStore$InfoRecord2.flags |= 4;
                    if (state.mTrackOldChangeHolders && childViewHolderInt.isUpdated() && !childViewHolderInt.isRemoved() && !childViewHolderInt.shouldIgnore() && !childViewHolderInt.isInvalid()) {
                        longSparseArray.put(getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                    }
                }
            }
        }
        if (state.mRunPredictiveAnimations) {
            int unfilteredChildCount = childHelper.getUnfilteredChildCount();
            for (int i2 = 0; i2 < unfilteredChildCount; i2++) {
                ViewHolder childViewHolderInt2 = getChildViewHolderInt(childHelper.getUnfilteredChildAt(i2));
                if (sDebugAssertionsEnabled && childViewHolderInt2.mPosition == -1 && !childViewHolderInt2.isRemoved()) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("view holder cannot have position -1 unless it is removed".concat(exceptionLabel()));
                    return;
                } else {
                    if (!childViewHolderInt2.shouldIgnore()) {
                        childViewHolderInt2.saveOldPosition();
                    }
                }
            }
            boolean z2 = state.mStructureChanged;
            state.mStructureChanged = false;
            this.mLayout.onLayoutChildren(this.mRecycler, state);
            state.mStructureChanged = z2;
            for (int i3 = 0; i3 < childHelper.getChildCount(); i3++) {
                ViewHolder childViewHolderInt3 = getChildViewHolderInt(childHelper.getChildAt(i3));
                if (!childViewHolderInt3.shouldIgnore() && ((viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord) simpleArrayMap2.get(childViewHolderInt3)) == null || (viewInfoStore$InfoRecord.flags & 4) == 0)) {
                    ItemAnimator.buildAdapterChangeFlagsForAnimations(childViewHolderInt3);
                    boolean hasAnyOfTheFlags = childViewHolderInt3.hasAnyOfTheFlags(8192);
                    ItemAnimator itemAnimator2 = this.mItemAnimator;
                    childViewHolderInt3.getUnmodifiedPayloads();
                    itemAnimator2.getClass();
                    FabPlacement fabPlacement2 = new FabPlacement();
                    fabPlacement2.setFrom(childViewHolderInt3);
                    if (hasAnyOfTheFlags) {
                        recordAnimationInfoIfBouncedHiddenView(childViewHolderInt3, fabPlacement2);
                    } else {
                        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord3 = (ViewInfoStore$InfoRecord) simpleArrayMap2.get(childViewHolderInt3);
                        if (viewInfoStore$InfoRecord3 == null) {
                            viewInfoStore$InfoRecord3 = ViewInfoStore$InfoRecord.obtain();
                            simpleArrayMap2.put(childViewHolderInt3, viewInfoStore$InfoRecord3);
                        }
                        viewInfoStore$InfoRecord3.flags |= 2;
                        viewInfoStore$InfoRecord3.preInfo = fabPlacement2;
                    }
                }
            }
            clearOldPositions();
        } else {
            clearOldPositions();
        }
        onExitLayoutOrScroll(true);
        stopInterceptRequestLayout(false);
        state.mLayoutStep = 2;
    }

    public final void dispatchLayoutStep2() {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        State state = this.mState;
        state.assertLayoutStep(6);
        this.mAdapterHelper.consumeUpdatesInOnePass();
        state.mItemCount = this.mAdapter.getItemCount();
        state.mDeletedInvisibleItemCountSincePreviousLayout = 0;
        if (this.mPendingSavedState != null && this.mAdapter.canRestoreState()) {
            Parcelable parcelable = this.mPendingSavedState.mLayoutState;
            if (parcelable != null) {
                this.mLayout.onRestoreInstanceState(parcelable);
            }
            this.mPendingSavedState = null;
        }
        state.mInPreLayout = false;
        this.mLayout.onLayoutChildren(this.mRecycler, state);
        state.mStructureChanged = false;
        state.mRunSimpleAnimations = state.mRunSimpleAnimations && this.mItemAnimator != null;
        state.mLayoutStep = 4;
        onExitLayoutOrScroll(true);
        stopInterceptRequestLayout(false);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().dispatchNestedPreScroll(i, i2, 0, iArr, iArr2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().dispatchNestedScrollInternal(i, i2, i3, i4, iArr, 0, null);
    }

    public final void dispatchOnScrolled(int i, int i2) {
        this.mDispatchScrollCounter++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        OnScrollListener onScrollListener = this.mScrollListener;
        if (onScrollListener != null) {
            onScrollListener.onScrolled(this, i, i2);
        }
        ArrayList arrayList = this.mScrollListeners;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((OnScrollListener) this.mScrollListeners.get(size)).onScrolled(this, i, i2);
            }
        }
        this.mDispatchScrollCounter--;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        boolean z;
        super.draw(canvas);
        ArrayList arrayList = this.mItemDecorations;
        int size = arrayList.size();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            ((ItemDecoration) arrayList.get(i)).onDrawOver(canvas, this);
        }
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.mClipToPadding ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
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
            canvas.translate(paddingTop, -width);
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
        if ((z || this.mItemAnimator == null || arrayList.size() <= 0 || !this.mItemAnimator.isRunning()) ? z : true) {
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    public final void ensureBottomGlow() {
        if (this.mBottomGlow != null) {
            return;
        }
        ((StretchEdgeEffectFactory) this.mEdgeEffectFactory).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mBottomGlow = edgeEffect;
        if (this.mClipToPadding) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final void ensureLeftGlow() {
        if (this.mLeftGlow != null) {
            return;
        }
        ((StretchEdgeEffectFactory) this.mEdgeEffectFactory).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mLeftGlow = edgeEffect;
        if (this.mClipToPadding) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void ensureRightGlow() {
        if (this.mRightGlow != null) {
            return;
        }
        ((StretchEdgeEffectFactory) this.mEdgeEffectFactory).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mRightGlow = edgeEffect;
        if (this.mClipToPadding) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void ensureTopGlow() {
        if (this.mTopGlow != null) {
            return;
        }
        ((StretchEdgeEffectFactory) this.mEdgeEffectFactory).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mTopGlow = edgeEffect;
        if (this.mClipToPadding) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final String exceptionLabel() {
        return " " + super.toString() + ", adapter:" + this.mAdapter + ", layout:" + this.mLayout + ", context:" + getContext();
    }

    public final void fillRemainingScrollValues(State state) {
        if (getScrollState() != 2) {
            state.getClass();
            return;
        }
        OverScroller overScroller = this.mViewFlinger.mOverScroller;
        overScroller.getFinalX();
        overScroller.getCurrX();
        state.getClass();
        overScroller.getFinalY();
        overScroller.getCurrY();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View findContainingItemView(android.view.View r3) {
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
            return r3
        L17:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.findContainingItemView(android.view.View):android.view.View");
    }

    public final boolean findInterceptingOnItemTouchListener(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        ArrayList arrayList = this.mOnItemTouchListeners;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            OnItemTouchListener onItemTouchListener = (OnItemTouchListener) arrayList.get(i);
            if (onItemTouchListener.onInterceptTouchEvent(motionEvent) && action != 3) {
                this.mInterceptingOnItemTouchListener = onItemTouchListener;
                return true;
            }
        }
        return false;
    }

    public final void findMinMaxChildLayoutPositions(int[] iArr) {
        ChildHelper childHelper = this.mChildHelper;
        int childCount = childHelper.getChildCount();
        if (childCount == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i = com.google.android.exoplayer2.util.Log.LOG_LEVEL_OFF;
        int i2 = Integer.MIN_VALUE;
        for (int i3 = 0; i3 < childCount; i3++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(childHelper.getChildAt(i3));
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

    public final ViewHolder findViewHolderForAdapterPosition(int i) {
        ViewHolder viewHolder = null;
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        ChildHelper childHelper = this.mChildHelper;
        int unfilteredChildCount = childHelper.getUnfilteredChildCount();
        for (int i2 = 0; i2 < unfilteredChildCount; i2++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(childHelper.getUnfilteredChildAt(i2));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && getAdapterPositionInRecyclerView(childViewHolderInt) == i) {
                if (!((ArrayList) childHelper.mHiddenViews).contains(childViewHolderInt.itemView)) {
                    return childViewHolderInt;
                }
                viewHolder = childViewHolderInt;
            }
        }
        return viewHolder;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00dc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean fling(int r8, int r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.fling(int, int, int, int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x0196, code lost:
    
        if ((r5 * r6) <= 0) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x019e, code lost:
    
        if ((r5 * r6) >= 0) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x016a, code lost:
    
        if (r16 > 0) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0188, code lost:
    
        if (r5 > 0) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x018b, code lost:
    
        if (r16 < 0) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x018e, code lost:
    
        if (r5 < 0) goto L138;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00d2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x015c  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View focusSearch(android.view.View r18, int r19) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.focusSearch(android.view.View, int):android.view.View");
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            return layoutManager.generateDefaultLayoutParams();
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("RecyclerView has no LayoutManager".concat(exceptionLabel()));
        return null;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            return layoutManager.generateLayoutParams(getContext(), attributeSet);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("RecyclerView has no LayoutManager".concat(exceptionLabel()));
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public Adapter getAdapter() {
        return this.mAdapter;
    }

    public final int getAdapterPositionInRecyclerView(ViewHolder viewHolder) {
        if (viewHolder.hasAnyOfTheFlags(524) || !viewHolder.isBound()) {
            return -1;
        }
        int i = viewHolder.mPosition;
        ArrayList arrayList = (ArrayList) this.mAdapterHelper.values;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = (AdapterHelper$UpdateOp) arrayList.get(i2);
            int i3 = adapterHelper$UpdateOp.cmd;
            if (i3 != 1) {
                if (i3 == 2) {
                    int i4 = adapterHelper$UpdateOp.positionStart;
                    if (i4 <= i) {
                        int i5 = adapterHelper$UpdateOp.itemCount;
                        if (i4 + i5 > i) {
                            return -1;
                        }
                        i -= i5;
                    } else {
                        continue;
                    }
                } else if (i3 == 8) {
                    int i6 = adapterHelper$UpdateOp.positionStart;
                    if (i6 == i) {
                        i = adapterHelper$UpdateOp.itemCount;
                    } else {
                        if (i6 < i) {
                            i--;
                        }
                        if (adapterHelper$UpdateOp.itemCount <= i) {
                            i++;
                        }
                    }
                }
            } else if (adapterHelper$UpdateOp.positionStart <= i) {
                i += adapterHelper$UpdateOp.itemCount;
            }
        }
        return i;
    }

    @Override // android.view.View
    public int getBaseline() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null) {
            return super.getBaseline();
        }
        layoutManager.getClass();
        return -1;
    }

    public final long getChangedHolderKey(ViewHolder viewHolder) {
        return this.mAdapter.hasStableIds() ? viewHolder.getItemId() : viewHolder.mPosition;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        return super.getChildDrawingOrder(i, i2);
    }

    public final ViewHolder getChildViewHolder(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return getChildViewHolderInt(view);
        }
        DecodeUtils$$ExternalSyntheticBUOutline0.m$1("View ", view, " is not a direct child of ", this);
        return null;
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.mClipToPadding;
    }

    public RecyclerViewAccessibilityDelegate getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public EdgeEffectFactory getEdgeEffectFactory() {
        return this.mEdgeEffectFactory;
    }

    public ItemAnimator getItemAnimator() {
        return this.mItemAnimator;
    }

    public final Rect getItemDecorInsetsForChild(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        boolean z = layoutParams.mInsetsDirty;
        Rect rect = layoutParams.mDecorInsets;
        if (z) {
            State state = this.mState;
            if (!state.mInPreLayout || (!layoutParams.mViewHolder.isUpdated() && !layoutParams.mViewHolder.isInvalid())) {
                rect.set(0, 0, 0, 0);
                ArrayList arrayList = this.mItemDecorations;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    Rect rect2 = this.mTempRect;
                    rect2.set(0, 0, 0, 0);
                    ((ItemDecoration) arrayList.get(i)).getItemOffsets(rect2, view, this, state);
                    rect.left += rect2.left;
                    rect.top += rect2.top;
                    rect.right += rect2.right;
                    rect.bottom += rect2.bottom;
                }
                layoutParams.mInsetsDirty = false;
                return rect;
            }
        }
        return rect;
    }

    public int getItemDecorationCount() {
        return this.mItemDecorations.size();
    }

    public LayoutManager getLayoutManager() {
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

    public OnFlingListener getOnFlingListener() {
        return null;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }

    public RecycledViewPool getRecycledViewPool() {
        return this.mRecycler.getRecycledViewPool();
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().hasNestedScrollingParent(0);
    }

    public final boolean hasPendingAdapterUpdates() {
        return !this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.hasPendingUpdates();
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    public final boolean isComputingLayout() {
        return this.mLayoutOrScrollCounter > 0;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.mLayoutSuppressed;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().mIsNestedScrollingEnabled;
    }

    public final void jumpToPositionForSmoothScroller(int i) {
        if (this.mLayout == null) {
            return;
        }
        setScrollState(2);
        this.mLayout.scrollToPosition(i);
        awakenScrollBars();
    }

    public final void markItemDecorInsetsDirty() {
        ChildHelper childHelper = this.mChildHelper;
        int unfilteredChildCount = childHelper.getUnfilteredChildCount();
        for (int i = 0; i < unfilteredChildCount; i++) {
            ((LayoutParams) childHelper.getUnfilteredChildAt(i).getLayoutParams()).mInsetsDirty = true;
        }
        ArrayList arrayList = this.mRecycler.mCachedViews;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            LayoutParams layoutParams = (LayoutParams) ((ViewHolder) arrayList.get(i2)).itemView.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.mInsetsDirty = true;
            }
        }
    }

    public final void offsetPositionRecordsForRemove(int i, int i2, boolean z) {
        int i3 = i + i2;
        ChildHelper childHelper = this.mChildHelper;
        int unfilteredChildCount = childHelper.getUnfilteredChildCount();
        for (int i4 = 0; i4 < unfilteredChildCount; i4++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(childHelper.getUnfilteredChildAt(i4));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                int i5 = childViewHolderInt.mPosition;
                State state = this.mState;
                if (i5 >= i3) {
                    if (sVerboseLoggingEnabled) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove attached child " + i4 + " holder " + childViewHolderInt + " now at position " + (childViewHolderInt.mPosition - i2));
                    }
                    childViewHolderInt.offsetPosition(-i2, z);
                    state.mStructureChanged = true;
                } else if (i5 >= i) {
                    if (sVerboseLoggingEnabled) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove attached child " + i4 + " holder " + childViewHolderInt + " now REMOVED");
                    }
                    childViewHolderInt.flagRemovedAndOffsetPosition(i - 1, -i2, z);
                    state.mStructureChanged = true;
                }
            }
        }
        Recycler recycler = this.mRecycler;
        ArrayList arrayList = recycler.mCachedViews;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ViewHolder viewHolder = (ViewHolder) arrayList.get(size);
            if (viewHolder != null) {
                int i6 = viewHolder.mPosition;
                if (i6 >= i3) {
                    if (sVerboseLoggingEnabled) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove cached " + size + " holder " + viewHolder + " now at position " + (viewHolder.mPosition - i2));
                    }
                    viewHolder.offsetPosition(-i2, z);
                } else if (i6 >= i) {
                    viewHolder.addFlags(8);
                    recycler.recycleCachedViewAt(size);
                }
            }
        }
        requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
    
        if (r1 >= 30.0f) goto L22;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onAttachedToWindow() {
        /*
            r5 = this;
            super.onAttachedToWindow()
            r0 = 0
            r5.mLayoutOrScrollCounter = r0
            r1 = 1
            r5.mIsAttached = r1
            boolean r2 = r5.mFirstLayoutComplete
            if (r2 == 0) goto L15
            boolean r2 = r5.isLayoutRequested()
            if (r2 != 0) goto L15
            r2 = r1
            goto L16
        L15:
            r2 = r0
        L16:
            r5.mFirstLayoutComplete = r2
            androidx.recyclerview.widget.RecyclerView$Recycler r2 = r5.mRecycler
            r2.maybeSendPoolingContainerAttach()
            androidx.recyclerview.widget.RecyclerView$LayoutManager r2 = r5.mLayout
            if (r2 == 0) goto L26
            r2.mIsAttachedToWindow = r1
            r2.onAttachedToWindow(r5)
        L26:
            r5.mPostedAnimatorRunner = r0
            boolean r0 = androidx.recyclerview.widget.RecyclerView.ALLOW_THREAD_GAP_WORK
            if (r0 == 0) goto L7e
            java.lang.ThreadLocal r0 = androidx.recyclerview.widget.GapWorker.sGapWorker
            java.lang.Object r1 = r0.get()
            androidx.recyclerview.widget.GapWorker r1 = (androidx.recyclerview.widget.GapWorker) r1
            r5.mGapWorker = r1
            if (r1 != 0) goto L66
            androidx.recyclerview.widget.GapWorker r1 = new androidx.recyclerview.widget.GapWorker
            r1.<init>()
            r5.mGapWorker = r1
            java.util.WeakHashMap r1 = androidx.core.view.ViewCompat.sViewPropertyAnimatorMap
            android.view.Display r1 = r5.getDisplay()
            boolean r2 = r5.isInEditMode()
            if (r2 != 0) goto L58
            if (r1 == 0) goto L58
            float r1 = r1.getRefreshRate()
            r2 = 1106247680(0x41f00000, float:30.0)
            int r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r2 < 0) goto L58
            goto L5a
        L58:
            r1 = 1114636288(0x42700000, float:60.0)
        L5a:
            androidx.recyclerview.widget.GapWorker r2 = r5.mGapWorker
            r3 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r3 = r3 / r1
            long r3 = (long) r3
            r2.mFrameIntervalNs = r3
            r0.set(r2)
        L66:
            androidx.recyclerview.widget.GapWorker r0 = r5.mGapWorker
            java.util.ArrayList r0 = r0.mRecyclerViews
            boolean r1 = androidx.recyclerview.widget.RecyclerView.sDebugAssertionsEnabled
            if (r1 == 0) goto L7b
            boolean r1 = r0.contains(r5)
            if (r1 != 0) goto L75
            goto L7b
        L75:
            java.lang.String r5 = "RecyclerView already present in worker list!"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r5)
            return
        L7b:
            r0.add(r5)
        L7e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onAttachedToWindow():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        GapWorker gapWorker;
        super.onDetachedFromWindow();
        ItemAnimator itemAnimator = this.mItemAnimator;
        if (itemAnimator != null) {
            itemAnimator.endAnimations();
        }
        stopScroll();
        int i = 0;
        this.mIsAttached = false;
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.mIsAttachedToWindow = false;
            layoutManager.onDetachedFromWindow(this);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        removeCallbacks(this.mItemAnimatorRunner);
        this.mViewInfoStore.getClass();
        while (ViewInfoStore$InfoRecord.sPool.acquire() != null) {
        }
        Recycler recycler = this.mRecycler;
        ArrayList arrayList = recycler.mCachedViews;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            BundleKt.callPoolingContainerOnRelease(((ViewHolder) arrayList.get(i2)).itemView);
        }
        recycler.poolingContainerDetach(RecyclerView.this.mAdapter, false);
        while (i < getChildCount()) {
            int i3 = i + 1;
            View childAt = getChildAt(i);
            if (childAt == null) {
                throw new IndexOutOfBoundsException();
            }
            ArrayList arrayList2 = BundleKt.getPoolingContainerListenerHolder(childAt).listeners;
            for (int lastIndex = Jsoup.getLastIndex(arrayList2); -1 < lastIndex; lastIndex--) {
                ((ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0) ((PoolingContainerListener) arrayList2.get(lastIndex))).f$0.disposeComposition();
            }
            i = i3;
        }
        if (!ALLOW_THREAD_GAP_WORK || (gapWorker = this.mGapWorker) == null) {
            return;
        }
        boolean remove = gapWorker.mRecyclerViews.remove(this);
        if (!sDebugAssertionsEnabled || remove) {
            this.mGapWorker = null;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("RecyclerView removal failed!");
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ArrayList arrayList = this.mItemDecorations;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((ItemDecoration) arrayList.get(i)).onDraw(canvas, this);
        }
    }

    public final void onEnterLayoutOrScroll() {
        this.mLayoutOrScrollCounter++;
    }

    public final void onExitLayoutOrScroll(boolean z) {
        int i;
        AccessibilityManager accessibilityManager;
        int i2 = this.mLayoutOrScrollCounter - 1;
        this.mLayoutOrScrollCounter = i2;
        if (i2 < 1) {
            if (sDebugAssertionsEnabled && i2 < 0) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("layout or scroll counter cannot go below zero.Some calls are not matching".concat(exceptionLabel()));
                return;
            }
            this.mLayoutOrScrollCounter = 0;
            if (z) {
                int i3 = this.mEatenAccessibilityChangeFlags;
                this.mEatenAccessibilityChangeFlags = 0;
                if (i3 != 0 && (accessibilityManager = this.mAccessibilityManager) != null && accessibilityManager.isEnabled()) {
                    AccessibilityEvent obtain = AccessibilityEvent.obtain();
                    obtain.setEventType(2048);
                    obtain.setContentChangeTypes(i3);
                    sendAccessibilityEventUnchecked(obtain);
                }
                ArrayList arrayList = this.mPendingAccessibilityImportanceChange;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ViewHolder viewHolder = (ViewHolder) arrayList.get(size);
                    if (viewHolder.itemView.getParent() == this && !viewHolder.shouldIgnore() && (i = viewHolder.mPendingAccessibilityState) != -1) {
                        viewHolder.itemView.setImportantForAccessibility(i);
                        viewHolder.mPendingAccessibilityState = -1;
                    }
                }
                arrayList.clear();
            }
        }
    }

    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f;
        int i;
        boolean z;
        if (this.mLayout != null && !this.mLayoutSuppressed && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                float f2 = this.mLayout.canScrollVertically() ? -motionEvent.getAxisValue(9) : 0.0f;
                f = this.mLayout.canScrollHorizontally() ? motionEvent.getAxisValue(10) : 0.0f;
                i = 0;
                z = false;
                r2 = f2;
            } else if ((motionEvent.getSource() & 4194304) != 0) {
                f = motionEvent.getAxisValue(26);
                if (this.mLayout.canScrollVertically()) {
                    float f3 = -f;
                    f = 0.0f;
                    r2 = f3;
                } else if (!this.mLayout.canScrollHorizontally()) {
                    f = 0.0f;
                }
                i = 26;
                z = this.mLowResRotaryEncoderFeature;
            } else {
                f = 0.0f;
                i = 0;
                z = false;
            }
            int i2 = (int) (r2 * this.mScaledVerticalScrollFactor);
            int i3 = (int) (f * this.mScaledHorizontalScrollFactor);
            if (z) {
                OverScroller overScroller = this.mViewFlinger.mOverScroller;
                smoothScrollBy$1((overScroller.getFinalX() - overScroller.getCurrX()) + i3, (overScroller.getFinalY() - overScroller.getCurrY()) + i2, true);
            } else {
                LayoutManager layoutManager = this.mLayout;
                if (layoutManager == null) {
                    Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
                } else if (!this.mLayoutSuppressed) {
                    int[] iArr = this.mReusableIntPair;
                    iArr[0] = 0;
                    iArr[1] = 0;
                    boolean canScrollHorizontally = layoutManager.canScrollHorizontally();
                    boolean canScrollVertically = this.mLayout.canScrollVertically();
                    int i4 = canScrollVertically ? (canScrollHorizontally ? 1 : 0) | 2 : canScrollHorizontally ? 1 : 0;
                    float y = motionEvent.getY();
                    float x = motionEvent.getX();
                    int releaseHorizontalGlow = i3 - releaseHorizontalGlow(y, i3);
                    int releaseVerticalGlow$1 = i2 - releaseVerticalGlow$1(x, i2);
                    getScrollingChildHelper().startNestedScroll(i4, 1);
                    if (dispatchNestedPreScroll(canScrollHorizontally ? releaseHorizontalGlow : 0, canScrollVertically ? releaseVerticalGlow$1 : 0, 1, this.mReusableIntPair, this.mScrollOffset)) {
                        releaseHorizontalGlow -= iArr[0];
                        releaseVerticalGlow$1 -= iArr[1];
                    }
                    scrollByInternal(canScrollHorizontally ? releaseHorizontalGlow : 0, canScrollVertically ? releaseVerticalGlow$1 : 0, motionEvent, 1);
                    GapWorker gapWorker = this.mGapWorker;
                    if (gapWorker != null && (releaseHorizontalGlow != 0 || releaseVerticalGlow$1 != 0)) {
                        gapWorker.postFromTraversal(this, releaseHorizontalGlow, releaseVerticalGlow$1);
                    }
                    stopNestedScroll(1);
                }
            }
            if (i != 0 && !z) {
                this.mDifferentialMotionFlingController.onMotionEvent(motionEvent, i);
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        if (!this.mLayoutSuppressed) {
            this.mInterceptingOnItemTouchListener = null;
            if (findInterceptingOnItemTouchListener(motionEvent)) {
                VelocityTracker velocityTracker = this.mVelocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.clear();
                }
                stopNestedScroll(0);
                releaseGlows();
                setScrollState(0);
                return true;
            }
            LayoutManager layoutManager = this.mLayout;
            if (layoutManager != null) {
                boolean canScrollHorizontally = layoutManager.canScrollHorizontally();
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
                    EdgeEffect edgeEffect = this.mLeftGlow;
                    if (edgeEffect == null || Cookie.Companion.getDistance(edgeEffect) == 0.0f || canScrollHorizontally(-1)) {
                        z = false;
                    } else {
                        Cookie.Companion.onPullDistance(this.mLeftGlow, 0.0f, 1.0f - (motionEvent.getY() / getHeight()));
                        z = true;
                    }
                    EdgeEffect edgeEffect2 = this.mRightGlow;
                    if (edgeEffect2 != null && Cookie.Companion.getDistance(edgeEffect2) != 0.0f && !canScrollHorizontally(1)) {
                        Cookie.Companion.onPullDistance(this.mRightGlow, 0.0f, motionEvent.getY() / getHeight());
                        z = true;
                    }
                    EdgeEffect edgeEffect3 = this.mTopGlow;
                    if (edgeEffect3 != null && Cookie.Companion.getDistance(edgeEffect3) != 0.0f && !canScrollVertically(-1)) {
                        Cookie.Companion.onPullDistance(this.mTopGlow, 0.0f, motionEvent.getX() / getWidth());
                        z = true;
                    }
                    EdgeEffect edgeEffect4 = this.mBottomGlow;
                    if (edgeEffect4 != null && Cookie.Companion.getDistance(edgeEffect4) != 0.0f && !canScrollVertically(1)) {
                        Cookie.Companion.onPullDistance(this.mBottomGlow, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
                        z = true;
                    }
                    if (z || this.mScrollState == 2) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        setScrollState(1);
                        stopNestedScroll(1);
                    }
                    int[] iArr = this.mNestedOffsets;
                    iArr[1] = 0;
                    iArr[0] = 0;
                    startNestedScrollForType(0);
                } else if (actionMasked == 1) {
                    this.mVelocityTracker.clear();
                    stopNestedScroll(0);
                } else if (actionMasked == 2) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
                    if (findPointerIndex < 0) {
                        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                        return false;
                    }
                    int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                    int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                    if (this.mScrollState != 1) {
                        int i = x2 - this.mInitialTouchX;
                        int i2 = y2 - this.mInitialTouchY;
                        if (!canScrollHorizontally || Math.abs(i) <= this.mTouchSlop) {
                            z2 = false;
                        } else {
                            this.mLastTouchX = x2;
                            z2 = true;
                        }
                        if (canScrollVertically && Math.abs(i2) > this.mTouchSlop) {
                            this.mLastTouchY = y2;
                            z2 = true;
                        }
                        if (z2) {
                            setScrollState(1);
                        }
                    }
                } else if (actionMasked == 3) {
                    VelocityTracker velocityTracker2 = this.mVelocityTracker;
                    if (velocityTracker2 != null) {
                        velocityTracker2.clear();
                    }
                    stopNestedScroll(0);
                    releaseGlows();
                    setScrollState(0);
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
                if (this.mScrollState == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Trace.beginSection("RV OnLayout");
        dispatchLayout();
        Trace.endSection();
        this.mFirstLayoutComplete = true;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null) {
            defaultOnMeasure(i, i2);
            return;
        }
        boolean isAutoMeasureEnabled = layoutManager.isAutoMeasureEnabled();
        boolean z = false;
        State state = this.mState;
        if (isAutoMeasureEnabled) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.mLayout.mRecyclerView.defaultOnMeasure(i, i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z = true;
            }
            this.mLastAutoMeasureSkippedDueToExact = z;
            if (z || this.mAdapter == null) {
                return;
            }
            if (state.mLayoutStep == 1) {
                dispatchLayoutStep1();
            }
            this.mLayout.setMeasureSpecs(i, i2);
            state.mIsMeasuring = true;
            dispatchLayoutStep2();
            this.mLayout.setMeasuredDimensionFromChildren(i, i2);
            if (this.mLayout.shouldMeasureTwice()) {
                this.mLayout.setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                state.mIsMeasuring = true;
                dispatchLayoutStep2();
                this.mLayout.setMeasuredDimensionFromChildren(i, i2);
            }
            this.mLastAutoMeasureNonExactMeasuredWidth = getMeasuredWidth();
            this.mLastAutoMeasureNonExactMeasuredHeight = getMeasuredHeight();
            return;
        }
        if (this.mHasFixedSize) {
            this.mLayout.mRecyclerView.defaultOnMeasure(i, i2);
            return;
        }
        if (this.mAdapterUpdateDuringMeasure) {
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            processAdapterUpdatesAndSetAnimationFlags();
            onExitLayoutOrScroll(true);
            if (state.mRunPredictiveAnimations) {
                state.mInPreLayout = true;
            } else {
                this.mAdapterHelper.consumeUpdatesInOnePass();
                state.mInPreLayout = false;
            }
            this.mAdapterUpdateDuringMeasure = false;
            stopInterceptRequestLayout(false);
        } else if (state.mRunPredictiveAnimations) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        Adapter adapter = this.mAdapter;
        if (adapter != null) {
            state.mItemCount = adapter.getItemCount();
        } else {
            state.mItemCount = 0;
        }
        startInterceptRequestLayout();
        this.mLayout.mRecyclerView.defaultOnMeasure(i, i2);
        stopInterceptRequestLayout(false);
        state.mInPreLayout = false;
    }

    public final void onPointerUp(MotionEvent motionEvent) {
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

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.mPendingSavedState = savedState;
        super.onRestoreInstanceState(savedState.mSuperState);
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.mPendingSavedState;
        if (savedState2 != null) {
            savedState.mLayoutState = savedState2.mLayoutState;
            return savedState;
        }
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            savedState.mLayoutState = layoutManager.onSaveInstanceState();
            return savedState;
        }
        savedState.mLayoutState = null;
        return savedState;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0126  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r19) {
        /*
            Method dump skipped, instructions count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void postAnimationRunner() {
        if (this.mPostedAnimatorRunner || !this.mIsAttached) {
            return;
        }
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        postOnAnimation(this.mItemAnimatorRunner);
        this.mPostedAnimatorRunner = true;
    }

    public final void processAdapterUpdatesAndSetAnimationFlags() {
        boolean z;
        boolean z2 = this.mDataSetHasChangedAfterLayout;
        RulerTrackingMap rulerTrackingMap = this.mAdapterHelper;
        boolean z3 = false;
        if (z2) {
            rulerTrackingMap.recycleUpdateOpsAndClearList((ArrayList) rulerTrackingMap.values);
            rulerTrackingMap.recycleUpdateOpsAndClearList((ArrayList) rulerTrackingMap.accessFlags);
            rulerTrackingMap.size = 0;
            if (this.mDispatchItemsChangedEvent) {
                this.mLayout.onItemsChanged();
            }
        }
        if (this.mItemAnimator != null && this.mLayout.supportsPredictiveItemAnimations()) {
            rulerTrackingMap.preProcess();
        } else {
            rulerTrackingMap.consumeUpdatesInOnePass();
        }
        boolean z4 = this.mItemsAddedOrRemoved || this.mItemsChanged;
        boolean z5 = this.mFirstLayoutComplete && this.mItemAnimator != null && ((z = this.mDataSetHasChangedAfterLayout) || z4 || this.mLayout.mRequestedSimpleAnimations) && (!z || this.mAdapter.hasStableIds());
        State state = this.mState;
        state.mRunSimpleAnimations = z5;
        if (z5 && z4 && !this.mDataSetHasChangedAfterLayout && this.mItemAnimator != null && this.mLayout.supportsPredictiveItemAnimations()) {
            z3 = true;
        }
        state.mRunPredictiveAnimations = z3;
    }

    public final void processDataSetCompletelyChanged(boolean z) {
        this.mDispatchItemsChangedEvent = z | this.mDispatchItemsChangedEvent;
        this.mDataSetHasChangedAfterLayout = true;
        ChildHelper childHelper = this.mChildHelper;
        int unfilteredChildCount = childHelper.getUnfilteredChildCount();
        for (int i = 0; i < unfilteredChildCount; i++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(childHelper.getUnfilteredChildAt(i));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.addFlags(6);
            }
        }
        markItemDecorInsetsDirty();
        Recycler recycler = this.mRecycler;
        ArrayList arrayList = recycler.mCachedViews;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ViewHolder viewHolder = (ViewHolder) arrayList.get(i2);
            if (viewHolder != null) {
                viewHolder.addFlags(6);
                viewHolder.addChangePayload(null);
            }
        }
        Adapter adapter = RecyclerView.this.mAdapter;
        if (adapter == null || !adapter.hasStableIds()) {
            recycler.recycleAndClearCachedViews();
        }
    }

    public final void recordAnimationInfoIfBouncedHiddenView(ViewHolder viewHolder, FabPlacement fabPlacement) {
        viewHolder.setFlags(0, 8192);
        boolean z = this.mState.mTrackOldChangeHolders;
        JsonBuilder jsonBuilder = this.mViewInfoStore;
        if (z && viewHolder.isUpdated() && !viewHolder.isRemoved() && !viewHolder.shouldIgnore()) {
            ((LongSparseArray) jsonBuilder.root).put(getChangedHolderKey(viewHolder), viewHolder);
        }
        SimpleArrayMap simpleArrayMap = (SimpleArrayMap) jsonBuilder.json;
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord) simpleArrayMap.get(viewHolder);
        if (viewInfoStore$InfoRecord == null) {
            viewInfoStore$InfoRecord = ViewInfoStore$InfoRecord.obtain();
            simpleArrayMap.put(viewHolder, viewInfoStore$InfoRecord);
        }
        viewInfoStore$InfoRecord.preInfo = fabPlacement;
        viewInfoStore$InfoRecord.flags |= 4;
    }

    public final void releaseGlows() {
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
            postInvalidateOnAnimation();
        }
    }

    public final int releaseHorizontalGlow(float f, int i) {
        float height = f / getHeight();
        float width = i / getWidth();
        EdgeEffect edgeEffect = this.mLeftGlow;
        float f2 = 0.0f;
        if (edgeEffect == null || Cookie.Companion.getDistance(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.mRightGlow;
            if (edgeEffect2 != null && Cookie.Companion.getDistance(edgeEffect2) != 0.0f) {
                boolean canScrollHorizontally = canScrollHorizontally(1);
                EdgeEffect edgeEffect3 = this.mRightGlow;
                if (canScrollHorizontally) {
                    edgeEffect3.onRelease();
                } else {
                    float onPullDistance = Cookie.Companion.onPullDistance(edgeEffect3, width, height);
                    if (Cookie.Companion.getDistance(this.mRightGlow) == 0.0f) {
                        this.mRightGlow.onRelease();
                    }
                    f2 = onPullDistance;
                }
                invalidate();
            }
        } else {
            boolean canScrollHorizontally2 = canScrollHorizontally(-1);
            EdgeEffect edgeEffect4 = this.mLeftGlow;
            if (canScrollHorizontally2) {
                edgeEffect4.onRelease();
            } else {
                float f3 = -Cookie.Companion.onPullDistance(edgeEffect4, -width, 1.0f - height);
                if (Cookie.Companion.getDistance(this.mLeftGlow) == 0.0f) {
                    this.mLeftGlow.onRelease();
                }
                f2 = f3;
            }
            invalidate();
        }
        return Math.round(f2 * getWidth());
    }

    public final int releaseVerticalGlow$1(float f, int i) {
        float width = f / getWidth();
        float height = i / getHeight();
        EdgeEffect edgeEffect = this.mTopGlow;
        float f2 = 0.0f;
        if (edgeEffect == null || Cookie.Companion.getDistance(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.mBottomGlow;
            if (edgeEffect2 != null && Cookie.Companion.getDistance(edgeEffect2) != 0.0f) {
                boolean canScrollVertically = canScrollVertically(1);
                EdgeEffect edgeEffect3 = this.mBottomGlow;
                if (canScrollVertically) {
                    edgeEffect3.onRelease();
                } else {
                    float onPullDistance = Cookie.Companion.onPullDistance(edgeEffect3, height, 1.0f - width);
                    if (Cookie.Companion.getDistance(this.mBottomGlow) == 0.0f) {
                        this.mBottomGlow.onRelease();
                    }
                    f2 = onPullDistance;
                }
                invalidate();
            }
        } else {
            boolean canScrollVertically2 = canScrollVertically(-1);
            EdgeEffect edgeEffect4 = this.mTopGlow;
            if (canScrollVertically2) {
                edgeEffect4.onRelease();
            } else {
                float f3 = -Cookie.Companion.onPullDistance(edgeEffect4, -height, width);
                if (Cookie.Companion.getDistance(this.mTopGlow) == 0.0f) {
                    this.mTopGlow.onRelease();
                }
                f2 = f3;
            }
            invalidate();
        }
        return Math.round(f2 * getHeight());
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.isTmpDetached()) {
                childViewHolderInt.clearTmpDetachFlag();
            } else if (!childViewHolderInt.shouldIgnore()) {
                StringBuilder sb = new StringBuilder("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(childViewHolderInt);
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(exceptionLabel(), sb);
                return;
            }
        } else if (sDebugAssertionsEnabled) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(exceptionLabel(), sb2);
            return;
        }
        view.clearAnimation();
        dispatchChildDetached(view);
        super.removeDetachedView(view, z);
    }

    public final void removeItemDecoration(ItemDecoration itemDecoration) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
        }
        ArrayList arrayList = this.mItemDecorations;
        arrayList.remove(itemDecoration);
        if (arrayList.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        LinearSmoothScroller linearSmoothScroller = this.mLayout.mSmoothScroller;
        if ((linearSmoothScroller == null || !linearSmoothScroller.mRunning) && !isComputingLayout() && view2 != null) {
            requestChildOnScreen(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    public final void requestChildOnScreen(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        int width = view3.getWidth();
        int height = view3.getHeight();
        Rect rect = this.mTempRect;
        rect.set(0, 0, width, height);
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            if (!layoutParams2.mInsetsDirty) {
                Rect rect2 = layoutParams2.mDecorInsets;
                rect.left -= rect2.left;
                rect.right += rect2.right;
                rect.top -= rect2.top;
                rect.bottom += rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, rect);
            offsetRectIntoDescendantCoords(view, rect);
        }
        this.mLayout.requestChildRectangleOnScreen(this, view, this.mTempRect, !this.mFirstLayoutComplete, view2 == null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.mLayout.requestChildRectangleOnScreen(this, view, rect, z, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        ArrayList arrayList = this.mOnItemTouchListeners;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((OnItemTouchListener) arrayList.get(i)).onRequestDisallowInterceptTouchEvent(z);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.mInterceptRequestLayoutDepth != 0 || this.mLayoutSuppressed) {
            this.mLayoutWasDefered = true;
        } else {
            super.requestLayout();
        }
    }

    @Override // android.view.View
    public final void scrollBy(int i, int i2) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        boolean canScrollHorizontally = layoutManager.canScrollHorizontally();
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

    /* JADX WARN: Removed duplicated region for block: B:22:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean scrollByInternal(int r19, int r20, android.view.MotionEvent r21, int r22) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.scrollByInternal(int, int, android.view.MotionEvent, int):boolean");
    }

    public final void scrollStep(int i, int i2, int[] iArr) {
        ViewHolder viewHolder;
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        Trace.beginSection("RV Scroll");
        State state = this.mState;
        fillRemainingScrollValues(state);
        Recycler recycler = this.mRecycler;
        int scrollHorizontallyBy = i != 0 ? this.mLayout.scrollHorizontallyBy(i, recycler, state) : 0;
        int scrollVerticallyBy = i2 != 0 ? this.mLayout.scrollVerticallyBy(i2, recycler, state) : 0;
        Trace.endSection();
        ChildHelper childHelper = this.mChildHelper;
        int childCount = childHelper.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = childHelper.getChildAt(i3);
            ViewHolder childViewHolder = getChildViewHolder(childAt);
            if (childViewHolder != null && (viewHolder = childViewHolder.mShadowingHolder) != null) {
                View view = viewHolder.itemView;
                int left = childAt.getLeft();
                int top = childAt.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        onExitLayoutOrScroll(true);
        stopInterceptRequestLayout(false);
        if (iArr != null) {
            iArr[0] = scrollHorizontallyBy;
            iArr[1] = scrollVerticallyBy;
        }
    }

    @Override // android.view.View
    public final void scrollTo(int i, int i2) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    public final void scrollToPosition(int i) {
        if (this.mLayoutSuppressed) {
            return;
        }
        stopScroll();
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null) {
            Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            layoutManager.scrollToPosition(i);
            awakenScrollBars();
        }
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public final void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (!isComputingLayout()) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        } else {
            int contentChangeTypes = accessibilityEvent != null ? accessibilityEvent.getContentChangeTypes() : 0;
            this.mEatenAccessibilityChangeFlags |= contentChangeTypes != 0 ? contentChangeTypes : 0;
        }
    }

    public void setAccessibilityDelegateCompat(RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate) {
        this.mAccessibilityDelegate = recyclerViewAccessibilityDelegate;
        ViewCompat.setAccessibilityDelegate(this, recyclerViewAccessibilityDelegate);
    }

    public void setAdapter(Adapter adapter) {
        setLayoutFrozen(false);
        Adapter adapter2 = this.mAdapter;
        RecyclerViewDataObserver recyclerViewDataObserver = this.mObserver;
        if (adapter2 != null) {
            adapter2.unregisterAdapterDataObserver(recyclerViewDataObserver);
            this.mAdapter.onDetachedFromRecyclerView(this);
        }
        ItemAnimator itemAnimator = this.mItemAnimator;
        if (itemAnimator != null) {
            itemAnimator.endAnimations();
        }
        LayoutManager layoutManager = this.mLayout;
        Recycler recycler = this.mRecycler;
        if (layoutManager != null) {
            layoutManager.removeAndRecycleAllViews(recycler);
            this.mLayout.removeAndRecycleScrapInt(recycler);
        }
        recycler.mAttachedScrap.clear();
        recycler.recycleAndClearCachedViews();
        RulerTrackingMap rulerTrackingMap = this.mAdapterHelper;
        rulerTrackingMap.recycleUpdateOpsAndClearList((ArrayList) rulerTrackingMap.values);
        rulerTrackingMap.recycleUpdateOpsAndClearList((ArrayList) rulerTrackingMap.accessFlags);
        rulerTrackingMap.size = 0;
        Adapter adapter3 = this.mAdapter;
        this.mAdapter = adapter;
        if (adapter != null) {
            adapter.registerAdapterDataObserver(recyclerViewDataObserver);
            adapter.onAttachedToRecyclerView(this);
        }
        LayoutManager layoutManager2 = this.mLayout;
        if (layoutManager2 != null) {
            layoutManager2.onAdapterChanged();
        }
        Adapter adapter4 = this.mAdapter;
        recycler.mAttachedScrap.clear();
        recycler.recycleAndClearCachedViews();
        recycler.poolingContainerDetach(adapter3, true);
        RecycledViewPool recycledViewPool = recycler.getRecycledViewPool();
        if (adapter3 != null) {
            recycledViewPool.mAttachCountForClearing--;
        }
        if (recycledViewPool.mAttachCountForClearing == 0) {
            SparseArray sparseArray = recycledViewPool.mScrap;
            for (int i = 0; i < sparseArray.size(); i++) {
                RecycledViewPool.ScrapData scrapData = (RecycledViewPool.ScrapData) sparseArray.valueAt(i);
                Iterator it = scrapData.mScrapHeap.iterator();
                while (it.hasNext()) {
                    BundleKt.callPoolingContainerOnRelease(((ViewHolder) it.next()).itemView);
                }
                scrapData.mScrapHeap.clear();
            }
        }
        if (adapter4 != null) {
            recycledViewPool.mAttachCountForClearing++;
        }
        recycler.maybeSendPoolingContainerAttach();
        this.mState.mStructureChanged = true;
        processDataSetCompletelyChanged(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(ChildDrawingOrderCallback childDrawingOrderCallback) {
        if (childDrawingOrderCallback == null) {
            return;
        }
        setChildrenDrawingOrderEnabled(false);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.mClipToPadding) {
            this.mBottomGlow = null;
            this.mTopGlow = null;
            this.mRightGlow = null;
            this.mLeftGlow = null;
        }
        this.mClipToPadding = z;
        super.setClipToPadding(z);
        if (this.mFirstLayoutComplete) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(EdgeEffectFactory edgeEffectFactory) {
        edgeEffectFactory.getClass();
        this.mEdgeEffectFactory = edgeEffectFactory;
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    public void setHasFixedSize(boolean z) {
        this.mHasFixedSize = z;
    }

    public void setItemAnimator(ItemAnimator itemAnimator) {
        ItemAnimator itemAnimator2 = this.mItemAnimator;
        if (itemAnimator2 != null) {
            itemAnimator2.endAnimations();
            this.mItemAnimator.mListener = null;
        }
        this.mItemAnimator = itemAnimator;
        if (itemAnimator != null) {
            itemAnimator.mListener = this.mItemAnimatorListener;
        }
    }

    public void setItemViewCacheSize(int i) {
        Recycler recycler = this.mRecycler;
        recycler.mRequestedCacheMax = i;
        recycler.updateViewCacheSize();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(LayoutManager layoutManager) {
        RecyclerView recyclerView;
        if (layoutManager == this.mLayout) {
            return;
        }
        stopScroll();
        LayoutManager layoutManager2 = this.mLayout;
        Recycler recycler = this.mRecycler;
        if (layoutManager2 != null) {
            ItemAnimator itemAnimator = this.mItemAnimator;
            if (itemAnimator != null) {
                itemAnimator.endAnimations();
            }
            this.mLayout.removeAndRecycleAllViews(recycler);
            this.mLayout.removeAndRecycleScrapInt(recycler);
            recycler.mAttachedScrap.clear();
            recycler.recycleAndClearCachedViews();
            if (this.mIsAttached) {
                LayoutManager layoutManager3 = this.mLayout;
                layoutManager3.mIsAttachedToWindow = false;
                layoutManager3.onDetachedFromWindow(this);
            }
            this.mLayout.setRecyclerView(null);
            this.mLayout = null;
        } else {
            recycler.mAttachedScrap.clear();
            recycler.recycleAndClearCachedViews();
        }
        ChildHelper childHelper = this.mChildHelper;
        ((HeadersReader) childHelper.mBucket).reset();
        ArrayList arrayList = (ArrayList) childHelper.mHiddenViews;
        int size = arrayList.size() - 1;
        while (true) {
            recyclerView = RecyclerView.this;
            if (size < 0) {
                break;
            }
            ViewHolder childViewHolderInt = getChildViewHolderInt((View) arrayList.get(size));
            if (childViewHolderInt != null) {
                childViewHolderInt.onLeftHiddenState(recyclerView);
            }
            arrayList.remove(size);
            size--;
        }
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            recyclerView.dispatchChildDetached(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeAllViews();
        this.mLayout = layoutManager;
        if (layoutManager != null) {
            if (layoutManager.mRecyclerView != null) {
                StringBuilder sb = new StringBuilder("LayoutManager ");
                sb.append(layoutManager);
                String exceptionLabel = layoutManager.mRecyclerView.exceptionLabel();
                sb.append(" is already attached to a RecyclerView:");
                sb.append(exceptionLabel);
                throw new IllegalArgumentException(sb.toString());
            }
            layoutManager.setRecyclerView(this);
            if (this.mIsAttached) {
                LayoutManager layoutManager4 = this.mLayout;
                layoutManager4.mIsAttachedToWindow = true;
                layoutManager4.onAttachedToWindow(this);
            }
        }
        recycler.updateViewCacheSize();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition == null) {
            super.setLayoutTransition(null);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        NestedScrollingChildHelper scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.mIsNestedScrollingEnabled) {
            ViewGroup viewGroup = scrollingChildHelper.mView;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            viewGroup.stopNestedScroll();
        }
        scrollingChildHelper.mIsNestedScrollingEnabled = z;
    }

    @Deprecated
    public void setOnScrollListener(OnScrollListener onScrollListener) {
        this.mScrollListener = onScrollListener;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.mPreserveFocusAfterLayout = z;
    }

    public void setRecycledViewPool(RecycledViewPool recycledViewPool) {
        Recycler recycler = this.mRecycler;
        RecyclerView recyclerView = RecyclerView.this;
        recycler.poolingContainerDetach(recyclerView.mAdapter, false);
        if (recycler.mRecyclerPool != null) {
            r1.mAttachCountForClearing--;
        }
        recycler.mRecyclerPool = recycledViewPool;
        if (recycledViewPool != null && recyclerView.getAdapter() != null) {
            recycler.mRecyclerPool.mAttachCountForClearing++;
        }
        recycler.maybeSendPoolingContainerAttach();
    }

    public void setScrollState(int i) {
        LinearSmoothScroller linearSmoothScroller;
        if (i == this.mScrollState) {
            return;
        }
        if (sVerboseLoggingEnabled) {
            StringBuilder m179m = Modifier.CC.m179m("setting scroll state to ", i, " from ");
            m179m.append(this.mScrollState);
            Log.d("RecyclerView", m179m.toString(), new Exception());
        }
        this.mScrollState = i;
        if (i != 2) {
            ViewFlinger viewFlinger = this.mViewFlinger;
            RecyclerView.this.removeCallbacks(viewFlinger);
            viewFlinger.mOverScroller.abortAnimation();
            LayoutManager layoutManager = this.mLayout;
            if (layoutManager != null && (linearSmoothScroller = layoutManager.mSmoothScroller) != null) {
                linearSmoothScroller.stop();
            }
        }
        LayoutManager layoutManager2 = this.mLayout;
        if (layoutManager2 != null) {
            layoutManager2.onScrollStateChanged(i);
        }
        OnScrollListener onScrollListener = this.mScrollListener;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(this, i);
        }
        ArrayList arrayList = this.mScrollListeners;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((OnScrollListener) this.mScrollListeners.get(size)).onScrollStateChanged(this, i);
            }
        }
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i != 0) {
            if (i == 1) {
                this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i + "; using default value");
        }
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(ViewCacheExtension viewCacheExtension) {
        this.mRecycler.getClass();
    }

    public final boolean shouldAbsorb(EdgeEffect edgeEffect, int i, int i2) {
        if (i > 0) {
            return true;
        }
        float distance = Cookie.Companion.getDistance(edgeEffect) * i2;
        float abs = Math.abs(-i) * 0.35f;
        float f = this.mPhysicalCoef * 0.015f;
        double log = Math.log(abs / f);
        double d = DECELERATION_RATE;
        return ((float) (Math.exp((d / (d - 1.0d)) * log) * ((double) f))) < distance;
    }

    public final void smoothScrollBy$1(int i, int i2, boolean z) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        if (!layoutManager.canScrollHorizontally()) {
            i = 0;
        }
        if (!this.mLayout.canScrollVertically()) {
            i2 = 0;
        }
        if (i == 0 && i2 == 0) {
            return;
        }
        if (z) {
            int i3 = i != 0 ? 1 : 0;
            if (i2 != 0) {
                i3 |= 2;
            }
            getScrollingChildHelper().startNestedScroll(i3, 1);
        }
        this.mViewFlinger.smoothScrollBy(i, i2, Integer.MIN_VALUE, null);
    }

    public final void smoothScrollToPosition(int i) {
        if (this.mLayoutSuppressed) {
            return;
        }
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            layoutManager.smoothScrollToPosition(this, i);
        }
    }

    public final void startInterceptRequestLayout() {
        int i = this.mInterceptRequestLayoutDepth + 1;
        this.mInterceptRequestLayoutDepth = i;
        if (i != 1 || this.mLayoutSuppressed) {
            return;
        }
        this.mLayoutWasDefered = false;
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return getScrollingChildHelper().startNestedScroll(i, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void startNestedScrollForType(int i) {
        boolean canScrollHorizontally = this.mLayout.canScrollHorizontally();
        int i2 = canScrollHorizontally;
        if (this.mLayout.canScrollVertically()) {
            i2 = (canScrollHorizontally ? 1 : 0) | 2;
        }
        getScrollingChildHelper().startNestedScroll(i2, i);
    }

    public final void stopInterceptRequestLayout(boolean z) {
        if (this.mInterceptRequestLayoutDepth < 1) {
            if (sDebugAssertionsEnabled) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("stopInterceptRequestLayout was called more times than startInterceptRequestLayout.".concat(exceptionLabel()));
                return;
            }
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
    public final void stopNestedScroll() {
        getScrollingChildHelper().stopNestedScroll(0);
    }

    public final void stopScroll() {
        LinearSmoothScroller linearSmoothScroller;
        setScrollState(0);
        ViewFlinger viewFlinger = this.mViewFlinger;
        RecyclerView.this.removeCallbacks(viewFlinger);
        viewFlinger.mOverScroller.abortAnimation();
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null || (linearSmoothScroller = layoutManager.mSmoothScroller) == null) {
            return;
        }
        linearSmoothScroller.stop();
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        if (z != this.mLayoutSuppressed) {
            assertNotInLayoutOrScroll("Do not suppressLayout in layout or scroll");
            if (z) {
                long uptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
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

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Adapter {
        private final AdapterDataObservable mObservable = new AdapterDataObservable();
        private boolean mHasStableIds = false;
        private StateRestorationPolicy mStateRestorationPolicy = StateRestorationPolicy.ALLOW;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class StateRestorationPolicy {
            public static final /* synthetic */ StateRestorationPolicy[] $VALUES;
            public static final StateRestorationPolicy ALLOW;

            static {
                StateRestorationPolicy stateRestorationPolicy = new StateRestorationPolicy("ALLOW", 0);
                ALLOW = stateRestorationPolicy;
                $VALUES = new StateRestorationPolicy[]{stateRestorationPolicy, new StateRestorationPolicy("PREVENT_WHEN_EMPTY", 1), new StateRestorationPolicy("PREVENT", 2)};
            }

            public static StateRestorationPolicy valueOf(String str) {
                return (StateRestorationPolicy) Enum.valueOf(StateRestorationPolicy.class, str);
            }

            public static StateRestorationPolicy[] values() {
                return (StateRestorationPolicy[]) $VALUES.clone();
            }
        }

        public final void bindViewHolder(ViewHolder viewHolder, int i) {
            boolean z = viewHolder.mBindingAdapter == null;
            if (z) {
                viewHolder.mPosition = i;
                if (hasStableIds()) {
                    viewHolder.mItemId = getItemId(i);
                }
                viewHolder.setFlags(1, 519);
                if (TraceCompat.isEnabled()) {
                    Trace.beginSection(String.format("RV onBindViewHolder type=0x%X", Integer.valueOf(viewHolder.mItemViewType)));
                }
            }
            viewHolder.mBindingAdapter = this;
            if (RecyclerView.sDebugAssertionsEnabled) {
                if (viewHolder.itemView.getParent() == null && viewHolder.itemView.isAttachedToWindow() != viewHolder.isTmpDetached()) {
                    throw new IllegalStateException("Temp-detached state out of sync with reality. holder.isTmpDetached(): " + viewHolder.isTmpDetached() + ", attached to window: " + viewHolder.itemView.isAttachedToWindow() + ", holder: " + viewHolder);
                }
                if (viewHolder.itemView.getParent() == null && viewHolder.itemView.isAttachedToWindow()) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m$3(viewHolder, "Attempting to bind attached holder with no parent (AKA temp detached): ");
                    return;
                }
            }
            onBindViewHolder(viewHolder, i, viewHolder.getUnmodifiedPayloads());
            if (z) {
                viewHolder.clearPayload();
                ViewGroup.LayoutParams layoutParams = viewHolder.itemView.getLayoutParams();
                if (layoutParams instanceof LayoutParams) {
                    ((LayoutParams) layoutParams).mInsetsDirty = true;
                }
                Trace.endSection();
            }
        }

        public boolean canRestoreState() {
            int ordinal = this.mStateRestorationPolicy.ordinal();
            if (ordinal != 1) {
                if (ordinal == 2) {
                    return false;
                }
            } else if (getItemCount() <= 0) {
                return false;
            }
            return true;
        }

        public final ViewHolder createViewHolder(ViewGroup viewGroup, int i) {
            try {
                if (TraceCompat.isEnabled()) {
                    Trace.beginSection(String.format("RV onCreateViewHolder type=0x%X", Integer.valueOf(i)));
                }
                ViewHolder onCreateViewHolder = onCreateViewHolder(viewGroup, i);
                if (onCreateViewHolder.itemView.getParent() != null) {
                    throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                }
                onCreateViewHolder.mItemViewType = i;
                return onCreateViewHolder;
            } finally {
                Trace.endSection();
            }
        }

        public int findRelativeAdapterPositionIn(Adapter adapter, ViewHolder viewHolder, int i) {
            if (adapter == this) {
                return i;
            }
            return -1;
        }

        public abstract int getItemCount();

        public long getItemId(int i) {
            return -1L;
        }

        public int getItemViewType(int i) {
            return 0;
        }

        public final StateRestorationPolicy getStateRestorationPolicy() {
            return this.mStateRestorationPolicy;
        }

        public final boolean hasObservers() {
            return this.mObservable.hasObservers();
        }

        public final boolean hasStableIds() {
            return this.mHasStableIds;
        }

        public final void notifyDataSetChanged() {
            this.mObservable.notifyChanged();
        }

        public final void notifyItemChanged(int i) {
            this.mObservable.notifyItemRangeChanged(i, 1, null);
        }

        public final void notifyItemInserted(int i) {
            this.mObservable.notifyItemRangeInserted(i, 1);
        }

        public final void notifyItemMoved(int i, int i2) {
            this.mObservable.notifyItemMoved(i, i2);
        }

        public final void notifyItemRangeChanged(int i, int i2) {
            this.mObservable.notifyItemRangeChanged(i, i2, null);
        }

        public final void notifyItemRangeInserted(int i, int i2) {
            this.mObservable.notifyItemRangeInserted(i, i2);
        }

        public final void notifyItemRangeRemoved(int i, int i2) {
            this.mObservable.notifyItemRangeRemoved(i, i2);
        }

        public final void notifyItemRemoved(int i) {
            this.mObservable.notifyItemRangeRemoved(i, 1);
        }

        public abstract void onBindViewHolder(ViewHolder viewHolder, int i);

        public void onBindViewHolder(ViewHolder viewHolder, int i, List<Object> list) {
            onBindViewHolder(viewHolder, i);
        }

        public abstract ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i);

        public boolean onFailedToRecycleView(ViewHolder viewHolder) {
            return false;
        }

        public void registerAdapterDataObserver(AdapterDataObserver adapterDataObserver) {
            this.mObservable.registerObserver(adapterDataObserver);
        }

        public void setHasStableIds(boolean z) {
            if (hasObservers()) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            } else {
                this.mHasStableIds = z;
            }
        }

        public void setStateRestorationPolicy(StateRestorationPolicy stateRestorationPolicy) {
            this.mStateRestorationPolicy = stateRestorationPolicy;
            this.mObservable.notifyStateRestorationPolicyChanged();
        }

        public void unregisterAdapterDataObserver(AdapterDataObserver adapterDataObserver) {
            this.mObservable.unregisterObserver(adapterDataObserver);
        }

        public final void notifyItemRangeChanged(int i, int i2, Object obj) {
            this.mObservable.notifyItemRangeChanged(i, i2, obj);
        }

        public final void notifyItemChanged(int i, Object obj) {
            this.mObservable.notifyItemRangeChanged(i, 1, obj);
        }

        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        }

        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        }

        public void onViewAttachedToWindow(ViewHolder viewHolder) {
        }

        public void onViewDetachedFromWindow(ViewHolder viewHolder) {
        }

        public void onViewRecycled(ViewHolder viewHolder) {
        }
    }

    public final void stopNestedScroll(int i) {
        getScrollingChildHelper().stopNestedScroll(i);
    }

    public final boolean dispatchNestedPreScroll(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().dispatchNestedPreScroll(i, i2, i3, iArr, iArr2);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class LayoutParams extends ViewGroup.MarginLayoutParams {
        public final Rect mDecorInsets;
        public boolean mInsetsDirty;
        public boolean mPendingInvalidate;
        public ViewHolder mViewHolder;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }
    }

    public final void dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        getScrollingChildHelper().dispatchNestedScrollInternal(i, i2, i3, i4, iArr, i5, iArr2);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class AdapterDataObserver {
        public abstract void onChanged();

        public abstract void onItemRangeChanged(int i, int i2, Object obj);

        public abstract void onItemRangeInserted(int i, int i2);

        public abstract void onItemRangeMoved(int i, int i2);

        public abstract void onItemRangeRemoved(int i, int i2);

        public void onStateRestorationPolicyChanged() {
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class LayoutManager {
        public ChildHelper mChildHelper;
        public int mHeight;
        public int mHeightMode;
        public final JsonBuilder mHorizontalBoundCheck;
        public boolean mIsAttachedToWindow;
        public final boolean mItemPrefetchEnabled;
        public final boolean mMeasurementCacheEnabled;
        public int mPrefetchMaxCountObserved;
        public boolean mPrefetchMaxObservedInInitialPrefetch;
        public RecyclerView mRecyclerView;
        public boolean mRequestedSimpleAnimations;
        public LinearSmoothScroller mSmoothScroller;
        public final JsonBuilder mVerticalBoundCheck;
        public int mWidth;
        public int mWidthMode;

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        /* renamed from: androidx.recyclerview.widget.RecyclerView$LayoutManager$1, reason: invalid class name */
        public final class AnonymousClass1 {
            public final /* synthetic */ int $r8$classId;
            public final /* synthetic */ LayoutManager this$0;

            public /* synthetic */ AnonymousClass1(LayoutManager layoutManager, int i) {
                this.$r8$classId = i;
                this.this$0 = layoutManager;
            }

            public final int getChildEnd(View view) {
                int decoratedRight;
                int i;
                switch (this.$r8$classId) {
                    case 0:
                        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                        decoratedRight = LayoutManager.getDecoratedRight(view);
                        i = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                        break;
                    default:
                        LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                        decoratedRight = LayoutManager.getDecoratedBottom(view);
                        i = ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                        break;
                }
                return decoratedRight + i;
            }

            public final int getChildStart(View view) {
                int decoratedLeft;
                int i;
                switch (this.$r8$classId) {
                    case 0:
                        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                        decoratedLeft = LayoutManager.getDecoratedLeft(view);
                        i = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                        break;
                    default:
                        LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                        decoratedLeft = LayoutManager.getDecoratedTop(view);
                        i = ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin;
                        break;
                }
                return decoratedLeft - i;
            }

            public final int getParentEnd() {
                int i;
                int paddingRight;
                int i2 = this.$r8$classId;
                LayoutManager layoutManager = this.this$0;
                switch (i2) {
                    case 0:
                        i = layoutManager.mWidth;
                        paddingRight = layoutManager.getPaddingRight();
                        break;
                    default:
                        i = layoutManager.mHeight;
                        paddingRight = layoutManager.getPaddingBottom();
                        break;
                }
                return i - paddingRight;
            }

            public final int getParentStart() {
                int i = this.$r8$classId;
                LayoutManager layoutManager = this.this$0;
                switch (i) {
                    case 0:
                        return layoutManager.getPaddingLeft();
                    default:
                        return layoutManager.getPaddingTop();
                }
            }
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class Properties {
            public int orientation;
            public boolean reverseLayout;
            public int spanCount;
            public boolean stackFromEnd;
        }

        public LayoutManager() {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this, 0);
            AnonymousClass1 anonymousClass12 = new AnonymousClass1(this, 1);
            this.mHorizontalBoundCheck = new JsonBuilder(anonymousClass1);
            this.mVerticalBoundCheck = new JsonBuilder(anonymousClass12);
            this.mRequestedSimpleAnimations = false;
            this.mIsAttachedToWindow = false;
            this.mMeasurementCacheEnabled = true;
            this.mItemPrefetchEnabled = true;
        }

        public static int chooseSize(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i2, i3) : size : Math.min(size, Math.max(i2, i3));
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0018, code lost:
        
            if (r6 == 1073741824) goto L14;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int getChildMeasureSpec(boolean r4, int r5, int r6, int r7, int r8) {
            /*
                int r5 = r5 - r7
                r7 = 0
                int r5 = java.lang.Math.max(r7, r5)
                r0 = -2
                r1 = -1
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = 1073741824(0x40000000, float:2.0)
                if (r4 == 0) goto L1d
                if (r8 < 0) goto L12
            L10:
                r6 = r3
                goto L30
            L12:
                if (r8 != r1) goto L1a
                if (r6 == r2) goto L22
                if (r6 == 0) goto L1a
                if (r6 == r3) goto L22
            L1a:
                r6 = r7
                r8 = r6
                goto L30
            L1d:
                if (r8 < 0) goto L20
                goto L10
            L20:
                if (r8 != r1) goto L24
            L22:
                r8 = r5
                goto L30
            L24:
                if (r8 != r0) goto L1a
                if (r6 == r2) goto L2e
                if (r6 != r3) goto L2b
                goto L2e
            L2b:
                r8 = r5
                r6 = r7
                goto L30
            L2e:
                r8 = r5
                r6 = r2
            L30:
                int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r8, r6)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.LayoutManager.getChildMeasureSpec(boolean, int, int, int, int):int");
        }

        public static int getDecoratedBottom(View view) {
            return view.getBottom() + ((LayoutParams) view.getLayoutParams()).mDecorInsets.bottom;
        }

        public static int getDecoratedLeft(View view) {
            return view.getLeft() - ((LayoutParams) view.getLayoutParams()).mDecorInsets.left;
        }

        public static int getDecoratedRight(View view) {
            return view.getRight() + ((LayoutParams) view.getLayoutParams()).mDecorInsets.right;
        }

        public static int getDecoratedTop(View view) {
            return view.getTop() - ((LayoutParams) view.getLayoutParams()).mDecorInsets.top;
        }

        public static int getPosition(View view) {
            return ((LayoutParams) view.getLayoutParams()).mViewHolder.getLayoutPosition();
        }

        public static Properties getProperties(Context context, AttributeSet attributeSet, int i, int i2) {
            Properties properties = new Properties();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RecyclerView, i, i2);
            properties.orientation = obtainStyledAttributes.getInt(0, 1);
            properties.spanCount = obtainStyledAttributes.getInt(10, 1);
            properties.reverseLayout = obtainStyledAttributes.getBoolean(9, false);
            properties.stackFromEnd = obtainStyledAttributes.getBoolean(11, false);
            obtainStyledAttributes.recycle();
            return properties;
        }

        public static boolean isMeasurementUpToDate(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (i3 > 0 && i != i3) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i;
            }
            return true;
        }

        public static void layoutDecoratedWithMargins(View view, int i, int i2, int i3, int i4) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect = layoutParams.mDecorInsets;
            view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        }

        public final void addViewInt(View view, int i, boolean z) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (z || childViewHolderInt.isRemoved()) {
                SimpleArrayMap simpleArrayMap = (SimpleArrayMap) this.mRecyclerView.mViewInfoStore.json;
                ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord) simpleArrayMap.get(childViewHolderInt);
                if (viewInfoStore$InfoRecord == null) {
                    viewInfoStore$InfoRecord = ViewInfoStore$InfoRecord.obtain();
                    simpleArrayMap.put(childViewHolderInt, viewInfoStore$InfoRecord);
                }
                viewInfoStore$InfoRecord.flags |= 1;
            } else {
                this.mRecyclerView.mViewInfoStore.removeFromDisappearedInLayout(childViewHolderInt);
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (childViewHolderInt.wasReturnedFromScrap() || childViewHolderInt.isScrap()) {
                if (childViewHolderInt.isScrap()) {
                    childViewHolderInt.unScrap();
                } else {
                    childViewHolderInt.clearReturnedFromScrapFlag();
                }
                this.mChildHelper.attachViewToParent(view, i, view.getLayoutParams(), false);
            } else {
                ViewParent parent = view.getParent();
                RecyclerView recyclerView = this.mRecyclerView;
                ChildHelper childHelper = this.mChildHelper;
                if (parent == recyclerView) {
                    HeadersReader headersReader = (HeadersReader) childHelper.mBucket;
                    int indexOfChild = RecyclerView.this.indexOfChild(view);
                    int countOnesBefore = (indexOfChild == -1 || headersReader.get(indexOfChild)) ? -1 : indexOfChild - headersReader.countOnesBefore(indexOfChild);
                    if (i == -1) {
                        i = this.mChildHelper.getChildCount();
                    }
                    if (countOnesBefore == -1) {
                        throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.mRecyclerView.indexOfChild(view) + this.mRecyclerView.exceptionLabel());
                    }
                    if (countOnesBefore != i) {
                        LayoutManager layoutManager = this.mRecyclerView.mLayout;
                        View childAt = layoutManager.getChildAt(countOnesBefore);
                        if (childAt == null) {
                            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + countOnesBefore + layoutManager.mRecyclerView.toString());
                        }
                        layoutManager.getChildAt(countOnesBefore);
                        layoutManager.mChildHelper.detachViewFromParent(countOnesBefore);
                        LayoutParams layoutParams2 = (LayoutParams) childAt.getLayoutParams();
                        ViewHolder childViewHolderInt2 = RecyclerView.getChildViewHolderInt(childAt);
                        boolean isRemoved = childViewHolderInt2.isRemoved();
                        RecyclerView recyclerView2 = layoutManager.mRecyclerView;
                        if (isRemoved) {
                            SimpleArrayMap simpleArrayMap2 = (SimpleArrayMap) recyclerView2.mViewInfoStore.json;
                            ViewInfoStore$InfoRecord viewInfoStore$InfoRecord2 = (ViewInfoStore$InfoRecord) simpleArrayMap2.get(childViewHolderInt2);
                            if (viewInfoStore$InfoRecord2 == null) {
                                viewInfoStore$InfoRecord2 = ViewInfoStore$InfoRecord.obtain();
                                simpleArrayMap2.put(childViewHolderInt2, viewInfoStore$InfoRecord2);
                            }
                            viewInfoStore$InfoRecord2.flags = 1 | viewInfoStore$InfoRecord2.flags;
                        } else {
                            recyclerView2.mViewInfoStore.removeFromDisappearedInLayout(childViewHolderInt2);
                        }
                        layoutManager.mChildHelper.attachViewToParent(childAt, i, layoutParams2, childViewHolderInt2.isRemoved());
                    }
                } else {
                    childHelper.addView(view, i, false);
                    layoutParams.mInsetsDirty = true;
                    LinearSmoothScroller linearSmoothScroller = this.mSmoothScroller;
                    if (linearSmoothScroller != null && linearSmoothScroller.mRunning) {
                        linearSmoothScroller.mRecyclerView.getClass();
                        ViewHolder childViewHolderInt3 = RecyclerView.getChildViewHolderInt(view);
                        if ((childViewHolderInt3 != null ? childViewHolderInt3.getLayoutPosition() : -1) == linearSmoothScroller.mTargetPosition) {
                            linearSmoothScroller.mTargetView = view;
                            if (RecyclerView.sVerboseLoggingEnabled) {
                                Log.d("RecyclerView", "smooth scroll target view has been attached");
                            }
                        }
                    }
                }
            }
            if (layoutParams.mPendingInvalidate) {
                if (RecyclerView.sVerboseLoggingEnabled) {
                    Log.d("RecyclerView", "consuming pending invalidate on child " + layoutParams.mViewHolder);
                }
                childViewHolderInt.itemView.invalidate();
                layoutParams.mPendingInvalidate = false;
            }
        }

        public void assertNotInLayoutOrScroll(String str) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.assertNotInLayoutOrScroll(str);
            }
        }

        public abstract boolean canScrollHorizontally();

        public abstract boolean canScrollVertically();

        public boolean checkLayoutParams(LayoutParams layoutParams) {
            return layoutParams != null;
        }

        public abstract int computeHorizontalScrollExtent(State state);

        public abstract int computeHorizontalScrollOffset(State state);

        public abstract int computeHorizontalScrollRange(State state);

        public abstract int computeVerticalScrollExtent(State state);

        public abstract int computeVerticalScrollOffset(State state);

        public abstract int computeVerticalScrollRange(State state);

        public final void detachAndScrapAttachedViews(Recycler recycler) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = getChildAt(childCount);
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
                if (childViewHolderInt.shouldIgnore()) {
                    if (RecyclerView.sVerboseLoggingEnabled) {
                        Log.d("RecyclerView", "ignoring view " + childViewHolderInt);
                    }
                } else if (!childViewHolderInt.isInvalid() || childViewHolderInt.isRemoved() || this.mRecyclerView.mAdapter.hasStableIds()) {
                    getChildAt(childCount);
                    this.mChildHelper.detachViewFromParent(childCount);
                    recycler.scrapView(childAt);
                    this.mRecyclerView.mViewInfoStore.removeFromDisappearedInLayout(childViewHolderInt);
                } else {
                    removeViewAt(childCount);
                    recycler.recycleViewHolderInternal(childViewHolderInt);
                }
            }
        }

        public final View findContainingItemView(View view) {
            View findContainingItemView;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || (findContainingItemView = recyclerView.findContainingItemView(view)) == null || ((ArrayList) this.mChildHelper.mHiddenViews).contains(findContainingItemView)) {
                return null;
            }
            return findContainingItemView;
        }

        public View findViewByPosition(int i) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
                if (childViewHolderInt != null && childViewHolderInt.getLayoutPosition() == i && !childViewHolderInt.shouldIgnore() && (this.mRecyclerView.mState.mInPreLayout || !childViewHolderInt.isRemoved())) {
                    return childAt;
                }
            }
            return null;
        }

        public abstract LayoutParams generateDefaultLayoutParams();

        public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
        }

        public final View getChildAt(int i) {
            ChildHelper childHelper = this.mChildHelper;
            if (childHelper != null) {
                return childHelper.getChildAt(i);
            }
            return null;
        }

        public final int getChildCount() {
            ChildHelper childHelper = this.mChildHelper;
            if (childHelper != null) {
                return childHelper.getChildCount();
            }
            return 0;
        }

        public int getColumnCountForAccessibility(Recycler recycler, State state) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || recyclerView.mAdapter == null || !canScrollHorizontally()) {
                return 1;
            }
            return this.mRecyclerView.mAdapter.getItemCount();
        }

        public void getDecoratedBoundsWithMargins(Rect rect, View view) {
            boolean z = RecyclerView.sDebugAssertionsEnabled;
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect2 = layoutParams.mDecorInsets;
            rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        }

        public final View getFocusedChild() {
            View focusedChild;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || ((ArrayList) this.mChildHelper.mHiddenViews).contains(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public final int getItemCount() {
            RecyclerView recyclerView = this.mRecyclerView;
            Adapter adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.getItemCount();
            }
            return 0;
        }

        public final int getPaddingBottom() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public final int getPaddingLeft() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public final int getPaddingRight() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public final int getPaddingTop() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public int getRowCountForAccessibility(Recycler recycler, State state) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || recyclerView.mAdapter == null || !canScrollVertically()) {
                return 1;
            }
            return this.mRecyclerView.mAdapter.getItemCount();
        }

        public final void getTransformedBoundingBox(Rect rect, View view) {
            Matrix matrix;
            Rect rect2 = ((LayoutParams) view.getLayoutParams()).mDecorInsets;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            if (this.mRecyclerView != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.mRecyclerView.mTempRectF;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public boolean isAutoMeasureEnabled() {
            return false;
        }

        public boolean isLayoutReversed() {
            return false;
        }

        public void offsetChildrenHorizontal(int i) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                int childCount = recyclerView.mChildHelper.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    recyclerView.mChildHelper.getChildAt(i2).offsetLeftAndRight(i);
                }
            }
        }

        public void offsetChildrenVertical(int i) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                int childCount = recyclerView.mChildHelper.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    recyclerView.mChildHelper.getChildAt(i2).offsetTopAndBottom(i);
                }
            }
        }

        public abstract void onDetachedFromWindow(RecyclerView recyclerView);

        public abstract View onFocusSearchFailed(View view, int i, Recycler recycler, State state);

        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.mRecyclerView;
            Recycler recycler = recyclerView.mRecycler;
            if (accessibilityEvent == null) {
                return;
            }
            boolean z = true;
            if (!recyclerView.canScrollVertically(1) && !this.mRecyclerView.canScrollVertically(-1) && !this.mRecyclerView.canScrollHorizontally(-1) && !this.mRecyclerView.canScrollHorizontally(1)) {
                z = false;
            }
            accessibilityEvent.setScrollable(z);
            Adapter adapter = this.mRecyclerView.mAdapter;
            if (adapter != null) {
                accessibilityEvent.setItemCount(adapter.getItemCount());
            }
        }

        public void onInitializeAccessibilityNodeInfo(Recycler recycler, State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (this.mRecyclerView.canScrollVertically(-1) || this.mRecyclerView.canScrollHorizontally(-1)) {
                accessibilityNodeInfoCompat.addAction(8192);
                accessibilityNodeInfoCompat.setScrollable(true);
                accessibilityNodeInfoCompat.setBooleanProperty(67108864, true);
            }
            if (this.mRecyclerView.canScrollVertically(1) || this.mRecyclerView.canScrollHorizontally(1)) {
                accessibilityNodeInfoCompat.addAction(4096);
                accessibilityNodeInfoCompat.setScrollable(true);
                accessibilityNodeInfoCompat.setBooleanProperty(67108864, true);
            }
            accessibilityNodeInfoCompat.mInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(getRowCountForAccessibility(recycler, state), getColumnCountForAccessibility(recycler, state), false, 0));
        }

        public void onInitializeAccessibilityNodeInfoForItem(Recycler recycler, State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.setCollectionItemInfo(Extras.Key.obtain(canScrollVertically() ? getPosition(view) : 0, 1, canScrollHorizontally() ? getPosition(view) : 0, 1, false, false));
        }

        public View onInterceptFocusSearch(int i, View view) {
            return null;
        }

        public abstract void onLayoutChildren(Recycler recycler, State state);

        public abstract void onLayoutCompleted(State state);

        public Parcelable onSaveInstanceState() {
            return null;
        }

        public boolean performAccessibilityAction(int i, Bundle bundle) {
            int paddingTop;
            int paddingLeft;
            float f;
            Recycler recycler = this.mRecyclerView.mRecycler;
            int i2 = this.mHeight;
            int i3 = this.mWidth;
            Rect rect = new Rect();
            if (this.mRecyclerView.getMatrix().isIdentity() && this.mRecyclerView.getGlobalVisibleRect(rect)) {
                i2 = rect.height();
                i3 = rect.width();
            }
            if (i == 4096) {
                paddingTop = this.mRecyclerView.canScrollVertically(1) ? (i2 - getPaddingTop()) - getPaddingBottom() : 0;
                if (this.mRecyclerView.canScrollHorizontally(1)) {
                    paddingLeft = (i3 - getPaddingLeft()) - getPaddingRight();
                }
                paddingLeft = 0;
            } else if (i != 8192) {
                paddingTop = 0;
                paddingLeft = 0;
            } else {
                paddingTop = this.mRecyclerView.canScrollVertically(-1) ? -((i2 - getPaddingTop()) - getPaddingBottom()) : 0;
                if (this.mRecyclerView.canScrollHorizontally(-1)) {
                    paddingLeft = -((i3 - getPaddingLeft()) - getPaddingRight());
                }
                paddingLeft = 0;
            }
            if (paddingTop != 0 || paddingLeft != 0) {
                if (bundle != null) {
                    f = bundle.getFloat("androidx.core.view.accessibility.action.ARGUMENT_SCROLL_AMOUNT_FLOAT", 1.0f);
                    if (f < 0.0f) {
                        if (RecyclerView.sDebugAssertionsEnabled) {
                            throw new IllegalArgumentException("attempting to use ACTION_ARGUMENT_SCROLL_AMOUNT_FLOAT with a negative value (" + f + ")");
                        }
                    }
                } else {
                    f = 1.0f;
                }
                if (Float.compare(f, Float.POSITIVE_INFINITY) != 0) {
                    if (Float.compare(1.0f, f) != 0 && Float.compare(0.0f, f) != 0) {
                        paddingLeft = (int) (paddingLeft * f);
                        paddingTop = (int) (paddingTop * f);
                    }
                    this.mRecyclerView.smoothScrollBy$1(paddingLeft, paddingTop, true);
                    return true;
                }
                RecyclerView recyclerView = this.mRecyclerView;
                Adapter adapter = recyclerView.mAdapter;
                if (adapter != null) {
                    if (i == 4096) {
                        recyclerView.smoothScrollToPosition(adapter.getItemCount() - 1);
                        return true;
                    }
                    if (i != 8192) {
                        return true;
                    }
                    recyclerView.smoothScrollToPosition(0);
                    return true;
                }
            }
            return false;
        }

        public final void removeAndRecycleAllViews(Recycler recycler) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                if (!RecyclerView.getChildViewHolderInt(getChildAt(childCount)).shouldIgnore()) {
                    View childAt = getChildAt(childCount);
                    removeViewAt(childCount);
                    recycler.recycleView(childAt);
                }
            }
        }

        public final void removeAndRecycleScrapInt(Recycler recycler) {
            ArrayList arrayList;
            int size = recycler.mAttachedScrap.size();
            int i = size - 1;
            while (true) {
                arrayList = recycler.mAttachedScrap;
                if (i < 0) {
                    break;
                }
                View view = ((ViewHolder) arrayList.get(i)).itemView;
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (!childViewHolderInt.shouldIgnore()) {
                    childViewHolderInt.setIsRecyclable(false);
                    if (childViewHolderInt.isTmpDetached()) {
                        this.mRecyclerView.removeDetachedView(view, false);
                    }
                    ItemAnimator itemAnimator = this.mRecyclerView.mItemAnimator;
                    if (itemAnimator != null) {
                        itemAnimator.endAnimation(childViewHolderInt);
                    }
                    childViewHolderInt.setIsRecyclable(true);
                    ViewHolder childViewHolderInt2 = RecyclerView.getChildViewHolderInt(view);
                    childViewHolderInt2.mScrapContainer = null;
                    childViewHolderInt2.mInChangeScrap = false;
                    childViewHolderInt2.clearReturnedFromScrapFlag();
                    recycler.recycleViewHolderInternal(childViewHolderInt2);
                }
                i--;
            }
            arrayList.clear();
            ArrayList arrayList2 = recycler.mChangedScrap;
            if (arrayList2 != null) {
                arrayList2.clear();
            }
            if (size > 0) {
                this.mRecyclerView.invalidate();
            }
        }

        public final void removeAndRecycleView(View view, Recycler recycler) {
            ChildHelper childHelper = this.mChildHelper;
            AnonymousClass7 anonymousClass7 = (AnonymousClass7) childHelper.mCallback;
            int i = childHelper.mRemoveStatus;
            if (i == 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Cannot call removeView(At) within removeView(At)");
                return;
            }
            if (i == 2) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Cannot call removeView(At) within removeViewIfHidden");
                return;
            }
            try {
                childHelper.mRemoveStatus = 1;
                childHelper.mViewInRemoveView = view;
                int indexOfChild = RecyclerView.this.indexOfChild(view);
                if (indexOfChild >= 0) {
                    if (((HeadersReader) childHelper.mBucket).remove(indexOfChild)) {
                        childHelper.unhideViewInternal(view);
                    }
                    anonymousClass7.removeViewAt(indexOfChild);
                }
                childHelper.mRemoveStatus = 0;
                childHelper.mViewInRemoveView = null;
                recycler.recycleView(view);
            } catch (Throwable th) {
                childHelper.mRemoveStatus = 0;
                childHelper.mViewInRemoveView = null;
                throw th;
            }
        }

        public final void removeViewAt(int i) {
            if (getChildAt(i) != null) {
                ChildHelper childHelper = this.mChildHelper;
                AnonymousClass7 anonymousClass7 = (AnonymousClass7) childHelper.mCallback;
                int i2 = childHelper.mRemoveStatus;
                if (i2 == 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Cannot call removeView(At) within removeView(At)");
                    return;
                }
                if (i2 == 2) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Cannot call removeView(At) within removeViewIfHidden");
                    return;
                }
                try {
                    int offset = childHelper.getOffset(i);
                    View childAt = RecyclerView.this.getChildAt(offset);
                    if (childAt == null) {
                        childHelper.mRemoveStatus = 0;
                        childHelper.mViewInRemoveView = null;
                        return;
                    }
                    childHelper.mRemoveStatus = 1;
                    childHelper.mViewInRemoveView = childAt;
                    if (((HeadersReader) childHelper.mBucket).remove(offset)) {
                        childHelper.unhideViewInternal(childAt);
                    }
                    anonymousClass7.removeViewAt(offset);
                    childHelper.mRemoveStatus = 0;
                    childHelper.mViewInRemoveView = null;
                } catch (Throwable th) {
                    childHelper.mRemoveStatus = 0;
                    childHelper.mViewInRemoveView = null;
                    throw th;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x00ad, code lost:
        
            if ((r5.bottom - r10) > r2) goto L28;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean requestChildRectangleOnScreen(androidx.recyclerview.widget.RecyclerView r9, android.view.View r10, android.graphics.Rect r11, boolean r12, boolean r13) {
            /*
                r8 = this;
                int r0 = r8.getPaddingLeft()
                int r1 = r8.getPaddingTop()
                int r2 = r8.mWidth
                int r3 = r8.getPaddingRight()
                int r2 = r2 - r3
                int r3 = r8.mHeight
                int r4 = r8.getPaddingBottom()
                int r3 = r3 - r4
                int r4 = r10.getLeft()
                int r5 = r11.left
                int r4 = r4 + r5
                int r5 = r10.getScrollX()
                int r4 = r4 - r5
                int r5 = r10.getTop()
                int r6 = r11.top
                int r5 = r5 + r6
                int r10 = r10.getScrollY()
                int r5 = r5 - r10
                int r10 = r11.width()
                int r10 = r10 + r4
                int r11 = r11.height()
                int r11 = r11 + r5
                int r4 = r4 - r0
                r0 = 0
                int r6 = java.lang.Math.min(r0, r4)
                int r5 = r5 - r1
                int r1 = java.lang.Math.min(r0, r5)
                int r10 = r10 - r2
                int r2 = java.lang.Math.max(r0, r10)
                int r11 = r11 - r3
                int r11 = java.lang.Math.max(r0, r11)
                androidx.recyclerview.widget.RecyclerView r3 = r8.mRecyclerView
                int r3 = r3.getLayoutDirection()
                r7 = 1
                if (r3 != r7) goto L5e
                if (r2 == 0) goto L59
                goto L66
            L59:
                int r2 = java.lang.Math.max(r6, r10)
                goto L66
            L5e:
                if (r6 == 0) goto L61
                goto L65
            L61:
                int r6 = java.lang.Math.min(r4, r2)
            L65:
                r2 = r6
            L66:
                if (r1 == 0) goto L69
                goto L6d
            L69:
                int r1 = java.lang.Math.min(r5, r11)
            L6d:
                int[] r10 = new int[]{r2, r1}
                r11 = r10[r0]
                r10 = r10[r7]
                if (r13 == 0) goto Lb0
                android.view.View r13 = r9.getFocusedChild()
                if (r13 != 0) goto L7e
                goto Lb5
            L7e:
                int r1 = r8.getPaddingLeft()
                int r2 = r8.getPaddingTop()
                int r3 = r8.mWidth
                int r4 = r8.getPaddingRight()
                int r3 = r3 - r4
                int r4 = r8.mHeight
                int r5 = r8.getPaddingBottom()
                int r4 = r4 - r5
                androidx.recyclerview.widget.RecyclerView r5 = r8.mRecyclerView
                android.graphics.Rect r5 = r5.mTempRect
                r8.getDecoratedBoundsWithMargins(r5, r13)
                int r8 = r5.left
                int r8 = r8 - r11
                if (r8 >= r3) goto Lb5
                int r8 = r5.right
                int r8 = r8 - r11
                if (r8 <= r1) goto Lb5
                int r8 = r5.top
                int r8 = r8 - r10
                if (r8 >= r4) goto Lb5
                int r8 = r5.bottom
                int r8 = r8 - r10
                if (r8 > r2) goto Lb0
                goto Lb5
            Lb0:
                if (r11 != 0) goto Lb6
                if (r10 == 0) goto Lb5
                goto Lb6
            Lb5:
                return r0
            Lb6:
                if (r12 == 0) goto Lbc
                r9.scrollBy(r11, r10)
                return r7
            Lbc:
                r9.smoothScrollBy$1(r11, r10, r0)
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.LayoutManager.requestChildRectangleOnScreen(androidx.recyclerview.widget.RecyclerView, android.view.View, android.graphics.Rect, boolean, boolean):boolean");
        }

        public final void requestLayout() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public abstract int scrollHorizontallyBy(int i, Recycler recycler, State state);

        public abstract void scrollToPosition(int i);

        public abstract int scrollVerticallyBy(int i, Recycler recycler, State state);

        public final void setExactMeasureSpecsFrom(RecyclerView recyclerView) {
            setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        public final void setMeasureSpecs(int i, int i2) {
            this.mWidth = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            this.mWidthMode = mode;
            if (mode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.mWidth = 0;
            }
            this.mHeight = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.mHeightMode = mode2;
            if (mode2 != 0 || RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                return;
            }
            this.mHeight = 0;
        }

        public void setMeasuredDimension(Rect rect, int i, int i2) {
            int paddingRight = getPaddingRight() + getPaddingLeft() + rect.width();
            int paddingBottom = getPaddingBottom() + getPaddingTop() + rect.height();
            RecyclerView recyclerView = this.mRecyclerView;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            this.mRecyclerView.setMeasuredDimension(chooseSize(i, paddingRight, recyclerView.getMinimumWidth()), chooseSize(i2, paddingBottom, this.mRecyclerView.getMinimumHeight()));
        }

        public final void setMeasuredDimensionFromChildren(int i, int i2) {
            int childCount = getChildCount();
            if (childCount == 0) {
                this.mRecyclerView.defaultOnMeasure(i, i2);
                return;
            }
            int i3 = Integer.MIN_VALUE;
            int i4 = Integer.MAX_VALUE;
            int i5 = Integer.MIN_VALUE;
            int i6 = Integer.MAX_VALUE;
            for (int i7 = 0; i7 < childCount; i7++) {
                View childAt = getChildAt(i7);
                Rect rect = this.mRecyclerView.mTempRect;
                getDecoratedBoundsWithMargins(rect, childAt);
                int i8 = rect.left;
                if (i8 < i6) {
                    i6 = i8;
                }
                int i9 = rect.right;
                if (i9 > i3) {
                    i3 = i9;
                }
                int i10 = rect.top;
                if (i10 < i4) {
                    i4 = i10;
                }
                int i11 = rect.bottom;
                if (i11 > i5) {
                    i5 = i11;
                }
            }
            this.mRecyclerView.mTempRect.set(i6, i4, i3, i5);
            setMeasuredDimension(this.mRecyclerView.mTempRect, i, i2);
        }

        public final void setRecyclerView(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.mRecyclerView = null;
                this.mChildHelper = null;
                this.mWidth = 0;
                this.mHeight = 0;
            } else {
                this.mRecyclerView = recyclerView;
                this.mChildHelper = recyclerView.mChildHelper;
                this.mWidth = recyclerView.getWidth();
                this.mHeight = recyclerView.getHeight();
            }
            this.mWidthMode = 1073741824;
            this.mHeightMode = 1073741824;
        }

        public final boolean shouldMeasureChild(View view, int i, int i2, LayoutParams layoutParams) {
            return (!view.isLayoutRequested() && this.mMeasurementCacheEnabled && isMeasurementUpToDate(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) && isMeasurementUpToDate(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
        }

        public boolean shouldMeasureTwice() {
            return false;
        }

        public final boolean shouldReMeasureChild(View view, int i, int i2, LayoutParams layoutParams) {
            return (this.mMeasurementCacheEnabled && isMeasurementUpToDate(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) && isMeasurementUpToDate(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
        }

        public abstract void smoothScrollToPosition(RecyclerView recyclerView, int i);

        public final void startSmoothScroll(LinearSmoothScroller linearSmoothScroller) {
            LinearSmoothScroller linearSmoothScroller2 = this.mSmoothScroller;
            if (linearSmoothScroller2 != null && linearSmoothScroller != linearSmoothScroller2 && linearSmoothScroller2.mRunning) {
                linearSmoothScroller2.stop();
            }
            this.mSmoothScroller = linearSmoothScroller;
            RecyclerView recyclerView = this.mRecyclerView;
            ViewFlinger viewFlinger = recyclerView.mViewFlinger;
            RecyclerView.this.removeCallbacks(viewFlinger);
            viewFlinger.mOverScroller.abortAnimation();
            if (linearSmoothScroller.mStarted) {
                Log.w("RecyclerView", "An instance of " + linearSmoothScroller.getClass().getSimpleName() + " was started more than once. Each instance of" + linearSmoothScroller.getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
            }
            linearSmoothScroller.mRecyclerView = recyclerView;
            linearSmoothScroller.mLayoutManager = this;
            int i = linearSmoothScroller.mTargetPosition;
            if (i == -1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Invalid target position");
                return;
            }
            recyclerView.mState.mTargetPosition = i;
            linearSmoothScroller.mRunning = true;
            linearSmoothScroller.mPendingInitialRun = true;
            linearSmoothScroller.mTargetView = recyclerView.mLayout.findViewByPosition(i);
            linearSmoothScroller.mRecyclerView.mViewFlinger.postOnAnimation();
            linearSmoothScroller.mStarted = true;
        }

        public boolean supportsPredictiveItemAnimations() {
            return false;
        }

        public void onAdapterChanged() {
        }

        public void onItemsChanged() {
        }

        public void onAttachedToWindow(RecyclerView recyclerView) {
        }

        public void onRestoreInstanceState(Parcelable parcelable) {
        }

        public void onScrollStateChanged(int i) {
        }

        public LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
            return new LayoutParams(context, attributeSet);
        }

        public final void onInitializeAccessibilityNodeInfoForItem(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt == null || childViewHolderInt.isRemoved()) {
                return;
            }
            ChildHelper childHelper = this.mChildHelper;
            if (((ArrayList) childHelper.mHiddenViews).contains(childViewHolderInt.itemView)) {
                return;
            }
            RecyclerView recyclerView = this.mRecyclerView;
            onInitializeAccessibilityNodeInfoForItem(recyclerView.mRecycler, recyclerView.mState, view, accessibilityNodeInfoCompat);
        }

        public void collectInitialPrefetchPositions(int i, OpenHashSet openHashSet) {
        }

        public void onItemsAdded(int i, int i2) {
        }

        public void onItemsMoved(int i, int i2) {
        }

        public void onItemsRemoved(int i, int i2) {
        }

        public void onItemsUpdated(int i, int i2) {
        }

        public void collectAdjacentPrefetchPositions(int i, int i2, State state, OpenHashSet openHashSet) {
        }
    }

    public void setOnFlingListener(OnFlingListener onFlingListener) {
    }

    @Deprecated
    public void setRecyclerListener(RecyclerListener recyclerListener) {
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            return layoutManager.generateLayoutParams(layoutParams);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("RecyclerView has no LayoutManager".concat(exceptionLabel()));
        return null;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class ItemDecoration {
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, State state) {
            ((LayoutParams) view.getLayoutParams()).mViewHolder.getLayoutPosition();
            rect.set(0, 0, 0, 0);
        }

        public void onDraw(Canvas canvas, RecyclerView recyclerView) {
        }

        public void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class OnScrollListener {
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        }

        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        }
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, org.schabi.newpipe.R.attr.recyclerViewStyle);
    }

    public RecyclerView(Context context) {
        this(context, null);
    }
}
