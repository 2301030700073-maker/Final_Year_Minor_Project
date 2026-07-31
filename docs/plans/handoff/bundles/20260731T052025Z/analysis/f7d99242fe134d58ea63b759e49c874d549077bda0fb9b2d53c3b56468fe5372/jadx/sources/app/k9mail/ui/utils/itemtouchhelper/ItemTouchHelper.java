package app.k9mail.ui.utils.itemtouchhelper;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.core.view.ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.utils.StopWorkRunnable;
import com.fsck.k9.R;
import com.fsck.k9.ui.messagelist.LegacyMessageListFragment;
import com.fsck.k9.ui.messagelist.LegacyMessageListFragment$swipeListener$1;
import com.fsck.k9.ui.messagelist.MessageListAdapter;
import com.fsck.k9.ui.messagelist.MessageListItem;
import com.fsck.k9.ui.messagelist.MessageListSwipeCallback;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.common.action.SwipeAction;
import net.thunderbird.core.common.action.SwipeActions;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ItemTouchHelper extends RecyclerView.ItemDecoration implements RecyclerView.OnChildAttachStateChangeListener {
    public final MessageListSwipeCallback mCallback;
    public ArrayList mDistances;
    public long mDragScrollStartTimeInMs;
    public float mDx;
    public float mDy;
    public GestureDetector mGestureDetector;
    public float mInitialTouchX;
    public float mInitialTouchY;
    public ItemTouchHelper.ItemTouchHelperGestureListener mItemTouchHelperGestureListener;
    public RecyclerView mRecyclerView;
    public int mSelectedFlags;
    public float mSelectedStartX;
    public float mSelectedStartY;
    public int mSlop;
    public ArrayList mSwapTargets;
    public Rect mTmpRect;
    public VelocityTracker mVelocityTracker;
    public final ArrayList mPendingCleanup = new ArrayList();
    public final float[] mTmpPosition = new float[2];
    public RecyclerView.ViewHolder mSelected = null;
    public int mSwipeDirection = 0;
    public int mActivePointerId = -1;
    public int mActionState = 0;
    public final ArrayList mRecoverAnimations = new ArrayList();
    public final Fragment.AnonymousClass1 mScrollRunnable = new Fragment.AnonymousClass1(26, this);
    public View mOverdrawChild = null;
    public final ItemTouchHelper.AnonymousClass2 mOnItemTouchListener = new ItemTouchHelper.AnonymousClass2(this, 1);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Callback {
        public static final ItemTouchHelper$Callback$$ExternalSyntheticLambda0 sDragScrollInterpolator = new ItemTouchHelper$Callback$$ExternalSyntheticLambda0(0);
        public static final ItemTouchHelper$Callback$$ExternalSyntheticLambda0 sDragViewScrollCapInterpolator = new ItemTouchHelper$Callback$$ExternalSyntheticLambda0(1);
        public int mCachedMaxScrollSpeed;

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

        public final int interpolateOutOfBoundsScroll(RecyclerView recyclerView, int i, int i2, long j) {
            if (this.mCachedMaxScrollSpeed == -1) {
                this.mCachedMaxScrollSpeed = recyclerView.getResources().getDimensionPixelSize(R.dimen.item_touch_helper_max_drag_scroll_per_frame);
            }
            int interpolation = (int) (sDragScrollInterpolator.getInterpolation(j <= 2000 ? j / 2000.0f : 1.0f) * ((int) (sDragViewScrollCapInterpolator.getInterpolation(Math.min(1.0f, (Math.abs(i2) * 1.0f) / i)) * ((int) Math.signum(i2)) * this.mCachedMaxScrollSpeed)));
            return interpolation == 0 ? i2 > 0 ? 1 : -1 : interpolation;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class MoveBackAnimation extends RecoverAnimation {
        public MoveBackAnimation(RecyclerView.ViewHolder viewHolder, int i, int i2, float f, float f2) {
            super(viewHolder, i, i2, f, f2, 0.0f, 0.0f);
        }

        @Override // app.k9mail.ui.utils.itemtouchhelper.ItemTouchHelper.RecoverAnimation, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            MessageListSwipeCallback messageListSwipeCallback = itemTouchHelper.mCallback;
            super.onAnimationEnd(animator);
            if (this.mOverridden) {
                return;
            }
            RecyclerView.ViewHolder viewHolder = this.mViewHolder;
            messageListSwipeCallback.onSwipeEnded(viewHolder);
            messageListSwipeCallback.clearView(itemTouchHelper.mRecyclerView, viewHolder);
            View view = itemTouchHelper.mOverdrawChild;
            View view2 = viewHolder.itemView;
            if (view == view2 && view2 == view) {
                itemTouchHelper.mOverdrawChild = null;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class MoveOutAnimation extends RecoverAnimation {
        public final boolean mMoveBackAfterwards;
        public final int mSwipeDirection;

        public MoveOutAnimation(RecyclerView.ViewHolder viewHolder, int i, int i2, float f, float f2, float f3, float f4, int i3, boolean z) {
            super(viewHolder, i, i2, f, f2, f3, f4);
            this.mSwipeDirection = i3;
            this.mMoveBackAfterwards = z;
        }

        @Override // app.k9mail.ui.utils.itemtouchhelper.ItemTouchHelper.RecoverAnimation, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            View view;
            View view2;
            super.onAnimationEnd(animator);
            if (this.mOverridden) {
                return;
            }
            RecyclerView.ViewHolder viewHolder = this.mViewHolder;
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            boolean z = this.mMoveBackAfterwards;
            if (!z) {
                itemTouchHelper.mPendingCleanup.add(viewHolder.itemView);
            }
            this.mIsPendingCleanup = true;
            itemTouchHelper.mRecyclerView.post(new StopWorkRunnable(itemTouchHelper, this, this.mSwipeDirection, z));
            if (!z && (view = itemTouchHelper.mOverdrawChild) == (view2 = viewHolder.itemView) && view2 == view) {
                itemTouchHelper.mOverdrawChild = null;
            }
        }
    }

    public ItemTouchHelper(MessageListSwipeCallback messageListSwipeCallback) {
        this.mCallback = messageListSwipeCallback;
    }

    public static boolean hitTest(View view, float f, float f2, float f3, float f4) {
        return f >= f3 && f <= f3 + ((float) view.getWidth()) && f2 >= f4 && f2 <= f4 + ((float) view.getHeight());
    }

    public final int checkHorizontalSwipe$1(RecyclerView.ViewHolder viewHolder, int i) {
        if ((i & 12) == 0) {
            return 0;
        }
        int i2 = this.mDx > 0.0f ? 8 : 4;
        MessageListSwipeCallback messageListSwipeCallback = this.mCallback;
        messageListSwipeCallback.getClass();
        float width = this.mRecyclerView.getWidth();
        viewHolder.getClass();
        float width2 = (messageListSwipeCallback.swipeThreshold / viewHolder.itemView.getWidth()) * width;
        if ((i & i2) == 0 || Math.abs(this.mDx) <= width2) {
            return 0;
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:85:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void checkSelectForSwipe(int r12, int r13, android.view.MotionEvent r14) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.ui.utils.itemtouchhelper.ItemTouchHelper.checkSelectForSwipe(int, int, android.view.MotionEvent):void");
    }

    public final int checkVerticalSwipe$1(RecyclerView.ViewHolder viewHolder, int i) {
        if ((i & 3) == 0) {
            return 0;
        }
        int i2 = this.mDy > 0.0f ? 2 : 1;
        MessageListSwipeCallback messageListSwipeCallback = this.mCallback;
        messageListSwipeCallback.getClass();
        float height = this.mRecyclerView.getHeight();
        viewHolder.getClass();
        float width = (messageListSwipeCallback.swipeThreshold / viewHolder.itemView.getWidth()) * height;
        if ((i & i2) == 0 || Math.abs(this.mDy) <= width) {
            return 0;
        }
        return i2;
    }

    public final void endRecoverAnimation(RecyclerView.ViewHolder viewHolder, boolean z) {
        ArrayList arrayList = this.mRecoverAnimations;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            RecoverAnimation recoverAnimation = (RecoverAnimation) arrayList.get(size);
            if (recoverAnimation.mViewHolder == viewHolder) {
                recoverAnimation.mOverridden |= z;
                if (!recoverAnimation.mEnded) {
                    recoverAnimation.mValueAnimator.cancel();
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
            RecoverAnimation recoverAnimation = (RecoverAnimation) arrayList.get(size);
            View view2 = recoverAnimation.mViewHolder.itemView;
            if (hitTest(view2, x, y, recoverAnimation.mX, recoverAnimation.mY)) {
                return view2;
            }
        }
        return this.mRecyclerView.findChildViewUnder(x, y);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView) {
        rect.setEmpty();
    }

    public final void getSelectedDxDy$1(float[] fArr) {
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

    public final float limitDeltaX(RecyclerView recyclerView, float f) {
        int i = f > 0.0f ? 8 : 4;
        MessageListSwipeCallback messageListSwipeCallback = this.mCallback;
        if (!messageListSwipeCallback.shouldAnimateOut(i)) {
            float maxSwipeDistance = messageListSwipeCallback.getMaxSwipeDistance(recyclerView, i);
            if (Math.abs(f) > maxSwipeDistance) {
                return Math.signum(f) * maxSwipeDistance;
            }
        }
        return f;
    }

    public final void moveIfNecessary(RecyclerView.ViewHolder viewHolder) {
        int i;
        int i2;
        View view;
        ArrayList<RecyclerView.ViewHolder> arrayList;
        char c;
        int i3;
        int i4;
        View view2;
        int bottom;
        int abs;
        int top;
        int abs2;
        int left;
        int abs3;
        int right;
        int abs4;
        if (this.mRecyclerView.isLayoutRequested()) {
            return;
        }
        char c2 = 2;
        if (this.mActionState != 2) {
            return;
        }
        this.mCallback.getClass();
        int i5 = (int) (this.mSelectedStartX + this.mDx);
        int i6 = (int) (this.mSelectedStartY + this.mDy);
        View view3 = viewHolder.itemView;
        if (Math.abs(i6 - view3.getTop()) >= view3.getHeight() * 0.5f || Math.abs(i5 - view3.getLeft()) >= view3.getWidth() * 0.5f) {
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
            int width = view3.getWidth() + round;
            int height = view3.getHeight() + round2;
            int i7 = (round + width) / 2;
            int i8 = (round2 + height) / 2;
            RecyclerView.LayoutManager layoutManager = this.mRecyclerView.getLayoutManager();
            if (layoutManager == null) {
                arrayList = this.mSwapTargets;
                i = i5;
                i2 = i6;
                view = view3;
            } else {
                int childCount = layoutManager.getChildCount();
                int i9 = 0;
                while (i9 < childCount) {
                    View childAt = layoutManager.getChildAt(i9);
                    if (childAt == view3 || childAt == null) {
                        i3 = i5;
                        c = c2;
                    } else {
                        c = c2;
                        if (childAt.getBottom() < round2 || childAt.getTop() > height || childAt.getRight() < round || childAt.getLeft() > width) {
                            i3 = i5;
                        } else {
                            RecyclerView.ViewHolder childViewHolder = this.mRecyclerView.getChildViewHolder(childAt);
                            int abs5 = Math.abs(i7 - ((childAt.getRight() + childAt.getLeft()) / 2));
                            int abs6 = Math.abs(i8 - ((childAt.getBottom() + childAt.getTop()) / 2));
                            int i10 = (abs6 * abs6) + (abs5 * abs5);
                            int size = this.mSwapTargets.size();
                            i3 = i5;
                            i4 = i6;
                            int i11 = 0;
                            int i12 = 0;
                            while (true) {
                                view2 = view3;
                                if (i11 >= size || i10 <= ((Integer) this.mDistances.get(i11)).intValue()) {
                                    break;
                                }
                                i12++;
                                i11++;
                                view3 = view2;
                            }
                            this.mSwapTargets.add(i12, childViewHolder);
                            this.mDistances.add(i12, Integer.valueOf(i10));
                            i9++;
                            c2 = c;
                            i5 = i3;
                            i6 = i4;
                            view3 = view2;
                        }
                    }
                    i4 = i6;
                    view2 = view3;
                    i9++;
                    c2 = c;
                    i5 = i3;
                    i6 = i4;
                    view3 = view2;
                }
                i = i5;
                i2 = i6;
                view = view3;
                arrayList = this.mSwapTargets;
            }
            if (arrayList.isEmpty()) {
                return;
            }
            int width2 = view.getWidth() + i;
            int height2 = view.getHeight() + i2;
            int left2 = i - view.getLeft();
            int top2 = i2 - view.getTop();
            RecyclerView.ViewHolder viewHolder2 = null;
            int i13 = -1;
            for (RecyclerView.ViewHolder viewHolder3 : arrayList) {
                if (left2 > 0 && (right = viewHolder3.itemView.getRight() - width2) < 0 && viewHolder3.itemView.getRight() > view.getRight() && (abs4 = Math.abs(right)) > i13) {
                    viewHolder2 = viewHolder3;
                    i13 = abs4;
                }
                if (left2 < 0 && (left = viewHolder3.itemView.getLeft() - i) > 0 && viewHolder3.itemView.getLeft() < view.getLeft() && (abs3 = Math.abs(left)) > i13) {
                    viewHolder2 = viewHolder3;
                    i13 = abs3;
                }
                if (top2 < 0 && (top = viewHolder3.itemView.getTop() - i2) > 0 && viewHolder3.itemView.getTop() < view.getTop() && (abs2 = Math.abs(top)) > i13) {
                    viewHolder2 = viewHolder3;
                    i13 = abs2;
                }
                if (top2 > 0 && (bottom = viewHolder3.itemView.getBottom() - height2) < 0 && viewHolder3.itemView.getBottom() > view.getBottom() && (abs = Math.abs(bottom)) > i13) {
                    viewHolder2 = viewHolder3;
                    i13 = abs;
                }
            }
            if (viewHolder2 == null) {
                this.mSwapTargets.clear();
                this.mDistances.clear();
            } else {
                viewHolder2.getAbsoluteAdapterPosition();
                this.mRecyclerView.getClass();
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("not implemented");
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
    public final void onChildViewDetachedFromWindow(View view) {
        resetSwipeView(view);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void onDraw(Canvas canvas, RecyclerView recyclerView) {
        float f;
        float f2;
        RecyclerView.ViewHolder viewHolder = this.mSelected;
        MessageListSwipeCallback messageListSwipeCallback = this.mCallback;
        if (viewHolder != null) {
            float[] fArr = this.mTmpPosition;
            getSelectedDxDy$1(fArr);
            float f3 = fArr[0];
            float f4 = fArr[1];
            if ((this.mSelectedFlags & 12) != 0 && f3 != 0.0f) {
                f3 = limitDeltaX(recyclerView, f3);
            }
            if (f3 != 0.0f) {
                int i = f3 > 0.0f ? 8 : 4;
                if (i != this.mSwipeDirection) {
                    this.mSwipeDirection = i;
                    RecyclerView.ViewHolder viewHolder2 = this.mSelected;
                    messageListSwipeCallback.getClass();
                    viewHolder2.getClass();
                    MessageListItem messageListItem = messageListSwipeCallback.getMessageListItem(viewHolder2);
                    if (messageListItem != null) {
                        long j = messageListItem.uniqueId;
                        SwipeActions swipeActions = messageListSwipeCallback.getSwipeActions(messageListItem);
                        SwipeAction swipeAction = swipeActions.leftAction;
                        SwipeAction swipeAction2 = swipeActions.rightAction;
                        if (i != 4) {
                            if (i != 8) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Unsupported direction: ", i);
                                return;
                            }
                            swipeAction = swipeAction2;
                        }
                        LegacyMessageListFragment$swipeListener$1 legacyMessageListFragment$swipeListener$1 = messageListSwipeCallback.listener;
                        legacyMessageListFragment$swipeListener$1.getClass();
                        swipeAction.getClass();
                        LegacyMessageListFragment legacyMessageListFragment = legacyMessageListFragment$swipeListener$1.this$0;
                        if (swipeAction == SwipeAction.ToggleSelection) {
                            if (legacyMessageListFragment.itemSelectedOnSwipeStart && !LegacyMessageListFragment.access$isMessageSelected(legacyMessageListFragment, messageListItem)) {
                                MessageListAdapter messageListAdapter = legacyMessageListFragment.adapter;
                                if (messageListAdapter == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                                    throw null;
                                }
                                messageListAdapter.setSelected(Validate.plus(messageListAdapter.selected, Long.valueOf(j)));
                                legacyMessageListFragment.updateAfterSelectionChange();
                            }
                        } else if (LegacyMessageListFragment.access$isMessageSelected(legacyMessageListFragment, messageListItem)) {
                            MessageListAdapter messageListAdapter2 = legacyMessageListFragment.adapter;
                            if (messageListAdapter2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                                throw null;
                            }
                            messageListAdapter2.setSelected(Validate.minus(messageListAdapter2.selected, Long.valueOf(j)));
                            legacyMessageListFragment.updateAfterSelectionChange();
                        }
                    }
                }
            }
            f2 = f4;
            f = f3;
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        RecyclerView.ViewHolder viewHolder3 = this.mSelected;
        messageListSwipeCallback.getClass();
        Iterator it = this.mRecoverAnimations.iterator();
        while (it.hasNext()) {
            RecoverAnimation recoverAnimation = (RecoverAnimation) it.next();
            RecyclerView.ViewHolder viewHolder4 = recoverAnimation.mViewHolder;
            float f5 = recoverAnimation.mStartDx;
            float f6 = recoverAnimation.mTargetX;
            if (f5 == f6) {
                recoverAnimation.mX = viewHolder4.itemView.getTranslationX();
            } else {
                recoverAnimation.mX = CameraDevices$CC.m(f6, f5, recoverAnimation.mFraction, f5);
            }
            float f7 = recoverAnimation.mStartDy;
            float f8 = recoverAnimation.mTargetY;
            if (f7 == f8) {
                recoverAnimation.mY = viewHolder4.itemView.getTranslationY();
            } else {
                recoverAnimation.mY = CameraDevices$CC.m(f8, f7, recoverAnimation.mFraction, f7);
            }
            int save = canvas.save();
            messageListSwipeCallback.onChildDraw(canvas, recyclerView, recoverAnimation.mViewHolder, recoverAnimation.mX, recoverAnimation.mY, recoverAnimation instanceof MoveOutAnimation, recoverAnimation.mAnimationType == 2);
            canvas.restoreToCount(save);
        }
        if (viewHolder3 != null) {
            int save2 = canvas.save();
            messageListSwipeCallback.onChildDraw(canvas, recyclerView, viewHolder3, f, f2, true, false);
            canvas.restoreToCount(save2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
        boolean z = false;
        if (this.mSelected != null) {
            float[] fArr = this.mTmpPosition;
            getSelectedDxDy$1(fArr);
            float f = fArr[0];
            float f2 = fArr[1];
        }
        RecyclerView.ViewHolder viewHolder = this.mSelected;
        this.mCallback.getClass();
        ArrayList<RecoverAnimation> arrayList = this.mRecoverAnimations;
        int size = arrayList.size();
        for (RecoverAnimation recoverAnimation : arrayList) {
            int save = canvas.save();
            View view = recoverAnimation.mViewHolder.itemView;
            canvas.restoreToCount(save);
        }
        if (viewHolder != null) {
            canvas.restoreToCount(canvas.save());
        }
        for (int i = size - 1; i >= 0; i--) {
            RecoverAnimation recoverAnimation2 = (RecoverAnimation) arrayList.get(i);
            boolean z2 = recoverAnimation2.mEnded;
            if (z2 && !recoverAnimation2.mIsPendingCleanup) {
                arrayList.remove(i);
            } else if (!z2) {
                z = true;
            }
        }
        if (z) {
            recyclerView.invalidate();
        }
    }

    public final void resetSwipeView(View view) {
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

    /* JADX WARN: Code restructure failed: missing block: B:85:0x009c, code lost:
    
        if (r0 > 0) goto L46;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00f7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00c5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void select(androidx.recyclerview.widget.RecyclerView.ViewHolder r21, int r22) {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.ui.utils.itemtouchhelper.ItemTouchHelper.select(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
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
    public abstract class RecoverAnimation implements Animator.AnimatorListener {
        public final int mActionState;
        public final int mAnimationType;
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
        public boolean mOverridden = false;
        public boolean mEnded = false;

        public RecoverAnimation(RecyclerView.ViewHolder viewHolder, int i, int i2, float f, float f2, float f3, float f4) {
            this.mActionState = i2;
            this.mAnimationType = i;
            this.mViewHolder = viewHolder;
            this.mStartDx = f;
            this.mStartDy = f2;
            this.mTargetX = f3;
            this.mTargetY = f4;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.mValueAnimator = ofFloat;
            ofFloat.addUpdateListener(new ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0(1, this));
            ofFloat.setTarget(viewHolder.itemView);
            ofFloat.addListener(this);
            this.mFraction = 0.0f;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.mFraction = 1.0f;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
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

    @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
    public final void onChildViewAttachedToWindow(View view) {
    }
}
