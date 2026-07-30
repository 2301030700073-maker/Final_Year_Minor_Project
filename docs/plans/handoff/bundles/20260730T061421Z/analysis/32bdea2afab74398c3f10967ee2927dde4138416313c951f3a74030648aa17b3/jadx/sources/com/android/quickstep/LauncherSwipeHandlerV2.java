package com.android.quickstep;

import android.animation.AnimatorSet;
import android.content.Context;
import android.graphics.RectF;
import android.os.UserHandle;
import android.view.View;
import com.android.launcher3.BaseQuickstepLauncher;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherRootView;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Workspace;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.views.FloatingIconView;
import com.android.quickstep.LauncherSwipeHandlerV2;
import com.android.quickstep.SwipeUpAnimationLogic;
import com.android.quickstep.util.StaggeredWorkspaceAnim;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.system.InputConsumerController;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class LauncherSwipeHandlerV2 extends BaseSwipeUpHandlerV2 {
    public LauncherSwipeHandlerV2(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, TaskAnimationManager taskAnimationManager, GestureState gestureState, long j, boolean z, InputConsumerController inputConsumerController) {
        super(context, recentsAnimationDeviceState, taskAnimationManager, gestureState, j, z, inputConsumerController);
    }

    public /* synthetic */ void O(Boolean bool) {
        this.mRecentsView.startHome();
    }

    @Override // com.android.quickstep.BaseSwipeUpHandlerV2
    public SwipeUpAnimationLogic.HomeAnimationFactory createHomeAnimationFactory(final long j) {
        View view;
        if (this.mActivity == null) {
            SwipeUpAnimationLogic.HomeAnimationFactory homeAnimationFactory = new SwipeUpAnimationLogic.HomeAnimationFactory(r1) { // from class: com.android.quickstep.LauncherSwipeHandlerV2.2
                @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
                public AnimatorPlaybackController createActivityAnimationToHome() {
                    return AnimatorPlaybackController.wrap(new AnimatorSet(), j);
                }
            };
            this.mStateCallback.addChangeListener(BaseSwipeUpHandlerV2.STATE_LAUNCHER_PRESENT | BaseSwipeUpHandlerV2.STATE_HANDLER_INVALIDATED, new Consumer() { // from class: c.a.b.s0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    LauncherSwipeHandlerV2.this.O((Boolean) obj);
                }
            });
            return homeAnimationFactory;
        }
        TaskView runningTaskView = this.mRecentsView.getRunningTaskView();
        if (runningTaskView == null || runningTaskView.getTask().key.getComponent() == null) {
            view = null;
        } else {
            Workspace workspace = ((BaseQuickstepLauncher) this.mActivity).mWorkspace;
            final String packageName = runningTaskView.getTask().key.getComponent().getPackageName();
            final UserHandle of = UserHandle.of(runningTaskView.getTask().key.userId);
            CellLayout cellLayout = (CellLayout) workspace.getPageAt(workspace.getCurrentPage());
            final Workspace.ItemOperator itemOperator = new Workspace.ItemOperator() { // from class: c.a.a.n0
                @Override // com.android.launcher3.Workspace.ItemOperator
                public final boolean evaluate(ItemInfo itemInfo, View view2) {
                    return Workspace.c(packageName, of, itemInfo, view2);
                }
            };
            final Workspace.ItemOperator itemOperator2 = new Workspace.ItemOperator() { // from class: c.a.a.k0
                @Override // com.android.launcher3.Workspace.ItemOperator
                public final boolean evaluate(ItemInfo itemInfo, View view2) {
                    return Workspace.d(Workspace.ItemOperator.this, itemInfo, view2);
                }
            };
            view = FeatureFlags.ADAPTIVE_ICON_WINDOW_ANIM.get() ? workspace.getFirstMatch(new CellLayout[]{workspace.mLauncher.mHotseat, cellLayout}, itemOperator2, new Workspace.ItemOperator() { // from class: c.a.a.w0
                @Override // com.android.launcher3.Workspace.ItemOperator
                public final boolean evaluate(ItemInfo itemInfo, View view2) {
                    return Workspace.e(Workspace.ItemOperator.this, itemInfo, view2);
                }
            }) : workspace.getFirstMatch(new CellLayout[]{workspace.mLauncher.mHotseat, cellLayout}, itemOperator2);
        }
        final RectF rectF = new RectF();
        final boolean z = view != null && view.isAttachedToWindow();
        r1 = z ? FloatingIconView.getFloatingIconView((Launcher) this.mActivity, view, true, rectF, false) : null;
        LauncherRootView rootView = ((BaseQuickstepLauncher) this.mActivity).getRootView();
        rootView.mForceHideBackArrow = true;
        rootView.setDisallowBackGesture(rootView.mDisallowBackGesture);
        ((BaseQuickstepLauncher) this.mActivity).addActivityFlags(32);
        return new SwipeUpAnimationLogic.HomeAnimationFactory(r1) { // from class: com.android.quickstep.LauncherSwipeHandlerV2.1
            @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
            public AnimatorPlaybackController createActivityAnimationToHome() {
                DeviceProfile deviceProfile = LauncherSwipeHandlerV2.this.mDp;
                return ((BaseQuickstepLauncher) LauncherSwipeHandlerV2.this.mActivity).getStateManager().createAnimationToNewWorkspace(LauncherState.NORMAL, Math.max(deviceProfile.widthPx, deviceProfile.heightPx) * 2, 0);
            }

            @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
            public RectF getWindowTargetRect() {
                return z ? rectF : super.getWindowTargetRect();
            }

            @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
            public void playAtomicAnimation(float f) {
                new StaggeredWorkspaceAnim((Launcher) LauncherSwipeHandlerV2.this.mActivity, f, true).start();
            }
        };
    }

    @Override // com.android.quickstep.BaseSwipeUpHandlerV2
    public void finishRecentsControllerToHome(Runnable runnable) {
        this.mRecentsAnimationController.finish(true, runnable, true);
    }
}
