package com.android.systemui.shared.system;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.ActivityTaskManager;
import android.app.AppGlobals;
import android.app.IAssistDataReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.UserInfo;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.Log;
import android.view.IRecentsAnimationController;
import android.view.IRecentsAnimationRunner;
import android.view.RemoteAnimationTarget;
import c.a.c.a.a;
import com.android.internal.app.IVoiceInteractionManagerService;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.model.ThumbnailData;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class ActivityManagerWrapper {
    public static final String CLOSE_SYSTEM_WINDOWS_REASON_HOME_KEY = "homekey";
    public static final String CLOSE_SYSTEM_WINDOWS_REASON_RECENTS = "recentapps";
    public static final String INVOCATION_TIME_MS_KEY = "invocation_time_ms";
    public static final String TAG = "ActivityManagerWrapper";
    public static final ActivityManagerWrapper sInstance = new ActivityManagerWrapper();
    public final PackageManager mPackageManager = AppGlobals.getInitialApplication().getPackageManager();
    public final BackgroundExecutor mBackgroundExecutor = BackgroundExecutor.get();
    public final TaskStackChangeListeners mTaskStackChangeListeners = new TaskStackChangeListeners(Looper.getMainLooper());

    private String getBadgedLabel(String str, int i) {
        return i != UserHandle.myUserId() ? this.mPackageManager.getUserBadgedLabel(str, new UserHandle(i)).toString() : str;
    }

    public static ActivityManagerWrapper getInstance() {
        return sInstance;
    }

    public static boolean isHomeTask(ActivityManager.RunningTaskInfo runningTaskInfo) {
        return runningTaskInfo.configuration.windowConfiguration.getActivityType() == 2;
    }

    public void cancelRecentsAnimation(boolean z) {
        try {
            ActivityTaskManager.getService().cancelRecentsAnimation(z);
        } catch (RemoteException e) {
            Log.e(TAG, "Failed to cancel recents animation", e);
        }
    }

    public void cancelWindowTransition(int i) {
        try {
            ActivityTaskManager.getService().cancelTaskWindowTransition(i);
        } catch (RemoteException e) {
            Log.w(TAG, "Failed to cancel window transition for task=" + i, e);
        }
    }

    public Future closeSystemWindows(final String str) {
        return this.mBackgroundExecutor.submit(new Runnable() { // from class: com.android.systemui.shared.system.ActivityManagerWrapper.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ActivityManager.getService().closeSystemDialogs(str);
                } catch (RemoteException e) {
                    Log.w(ActivityManagerWrapper.TAG, "Failed to close system windows", e);
                }
            }
        });
    }

    public String getBadgedActivityLabel(ActivityInfo activityInfo, int i) {
        return getBadgedLabel(activityInfo.loadLabel(this.mPackageManager).toString(), i);
    }

    public String getBadgedApplicationLabel(ApplicationInfo applicationInfo, int i) {
        return getBadgedLabel(applicationInfo.loadLabel(this.mPackageManager).toString(), i);
    }

    public String getBadgedContentDescription(ActivityInfo activityInfo, int i, ActivityManager.TaskDescription taskDescription) {
        String charSequence = (taskDescription == null || taskDescription.getLabel() == null) ? activityInfo.loadLabel(this.mPackageManager).toString() : taskDescription.getLabel();
        String charSequence2 = activityInfo.applicationInfo.loadLabel(this.mPackageManager).toString();
        String badgedLabel = getBadgedLabel(charSequence2, i);
        if (charSequence2.equals(charSequence)) {
            return badgedLabel;
        }
        return badgedLabel + " " + charSequence;
    }

    public int getCurrentUserId() {
        try {
            UserInfo currentUser = ActivityManager.getService().getCurrentUser();
            if (currentUser != null) {
                return currentUser.id;
            }
            return 0;
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public List getRecentTasks(int i, int i2) {
        try {
            return ActivityTaskManager.getService().getRecentTasks(i, 2, i2).getList();
        } catch (RemoteException e) {
            Log.e(TAG, "Failed to get recent tasks", e);
            return new ArrayList();
        }
    }

    public ActivityManager.RunningTaskInfo getRunningTask() {
        return getRunningTask(false);
    }

    public ThumbnailData getTaskThumbnail(int i, boolean z) {
        ActivityManager.TaskSnapshot taskSnapshot;
        try {
            taskSnapshot = ActivityTaskManager.getService().getTaskSnapshot(i, z);
        } catch (RemoteException e) {
            Log.w(TAG, "Failed to retrieve task snapshot", e);
            taskSnapshot = null;
        }
        return taskSnapshot != null ? new ThumbnailData(taskSnapshot) : new ThumbnailData();
    }

    public void invalidateHomeTaskSnapshot(final Activity activity) {
        this.mBackgroundExecutor.submit(new Runnable() { // from class: com.android.systemui.shared.system.ActivityManagerWrapper.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ActivityTaskManager.getService().invalidateHomeTaskSnapshot(activity.getActivityToken());
                } catch (RemoteException e) {
                    Log.w(ActivityManagerWrapper.TAG, "Failed to invalidate home snapshot", e);
                }
            }
        });
    }

    public boolean isLockTaskKioskModeActive() {
        try {
            return ActivityTaskManager.getService().getLockTaskModeState() == 1;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isLockToAppActive() {
        try {
            return ActivityTaskManager.getService().getLockTaskModeState() != 0;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isScreenPinningActive() {
        try {
            return ActivityTaskManager.getService().getLockTaskModeState() == 2;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isScreenPinningEnabled() {
        return Settings.System.getInt(AppGlobals.getInitialApplication().getContentResolver(), "lock_to_app_enabled", 0) != 0;
    }

    public void registerTaskStackListener(TaskStackChangeListener taskStackChangeListener) {
        synchronized (this.mTaskStackChangeListeners) {
            this.mTaskStackChangeListeners.addListener(ActivityManager.getService(), taskStackChangeListener);
        }
    }

    public void removeAllRecentTasks() {
        this.mBackgroundExecutor.submit(new Runnable() { // from class: com.android.systemui.shared.system.ActivityManagerWrapper.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ActivityTaskManager.getService().removeAllVisibleRecentTasks();
                } catch (RemoteException e) {
                    Log.w(ActivityManagerWrapper.TAG, "Failed to remove all tasks", e);
                }
            }
        });
    }

    public void removeTask(final int i) {
        this.mBackgroundExecutor.submit(new Runnable() { // from class: com.android.systemui.shared.system.ActivityManagerWrapper.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ActivityTaskManager.getService().removeTask(i);
                } catch (RemoteException e) {
                    StringBuilder f = a.f("Failed to remove task=");
                    f.append(i);
                    Log.w(ActivityManagerWrapper.TAG, f.toString(), e);
                }
            }
        });
    }

    public boolean setTaskWindowingModeSplitScreenPrimary(int i, int i2, Rect rect) {
        try {
            return ActivityTaskManager.getService().setTaskWindowingModeSplitScreenPrimary(i, true);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean showVoiceSession(IBinder iBinder, Bundle bundle, int i) {
        IVoiceInteractionManagerService asInterface = IVoiceInteractionManagerService.Stub.asInterface(ServiceManager.getService("voiceinteraction"));
        if (asInterface == null) {
            return false;
        }
        bundle.putLong(INVOCATION_TIME_MS_KEY, SystemClock.elapsedRealtime());
        try {
            return asInterface.showSessionFromSession(iBinder, bundle, i);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean startActivityFromRecents(int i, ActivityOptions activityOptions) {
        Bundle bundle;
        if (activityOptions == null) {
            bundle = null;
        } else {
            try {
                bundle = activityOptions.toBundle();
            } catch (Exception unused) {
                return false;
            }
        }
        ActivityTaskManager.getService().startActivityFromRecents(i, bundle);
        return true;
    }

    public void startActivityFromRecentsAsync(Task.TaskKey taskKey, ActivityOptions activityOptions, Consumer consumer, Handler handler) {
        startActivityFromRecentsAsync(taskKey, activityOptions, 0, 0, consumer, handler);
    }

    public void startRecentsActivity(Intent intent, final AssistDataReceiver assistDataReceiver, final RecentsAnimationListener recentsAnimationListener, final Consumer consumer, Handler handler) {
        IAssistDataReceiver iAssistDataReceiver;
        if (assistDataReceiver != null) {
            try {
                iAssistDataReceiver = new IAssistDataReceiver.Stub() { // from class: com.android.systemui.shared.system.ActivityManagerWrapper.2
                    public void onHandleAssistData(Bundle bundle) {
                        assistDataReceiver.onHandleAssistData(bundle);
                    }

                    public void onHandleAssistScreenshot(Bitmap bitmap) {
                        assistDataReceiver.onHandleAssistScreenshot(bitmap);
                    }
                };
            } catch (Exception unused) {
                if (consumer != null) {
                    handler.post(new Runnable() { // from class: com.android.systemui.shared.system.ActivityManagerWrapper.5
                        @Override // java.lang.Runnable
                        public void run() {
                            consumer.accept(Boolean.FALSE);
                        }
                    });
                    return;
                }
                return;
            }
        } else {
            iAssistDataReceiver = null;
        }
        ActivityTaskManager.getService().startRecentsActivity(intent, iAssistDataReceiver, recentsAnimationListener != null ? new IRecentsAnimationRunner.Stub() { // from class: com.android.systemui.shared.system.ActivityManagerWrapper.3
            public void onAnimationCanceled(ActivityManager.TaskSnapshot taskSnapshot) {
                recentsAnimationListener.onAnimationCanceled(taskSnapshot != null ? new ThumbnailData(taskSnapshot) : null);
            }

            public void onAnimationStart(IRecentsAnimationController iRecentsAnimationController, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, Rect rect, Rect rect2) {
                recentsAnimationListener.onAnimationStart(new RecentsAnimationControllerCompat(iRecentsAnimationController), RemoteAnimationTargetCompat.wrap(remoteAnimationTargetArr), RemoteAnimationTargetCompat.wrap(remoteAnimationTargetArr2), rect, rect2);
            }

            public void onTaskAppeared(RemoteAnimationTarget remoteAnimationTarget) {
                recentsAnimationListener.onTaskAppeared(new RemoteAnimationTargetCompat(remoteAnimationTarget));
            }
        } : null);
        if (consumer != null) {
            handler.post(new Runnable() { // from class: com.android.systemui.shared.system.ActivityManagerWrapper.4
                @Override // java.lang.Runnable
                public void run() {
                    consumer.accept(Boolean.TRUE);
                }
            });
        }
    }

    public boolean supportsFreeformMultiWindow(Context context) {
        boolean z = Settings.Global.getInt(context.getContentResolver(), "enable_freeform_support", 0) != 0;
        if (ActivityTaskManager.supportsMultiWindow(context)) {
            return context.getPackageManager().hasSystemFeature("android.software.freeform_window_management") || z;
        }
        return false;
    }

    public void unregisterTaskStackListener(TaskStackChangeListener taskStackChangeListener) {
        synchronized (this.mTaskStackChangeListeners) {
            this.mTaskStackChangeListeners.removeListener(taskStackChangeListener);
        }
    }

    public ActivityManager.RunningTaskInfo getRunningTask(boolean z) {
        try {
            List filteredTasks = ActivityTaskManager.getService().getFilteredTasks(1, z);
            if (filteredTasks.isEmpty()) {
                return null;
            }
            return (ActivityManager.RunningTaskInfo) filteredTasks.get(0);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public void startActivityFromRecentsAsync(Task.TaskKey taskKey, ActivityOptions activityOptions, int i, int i2, final Consumer consumer, Handler handler) {
        if (taskKey.windowingMode == 3) {
            if (activityOptions == null) {
                activityOptions = ActivityOptions.makeBasic();
            }
            activityOptions.setLaunchWindowingMode(4);
        } else if (i != 0 || i2 != 0) {
            if (activityOptions == null) {
                activityOptions = ActivityOptions.makeBasic();
            }
            activityOptions.setLaunchWindowingMode(i);
            activityOptions.setLaunchActivityType(i2);
        }
        final boolean z = false;
        try {
            z = startActivityFromRecents(taskKey.id, activityOptions);
        } catch (Exception unused) {
        }
        if (consumer != null) {
            handler.post(new Runnable() { // from class: com.android.systemui.shared.system.ActivityManagerWrapper.6
                @Override // java.lang.Runnable
                public void run() {
                    consumer.accept(Boolean.valueOf(z));
                }
            });
        }
    }
}
