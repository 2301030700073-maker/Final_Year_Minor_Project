package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.compose.ui.Modifier;
import androidx.core.app.ActivityRecreator;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.FastScroller;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.RoomOpenDelegate;
import androidx.viewpager.widget.ViewPager;
import com.google.android.exoplayer2.ExoPlayer;
import java.util.ArrayList;
import java.util.WeakHashMap;
import org.schabi.newpipe.R;
import org.schabi.newpipe.local.bookmark.BookmarkFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ItemTouchHelper extends RecyclerView.ItemDecoration {
    public final Callback mCallback;
    public ArrayList mDistances;
    public long mDragScrollStartTimeInMs;
    public float mDx;
    public float mDy;
    public GestureDetector mGestureDetector;
    public float mInitialTouchX;
    public float mInitialTouchY;
    public ItemTouchHelperGestureListener mItemTouchHelperGestureListener;
    public float mMaxSwipeVelocity;
    public RecyclerView mRecyclerView;
    public int mSelectedFlags;
    public float mSelectedStartX;
    public float mSelectedStartY;
    public int mSlop;
    public ArrayList mSwapTargets;
    public float mSwipeEscapeVelocity;
    public Rect mTmpRect;
    public VelocityTracker mVelocityTracker;
    public final ArrayList mPendingCleanup = new ArrayList();
    public final float[] mTmpPosition = new float[2];
    public RecyclerView.ViewHolder mSelected = null;
    public int mActivePointerId = -1;
    public int mActionState = 0;
    public final ArrayList mRecoverAnimations = new ArrayList();
    public final FastScroller.AnonymousClass1 mScrollRunnable = new FastScroller.AnonymousClass1(this, 1);
    public View mOverdrawChild = null;
    public final AnonymousClass2 mOnItemTouchListener = new RecyclerView.OnItemTouchListener() { // from class: androidx.recyclerview.widget.ItemTouchHelper.2
        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            int findPointerIndex;
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            itemTouchHelper.mGestureDetector.onTouchEvent(motionEvent);
            int actionMasked = motionEvent.getActionMasked();
            AnonymousClass3 anonymousClass3 = null;
            if (actionMasked == 0) {
                itemTouchHelper.mActivePointerId = motionEvent.getPointerId(0);
                itemTouchHelper.mInitialTouchX = motionEvent.getX();
                itemTouchHelper.mInitialTouchY = motionEvent.getY();
                VelocityTracker velocityTracker = itemTouchHelper.mVelocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                }
                itemTouchHelper.mVelocityTracker = VelocityTracker.obtain();
                if (itemTouchHelper.mSelected == null) {
                    ArrayList arrayList = itemTouchHelper.mRecoverAnimations;
                    if (!arrayList.isEmpty()) {
                        View findChildView = itemTouchHelper.findChildView(motionEvent);
                        int size = arrayList.size() - 1;
                        while (true) {
                            if (size < 0) {
                                break;
                            }
                            AnonymousClass3 anonymousClass32 = (AnonymousClass3) arrayList.get(size);
                            if (anonymousClass32.mViewHolder.itemView == findChildView) {
                                anonymousClass3 = anonymousClass32;
                                break;
                            }
                            size--;
                        }
                    }
                    if (anonymousClass3 != null) {
                        RecyclerView.ViewHolder viewHolder = anonymousClass3.mViewHolder;
                        itemTouchHelper.mInitialTouchX -= anonymousClass3.mX;
                        itemTouchHelper.mInitialTouchY -= anonymousClass3.mY;
                        itemTouchHelper.endRecoverAnimation(viewHolder, true);
                        if (itemTouchHelper.mPendingCleanup.remove(viewHolder.itemView)) {
                            itemTouchHelper.mCallback.clearView(itemTouchHelper.mRecyclerView, viewHolder);
                        }
                        itemTouchHelper.select(viewHolder, anonymousClass3.mActionState);
                        itemTouchHelper.updateDxDy(itemTouchHelper.mSelectedFlags, 0, motionEvent);
                    }
                }
            } else if (actionMasked == 3 || actionMasked == 1) {
                itemTouchHelper.mActivePointerId = -1;
                itemTouchHelper.select(null, 0);
            } else {
                int i = itemTouchHelper.mActivePointerId;
                if (i != -1 && (findPointerIndex = motionEvent.findPointerIndex(i)) >= 0) {
                    itemTouchHelper.checkSelectForSwipe(actionMasked, findPointerIndex, motionEvent);
                }
            }
            VelocityTracker velocityTracker2 = itemTouchHelper.mVelocityTracker;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            return itemTouchHelper.mSelected != null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final void onRequestDisallowInterceptTouchEvent(boolean z) {
            if (z) {
                ItemTouchHelper.this.select(null, 0);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final void onTouchEvent(MotionEvent motionEvent) {
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            FastScroller.AnonymousClass1 anonymousClass1 = itemTouchHelper.mScrollRunnable;
            itemTouchHelper.mGestureDetector.onTouchEvent(motionEvent);
            VelocityTracker velocityTracker = itemTouchHelper.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            if (itemTouchHelper.mActivePointerId == -1) {
                return;
            }
            int actionMasked = motionEvent.getActionMasked();
            int findPointerIndex = motionEvent.findPointerIndex(itemTouchHelper.mActivePointerId);
            if (findPointerIndex >= 0) {
                itemTouchHelper.checkSelectForSwipe(actionMasked, findPointerIndex, motionEvent);
            }
            RecyclerView.ViewHolder viewHolder = itemTouchHelper.mSelected;
            if (viewHolder == null) {
                return;
            }
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (findPointerIndex >= 0) {
                        itemTouchHelper.updateDxDy(itemTouchHelper.mSelectedFlags, findPointerIndex, motionEvent);
                        itemTouchHelper.moveIfNecessary(viewHolder);
                        itemTouchHelper.mRecyclerView.removeCallbacks(anonymousClass1);
                        anonymousClass1.run();
                        itemTouchHelper.mRecyclerView.invalidate();
                        return;
                    }
                    return;
                }
                if (actionMasked != 3) {
                    if (actionMasked != 6) {
                        return;
                    }
                    int actionIndex = motionEvent.getActionIndex();
                    if (motionEvent.getPointerId(actionIndex) == itemTouchHelper.mActivePointerId) {
                        itemTouchHelper.mActivePointerId = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                        itemTouchHelper.updateDxDy(itemTouchHelper.mSelectedFlags, actionIndex, motionEvent);
                        return;
                    }
                    return;
                }
                VelocityTracker velocityTracker2 = itemTouchHelper.mVelocityTracker;
                if (velocityTracker2 != null) {
                    velocityTracker2.clear();
                }
            }
            itemTouchHelper.select(null, 0);
            itemTouchHelper.mActivePointerId = -1;
        }
    };

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Callback {
        public static final ViewPager.AnonymousClass2 sDragScrollInterpolator = new ViewPager.AnonymousClass2(2);
        public static final ViewPager.AnonymousClass2 sDragViewScrollCapInterpolator = new ViewPager.AnonymousClass2(3);
        public int mCachedMaxScrollSpeed = -1;

        public static int convertToAbsoluteDirection(int i, int i2) {
            int i3;
            int i4 = i & 3158064;
            if (i4 == 0) {
                return i;
            }
            int i5 = i & (~i4);
            if (i2 == 0) {
                i3 = i4 >> 2;
            } else {
                int i6 = i4 >> 1;
                i5 |= (-3158065) & i6;
                i3 = (i6 & 3158064) >> 2;
            }
            return i5 | i3;
        }

        public static int convertToRelativeDirection(int i, int i2) {
            int i3;
            int i4 = i & 789516;
            if (i4 == 0) {
                return i;
            }
            int i5 = i & (~i4);
            if (i2 == 0) {
                i3 = i4 << 2;
            } else {
                int i6 = i4 << 1;
                i5 |= (-789517) & i6;
                i3 = (i6 & 789516) << 2;
            }
            return i5 | i3;
        }

        public static void onChildDraw(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, boolean z) {
            View view = viewHolder.itemView;
            if (z && view.getTag(R.id.item_touch_helper_previous_elevation) == null) {
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                Float valueOf = Float.valueOf(view.getElevation());
                int childCount = recyclerView.getChildCount();
                float f3 = 0.0f;
                for (int i = 0; i < childCount; i++) {
                    View childAt = recyclerView.getChildAt(i);
                    if (childAt != view) {
                        WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                        float elevation = childAt.getElevation();
                        if (elevation > f3) {
                            f3 = elevation;
                        }
                    }
                }
                view.setElevation(f3 + 1.0f);
                view.setTag(R.id.item_touch_helper_previous_elevation, valueOf);
            }
            view.setTranslationX(f);
            view.setTranslationY(f2);
        }

        public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            Object tag = view.getTag(R.id.item_touch_helper_previous_elevation);
            if (tag instanceof Float) {
                float floatValue = ((Float) tag).floatValue();
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                view.setElevation(floatValue);
            }
            view.setTag(R.id.item_touch_helper_previous_elevation, null);
            view.setTranslationX(0.0f);
            view.setTranslationY(0.0f);
        }

        public abstract int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder);

        public int interpolateOutOfBoundsScroll(RecyclerView recyclerView, int i, int i2, int i3, long j) {
            if (this.mCachedMaxScrollSpeed == -1) {
                this.mCachedMaxScrollSpeed = recyclerView.getResources().getDimensionPixelSize(R.dimen.item_touch_helper_max_drag_scroll_per_frame);
            }
            int interpolation = (int) (sDragScrollInterpolator.getInterpolation(j <= ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS ? j / 2000.0f : 1.0f) * ((int) (sDragViewScrollCapInterpolator.getInterpolation(Math.min(1.0f, (Math.abs(i2) * 1.0f) / i)) * ((int) Math.signum(i2)) * this.mCachedMaxScrollSpeed)));
            return interpolation == 0 ? i2 > 0 ? 1 : -1 : interpolation;
        }

        public boolean isItemViewSwipeEnabled() {
            return !(this instanceof BookmarkFragment.AnonymousClass3);
        }

        public boolean isLongPressDragEnabled() {
            return !(this instanceof BookmarkFragment.AnonymousClass3);
        }

        public abstract boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2);

        public abstract void onSwiped(RecyclerView.ViewHolder viewHolder);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ItemTouchHelperGestureListener extends GestureDetector.SimpleOnGestureListener {
        public boolean mShouldReactToLongPress = true;

        public ItemTouchHelperGestureListener() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final void onLongPress(MotionEvent motionEvent) {
            View findChildView;
            RecyclerView.ViewHolder childViewHolder;
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            Callback callback = itemTouchHelper.mCallback;
            if (!this.mShouldReactToLongPress || (findChildView = itemTouchHelper.findChildView(motionEvent)) == null || (childViewHolder = itemTouchHelper.mRecyclerView.getChildViewHolder(findChildView)) == null) {
                return;
            }
            RecyclerView recyclerView = itemTouchHelper.mRecyclerView;
            if ((Callback.convertToAbsoluteDirection(callback.getMovementFlags(recyclerView, childViewHolder), recyclerView.getLayoutDirection()) & 16711680) != 0) {
                int pointerId = motionEvent.getPointerId(0);
                int i = itemTouchHelper.mActivePointerId;
                if (pointerId == i) {
                    int findPointerIndex = motionEvent.findPointerIndex(i);
                    float x = motionEvent.getX(findPointerIndex);
                    float y = motionEvent.getY(findPointerIndex);
                    itemTouchHelper.mInitialTouchX = x;
                    itemTouchHelper.mInitialTouchY = y;
                    itemTouchHelper.mDy = 0.0f;
                    itemTouchHelper.mDx = 0.0f;
                    if (callback.isLongPressDragEnabled()) {
                        itemTouchHelper.select(childViewHolder, 2);
                    }
                }
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class SimpleCallback extends Callback {
        public final int mDefaultDragDirs;
        public final int mDefaultSwipeDirs;

        public SimpleCallback(int i, int i2) {
            this.mDefaultSwipeDirs = i2;
            this.mDefaultDragDirs = i;
        }

        public int getDragDirs(RecyclerView.ViewHolder viewHolder) {
            return this.mDefaultDragDirs;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public final int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            int dragDirs = getDragDirs(viewHolder);
            int swipeDirs = getSwipeDirs(viewHolder);
            return (swipeDirs << 8) | swipeDirs | dragDirs | (dragDirs << 16);
        }

        public int getSwipeDirs(RecyclerView.ViewHolder viewHolder) {
            return this.mDefaultSwipeDirs;
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.recyclerview.widget.ItemTouchHelper$2] */
    public ItemTouchHelper(Callback callback) {
        this.mCallback = callback;
    }

    public static boolean hitTest(View view, float f, float f2, float f3, float f4) {
        return f >= f3 && f <= f3 + ((float) view.getWidth()) && f2 >= f4 && f2 <= f4 + ((float) view.getHeight());
    }

    public final void attachToRecyclerView(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.mRecyclerView;
        if (recyclerView2 == recyclerView) {
            return;
        }
        AnonymousClass2 anonymousClass2 = this.mOnItemTouchListener;
        if (recyclerView2 != null) {
            recyclerView2.removeItemDecoration(this);
            RecyclerView recyclerView3 = this.mRecyclerView;
            recyclerView3.mOnItemTouchListeners.remove(anonymousClass2);
            if (recyclerView3.mInterceptingOnItemTouchListener == anonymousClass2) {
                recyclerView3.mInterceptingOnItemTouchListener = null;
            }
            ArrayList arrayList = this.mRecyclerView.mOnChildAttachStateListeners;
            if (arrayList != null) {
                arrayList.remove(this);
            }
            ArrayList arrayList2 = this.mRecoverAnimations;
            int size = arrayList2.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                AnonymousClass3 anonymousClass3 = (AnonymousClass3) arrayList2.get(0);
                anonymousClass3.mValueAnimator.cancel();
                this.mCallback.clearView(this.mRecyclerView, anonymousClass3.mViewHolder);
            }
            arrayList2.clear();
            this.mOverdrawChild = null;
            VelocityTracker velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.mVelocityTracker = null;
            }
            ItemTouchHelperGestureListener itemTouchHelperGestureListener = this.mItemTouchHelperGestureListener;
            if (itemTouchHelperGestureListener != null) {
                itemTouchHelperGestureListener.mShouldReactToLongPress = false;
                this.mItemTouchHelperGestureListener = null;
            }
            if (this.mGestureDetector != null) {
                this.mGestureDetector = null;
            }
        }
        this.mRecyclerView = recyclerView;
        if (recyclerView != null) {
            Resources resources = recyclerView.getResources();
            this.mSwipeEscapeVelocity = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_velocity);
            this.mMaxSwipeVelocity = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_max_velocity);
            this.mSlop = ViewConfiguration.get(this.mRecyclerView.getContext()).getScaledTouchSlop();
            this.mRecyclerView.addItemDecoration(this);
            this.mRecyclerView.mOnItemTouchListeners.add(anonymousClass2);
            RecyclerView recyclerView4 = this.mRecyclerView;
            if (recyclerView4.mOnChildAttachStateListeners == null) {
                recyclerView4.mOnChildAttachStateListeners = new ArrayList();
            }
            recyclerView4.mOnChildAttachStateListeners.add(this);
            this.mItemTouchHelperGestureListener = new ItemTouchHelperGestureListener();
            this.mGestureDetector = new GestureDetector(this.mRecyclerView.getContext(), this.mItemTouchHelperGestureListener);
        }
    }

    public final int checkHorizontalSwipe(int i) {
        if ((i & 12) == 0) {
            return 0;
        }
        int i2 = this.mDx > 0.0f ? 8 : 4;
        VelocityTracker velocityTracker = this.mVelocityTracker;
        Callback callback = this.mCallback;
        if (velocityTracker != null && this.mActivePointerId > -1) {
            float f = this.mMaxSwipeVelocity;
            callback.getClass();
            velocityTracker.computeCurrentVelocity(1000, f);
            float xVelocity = this.mVelocityTracker.getXVelocity(this.mActivePointerId);
            float yVelocity = this.mVelocityTracker.getYVelocity(this.mActivePointerId);
            int i3 = xVelocity > 0.0f ? 8 : 4;
            float abs = Math.abs(xVelocity);
            if ((i3 & i) != 0 && i2 == i3 && abs >= this.mSwipeEscapeVelocity && abs > Math.abs(yVelocity)) {
                return i3;
            }
        }
        float width = this.mRecyclerView.getWidth();
        callback.getClass();
        float f2 = width * 0.5f;
        if ((i & i2) == 0 || Math.abs(this.mDx) <= f2) {
            return 0;
        }
        return i2;
    }

    public final void checkSelectForSwipe(int i, int i2, MotionEvent motionEvent) {
        View findChildView;
        if (this.mSelected == null && i == 2 && this.mActionState != 2) {
            Callback callback = this.mCallback;
            if (callback.isItemViewSwipeEnabled() && this.mRecyclerView.getScrollState() != 1) {
                RecyclerView.LayoutManager layoutManager = this.mRecyclerView.getLayoutManager();
                int i3 = this.mActivePointerId;
                RecyclerView.ViewHolder viewHolder = null;
                if (i3 != -1) {
                    int findPointerIndex = motionEvent.findPointerIndex(i3);
                    float x = motionEvent.getX(findPointerIndex) - this.mInitialTouchX;
                    float y = motionEvent.getY(findPointerIndex) - this.mInitialTouchY;
                    float abs = Math.abs(x);
                    float abs2 = Math.abs(y);
                    float f = this.mSlop;
                    if ((abs >= f || abs2 >= f) && ((abs <= abs2 || !layoutManager.canScrollHorizontally()) && ((abs2 <= abs || !layoutManager.canScrollVertically()) && (findChildView = findChildView(motionEvent)) != null))) {
                        viewHolder = this.mRecyclerView.getChildViewHolder(findChildView);
                    }
                }
                if (viewHolder == null) {
                    return;
                }
                RecyclerView recyclerView = this.mRecyclerView;
                int convertToAbsoluteDirection = (Callback.convertToAbsoluteDirection(callback.getMovementFlags(recyclerView, viewHolder), recyclerView.getLayoutDirection()) & 65280) >> 8;
                if (convertToAbsoluteDirection == 0) {
                    return;
                }
                float x2 = motionEvent.getX(i2);
                float y2 = motionEvent.getY(i2);
                float f2 = x2 - this.mInitialTouchX;
                float f3 = y2 - this.mInitialTouchY;
                float abs3 = Math.abs(f2);
                float abs4 = Math.abs(f3);
                float f4 = this.mSlop;
                if (abs3 >= f4 || abs4 >= f4) {
                    if (abs3 > abs4) {
                        if (f2 < 0.0f && (convertToAbsoluteDirection & 4) == 0) {
                            return;
                        }
                        if (f2 > 0.0f && (convertToAbsoluteDirection & 8) == 0) {
                            return;
                        }
                    } else {
                        if (f3 < 0.0f && (convertToAbsoluteDirection & 1) == 0) {
                            return;
                        }
                        if (f3 > 0.0f && (convertToAbsoluteDirection & 2) == 0) {
                            return;
                        }
                    }
                    this.mDy = 0.0f;
                    this.mDx = 0.0f;
                    this.mActivePointerId = motionEvent.getPointerId(0);
                    select(viewHolder, 1);
                }
            }
        }
    }

    public final int checkVerticalSwipe(int i) {
        if ((i & 3) == 0) {
            return 0;
        }
        int i2 = this.mDy > 0.0f ? 2 : 1;
        VelocityTracker velocityTracker = this.mVelocityTracker;
        Callback callback = this.mCallback;
        if (velocityTracker != null && this.mActivePointerId > -1) {
            float f = this.mMaxSwipeVelocity;
            callback.getClass();
            velocityTracker.computeCurrentVelocity(1000, f);
            float xVelocity = this.mVelocityTracker.getXVelocity(this.mActivePointerId);
            float yVelocity = this.mVelocityTracker.getYVelocity(this.mActivePointerId);
            int i3 = yVelocity > 0.0f ? 2 : 1;
            float abs = Math.abs(yVelocity);
            if ((i3 & i) != 0 && i3 == i2 && abs >= this.mSwipeEscapeVelocity && abs > Math.abs(xVelocity)) {
                return i3;
            }
        }
        float height = this.mRecyclerView.getHeight();
        callback.getClass();
        float f2 = height * 0.5f;
        if ((i & i2) == 0 || Math.abs(this.mDy) <= f2) {
            return 0;
        }
        return i2;
    }

    public final void endRecoverAnimation(RecyclerView.ViewHolder viewHolder, boolean z) {
        ArrayList arrayList = this.mRecoverAnimations;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            AnonymousClass3 anonymousClass3 = (AnonymousClass3) arrayList.get(size);
            if (anonymousClass3.mViewHolder == viewHolder) {
                anonymousClass3.mOverridden |= z;
                if (!anonymousClass3.mEnded) {
                    anonymousClass3.mValueAnimator.cancel();
                }
                arrayList.remove(size);
                return;
            }
        }
    }

    public final View findChildView(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        RecyclerView.ViewHolder viewHolder = this.mSelected;
        if (viewHolder != null) {
            View view = viewHolder.itemView;
            if (hitTest(view, x, y, this.mSelectedStartX + this.mDx, this.mSelectedStartY + this.mDy)) {
                return view;
            }
        }
        ArrayList arrayList = this.mRecoverAnimations;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            AnonymousClass3 anonymousClass3 = (AnonymousClass3) arrayList.get(size);
            View view2 = anonymousClass3.mViewHolder.itemView;
            if (hitTest(view2, x, y, anonymousClass3.mX, anonymousClass3.mY)) {
                return view2;
            }
        }
        RecyclerView recyclerView = this.mRecyclerView;
        for (int childCount = recyclerView.mChildHelper.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = recyclerView.mChildHelper.getChildAt(childCount);
            float translationX = childAt.getTranslationX();
            float translationY = childAt.getTranslationY();
            if (x >= childAt.getLeft() + translationX && x <= childAt.getRight() + translationX && y >= childAt.getTop() + translationY && y <= childAt.getBottom() + translationY) {
                return childAt;
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.setEmpty();
    }

    public final void getSelectedDxDy(float[] fArr) {
        if ((this.mSelectedFlags & 12) != 0) {
            fArr[0] = (this.mSelectedStartX + this.mDx) - this.mSelected.itemView.getLeft();
        } else {
            fArr[0] = this.mSelected.itemView.getTranslationX();
        }
        if ((this.mSelectedFlags & 3) != 0) {
            fArr[1] = (this.mSelectedStartY + this.mDy) - this.mSelected.itemView.getTop();
        } else {
            fArr[1] = this.mSelected.itemView.getTranslationY();
        }
    }

    public final void moveIfNecessary(RecyclerView.ViewHolder viewHolder) {
        int bottom;
        int abs;
        int top;
        int abs2;
        int left;
        int abs3;
        int right;
        int abs4;
        int i;
        int i2;
        int i3;
        if (this.mRecyclerView.isLayoutRequested()) {
            return;
        }
        char c = 2;
        if (this.mActionState != 2) {
            return;
        }
        Callback callback = this.mCallback;
        callback.getClass();
        int i4 = (int) (this.mSelectedStartX + this.mDx);
        int i5 = (int) (this.mSelectedStartY + this.mDy);
        if (Math.abs(i5 - viewHolder.itemView.getTop()) >= viewHolder.itemView.getHeight() * 0.5f || Math.abs(i4 - viewHolder.itemView.getLeft()) >= viewHolder.itemView.getWidth() * 0.5f) {
            ArrayList arrayList = this.mSwapTargets;
            if (arrayList == null) {
                this.mSwapTargets = new ArrayList();
                this.mDistances = new ArrayList();
            } else {
                arrayList.clear();
                this.mDistances.clear();
            }
            int round = Math.round(this.mSelectedStartX + this.mDx);
            int round2 = Math.round(this.mSelectedStartY + this.mDy);
            int width = viewHolder.itemView.getWidth() + round;
            int height = viewHolder.itemView.getHeight() + round2;
            int i6 = (round + width) / 2;
            int i7 = (round2 + height) / 2;
            RecyclerView.LayoutManager layoutManager = this.mRecyclerView.getLayoutManager();
            int childCount = layoutManager.getChildCount();
            int i8 = 0;
            while (i8 < childCount) {
                char c2 = c;
                View childAt = layoutManager.getChildAt(i8);
                if (childAt != viewHolder.itemView && childAt.getBottom() >= round2 && childAt.getTop() <= height && childAt.getRight() >= round && childAt.getLeft() <= width) {
                    RecyclerView.ViewHolder childViewHolder = this.mRecyclerView.getChildViewHolder(childAt);
                    int abs5 = Math.abs(i6 - ((childAt.getRight() + childAt.getLeft()) / 2));
                    int abs6 = Math.abs(i7 - ((childAt.getBottom() + childAt.getTop()) / 2));
                    int i9 = (abs6 * abs6) + (abs5 * abs5);
                    i = i4;
                    int size = this.mSwapTargets.size();
                    i2 = i5;
                    i3 = round;
                    int i10 = 0;
                    int i11 = 0;
                    while (i10 < size) {
                        int i12 = size;
                        if (i9 <= ((Integer) this.mDistances.get(i10)).intValue()) {
                            break;
                        }
                        i11++;
                        i10++;
                        size = i12;
                    }
                    this.mSwapTargets.add(i11, childViewHolder);
                    this.mDistances.add(i11, Integer.valueOf(i9));
                } else {
                    i = i4;
                    i2 = i5;
                    i3 = round;
                }
                i8++;
                c = c2;
                i4 = i;
                i5 = i2;
                round = i3;
            }
            int i13 = i4;
            int i14 = i5;
            ArrayList arrayList2 = this.mSwapTargets;
            if (arrayList2.size() == 0) {
                return;
            }
            int width2 = viewHolder.itemView.getWidth() + i13;
            int height2 = viewHolder.itemView.getHeight() + i14;
            int left2 = i13 - viewHolder.itemView.getLeft();
            int top2 = i14 - viewHolder.itemView.getTop();
            int size2 = arrayList2.size();
            RecyclerView.ViewHolder viewHolder2 = null;
            int i15 = -1;
            for (int i16 = 0; i16 < size2; i16++) {
                RecyclerView.ViewHolder viewHolder3 = (RecyclerView.ViewHolder) arrayList2.get(i16);
                if (left2 > 0 && (right = viewHolder3.itemView.getRight() - width2) < 0 && viewHolder3.itemView.getRight() > viewHolder.itemView.getRight() && (abs4 = Math.abs(right)) > i15) {
                    i15 = abs4;
                    viewHolder2 = viewHolder3;
                }
                if (left2 < 0 && (left = viewHolder3.itemView.getLeft() - i13) > 0 && viewHolder3.itemView.getLeft() < viewHolder.itemView.getLeft() && (abs3 = Math.abs(left)) > i15) {
                    i15 = abs3;
                    viewHolder2 = viewHolder3;
                }
                if (top2 < 0 && (top = viewHolder3.itemView.getTop() - i14) > 0 && viewHolder3.itemView.getTop() < viewHolder.itemView.getTop() && (abs2 = Math.abs(top)) > i15) {
                    i15 = abs2;
                    viewHolder2 = viewHolder3;
                }
                if (top2 > 0 && (bottom = viewHolder3.itemView.getBottom() - height2) < 0 && viewHolder3.itemView.getBottom() > viewHolder.itemView.getBottom() && (abs = Math.abs(bottom)) > i15) {
                    i15 = abs;
                    viewHolder2 = viewHolder3;
                }
            }
            if (viewHolder2 == null) {
                this.mSwapTargets.clear();
                this.mDistances.clear();
                return;
            }
            int absoluteAdapterPosition = viewHolder2.getAbsoluteAdapterPosition();
            viewHolder.getAbsoluteAdapterPosition();
            if (callback.onMove(this.mRecyclerView, viewHolder, viewHolder2)) {
                RecyclerView recyclerView = this.mRecyclerView;
                RecyclerView.LayoutManager layoutManager2 = recyclerView.getLayoutManager();
                if (!(layoutManager2 instanceof LinearLayoutManager)) {
                    if (layoutManager2.canScrollHorizontally()) {
                        if (RecyclerView.LayoutManager.getDecoratedLeft(viewHolder2.itemView) <= recyclerView.getPaddingLeft()) {
                            recyclerView.scrollToPosition(absoluteAdapterPosition);
                        }
                        if (RecyclerView.LayoutManager.getDecoratedRight(viewHolder2.itemView) >= recyclerView.getWidth() - recyclerView.getPaddingRight()) {
                            recyclerView.scrollToPosition(absoluteAdapterPosition);
                        }
                    }
                    if (layoutManager2.canScrollVertically()) {
                        if (RecyclerView.LayoutManager.getDecoratedTop(viewHolder2.itemView) <= recyclerView.getPaddingTop()) {
                            recyclerView.scrollToPosition(absoluteAdapterPosition);
                        }
                        if (RecyclerView.LayoutManager.getDecoratedBottom(viewHolder2.itemView) >= recyclerView.getHeight() - recyclerView.getPaddingBottom()) {
                            recyclerView.scrollToPosition(absoluteAdapterPosition);
                            return;
                        }
                        return;
                    }
                    return;
                }
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager2;
                View view = viewHolder.itemView;
                View view2 = viewHolder2.itemView;
                linearLayoutManager.assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
                linearLayoutManager.ensureLayoutState();
                linearLayoutManager.resolveShouldLayoutReverse();
                int position = RecyclerView.LayoutManager.getPosition(view);
                int position2 = RecyclerView.LayoutManager.getPosition(view2);
                char c3 = position < position2 ? (char) 1 : (char) 65535;
                boolean z = linearLayoutManager.mShouldReverseLayout;
                RoomOpenDelegate roomOpenDelegate = linearLayoutManager.mOrientationHelper;
                if (z) {
                    if (c3 == 1) {
                        linearLayoutManager.scrollToPositionWithOffset(position2, roomOpenDelegate.getEndAfterPadding() - (linearLayoutManager.mOrientationHelper.getDecoratedMeasurement(view) + linearLayoutManager.mOrientationHelper.getDecoratedStart(view2)));
                        return;
                    } else {
                        linearLayoutManager.scrollToPositionWithOffset(position2, roomOpenDelegate.getEndAfterPadding() - linearLayoutManager.mOrientationHelper.getDecoratedEnd(view2));
                        return;
                    }
                }
                if (c3 == 65535) {
                    linearLayoutManager.scrollToPositionWithOffset(position2, roomOpenDelegate.getDecoratedStart(view2));
                } else {
                    linearLayoutManager.scrollToPositionWithOffset(position2, roomOpenDelegate.getDecoratedEnd(view2) - linearLayoutManager.mOrientationHelper.getDecoratedMeasurement(view));
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void onDraw(Canvas canvas, RecyclerView recyclerView) {
        float f;
        float f2;
        if (this.mSelected != null) {
            float[] fArr = this.mTmpPosition;
            getSelectedDxDy(fArr);
            f = fArr[0];
            f2 = fArr[1];
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        RecyclerView.ViewHolder viewHolder = this.mSelected;
        this.mCallback.getClass();
        ArrayList arrayList = this.mRecoverAnimations;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AnonymousClass3 anonymousClass3 = (AnonymousClass3) arrayList.get(i);
            RecyclerView.ViewHolder viewHolder2 = anonymousClass3.mViewHolder;
            float f3 = anonymousClass3.mStartDx;
            float f4 = anonymousClass3.mTargetX;
            if (f3 == f4) {
                anonymousClass3.mX = viewHolder2.itemView.getTranslationX();
            } else {
                anonymousClass3.mX = Modifier.CC.m(f4, f3, anonymousClass3.mFraction, f3);
            }
            float f5 = anonymousClass3.mStartDy;
            float f6 = anonymousClass3.mTargetY;
            if (f5 == f6) {
                anonymousClass3.mY = viewHolder2.itemView.getTranslationY();
            } else {
                anonymousClass3.mY = Modifier.CC.m(f6, f5, anonymousClass3.mFraction, f5);
            }
            int save = canvas.save();
            Callback.onChildDraw(recyclerView, anonymousClass3.mViewHolder, anonymousClass3.mX, anonymousClass3.mY, false);
            canvas.restoreToCount(save);
        }
        if (viewHolder != null) {
            int save2 = canvas.save();
            Callback.onChildDraw(recyclerView, viewHolder, f, f2, true);
            canvas.restoreToCount(save2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
        boolean z = false;
        if (this.mSelected != null) {
            float[] fArr = this.mTmpPosition;
            getSelectedDxDy(fArr);
            float f = fArr[0];
            float f2 = fArr[1];
        }
        RecyclerView.ViewHolder viewHolder = this.mSelected;
        this.mCallback.getClass();
        ArrayList arrayList = this.mRecoverAnimations;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AnonymousClass3 anonymousClass3 = (AnonymousClass3) arrayList.get(i);
            int save = canvas.save();
            View view = anonymousClass3.mViewHolder.itemView;
            canvas.restoreToCount(save);
        }
        if (viewHolder != null) {
            canvas.restoreToCount(canvas.save());
        }
        for (int i2 = size - 1; i2 >= 0; i2--) {
            AnonymousClass3 anonymousClass32 = (AnonymousClass3) arrayList.get(i2);
            boolean z2 = anonymousClass32.mEnded;
            if (z2 && !anonymousClass32.mIsPendingCleanup) {
                arrayList.remove(i2);
            } else if (!z2) {
                z = true;
            }
        }
        if (z) {
            recyclerView.invalidate();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x008e, code lost:
    
        if (r8 > 0) goto L43;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00f1  */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void select(androidx.recyclerview.widget.RecyclerView.ViewHolder r21, int r22) {
        /*
            Method dump skipped, instructions count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.ItemTouchHelper.select(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
    }

    public final void startDrag(RecyclerView.ViewHolder viewHolder) {
        RecyclerView recyclerView = this.mRecyclerView;
        if ((Callback.convertToAbsoluteDirection(this.mCallback.getMovementFlags(recyclerView, viewHolder), recyclerView.getLayoutDirection()) & 16711680) == 0) {
            Log.e("ItemTouchHelper", "Start drag has been called but dragging is not enabled");
            return;
        }
        if (viewHolder.itemView.getParent() != this.mRecyclerView) {
            Log.e("ItemTouchHelper", "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper.");
            return;
        }
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
        }
        this.mVelocityTracker = VelocityTracker.obtain();
        this.mDy = 0.0f;
        this.mDx = 0.0f;
        select(viewHolder, 2);
    }

    public final void updateDxDy(int i, int i2, MotionEvent motionEvent) {
        float x = motionEvent.getX(i2);
        float y = motionEvent.getY(i2);
        float f = x - this.mInitialTouchX;
        this.mDx = f;
        this.mDy = y - this.mInitialTouchY;
        if ((i & 4) == 0) {
            this.mDx = Math.max(0.0f, f);
        }
        if ((i & 8) == 0) {
            this.mDx = Math.min(0.0f, this.mDx);
        }
        if ((i & 1) == 0) {
            this.mDy = Math.max(0.0f, this.mDy);
        }
        if ((i & 2) == 0) {
            this.mDy = Math.min(0.0f, this.mDy);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.recyclerview.widget.ItemTouchHelper$3, reason: invalid class name */
    public final class AnonymousClass3 implements Animator.AnimatorListener {
        public final int mActionState;
        public float mFraction;
        public boolean mIsPendingCleanup;
        public final float mStartDx;
        public final float mStartDy;
        public final float mTargetX;
        public final float mTargetY;
        public final ValueAnimator mValueAnimator;
        public final RecyclerView.ViewHolder mViewHolder;
        public float mX;
        public float mY;
        public final /* synthetic */ RecyclerView.ViewHolder val$prevSelected;
        public final /* synthetic */ int val$swipeDir;
        public boolean mOverridden = false;
        public boolean mEnded = false;

        public AnonymousClass3(RecyclerView.ViewHolder viewHolder, int i, float f, float f2, float f3, float f4, int i2, RecyclerView.ViewHolder viewHolder2) {
            this.val$swipeDir = i2;
            this.val$prevSelected = viewHolder2;
            this.mActionState = i;
            this.mViewHolder = viewHolder;
            this.mStartDx = f;
            this.mStartDy = f2;
            this.mTargetX = f3;
            this.mTargetY = f4;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.mValueAnimator = ofFloat;
            ofFloat.addUpdateListener(new FastScroller.AnimatorUpdater(this, 1));
            ofFloat.setTarget(viewHolder.itemView);
            ofFloat.addListener(this);
            this.mFraction = 0.0f;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.mFraction = 1.0f;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            onAnimationEnd$androidx$recyclerview$widget$ItemTouchHelper$RecoverAnimation(animator);
            if (this.mOverridden) {
                return;
            }
            int i = this.val$swipeDir;
            RecyclerView.ViewHolder viewHolder = this.val$prevSelected;
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            if (i <= 0) {
                itemTouchHelper.mCallback.clearView(itemTouchHelper.mRecyclerView, viewHolder);
            } else {
                itemTouchHelper.mPendingCleanup.add(viewHolder.itemView);
                this.mIsPendingCleanup = true;
                if (i > 0) {
                    itemTouchHelper.mRecyclerView.post(new ActivityRecreator.AnonymousClass1(itemTouchHelper, this, i));
                }
            }
            View view = itemTouchHelper.mOverdrawChild;
            View view2 = viewHolder.itemView;
            if (view == view2 && view2 == view) {
                itemTouchHelper.mOverdrawChild = null;
            }
        }

        public final void onAnimationEnd$androidx$recyclerview$widget$ItemTouchHelper$RecoverAnimation(Animator animator) {
            if (!this.mEnded) {
                this.mViewHolder.setIsRecyclable(true);
            }
            this.mEnded = true;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }
    }
}
