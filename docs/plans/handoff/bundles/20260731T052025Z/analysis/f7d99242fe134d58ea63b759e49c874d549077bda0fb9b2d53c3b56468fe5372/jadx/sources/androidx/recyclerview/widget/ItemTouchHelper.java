package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.TextView;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.impl.utils.futures.ListFuture;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.util.RelationUtil;
import androidx.viewpager.widget.ViewPager;
import app.k9mail.ui.utils.itemtouchhelper.ItemTouchHelper;
import com.fsck.k9.R;
import com.fsck.k9.ui.messagelist.MessageListSwipeCallback;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.textfield.TextInputLayout;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ItemTouchHelper extends RecyclerView.ItemDecoration implements RecyclerView.OnChildAttachStateChangeListener {
    public final SimpleCallback mCallback;
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
    public final Fragment.AnonymousClass1 mScrollRunnable = new Fragment.AnonymousClass1(22, this);
    public View mOverdrawChild = null;
    public final AnonymousClass2 mOnItemTouchListener = new AnonymousClass2(this, 0);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.recyclerview.widget.ItemTouchHelper$2, reason: invalid class name */
    public final class AnonymousClass2 implements RecyclerView.OnItemTouchListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ RecyclerView.ItemDecoration this$0;

        public /* synthetic */ AnonymousClass2(RecyclerView.ItemDecoration itemDecoration, int i) {
            this.$r8$classId = i;
            this.this$0 = itemDecoration;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            int findPointerIndex;
            int findPointerIndex2;
            int i = this.$r8$classId;
            RecyclerView.ItemDecoration itemDecoration = this.this$0;
            AnonymousClass3 anonymousClass3 = null;
            r5 = null;
            ItemTouchHelper.RecoverAnimation recoverAnimation = null;
            anonymousClass3 = null;
            switch (i) {
                case 0:
                    ItemTouchHelper itemTouchHelper = (ItemTouchHelper) itemDecoration;
                    itemTouchHelper.mGestureDetector.onTouchEvent(motionEvent);
                    int actionMasked = motionEvent.getActionMasked();
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
                                    if (size >= 0) {
                                        AnonymousClass3 anonymousClass32 = (AnonymousClass3) arrayList.get(size);
                                        if (anonymousClass32.mViewHolder.itemView == findChildView) {
                                            anonymousClass3 = anonymousClass32;
                                        } else {
                                            size--;
                                        }
                                    }
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
                        int i2 = itemTouchHelper.mActivePointerId;
                        if (i2 != -1 && (findPointerIndex = motionEvent.findPointerIndex(i2)) >= 0) {
                            itemTouchHelper.checkSelectForSwipe(actionMasked, findPointerIndex, motionEvent);
                        }
                    }
                    VelocityTracker velocityTracker2 = itemTouchHelper.mVelocityTracker;
                    if (velocityTracker2 != null) {
                        velocityTracker2.addMovement(motionEvent);
                    }
                    if (itemTouchHelper.mSelected != null) {
                        break;
                    }
                    break;
                default:
                    app.k9mail.ui.utils.itemtouchhelper.ItemTouchHelper itemTouchHelper2 = (app.k9mail.ui.utils.itemtouchhelper.ItemTouchHelper) itemDecoration;
                    itemTouchHelper2.mGestureDetector.onTouchEvent(motionEvent);
                    int actionMasked2 = motionEvent.getActionMasked();
                    if (actionMasked2 == 0) {
                        itemTouchHelper2.mActivePointerId = motionEvent.getPointerId(0);
                        itemTouchHelper2.mInitialTouchX = motionEvent.getX();
                        itemTouchHelper2.mInitialTouchY = motionEvent.getY();
                        VelocityTracker velocityTracker3 = itemTouchHelper2.mVelocityTracker;
                        if (velocityTracker3 != null) {
                            velocityTracker3.recycle();
                        }
                        itemTouchHelper2.mVelocityTracker = VelocityTracker.obtain();
                        if (itemTouchHelper2.mSelected == null) {
                            ArrayList arrayList2 = itemTouchHelper2.mRecoverAnimations;
                            if (!arrayList2.isEmpty()) {
                                View findChildView2 = itemTouchHelper2.findChildView(motionEvent);
                                int size2 = arrayList2.size() - 1;
                                while (true) {
                                    if (size2 >= 0) {
                                        ItemTouchHelper.RecoverAnimation recoverAnimation2 = (ItemTouchHelper.RecoverAnimation) arrayList2.get(size2);
                                        if (recoverAnimation2.mViewHolder.itemView == findChildView2) {
                                            recoverAnimation = recoverAnimation2;
                                        } else {
                                            size2--;
                                        }
                                    }
                                }
                            }
                            if (recoverAnimation != null) {
                                RecyclerView.ViewHolder viewHolder2 = recoverAnimation.mViewHolder;
                                itemTouchHelper2.mInitialTouchX -= recoverAnimation.mX;
                                itemTouchHelper2.mInitialTouchY -= recoverAnimation.mY;
                                itemTouchHelper2.endRecoverAnimation(viewHolder2, true);
                                if (itemTouchHelper2.mPendingCleanup.remove(viewHolder2.itemView)) {
                                    itemTouchHelper2.mCallback.clearView(itemTouchHelper2.mRecyclerView, viewHolder2);
                                }
                                itemTouchHelper2.select(viewHolder2, recoverAnimation.mActionState);
                                itemTouchHelper2.updateDxDy(itemTouchHelper2.mSelectedFlags, 0, motionEvent);
                            }
                        }
                    } else if (actionMasked2 == 3 || actionMasked2 == 1) {
                        itemTouchHelper2.mActivePointerId = -1;
                        itemTouchHelper2.select(null, 0);
                    } else {
                        int i3 = itemTouchHelper2.mActivePointerId;
                        if (i3 != -1 && (findPointerIndex2 = motionEvent.findPointerIndex(i3)) >= 0) {
                            itemTouchHelper2.checkSelectForSwipe(actionMasked2, findPointerIndex2, motionEvent);
                        }
                    }
                    VelocityTracker velocityTracker4 = itemTouchHelper2.mVelocityTracker;
                    if (velocityTracker4 != null) {
                        velocityTracker4.addMovement(motionEvent);
                    }
                    if (itemTouchHelper2.mSelected != null) {
                        break;
                    }
                    break;
            }
            return true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final void onRequestDisallowInterceptTouchEvent(boolean z) {
            int i = this.$r8$classId;
            RecyclerView.ItemDecoration itemDecoration = this.this$0;
            switch (i) {
                case 0:
                    if (z) {
                        ((ItemTouchHelper) itemDecoration).select(null, 0);
                        break;
                    }
                    break;
                default:
                    if (z) {
                        ((app.k9mail.ui.utils.itemtouchhelper.ItemTouchHelper) itemDecoration).select(null, 0);
                        break;
                    }
                    break;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final void onTouchEvent(MotionEvent motionEvent) {
            int i = this.$r8$classId;
            RecyclerView.ItemDecoration itemDecoration = this.this$0;
            switch (i) {
                case 0:
                    ItemTouchHelper itemTouchHelper = (ItemTouchHelper) itemDecoration;
                    Fragment.AnonymousClass1 anonymousClass1 = itemTouchHelper.mScrollRunnable;
                    itemTouchHelper.mGestureDetector.onTouchEvent(motionEvent);
                    VelocityTracker velocityTracker = itemTouchHelper.mVelocityTracker;
                    if (velocityTracker != null) {
                        velocityTracker.addMovement(motionEvent);
                    }
                    if (itemTouchHelper.mActivePointerId != -1) {
                        int actionMasked = motionEvent.getActionMasked();
                        int findPointerIndex = motionEvent.findPointerIndex(itemTouchHelper.mActivePointerId);
                        if (findPointerIndex >= 0) {
                            itemTouchHelper.checkSelectForSwipe(actionMasked, findPointerIndex, motionEvent);
                        }
                        RecyclerView.ViewHolder viewHolder = itemTouchHelper.mSelected;
                        if (viewHolder != null) {
                            if (actionMasked != 1) {
                                if (actionMasked == 2) {
                                    if (findPointerIndex >= 0) {
                                        itemTouchHelper.updateDxDy(itemTouchHelper.mSelectedFlags, findPointerIndex, motionEvent);
                                        itemTouchHelper.moveIfNecessary(viewHolder);
                                        itemTouchHelper.mRecyclerView.removeCallbacks(anonymousClass1);
                                        anonymousClass1.run();
                                        itemTouchHelper.mRecyclerView.invalidate();
                                        break;
                                    }
                                } else if (actionMasked == 3) {
                                    VelocityTracker velocityTracker2 = itemTouchHelper.mVelocityTracker;
                                    if (velocityTracker2 != null) {
                                        velocityTracker2.clear();
                                    }
                                } else if (actionMasked == 6) {
                                    int actionIndex = motionEvent.getActionIndex();
                                    if (motionEvent.getPointerId(actionIndex) == itemTouchHelper.mActivePointerId) {
                                        itemTouchHelper.mActivePointerId = motionEvent.getPointerId(actionIndex != 0 ? 0 : 1);
                                        itemTouchHelper.updateDxDy(itemTouchHelper.mSelectedFlags, actionIndex, motionEvent);
                                        break;
                                    }
                                }
                            }
                            itemTouchHelper.select(null, 0);
                            itemTouchHelper.mActivePointerId = -1;
                            break;
                        }
                    }
                    break;
                default:
                    app.k9mail.ui.utils.itemtouchhelper.ItemTouchHelper itemTouchHelper2 = (app.k9mail.ui.utils.itemtouchhelper.ItemTouchHelper) itemDecoration;
                    Fragment.AnonymousClass1 anonymousClass12 = itemTouchHelper2.mScrollRunnable;
                    itemTouchHelper2.mGestureDetector.onTouchEvent(motionEvent);
                    VelocityTracker velocityTracker3 = itemTouchHelper2.mVelocityTracker;
                    if (velocityTracker3 != null) {
                        velocityTracker3.addMovement(motionEvent);
                    }
                    if (itemTouchHelper2.mActivePointerId != -1) {
                        int actionMasked2 = motionEvent.getActionMasked();
                        int findPointerIndex2 = motionEvent.findPointerIndex(itemTouchHelper2.mActivePointerId);
                        if (findPointerIndex2 >= 0) {
                            itemTouchHelper2.checkSelectForSwipe(actionMasked2, findPointerIndex2, motionEvent);
                        }
                        RecyclerView.ViewHolder viewHolder2 = itemTouchHelper2.mSelected;
                        if (viewHolder2 != null) {
                            if (actionMasked2 != 1) {
                                if (actionMasked2 == 2) {
                                    if (findPointerIndex2 >= 0) {
                                        itemTouchHelper2.updateDxDy(itemTouchHelper2.mSelectedFlags, findPointerIndex2, motionEvent);
                                        itemTouchHelper2.moveIfNecessary(viewHolder2);
                                        itemTouchHelper2.mRecyclerView.removeCallbacks(anonymousClass12);
                                        anonymousClass12.run();
                                        itemTouchHelper2.mRecyclerView.invalidate();
                                        break;
                                    }
                                } else if (actionMasked2 == 3) {
                                    VelocityTracker velocityTracker4 = itemTouchHelper2.mVelocityTracker;
                                    if (velocityTracker4 != null) {
                                        velocityTracker4.clear();
                                    }
                                } else if (actionMasked2 == 6) {
                                    int actionIndex2 = motionEvent.getActionIndex();
                                    if (motionEvent.getPointerId(actionIndex2) == itemTouchHelper2.mActivePointerId) {
                                        itemTouchHelper2.mActivePointerId = motionEvent.getPointerId(actionIndex2 != 0 ? 0 : 1);
                                        itemTouchHelper2.updateDxDy(itemTouchHelper2.mSelectedFlags, actionIndex2, motionEvent);
                                        break;
                                    }
                                }
                            }
                            itemTouchHelper2.select(null, 0);
                            itemTouchHelper2.mActivePointerId = -1;
                            break;
                        }
                    }
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ItemTouchHelperGestureListener extends GestureDetector.SimpleOnGestureListener {
        public final /* synthetic */ int $r8$classId;
        public boolean mShouldReactToLongPress = true;
        public final /* synthetic */ RecyclerView.ItemDecoration this$0;

        public /* synthetic */ ItemTouchHelperGestureListener(RecyclerView.ItemDecoration itemDecoration, int i) {
            this.$r8$classId = i;
            this.this$0 = itemDecoration;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onDown(MotionEvent motionEvent) {
            switch (this.$r8$classId) {
            }
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final void onLongPress(MotionEvent motionEvent) {
            View findChildView;
            RecyclerView.ViewHolder childViewHolder;
            View findChildView2;
            RecyclerView.ViewHolder childViewHolder2;
            int i = this.$r8$classId;
            RecyclerView.ItemDecoration itemDecoration = this.this$0;
            switch (i) {
                case 0:
                    ItemTouchHelper itemTouchHelper = (ItemTouchHelper) itemDecoration;
                    SimpleCallback simpleCallback = itemTouchHelper.mCallback;
                    if (this.mShouldReactToLongPress && (findChildView = itemTouchHelper.findChildView(motionEvent)) != null && (childViewHolder = itemTouchHelper.mRecyclerView.getChildViewHolder(findChildView)) != null) {
                        RecyclerView recyclerView = itemTouchHelper.mRecyclerView;
                        int dragDirs = simpleCallback.getDragDirs(recyclerView, childViewHolder);
                        int i2 = simpleCallback.mDefaultSwipeDirs;
                        if ((16711680 & SimpleCallback.convertToAbsoluteDirection((dragDirs << 16) | (i2 << 8) | i2 | dragDirs, recyclerView.getLayoutDirection())) != 0) {
                            int pointerId = motionEvent.getPointerId(0);
                            int i3 = itemTouchHelper.mActivePointerId;
                            if (pointerId == i3) {
                                int findPointerIndex = motionEvent.findPointerIndex(i3);
                                float x = motionEvent.getX(findPointerIndex);
                                float y = motionEvent.getY(findPointerIndex);
                                itemTouchHelper.mInitialTouchX = x;
                                itemTouchHelper.mInitialTouchY = y;
                                itemTouchHelper.mDy = 0.0f;
                                itemTouchHelper.mDx = 0.0f;
                                if (simpleCallback.isLongPressDragEnabled()) {
                                    itemTouchHelper.select(childViewHolder, 2);
                                    break;
                                }
                            }
                        }
                    }
                    break;
                default:
                    app.k9mail.ui.utils.itemtouchhelper.ItemTouchHelper itemTouchHelper2 = (app.k9mail.ui.utils.itemtouchhelper.ItemTouchHelper) itemDecoration;
                    MessageListSwipeCallback messageListSwipeCallback = itemTouchHelper2.mCallback;
                    if (this.mShouldReactToLongPress && (findChildView2 = itemTouchHelper2.findChildView(motionEvent)) != null && (childViewHolder2 = itemTouchHelper2.mRecyclerView.getChildViewHolder(findChildView2)) != null) {
                        RecyclerView recyclerView2 = itemTouchHelper2.mRecyclerView;
                        if ((16711680 & ItemTouchHelper.Callback.convertToAbsoluteDirection(messageListSwipeCallback.getMovementFlags(recyclerView2, childViewHolder2), recyclerView2.getLayoutDirection())) != 0) {
                            int pointerId2 = motionEvent.getPointerId(0);
                            int i4 = itemTouchHelper2.mActivePointerId;
                            if (pointerId2 == i4) {
                                int findPointerIndex2 = motionEvent.findPointerIndex(i4);
                                float x2 = motionEvent.getX(findPointerIndex2);
                                float y2 = motionEvent.getY(findPointerIndex2);
                                itemTouchHelper2.mInitialTouchX = x2;
                                itemTouchHelper2.mInitialTouchY = y2;
                                itemTouchHelper2.mDy = 0.0f;
                                itemTouchHelper2.mDx = 0.0f;
                                messageListSwipeCallback.getClass();
                                itemTouchHelper2.select(childViewHolder2, 2);
                                break;
                            }
                        }
                    }
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface ViewDropHandler {
        void prepareForDrop(View view, View view2);
    }

    public ItemTouchHelper(SimpleCallback simpleCallback) {
        this.mCallback = simpleCallback;
    }

    public static boolean hitTest(View view, float f, float f2, float f3, float f4) {
        return f >= f3 && f <= f3 + ((float) view.getWidth()) && f2 >= f4 && f2 <= f4 + ((float) view.getHeight());
    }

    public final void attachToRecyclerView(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.mRecyclerView;
        if (recyclerView2 == recyclerView) {
            return;
        }
        int i = 0;
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
            for (int size = arrayList2.size() - 1; size >= 0; size--) {
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
        Resources resources = recyclerView.getResources();
        this.mSwipeEscapeVelocity = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_velocity);
        this.mMaxSwipeVelocity = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_max_velocity);
        this.mSlop = ViewConfiguration.get(this.mRecyclerView.getContext()).getScaledTouchSlop();
        this.mRecyclerView.addItemDecoration(this);
        this.mRecyclerView.mOnItemTouchListeners.add(anonymousClass2);
        this.mRecyclerView.addOnChildAttachStateChangeListener(this);
        this.mItemTouchHelperGestureListener = new ItemTouchHelperGestureListener(this, i);
        this.mGestureDetector = new GestureDetector(this.mRecyclerView.getContext(), this.mItemTouchHelperGestureListener);
    }

    public final int checkHorizontalSwipe(RecyclerView.ViewHolder viewHolder, int i) {
        if ((i & 12) == 0) {
            return 0;
        }
        int i2 = this.mDx > 0.0f ? 8 : 4;
        VelocityTracker velocityTracker = this.mVelocityTracker;
        SimpleCallback simpleCallback = this.mCallback;
        if (velocityTracker != null && this.mActivePointerId > -1) {
            velocityTracker.computeCurrentVelocity(1000, simpleCallback.getSwipeVelocityThreshold(this.mMaxSwipeVelocity));
            float xVelocity = this.mVelocityTracker.getXVelocity(this.mActivePointerId);
            float yVelocity = this.mVelocityTracker.getYVelocity(this.mActivePointerId);
            int i3 = xVelocity > 0.0f ? 8 : 4;
            float abs = Math.abs(xVelocity);
            if ((i3 & i) != 0 && i2 == i3 && abs >= this.mSwipeEscapeVelocity && abs > Math.abs(yVelocity)) {
                return i3;
            }
        }
        float swipeThreshold = simpleCallback.getSwipeThreshold(viewHolder) * this.mRecyclerView.getWidth();
        if ((i & i2) == 0 || Math.abs(this.mDx) <= swipeThreshold) {
            return 0;
        }
        return i2;
    }

    public final void checkSelectForSwipe(int i, int i2, MotionEvent motionEvent) {
        View findChildView;
        if (this.mSelected == null && i == 2 && this.mActionState != 2) {
            SimpleCallback simpleCallback = this.mCallback;
            simpleCallback.getClass();
            if (this.mRecyclerView.getScrollState() == 1) {
                return;
            }
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
            int dragDirs = simpleCallback.getDragDirs(recyclerView, viewHolder);
            int i4 = simpleCallback.mDefaultSwipeDirs;
            int convertToAbsoluteDirection = (SimpleCallback.convertToAbsoluteDirection(((i4 << 8) | (i4 | dragDirs)) | (dragDirs << 16), recyclerView.getLayoutDirection()) & 65280) >> 8;
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

    public final int checkVerticalSwipe(RecyclerView.ViewHolder viewHolder, int i) {
        if ((i & 3) == 0) {
            return 0;
        }
        int i2 = this.mDy > 0.0f ? 2 : 1;
        VelocityTracker velocityTracker = this.mVelocityTracker;
        SimpleCallback simpleCallback = this.mCallback;
        if (velocityTracker != null && this.mActivePointerId > -1) {
            velocityTracker.computeCurrentVelocity(1000, simpleCallback.getSwipeVelocityThreshold(this.mMaxSwipeVelocity));
            float xVelocity = this.mVelocityTracker.getXVelocity(this.mActivePointerId);
            float yVelocity = this.mVelocityTracker.getYVelocity(this.mActivePointerId);
            int i3 = yVelocity > 0.0f ? 2 : 1;
            float abs = Math.abs(yVelocity);
            if ((i3 & i) != 0 && i3 == i2 && abs >= this.mSwipeEscapeVelocity && abs > Math.abs(xVelocity)) {
                return i3;
            }
        }
        float swipeThreshold = simpleCallback.getSwipeThreshold(viewHolder) * this.mRecyclerView.getHeight();
        if ((i & i2) == 0 || Math.abs(this.mDy) <= swipeThreshold) {
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
        return this.mRecyclerView.findChildViewUnder(x, y);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView) {
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
        ArrayList arrayList;
        int bottom;
        int abs;
        int top;
        int abs2;
        int left;
        int abs3;
        int right;
        int abs4;
        int i;
        View view;
        int i2;
        int i3;
        if (!this.mRecyclerView.isLayoutRequested() && this.mActionState == 2) {
            SimpleCallback simpleCallback = this.mCallback;
            simpleCallback.getClass();
            int i4 = (int) (this.mSelectedStartX + this.mDx);
            int i5 = (int) (this.mSelectedStartY + this.mDy);
            View view2 = viewHolder.itemView;
            if (Math.abs(i5 - view2.getTop()) >= view2.getHeight() * 0.5f || Math.abs(i4 - view2.getLeft()) >= view2.getWidth() * 0.5f) {
                ArrayList arrayList2 = this.mSwapTargets;
                if (arrayList2 == null) {
                    this.mSwapTargets = new ArrayList();
                    this.mDistances = new ArrayList();
                } else {
                    arrayList2.clear();
                    this.mDistances.clear();
                }
                int round = Math.round(this.mSelectedStartX + this.mDx);
                int round2 = Math.round(this.mSelectedStartY + this.mDy);
                int width = view2.getWidth() + round;
                int height = view2.getHeight() + round2;
                int i6 = (round + width) / 2;
                int i7 = (round2 + height) / 2;
                RecyclerView.LayoutManager layoutManager = this.mRecyclerView.getLayoutManager();
                int childCount = layoutManager.getChildCount();
                int i8 = 0;
                while (i8 < childCount) {
                    View childAt = layoutManager.getChildAt(i8);
                    if (childAt == view2) {
                        i = i8;
                    } else {
                        i = i8;
                        if (childAt.getBottom() >= round2 && childAt.getTop() <= height && childAt.getRight() >= round && childAt.getLeft() <= width) {
                            RecyclerView.ViewHolder childViewHolder = this.mRecyclerView.getChildViewHolder(childAt);
                            int abs5 = Math.abs(i6 - ((childAt.getRight() + childAt.getLeft()) / 2));
                            int abs6 = Math.abs(i7 - ((childAt.getBottom() + childAt.getTop()) / 2));
                            int i9 = (abs6 * abs6) + (abs5 * abs5);
                            view = view2;
                            int size = this.mSwapTargets.size();
                            i2 = round;
                            i3 = i4;
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
                            i8 = i + 1;
                            view2 = view;
                            round = i2;
                            i4 = i3;
                        }
                    }
                    view = view2;
                    i2 = round;
                    i3 = i4;
                    i8 = i + 1;
                    view2 = view;
                    round = i2;
                    i4 = i3;
                }
                View view3 = view2;
                int i13 = i4;
                ArrayList arrayList3 = this.mSwapTargets;
                if (arrayList3.size() == 0) {
                    return;
                }
                int width2 = view3.getWidth() + i13;
                int height2 = view3.getHeight() + i5;
                int left2 = i13 - view3.getLeft();
                int top2 = i5 - view3.getTop();
                int size2 = arrayList3.size();
                RecyclerView.ViewHolder viewHolder2 = null;
                int i14 = -1;
                int i15 = 0;
                while (i15 < size2) {
                    RecyclerView.ViewHolder viewHolder3 = (RecyclerView.ViewHolder) arrayList3.get(i15);
                    if (left2 <= 0 || (right = viewHolder3.itemView.getRight() - width2) >= 0) {
                        arrayList = arrayList3;
                    } else {
                        arrayList = arrayList3;
                        if (viewHolder3.itemView.getRight() > view3.getRight() && (abs4 = Math.abs(right)) > i14) {
                            i14 = abs4;
                            viewHolder2 = viewHolder3;
                        }
                    }
                    if (left2 < 0 && (left = viewHolder3.itemView.getLeft() - i13) > 0 && viewHolder3.itemView.getLeft() < view3.getLeft() && (abs3 = Math.abs(left)) > i14) {
                        i14 = abs3;
                        viewHolder2 = viewHolder3;
                    }
                    if (top2 < 0 && (top = viewHolder3.itemView.getTop() - i5) > 0 && viewHolder3.itemView.getTop() < view3.getTop() && (abs2 = Math.abs(top)) > i14) {
                        i14 = abs2;
                        viewHolder2 = viewHolder3;
                    }
                    if (top2 > 0 && (bottom = viewHolder3.itemView.getBottom() - height2) < 0 && viewHolder3.itemView.getBottom() > view3.getBottom() && (abs = Math.abs(bottom)) > i14) {
                        i14 = abs;
                        viewHolder2 = viewHolder3;
                    }
                    i15++;
                    arrayList3 = arrayList;
                }
                if (viewHolder2 == null) {
                    this.mSwapTargets.clear();
                    this.mDistances.clear();
                    return;
                }
                int absoluteAdapterPosition = viewHolder2.getAbsoluteAdapterPosition();
                int absoluteAdapterPosition2 = viewHolder.getAbsoluteAdapterPosition();
                if (simpleCallback.onMove(this.mRecyclerView, viewHolder, viewHolder2)) {
                    this.mCallback.onMoved(this.mRecyclerView, viewHolder, absoluteAdapterPosition2, viewHolder2, absoluteAdapterPosition, i13, i5);
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
    public final void onChildViewDetachedFromWindow(View view) {
        if (view == this.mOverdrawChild) {
            this.mOverdrawChild = null;
        }
        RecyclerView.ViewHolder childViewHolder = this.mRecyclerView.getChildViewHolder(view);
        if (childViewHolder == null) {
            return;
        }
        RecyclerView.ViewHolder viewHolder = this.mSelected;
        if (viewHolder != null && childViewHolder == viewHolder) {
            select(null, 0);
            return;
        }
        endRecoverAnimation(childViewHolder, false);
        if (this.mPendingCleanup.remove(childViewHolder.itemView)) {
            this.mCallback.clearView(this.mRecyclerView, childViewHolder);
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
                anonymousClass3.mX = CameraDevices$CC.m(f4, f3, anonymousClass3.mFraction, f3);
            }
            float f5 = anonymousClass3.mStartDy;
            float f6 = anonymousClass3.mTargetY;
            if (f5 == f6) {
                anonymousClass3.mY = viewHolder2.itemView.getTranslationY();
            } else {
                anonymousClass3.mY = CameraDevices$CC.m(f6, f5, anonymousClass3.mFraction, f5);
            }
            int save = canvas.save();
            SimpleCallback.onChildDraw(recyclerView, anonymousClass3.mViewHolder, anonymousClass3.mX, anonymousClass3.mY, false);
            canvas.restoreToCount(save);
        }
        if (viewHolder != null) {
            int save2 = canvas.save();
            SimpleCallback.onChildDraw(recyclerView, viewHolder, f, f2, true);
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

    /* JADX WARN: Code restructure failed: missing block: B:73:0x009d, code lost:
    
        if (r5 > 0) goto L44;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ca A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00fb  */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void select(androidx.recyclerview.widget.RecyclerView.ViewHolder r22, int r23) {
        /*
            Method dump skipped, instructions count: 457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.ItemTouchHelper.select(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.recyclerview.widget.ItemTouchHelper$4, reason: invalid class name */
    public final class AnonymousClass4 implements Runnable {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;
        public final /* synthetic */ Object val$anim;
        public final /* synthetic */ int val$swipeDir;

        public AnonymousClass4(ListFuture listFuture, int i, ListenableFuture listenableFuture) {
            this.$r8$classId = 2;
            this.this$0 = listFuture;
            this.val$swipeDir = i;
            this.val$anim = listenableFuture;
        }

        @Override // java.lang.Runnable
        public final void run() {
            CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer;
            ArrayList arrayList;
            int decrementAndGet;
            int i = this.$r8$classId;
            int i2 = this.val$swipeDir;
            Object obj = this.val$anim;
            Object obj2 = this.this$0;
            switch (i) {
                case 0:
                    AnonymousClass3 anonymousClass3 = (AnonymousClass3) obj;
                    RecyclerView.ViewHolder viewHolder = anonymousClass3.mViewHolder;
                    ItemTouchHelper itemTouchHelper = (ItemTouchHelper) obj2;
                    RecyclerView recyclerView = itemTouchHelper.mRecyclerView;
                    if (recyclerView == null || !recyclerView.mIsAttached || anonymousClass3.mOverridden || viewHolder.getAbsoluteAdapterPosition() == -1) {
                        return;
                    }
                    RecyclerView.ItemAnimator itemAnimator = itemTouchHelper.mRecyclerView.getItemAnimator();
                    if (itemAnimator == null || !itemAnimator.isRunning()) {
                        ArrayList arrayList2 = itemTouchHelper.mRecoverAnimations;
                        int size = arrayList2.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            if (((AnonymousClass3) arrayList2.get(i3)).mEnded) {
                            }
                        }
                        itemTouchHelper.mCallback.onSwiped(viewHolder, i2);
                        return;
                    }
                    itemTouchHelper.mRecyclerView.post(this);
                    return;
                case 1:
                    ((TextView) obj).setTypeface((Typeface) obj2, i2);
                    return;
                case 2:
                    ListFuture listFuture = (ListFuture) obj2;
                    ListenableFuture listenableFuture = (ListenableFuture) obj;
                    boolean z = listFuture.mAllMustSucceed;
                    AtomicInteger atomicInteger = listFuture.mRemaining;
                    ArrayList arrayList3 = listFuture.mValues;
                    if (listFuture.isDone() || arrayList3 == null) {
                        RelationUtil.checkState("Future was done before all dependencies completed", z);
                        return;
                    }
                    try {
                        try {
                            try {
                                try {
                                    RelationUtil.checkState("Tried to set value from future which is not done", listenableFuture.isDone());
                                    arrayList3.set(i2, Futures.getUninterruptibly(listenableFuture));
                                    decrementAndGet = atomicInteger.decrementAndGet();
                                    RelationUtil.checkState("Less than 0 remaining futures", decrementAndGet >= 0);
                                } catch (CancellationException unused) {
                                    if (z) {
                                        listFuture.cancel(false);
                                    }
                                    int decrementAndGet2 = atomicInteger.decrementAndGet();
                                    RelationUtil.checkState("Less than 0 remaining futures", decrementAndGet2 >= 0);
                                    if (decrementAndGet2 != 0) {
                                        return;
                                    }
                                    ArrayList arrayList4 = listFuture.mValues;
                                    if (arrayList4 != null) {
                                        callbackToFutureAdapter$Completer = listFuture.mResultNotifier;
                                        arrayList = new ArrayList(arrayList4);
                                    }
                                }
                            } catch (Error e) {
                                listFuture.mResultNotifier.setException(e);
                                int decrementAndGet3 = atomicInteger.decrementAndGet();
                                RelationUtil.checkState("Less than 0 remaining futures", decrementAndGet3 >= 0);
                                if (decrementAndGet3 != 0) {
                                    return;
                                }
                                ArrayList arrayList5 = listFuture.mValues;
                                if (arrayList5 != null) {
                                    callbackToFutureAdapter$Completer = listFuture.mResultNotifier;
                                    arrayList = new ArrayList(arrayList5);
                                }
                            }
                        } catch (RuntimeException e2) {
                            if (z) {
                                listFuture.mResultNotifier.setException(e2);
                            }
                            int decrementAndGet4 = atomicInteger.decrementAndGet();
                            RelationUtil.checkState("Less than 0 remaining futures", decrementAndGet4 >= 0);
                            if (decrementAndGet4 != 0) {
                                return;
                            }
                            ArrayList arrayList6 = listFuture.mValues;
                            if (arrayList6 != null) {
                                callbackToFutureAdapter$Completer = listFuture.mResultNotifier;
                                arrayList = new ArrayList(arrayList6);
                            }
                        } catch (ExecutionException e3) {
                            if (z) {
                                listFuture.mResultNotifier.setException(e3.getCause());
                            }
                            int decrementAndGet5 = atomicInteger.decrementAndGet();
                            RelationUtil.checkState("Less than 0 remaining futures", decrementAndGet5 >= 0);
                            if (decrementAndGet5 != 0) {
                                return;
                            }
                            ArrayList arrayList7 = listFuture.mValues;
                            if (arrayList7 != null) {
                                callbackToFutureAdapter$Completer = listFuture.mResultNotifier;
                                arrayList = new ArrayList(arrayList7);
                            }
                        }
                        if (decrementAndGet == 0) {
                            ArrayList arrayList8 = listFuture.mValues;
                            if (arrayList8 != null) {
                                callbackToFutureAdapter$Completer = listFuture.mResultNotifier;
                                arrayList = new ArrayList(arrayList8);
                                callbackToFutureAdapter$Completer.set(arrayList);
                                return;
                            }
                            RelationUtil.checkState(null, listFuture.isDone());
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        int decrementAndGet6 = atomicInteger.decrementAndGet();
                        RelationUtil.checkState("Less than 0 remaining futures", decrementAndGet6 >= 0);
                        if (decrementAndGet6 == 0) {
                            ArrayList arrayList9 = listFuture.mValues;
                            if (arrayList9 != null) {
                                listFuture.mResultNotifier.set(new ArrayList(arrayList9));
                            } else {
                                RelationUtil.checkState(null, listFuture.isDone());
                            }
                        }
                        throw th;
                    }
                default:
                    ((BottomSheetBehavior) obj2).startSettling((View) obj, i2, false);
                    return;
            }
        }

        public /* synthetic */ AnonymousClass4(int i, int i2, Object obj, Object obj2) {
            this.$r8$classId = i2;
            this.this$0 = obj;
            this.val$anim = obj2;
            this.val$swipeDir = i;
        }

        public AnonymousClass4(TextView textView, Typeface typeface, int i) {
            this.$r8$classId = 1;
            this.val$anim = textView;
            this.this$0 = typeface;
            this.val$swipeDir = i;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            ofFloat.addUpdateListener(new TextInputLayout.AnonymousClass4(2, this));
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
                    itemTouchHelper.mRecyclerView.post(new AnonymousClass4(i, 0, itemTouchHelper, this));
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class SimpleCallback {
        public static final ViewPager.AnonymousClass2 sDragScrollInterpolator = new ViewPager.AnonymousClass2(2);
        public static final ViewPager.AnonymousClass2 sDragViewScrollCapInterpolator = new ViewPager.AnonymousClass2(3);
        public int mCachedMaxScrollSpeed = -1;
        public final int mDefaultDragDirs;
        public final int mDefaultSwipeDirs;

        public SimpleCallback(int i, int i2) {
            this.mDefaultSwipeDirs = i2;
            this.mDefaultDragDirs = i;
        }

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

        public int getDragDirs(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            return this.mDefaultDragDirs;
        }

        public float getSwipeThreshold(RecyclerView.ViewHolder viewHolder) {
            return 0.5f;
        }

        public final int interpolateOutOfBoundsScroll(RecyclerView recyclerView, int i, int i2, long j) {
            if (this.mCachedMaxScrollSpeed == -1) {
                this.mCachedMaxScrollSpeed = recyclerView.getResources().getDimensionPixelSize(R.dimen.item_touch_helper_max_drag_scroll_per_frame);
            }
            int interpolation = (int) (sDragScrollInterpolator.getInterpolation(j <= 2000 ? j / 2000.0f : 1.0f) * ((int) (sDragViewScrollCapInterpolator.getInterpolation(Math.min(1.0f, (Math.abs(i2) * 1.0f) / i)) * ((int) Math.signum(i2)) * this.mCachedMaxScrollSpeed)));
            return interpolation == 0 ? i2 > 0 ? 1 : -1 : interpolation;
        }

        public boolean isLongPressDragEnabled() {
            return true;
        }

        public abstract boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2);

        /* JADX WARN: Multi-variable type inference failed */
        public void onMoved(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, int i, RecyclerView.ViewHolder viewHolder2, int i2, int i3, int i4) {
            View view = viewHolder2.itemView;
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof ViewDropHandler) {
                ((ViewDropHandler) layoutManager).prepareForDrop(viewHolder.itemView, view);
                return;
            }
            if (layoutManager.canScrollHorizontally()) {
                if (RecyclerView.LayoutManager.getDecoratedLeft(view) <= recyclerView.getPaddingLeft()) {
                    recyclerView.scrollToPosition(i2);
                }
                if (RecyclerView.LayoutManager.getDecoratedRight(view) >= recyclerView.getWidth() - recyclerView.getPaddingRight()) {
                    recyclerView.scrollToPosition(i2);
                }
            }
            if (layoutManager.canScrollVertically()) {
                if (RecyclerView.LayoutManager.getDecoratedTop(view) <= recyclerView.getPaddingTop()) {
                    recyclerView.scrollToPosition(i2);
                }
                if (RecyclerView.LayoutManager.getDecoratedBottom(view) >= recyclerView.getHeight() - recyclerView.getPaddingBottom()) {
                    recyclerView.scrollToPosition(i2);
                }
            }
        }

        public abstract void onSwiped(RecyclerView.ViewHolder viewHolder, int i);

        public float getSwipeVelocityThreshold(float f) {
            return f;
        }

        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
    public final void onChildViewAttachedToWindow(View view) {
    }
}
