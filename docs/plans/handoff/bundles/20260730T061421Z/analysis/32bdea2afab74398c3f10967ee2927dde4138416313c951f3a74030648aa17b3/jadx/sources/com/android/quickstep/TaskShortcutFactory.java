package com.android.quickstep;

import android.app.Activity;
import android.app.ActivityOptions;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.WellbeingModel;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.InstantAppResolver;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.TaskShortcutFactory;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskThumbnailView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.view.AppTransitionAnimationSpecCompat;
import com.android.systemui.shared.recents.view.AppTransitionAnimationSpecsFuture;
import com.android.systemui.shared.recents.view.RecentsTransition;
import com.android.systemui.shared.system.ActivityCompat;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.ActivityOptionsCompat;
import com.android.systemui.shared.system.WindowManagerWrapper;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public interface TaskShortcutFactory {
    public static final TaskShortcutFactory APP_INFO = new TaskShortcutFactory() { // from class: c.a.b.t1
        @Override // com.android.quickstep.TaskShortcutFactory
        public final SystemShortcut getShortcut(BaseDraggingActivity baseDraggingActivity, TaskView taskView) {
            return new SystemShortcut.AppInfo(baseDraggingActivity, taskView.getItemInfo());
        }
    };
    public static final TaskShortcutFactory FREE_FORM;
    public static final TaskShortcutFactory INSTALL;
    public static final TaskShortcutFactory MODAL;
    public static final TaskShortcutFactory PIN;
    public static final TaskShortcutFactory SCREENSHOT;
    public static final TaskShortcutFactory SPLIT_SCREEN;
    public static final TaskShortcutFactory WELLBEING;

    public abstract class MultiWindowFactory implements TaskShortcutFactory {
        public final int mIconRes;
        public final StatsLogManager.LauncherEvent mLauncherEvent;
        public final int mTextRes;

        public MultiWindowFactory(int i, int i2, StatsLogManager.LauncherEvent launcherEvent) {
            this.mIconRes = i;
            this.mTextRes = i2;
            this.mLauncherEvent = launcherEvent;
        }

        @Override // com.android.quickstep.TaskShortcutFactory
        public SystemShortcut getShortcut(BaseDraggingActivity baseDraggingActivity, TaskView taskView) {
            Task task = taskView.getTask();
            if (task.isDockable && isAvailable(baseDraggingActivity, task.key.displayId)) {
                return new MultiWindowSystemShortcut(this.mIconRes, this.mTextRes, baseDraggingActivity, taskView, this, this.mLauncherEvent);
            }
            return null;
        }

        public abstract boolean isAvailable(BaseDraggingActivity baseDraggingActivity, int i);

        public abstract ActivityOptions makeLaunchOptions(Activity activity);

        public abstract boolean onActivityStarted(BaseDraggingActivity baseDraggingActivity);
    }

    public class MultiWindowSystemShortcut extends SystemShortcut {
        public final MultiWindowFactory mFactory;
        public Handler mHandler;
        public final StatsLogManager.LauncherEvent mLauncherEvent;
        public final RecentsView mRecentsView;
        public final TaskView mTaskView;
        public final TaskThumbnailView mThumbnailView;

        public MultiWindowSystemShortcut(int i, int i2, BaseDraggingActivity baseDraggingActivity, TaskView taskView, MultiWindowFactory multiWindowFactory, StatsLogManager.LauncherEvent launcherEvent) {
            super(i, i2, baseDraggingActivity, taskView.getItemInfo());
            this.mLauncherEvent = launcherEvent;
            this.mHandler = new Handler(Looper.getMainLooper());
            this.mTaskView = taskView;
            this.mRecentsView = (RecentsView) baseDraggingActivity.getOverviewPanel();
            this.mThumbnailView = taskView.getThumbnail();
            this.mFactory = multiWindowFactory;
        }

        public /* synthetic */ void h(int i) {
            this.mRecentsView.setIgnoreResetTask(i);
            this.mTaskView.setAlpha(RecentsState.NO_OFFSET);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Task.TaskKey taskKey = this.mTaskView.getTask().key;
            final int i = taskKey.id;
            final View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: com.android.quickstep.TaskShortcutFactory.MultiWindowSystemShortcut.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    MultiWindowSystemShortcut.this.mTaskView.getRootView().removeOnLayoutChangeListener(this);
                    MultiWindowSystemShortcut.this.mRecentsView.clearIgnoreResetTask(i);
                    MultiWindowSystemShortcut.this.mRecentsView.dismissTask(MultiWindowSystemShortcut.this.mTaskView, false, false);
                }
            };
            DeviceProfile.OnDeviceProfileChangeListener onDeviceProfileChangeListener = new DeviceProfile.OnDeviceProfileChangeListener() { // from class: com.android.quickstep.TaskShortcutFactory.MultiWindowSystemShortcut.2
                @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
                public void onDeviceProfileChanged(DeviceProfile deviceProfile) {
                    MultiWindowSystemShortcut.this.mTarget.removeOnDeviceProfileChangeListener(this);
                    if (deviceProfile.isMultiWindowMode) {
                        MultiWindowSystemShortcut.this.mTaskView.getRootView().addOnLayoutChangeListener(onLayoutChangeListener);
                    }
                }
            };
            SystemShortcut.dismissTaskMenuView(this.mTarget);
            ActivityOptions makeLaunchOptions = this.mFactory.makeLaunchOptions(this.mTarget);
            if (makeLaunchOptions != null && ActivityManagerWrapper.getInstance().startActivityFromRecents(i, makeLaunchOptions) && this.mFactory.onActivityStarted(this.mTarget)) {
                this.mTarget.addOnDeviceProfileChangeListener(onDeviceProfileChangeListener);
                Runnable runnable = new Runnable() { // from class: c.a.b.q1
                    @Override // java.lang.Runnable
                    public final void run() {
                        TaskShortcutFactory.MultiWindowSystemShortcut.this.h(i);
                    }
                };
                int[] iArr = new int[2];
                this.mThumbnailView.getLocationOnScreen(iArr);
                final Rect rect = new Rect(iArr[0], iArr[1], iArr[0] + ((int) (this.mTaskView.getScaleX() * this.mThumbnailView.getWidth())), iArr[1] + ((int) (this.mTaskView.getScaleY() * this.mThumbnailView.getHeight())));
                float dimAlpha = this.mThumbnailView.getDimAlpha();
                this.mThumbnailView.setDimAlpha(RecentsState.NO_OFFSET);
                final Bitmap drawViewIntoHardwareBitmap = RecentsTransition.drawViewIntoHardwareBitmap(rect.width(), rect.height(), this.mThumbnailView, 1.0f, -16777216);
                this.mThumbnailView.setDimAlpha(dimAlpha);
                WindowManagerWrapper.getInstance().overridePendingAppTransitionMultiThumbFuture(new AppTransitionAnimationSpecsFuture(this.mHandler) { // from class: com.android.quickstep.TaskShortcutFactory.MultiWindowSystemShortcut.3
                    @Override // com.android.systemui.shared.recents.view.AppTransitionAnimationSpecsFuture
                    public List composeSpecs() {
                        return Collections.singletonList(new AppTransitionAnimationSpecCompat(i, drawViewIntoHardwareBitmap, rect));
                    }
                }, runnable, this.mHandler, true, taskKey.displayId);
                this.mTarget.getStatsLogManager().logger().withItemInfo(this.mTaskView.getItemInfo()).log(this.mLauncherEvent);
            }
        }
    }

    public class PinSystemShortcut extends SystemShortcut {
        public static final String TAG = "PinSystemShortcut";
        public final TaskView mTaskView;

        public PinSystemShortcut(BaseDraggingActivity baseDraggingActivity, TaskView taskView) {
            super(R.drawable.ic_pin, R.string.recent_task_option_pin, baseDraggingActivity, taskView.getItemInfo());
            this.mTaskView = taskView;
        }

        public /* synthetic */ void h(Boolean bool) {
            if (bool.booleanValue()) {
                ((SystemUiProxy) SystemUiProxy.INSTANCE.b(this.mTarget)).startScreenPinning(this.mTaskView.getTask().key.id);
            } else {
                this.mTaskView.notifyTaskLaunchFailed(TAG);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.mTaskView.launchTask(true, new Consumer() { // from class: c.a.b.r1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    TaskShortcutFactory.PinSystemShortcut.this.h((Boolean) obj);
                }
            }, Executors.MAIN_EXECUTOR.mHandler);
            SystemShortcut.dismissTaskMenuView(this.mTarget);
            this.mTarget.getStatsLogManager().logger().withItemInfo(this.mTaskView.getItemInfo()).log(StatsLogManager.LauncherEvent.LAUNCHER_SYSTEM_SHORTCUT_PIN_TAP);
        }
    }

    static {
        StatsLogManager.LauncherEvent launcherEvent = StatsLogManager.LauncherEvent.LAUNCHER_SYSTEM_SHORTCUT_SPLIT_SCREEN_TAP;
        int i = R.drawable.ic_split_screen;
        SPLIT_SCREEN = new MultiWindowFactory(i, R.string.recent_task_option_split_screen, launcherEvent) { // from class: com.android.quickstep.TaskShortcutFactory.1
            @Override // com.android.quickstep.TaskShortcutFactory.MultiWindowFactory
            public boolean isAvailable(BaseDraggingActivity baseDraggingActivity, int i2) {
                return !baseDraggingActivity.getDeviceProfile().isMultiWindowMode && (i2 == -1 || i2 == 0);
            }

            @Override // com.android.quickstep.TaskShortcutFactory.MultiWindowFactory
            public ActivityOptions makeLaunchOptions(Activity activity) {
                int navBarPosition = WindowManagerWrapper.getInstance().getNavBarPosition(new ActivityCompat(activity).getDisplayId());
                if (navBarPosition == -1) {
                    return null;
                }
                return ActivityOptionsCompat.makeSplitScreenOptions(navBarPosition != 1);
            }

            @Override // com.android.quickstep.TaskShortcutFactory.MultiWindowFactory
            public boolean onActivityStarted(BaseDraggingActivity baseDraggingActivity) {
                ((SystemUiProxy) SystemUiProxy.INSTANCE.b(baseDraggingActivity)).onSplitScreenInvoked();
                baseDraggingActivity.getUserEventDispatcher().logActionOnControl(0, 16);
                return true;
            }
        };
        FREE_FORM = new MultiWindowFactory(i, R.string.recent_task_option_freeform, StatsLogManager.LauncherEvent.LAUNCHER_SYSTEM_SHORTCUT_FREE_FORM_TAP) { // from class: com.android.quickstep.TaskShortcutFactory.2
            @Override // com.android.quickstep.TaskShortcutFactory.MultiWindowFactory
            public boolean isAvailable(BaseDraggingActivity baseDraggingActivity, int i2) {
                return ActivityManagerWrapper.getInstance().supportsFreeformMultiWindow(baseDraggingActivity);
            }

            @Override // com.android.quickstep.TaskShortcutFactory.MultiWindowFactory
            public ActivityOptions makeLaunchOptions(Activity activity) {
                ActivityOptions makeFreeformOptions = ActivityOptionsCompat.makeFreeformOptions();
                makeFreeformOptions.setLaunchBounds(new Rect(50, 50, 200, 200));
                return makeFreeformOptions;
            }

            @Override // com.android.quickstep.TaskShortcutFactory.MultiWindowFactory
            public boolean onActivityStarted(BaseDraggingActivity baseDraggingActivity) {
                baseDraggingActivity.returnToHomescreen();
                return true;
            }
        };
        PIN = new TaskShortcutFactory() { // from class: c.a.b.s1
            @Override // com.android.quickstep.TaskShortcutFactory
            public final SystemShortcut getShortcut(BaseDraggingActivity baseDraggingActivity, TaskView taskView) {
                if (((SystemUiProxy) SystemUiProxy.INSTANCE.b(baseDraggingActivity)).isActive() && ActivityManagerWrapper.getInstance().isScreenPinningEnabled() && !ActivityManagerWrapper.getInstance().isLockToAppActive()) {
                    return new TaskShortcutFactory.PinSystemShortcut(baseDraggingActivity, taskView);
                }
                return null;
            }
        };
        INSTALL = new TaskShortcutFactory() { // from class: c.a.b.u1
            @Override // com.android.quickstep.TaskShortcutFactory
            public final SystemShortcut getShortcut(BaseDraggingActivity baseDraggingActivity, TaskView taskView) {
                if (InstantAppResolver.newInstance(baseDraggingActivity).isInstantApp(baseDraggingActivity, taskView.getTask().getTopComponent().getPackageName())) {
                    return new SystemShortcut.Install(baseDraggingActivity, taskView.getItemInfo());
                }
                return null;
            }
        };
        WELLBEING = new TaskShortcutFactory() { // from class: c.a.b.p1
            @Override // com.android.quickstep.TaskShortcutFactory
            public final SystemShortcut getShortcut(BaseDraggingActivity baseDraggingActivity, TaskView taskView) {
                SystemShortcut.Factory factory = WellbeingModel.SHORTCUT_FACTORY;
                return WellbeingModel.e(baseDraggingActivity, taskView.getItemInfo());
            }
        };
        SCREENSHOT = new TaskShortcutFactory() { // from class: c.a.b.v1
            @Override // com.android.quickstep.TaskShortcutFactory
            public final SystemShortcut getShortcut(BaseDraggingActivity baseDraggingActivity, TaskView taskView) {
                if (FeatureFlags.ENABLE_OVERVIEW_ACTIONS.get()) {
                    return taskView.getThumbnail().getTaskOverlay().getScreenshotShortcut(baseDraggingActivity, taskView.getItemInfo());
                }
                return null;
            }
        };
        MODAL = new TaskShortcutFactory() { // from class: c.a.b.o1
            @Override // com.android.quickstep.TaskShortcutFactory
            public final SystemShortcut getShortcut(BaseDraggingActivity baseDraggingActivity, TaskView taskView) {
                if (FeatureFlags.ENABLE_OVERVIEW_ACTIONS.get() && FeatureFlags.ENABLE_OVERVIEW_SELECTIONS.get()) {
                    return taskView.getThumbnail().getTaskOverlay().getModalStateSystemShortcut(taskView.getItemInfo());
                }
                return null;
            }
        };
    }

    SystemShortcut getShortcut(BaseDraggingActivity baseDraggingActivity, TaskView taskView);
}
