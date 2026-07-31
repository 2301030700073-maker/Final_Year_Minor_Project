package androidx.work.impl.utils;

import android.animation.ValueAnimator;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.WorkerWrapper;
import app.k9mail.ui.utils.itemtouchhelper.ItemTouchHelper;
import app.k9mail.ui.utils.itemtouchhelper.ItemTouchHelper.MoveBackAnimation;
import com.fsck.k9.ui.messagelist.LegacyMessageListFragment$swipeListener$1;
import com.fsck.k9.ui.messagelist.MessageListItem;
import com.fsck.k9.ui.messagelist.MessageListSwipeCallback;
import java.util.ArrayList;
import java.util.Iterator;
import net.thunderbird.core.common.action.SwipeAction;
import net.thunderbird.core.common.action.SwipeActions;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StopWorkRunnable implements Runnable {
    public final /* synthetic */ int $r8$classId = 0;
    public final Object processor;
    public final int reason;
    public final boolean stopInForeground;
    public final Object token;

    public StopWorkRunnable(Processor processor, StartStopToken startStopToken, boolean z, int i) {
        processor.getClass();
        startStopToken.getClass();
        this.processor = processor;
        this.token = startStopToken;
        this.stopInForeground = z;
        this.reason = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean stopWork;
        WorkerWrapper cleanUpWorkerUnsafe;
        switch (this.$r8$classId) {
            case 0:
                boolean z = this.stopInForeground;
                Processor processor = (Processor) this.processor;
                StartStopToken startStopToken = (StartStopToken) this.token;
                if (z) {
                    int i = this.reason;
                    processor.getClass();
                    String str = startStopToken.id.workSpecId;
                    synchronized (processor.mLock) {
                        cleanUpWorkerUnsafe = processor.cleanUpWorkerUnsafe(str);
                    }
                    stopWork = Processor.interrupt(str, cleanUpWorkerUnsafe, i);
                } else {
                    stopWork = processor.stopWork(startStopToken, this.reason);
                }
                Logger$LogcatLogger.get().debug(Logger$LogcatLogger.tagWithPrefix("StopWorkRunnable"), "StopWorkRunnable for " + ((StartStopToken) this.token).id.workSpecId + "; Processor.stopWork = " + stopWork);
                return;
            default:
                ItemTouchHelper.MoveOutAnimation moveOutAnimation = (ItemTouchHelper.MoveOutAnimation) this.processor;
                RecyclerView.ViewHolder viewHolder = moveOutAnimation.mViewHolder;
                ItemTouchHelper itemTouchHelper = (ItemTouchHelper) this.token;
                ArrayList arrayList = itemTouchHelper.mRecoverAnimations;
                MessageListSwipeCallback messageListSwipeCallback = itemTouchHelper.mCallback;
                RecyclerView recyclerView = itemTouchHelper.mRecyclerView;
                if (recyclerView == null || !recyclerView.mIsAttached || moveOutAnimation.mOverridden || viewHolder.getAbsoluteAdapterPosition() == -1) {
                    return;
                }
                RecyclerView.ItemAnimator itemAnimator = itemTouchHelper.mRecyclerView.getItemAnimator();
                if (itemAnimator == null || !itemAnimator.isRunning()) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        if (!((ItemTouchHelper.RecoverAnimation) it.next()).mEnded) {
                        }
                    }
                    int i2 = this.reason;
                    LegacyMessageListFragment$swipeListener$1 legacyMessageListFragment$swipeListener$1 = messageListSwipeCallback.listener;
                    viewHolder.getClass();
                    MessageListItem messageListItem = messageListSwipeCallback.getMessageListItem(viewHolder);
                    if (messageListItem != null) {
                        SwipeActions swipeActions = messageListSwipeCallback.getSwipeActions(messageListItem);
                        SwipeAction swipeAction = swipeActions.leftAction;
                        SwipeAction swipeAction2 = swipeActions.rightAction;
                        if (i2 == 4) {
                            legacyMessageListFragment$swipeListener$1.onSwipeAction(messageListItem, swipeAction);
                        } else {
                            if (i2 != 8) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Unsupported direction: ", i2);
                                return;
                            }
                            legacyMessageListFragment$swipeListener$1.onSwipeAction(messageListItem, swipeAction2);
                        }
                    }
                    if (!this.stopInForeground) {
                        messageListSwipeCallback.onSwipeEnded(viewHolder);
                        return;
                    }
                    RecyclerView.ViewHolder viewHolder2 = moveOutAnimation.mViewHolder;
                    ItemTouchHelper.MoveBackAnimation moveBackAnimation = itemTouchHelper.new MoveBackAnimation(viewHolder2, moveOutAnimation.mAnimationType, moveOutAnimation.mActionState, moveOutAnimation.mTargetX, moveOutAnimation.mTargetY);
                    ValueAnimator valueAnimator = moveBackAnimation.mValueAnimator;
                    valueAnimator.setDuration(messageListSwipeCallback.getAnimationDuration(itemTouchHelper.mRecyclerView, moveOutAnimation.mAnimationType, -moveOutAnimation.mTargetX));
                    arrayList.remove(moveOutAnimation);
                    arrayList.add(moveBackAnimation);
                    viewHolder2.setIsRecyclable(false);
                    valueAnimator.start();
                    return;
                }
                itemTouchHelper.mRecyclerView.post(this);
                return;
        }
    }

    public StopWorkRunnable(ItemTouchHelper itemTouchHelper, ItemTouchHelper.MoveOutAnimation moveOutAnimation, int i, boolean z) {
        this.token = itemTouchHelper;
        this.processor = moveOutAnimation;
        this.reason = i;
        this.stopInForeground = z;
    }
}
