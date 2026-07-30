package com.android.quickstep;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.View;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.statehandlers.DepthController;
import com.android.launcher3.util.DefaultDisplay;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.SurfaceTransactionApplier;
import com.android.quickstep.util.TaskViewSimulator;
import com.android.quickstep.util.TransformParams;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskThumbnailView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;

@TargetApi(30)
/* loaded from: classes.dex */
public final class TaskViewUtils {
    public static void createRecentsWindowAnimator(TaskView taskView, boolean z, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2, DepthController depthController, PendingAnimation pendingAnimation) {
        SurfaceTransactionApplier surfaceTransactionApplier = new SurfaceTransactionApplier(taskView);
        final RemoteAnimationTargets remoteAnimationTargets = new RemoteAnimationTargets(remoteAnimationTargetCompatArr, remoteAnimationTargetCompatArr2, 0);
        remoteAnimationTargets.addReleaseCheck(surfaceTransactionApplier);
        final TransformParams targetSet = new TransformParams().setSyncTransactionApplier(surfaceTransactionApplier).setTargetSet(remoteAnimationTargets);
        RecentsView recentsView = taskView.getRecentsView();
        int indexOfChild = recentsView.indexOfChild(taskView);
        boolean z2 = indexOfChild != recentsView.getCurrentPage();
        int scrollOffset = recentsView.getScrollOffset(indexOfChild);
        Context context = taskView.getContext();
        DeviceProfile deviceProfile = BaseActivity.fromContext(context).getDeviceProfile();
        int i = ((DefaultDisplay) DefaultDisplay.INSTANCE.b(context)).mInfo.rotation;
        final TaskViewSimulator taskViewSimulator = null;
        if (remoteAnimationTargets.apps.length > 0) {
            taskViewSimulator = new TaskViewSimulator(context, recentsView.getSizeStrategy());
            taskViewSimulator.setDp(deviceProfile);
            taskViewSimulator.setLayoutRotation(i, i);
            RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr3 = remoteAnimationTargets.apps;
            taskViewSimulator.setPreview(remoteAnimationTargetCompatArr3[remoteAnimationTargetCompatArr3.length - 1]);
            taskViewSimulator.fullScreenProgress.value = RecentsState.NO_OFFSET;
            taskViewSimulator.recentsViewScale.value = 1.0f;
            taskViewSimulator.setScroll(scrollOffset);
            pendingAnimation.setFloat(taskViewSimulator.fullScreenProgress, AnimatedFloat.VALUE, 1.0f, Interpolators.TOUCH_RESPONSE_INTERPOLATOR);
            pendingAnimation.setFloat(taskViewSimulator.recentsViewScale, AnimatedFloat.VALUE, taskViewSimulator.getFullScreenScale(), Interpolators.TOUCH_RESPONSE_INTERPOLATOR);
            pendingAnimation.setInt(taskViewSimulator, TaskViewSimulator.SCROLL, 0, Interpolators.TOUCH_RESPONSE_INTERPOLATOR);
            pendingAnimation.addOnFrameCallback(new Runnable() { // from class: c.a.b.A1
                @Override // java.lang.Runnable
                public final void run() {
                    TaskViewSimulator.this.apply(targetSet);
                }
            });
        }
        final TaskViewSimulator taskViewSimulator2 = taskViewSimulator;
        pendingAnimation.addFloat(targetSet, TransformParams.TARGET_ALPHA, RecentsState.NO_OFFSET, 1.0f, Interpolators.clampToProgress(Interpolators.LINEAR, RecentsState.NO_OFFSET, 0.2f));
        if (!z && z2 && taskViewSimulator2 != null) {
            pendingAnimation.addFloat(taskView, LauncherAnimUtils.VIEW_ALPHA, 1.0f, RecentsState.NO_OFFSET, Interpolators.clampToProgress(Interpolators.LINEAR, 0.2f, 0.4f));
            taskViewSimulator2.apply(targetSet);
            final TaskThumbnailView thumbnail = taskView.getThumbnail();
            RectF rectF = new RectF(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, thumbnail.getWidth(), thumbnail.getHeight());
            float[] fArr = {RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, thumbnail.getWidth(), thumbnail.getHeight()};
            Utilities.getDescendantCoordRelativeToAncestor(thumbnail, thumbnail.getRootView(), fArr, false, false);
            RectF rectF2 = new RectF(fArr[0], fArr[1], fArr[2], fArr[3]);
            final Matrix matrix = new Matrix();
            matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
            final Matrix matrix2 = new Matrix();
            matrix.invert(matrix2);
            final Matrix matrix3 = new Matrix();
            taskViewSimulator2.getCurrentMatrix().invert(matrix3);
            final Matrix matrix4 = new Matrix();
            pendingAnimation.addOnFrameCallback(new Runnable() { // from class: c.a.b.z1
                @Override // java.lang.Runnable
                public final void run() {
                    Matrix matrix5 = matrix4;
                    Matrix matrix6 = matrix;
                    Matrix matrix7 = matrix3;
                    TaskViewSimulator taskViewSimulator3 = taskViewSimulator2;
                    Matrix matrix8 = matrix2;
                    TaskThumbnailView taskThumbnailView = thumbnail;
                    matrix5.set(matrix6);
                    matrix5.postConcat(matrix7);
                    matrix5.postConcat(taskViewSimulator3.getCurrentMatrix());
                    matrix5.postConcat(matrix8);
                    taskThumbnailView.setAnimationMatrix(matrix5);
                }
            });
            pendingAnimation.mAnim.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.TaskViewUtils.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    TaskThumbnailView.this.setAnimationMatrix(null);
                }
            });
        }
        pendingAnimation.mAnim.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.TaskViewUtils.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                RemoteAnimationTargets.this.release();
            }
        });
        if (depthController != null) {
            pendingAnimation.setFloat(depthController, DepthController.DEPTH, LauncherState.BACKGROUND_APP.getDepth(context), Interpolators.TOUCH_RESPONSE_INTERPOLATOR);
        }
    }

    public static TaskView findTaskViewToLaunch(BaseDraggingActivity baseDraggingActivity, View view, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr) {
        int i;
        TaskView taskView;
        RecentsView recentsView = (RecentsView) baseDraggingActivity.getOverviewPanel();
        if (view instanceof TaskView) {
            TaskView taskView2 = (TaskView) view;
            if (recentsView.isTaskViewVisible(taskView2)) {
                return taskView2;
            }
            return null;
        }
        int i2 = 0;
        if (view.getTag() instanceof ItemInfo) {
            ItemInfo itemInfo = (ItemInfo) view.getTag();
            ComponentName targetComponent = itemInfo.getTargetComponent();
            int identifier = itemInfo.user.getIdentifier();
            if (targetComponent != null) {
                for (int i3 = 0; i3 < recentsView.getTaskViewCount(); i3++) {
                    TaskView taskViewAt = recentsView.getTaskViewAt(i3);
                    if (recentsView.isTaskViewVisible(taskViewAt)) {
                        Task.TaskKey taskKey = taskViewAt.getTask().key;
                        if (targetComponent.equals(taskKey.getComponent()) && identifier == taskKey.userId) {
                            return taskViewAt;
                        }
                    }
                }
            }
        }
        if (remoteAnimationTargetCompatArr == null) {
            return null;
        }
        int length = remoteAnimationTargetCompatArr.length;
        while (true) {
            if (i2 >= length) {
                i = -1;
                break;
            }
            RemoteAnimationTargetCompat remoteAnimationTargetCompat = remoteAnimationTargetCompatArr[i2];
            if (remoteAnimationTargetCompat.mode == 0) {
                i = remoteAnimationTargetCompat.taskId;
                break;
            }
            i2++;
        }
        if (i == -1 || (taskView = recentsView.getTaskView(i)) == null || !recentsView.isTaskViewVisible(taskView)) {
            return null;
        }
        return taskView;
    }
}
