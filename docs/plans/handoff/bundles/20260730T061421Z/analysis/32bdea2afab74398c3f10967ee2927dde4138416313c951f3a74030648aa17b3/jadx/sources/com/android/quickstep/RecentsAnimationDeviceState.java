package com.android.quickstep;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Region;
import android.os.Process;
import android.os.UserManager;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import com.android.launcher3.Utilities;
import com.android.launcher3.testing.TestProtocol;
import com.android.launcher3.util.DefaultDisplay;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.SecureSettingsObserver;
import com.android.quickstep.GestureState;
import com.android.quickstep.OrientationTouchTransformer;
import com.android.quickstep.RecentsAnimationDeviceState;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.NavBarPosition;
import com.android.quickstep.util.RecentsOrientedState;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.shared.system.SystemGestureExclusionListenerCompat;
import com.android.systemui.shared.system.TaskStackChangeListener;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

/* loaded from: classes.dex */
public class RecentsAnimationDeviceState implements SysUINavigationMode.NavigationModeChangeListener, DefaultDisplay.DisplayInfoChangeListener {
    public boolean mAssistantAvailable;
    public float mAssistantVisibility;
    public final Context mContext;
    public final DefaultDisplay mDefaultDisplay;
    public final int mDisplayId;
    public int mDisplayRotation;
    public SystemGestureExclusionListenerCompat mExclusionListener;
    public Region mExclusionRegion;
    public final List mGestureBlockedActivities;
    public boolean mInOverview;
    public boolean mIsUserSetupComplete;
    public boolean mIsUserUnlocked;
    public NavBarPosition mNavBarPosition;
    public Runnable mOnDestroyFrozenTaskRunnable;
    public OrientationEventListener mOrientationListener;
    public OrientationTouchTransformer mOrientationTouchTransformer;
    public final SysUINavigationMode mSysUiNavMode;
    public int mSystemUiStateFlags;
    public boolean mTaskListFrozen;
    public final ArrayList mOnDestroyActions = new ArrayList();
    public SysUINavigationMode.Mode mMode = SysUINavigationMode.Mode.THREE_BUTTONS;
    public final Region mDeferredGestureRegion = new Region();
    public final ArrayList mUserUnlockedActions = new ArrayList();
    public final BroadcastReceiver mUserUnlockedReceiver = new BroadcastReceiver() { // from class: com.android.quickstep.RecentsAnimationDeviceState.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.USER_UNLOCKED".equals(intent.getAction())) {
                RecentsAnimationDeviceState.this.mIsUserUnlocked = true;
                RecentsAnimationDeviceState.this.notifyUserUnlocked();
            }
        }
    };
    public TaskStackChangeListener mFrozenTaskListener = new TaskStackChangeListener() { // from class: com.android.quickstep.RecentsAnimationDeviceState.2
        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public void onActivityRotation(int i) {
            super.onActivityRotation(i);
            if (i != RecentsAnimationDeviceState.this.mDisplayId) {
                return;
            }
            RecentsAnimationDeviceState.this.mPrioritizeDeviceRotation = true;
            if (RecentsAnimationDeviceState.this.mInOverview) {
                RecentsAnimationDeviceState.this.mExitOverviewRunnable.run();
            }
        }

        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public void onRecentTaskListFrozenChanged(boolean z) {
            RecentsAnimationDeviceState.this.mTaskListFrozen = z;
            if (z || RecentsAnimationDeviceState.this.mInOverview) {
                return;
            }
            RecentsAnimationDeviceState.this.enableMultipleRegions(false);
        }
    };
    public Runnable mExitOverviewRunnable = new Runnable() { // from class: com.android.quickstep.RecentsAnimationDeviceState.3
        @Override // java.lang.Runnable
        public void run() {
            RecentsAnimationDeviceState.this.mInOverview = false;
            RecentsAnimationDeviceState.this.enableMultipleRegions(false);
        }
    };
    public int mSensorRotation = 0;
    public int mCurrentAppRotation = -1;
    public boolean mPrioritizeDeviceRotation = false;

    public RecentsAnimationDeviceState(Context context) {
        String[] strArr;
        this.mContext = context;
        this.mSysUiNavMode = (SysUINavigationMode) SysUINavigationMode.INSTANCE.b(context);
        DefaultDisplay defaultDisplay = (DefaultDisplay) DefaultDisplay.INSTANCE.b(context);
        this.mDefaultDisplay = defaultDisplay;
        this.mDisplayId = defaultDisplay.mInfo.id;
        runOnDestroy(new Runnable() { // from class: c.a.b.R0
            @Override // java.lang.Runnable
            public final void run() {
                RecentsAnimationDeviceState.this.b();
            }
        });
        boolean isUserUnlocked = ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked(Process.myUserHandle());
        this.mIsUserUnlocked = isUserUnlocked;
        if (!isUserUnlocked) {
            this.mContext.registerReceiver(this.mUserUnlockedReceiver, new IntentFilter("android.intent.action.USER_UNLOCKED"));
        }
        runOnDestroy(new Runnable() { // from class: c.a.b.T0
            @Override // java.lang.Runnable
            public final void run() {
                RecentsAnimationDeviceState.this.c();
            }
        });
        final SystemGestureExclusionListenerCompat systemGestureExclusionListenerCompat = new SystemGestureExclusionListenerCompat(this.mDisplayId) { // from class: com.android.quickstep.RecentsAnimationDeviceState.4
            @Override // com.android.systemui.shared.system.SystemGestureExclusionListenerCompat
            public void onExclusionChanged(Region region) {
                RecentsAnimationDeviceState.this.mExclusionRegion = region;
            }
        };
        this.mExclusionListener = systemGestureExclusionListenerCompat;
        runOnDestroy(new Runnable() { // from class: c.a.b.f
            @Override // java.lang.Runnable
            public final void run() {
                SystemGestureExclusionListenerCompat.this.unregister();
            }
        });
        final Resources resources = this.mContext.getResources();
        this.mOrientationTouchTransformer = new OrientationTouchTransformer(resources, this.mMode, new OrientationTouchTransformer.QuickStepContractInfo() { // from class: c.a.b.S0
            @Override // com.android.quickstep.OrientationTouchTransformer.QuickStepContractInfo
            public final float getWindowCornerRadius() {
                return QuickStepContract.getWindowCornerRadius(resources);
            }
        });
        onNavigationModeChanged(this.mSysUiNavMode.addModeChangeListener(this));
        runOnDestroy(new Runnable() { // from class: c.a.b.U0
            @Override // java.lang.Runnable
            public final void run() {
                RecentsAnimationDeviceState.this.d();
            }
        });
        try {
            strArr = context.getResources().getStringArray(R.array.gesture_blocking_activities);
        } catch (Resources.NotFoundException unused) {
            strArr = new String[0];
        }
        this.mGestureBlockedActivities = new ArrayList(strArr.length);
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str)) {
                this.mGestureBlockedActivities.add(ComponentName.unflattenFromString(str));
            }
        }
        final SecureSettingsObserver secureSettingsObserver = new SecureSettingsObserver(context.getContentResolver(), new SecureSettingsObserver.OnChangeListener() { // from class: c.a.b.Y0
            @Override // com.android.launcher3.util.SecureSettingsObserver.OnChangeListener
            public final void onSettingsChanged(boolean z) {
                RecentsAnimationDeviceState.this.e(z);
            }
        }, "user_setup_complete", 0);
        boolean value = secureSettingsObserver.getValue();
        this.mIsUserSetupComplete = value;
        if (!value) {
            secureSettingsObserver.register();
            runOnDestroy(new Runnable() { // from class: c.a.b.z0
                @Override // java.lang.Runnable
                public final void run() {
                    SecureSettingsObserver secureSettingsObserver2 = SecureSettingsObserver.this;
                    secureSettingsObserver2.mResolver.unregisterContentObserver(secureSettingsObserver2);
                }
            });
        }
        this.mOrientationListener = new OrientationEventListener(context) { // from class: com.android.quickstep.RecentsAnimationDeviceState.5
            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int i) {
                int rotationForUserDegreesRotated = RecentsOrientedState.getRotationForUserDegreesRotated(i, RecentsAnimationDeviceState.this.mSensorRotation);
                if (rotationForUserDegreesRotated == RecentsAnimationDeviceState.this.mSensorRotation) {
                    return;
                }
                RecentsAnimationDeviceState.this.mSensorRotation = rotationForUserDegreesRotated;
                RecentsAnimationDeviceState.this.mPrioritizeDeviceRotation = true;
                if (rotationForUserDegreesRotated == RecentsAnimationDeviceState.this.mCurrentAppRotation) {
                    RecentsAnimationDeviceState.this.toggleSecondaryNavBarsForRotation();
                }
            }
        };
    }

    private void destroyOrientationSwipeHandlerCallback() {
        ActivityManagerWrapper.getInstance().unregisterTaskStackListener(this.mFrozenTaskListener);
        this.mOnDestroyActions.remove(this.mOnDestroyFrozenTaskRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enableMultipleRegions(boolean z) {
        this.mOrientationTouchTransformer.enableMultipleRegions(z, this.mDefaultDisplay.mInfo);
        notifySysuiOfCurrentRotation(this.mOrientationTouchTransformer.getQuickStepStartingRotation());
        if (!z || this.mInOverview || TestProtocol.sDisableSensorRotation) {
            this.mOrientationListener.disable();
        } else {
            this.mSensorRotation = this.mCurrentAppRotation;
            this.mOrientationListener.enable();
        }
    }

    private void notifySysuiOfCurrentRotation(final int i) {
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: c.a.b.W0
            @Override // java.lang.Runnable
            public final void run() {
                RecentsAnimationDeviceState.this.f(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyUserUnlocked() {
        Iterator it = this.mUserUnlockedActions.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.mUserUnlockedActions.clear();
        Utilities.unregisterReceiverSafely(this.mContext, this.mUserUnlockedReceiver);
    }

    private void runOnDestroy(Runnable runnable) {
        this.mOnDestroyActions.add(runnable);
    }

    private void setupOrientationSwipeHandler() {
        ActivityManagerWrapper.getInstance().registerTaskStackListener(this.mFrozenTaskListener);
        Runnable runnable = new Runnable() { // from class: c.a.b.V0
            @Override // java.lang.Runnable
            public final void run() {
                RecentsAnimationDeviceState.this.g();
            }
        };
        this.mOnDestroyFrozenTaskRunnable = runnable;
        runOnDestroy(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleSecondaryNavBarsForRotation() {
        this.mOrientationTouchTransformer.setSingleActiveRegion(this.mDefaultDisplay.mInfo);
        notifySysuiOfCurrentRotation(this.mOrientationTouchTransformer.getCurrentActiveRotation());
    }

    public /* synthetic */ void a(SysUINavigationMode.NavigationModeChangeListener navigationModeChangeListener) {
        this.mSysUiNavMode.removeModeChangeListener(navigationModeChangeListener);
    }

    public void addNavigationModeChangedCallback(final SysUINavigationMode.NavigationModeChangeListener navigationModeChangeListener) {
        navigationModeChangeListener.onNavigationModeChanged(this.mSysUiNavMode.addModeChangeListener(navigationModeChangeListener));
        runOnDestroy(new Runnable() { // from class: c.a.b.X0
            @Override // java.lang.Runnable
            public final void run() {
                RecentsAnimationDeviceState.this.a(navigationModeChangeListener);
            }
        });
    }

    public void b() {
        this.mDefaultDisplay.mListeners.remove(this);
    }

    public /* synthetic */ void c() {
        Utilities.unregisterReceiverSafely(this.mContext, this.mUserUnlockedReceiver);
    }

    public boolean canStartSystemGesture() {
        if (!((this.mSystemUiStateFlags & 2) == 0 || this.mTaskListFrozen)) {
            return false;
        }
        int i = this.mSystemUiStateFlags;
        if ((i & 4) == 0 && (i & 2048) == 0) {
            return (i & 256) == 0 || (i & 128) == 0;
        }
        return false;
    }

    public boolean canTriggerAssistantAction(MotionEvent motionEvent, ActivityManager.RunningTaskInfo runningTaskInfo) {
        return (!this.mAssistantAvailable || QuickStepContract.isAssistantGestureDisabled(this.mSystemUiStateFlags) || !this.mOrientationTouchTransformer.touchInAssistantRegion(motionEvent) || isLockToAppActive() || isGestureBlockedActivity(runningTaskInfo)) ? false : true;
    }

    public /* synthetic */ void d() {
        this.mSysUiNavMode.removeModeChangeListener(this);
    }

    public void destroy() {
        Iterator it = this.mOnDestroyActions.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("DeviceState:");
        printWriter.println("  canStartSystemGesture=" + canStartSystemGesture());
        printWriter.println("  systemUiFlags=" + this.mSystemUiStateFlags);
        printWriter.println("  systemUiFlagsDesc=" + QuickStepContract.getSystemUiStateString(this.mSystemUiStateFlags));
        printWriter.println("  assistantAvailable=" + this.mAssistantAvailable);
        printWriter.println("  assistantDisabled=" + QuickStepContract.isAssistantGestureDisabled(this.mSystemUiStateFlags));
        printWriter.println("  currentActiveRotation=" + getCurrentActiveRotation());
        printWriter.println("  displayRotation=" + getDisplayRotation());
        printWriter.println("  isUserUnlocked=" + this.mIsUserUnlocked);
        this.mOrientationTouchTransformer.dump(printWriter);
    }

    public /* synthetic */ void e(boolean z) {
        this.mIsUserSetupComplete = z;
    }

    public /* synthetic */ void f(int i) {
        ((SystemUiProxy) SystemUiProxy.INSTANCE.b(this.mContext)).onQuickSwitchToNewTask(i);
    }

    public /* synthetic */ void g() {
        ActivityManagerWrapper.getInstance().unregisterTaskStackListener(this.mFrozenTaskListener);
    }

    public float getAssistantVisibility() {
        return this.mAssistantVisibility;
    }

    public int getCurrentActiveRotation() {
        return !this.mMode.hasGestures ? this.mDisplayRotation : this.mOrientationTouchTransformer.getCurrentActiveRotation();
    }

    public int getDisplayId() {
        return this.mDisplayId;
    }

    public int getDisplayRotation() {
        return this.mDisplayRotation;
    }

    public List getGestureBlockedActivityPackages() {
        return (List) this.mGestureBlockedActivities.stream().map(new Function() { // from class: c.a.b.g
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ComponentName) obj).getPackageName();
            }
        }).collect(Collectors.toList());
    }

    public NavBarPosition getNavBarPosition() {
        return this.mNavBarPosition;
    }

    public SysUINavigationMode.Mode getNavMode() {
        return this.mMode;
    }

    public int getSystemUiStateFlags() {
        return this.mSystemUiStateFlags;
    }

    public boolean isAccessibilityMenuAvailable() {
        return (this.mSystemUiStateFlags & 16) != 0;
    }

    public boolean isAccessibilityMenuShortcutAvailable() {
        return (this.mSystemUiStateFlags & 32) != 0;
    }

    public boolean isBubblesExpanded() {
        return (this.mSystemUiStateFlags & QuickStepContract.SYSUI_STATE_BUBBLES_EXPANDED) != 0;
    }

    public boolean isButtonNavMode() {
        return this.mMode == SysUINavigationMode.Mode.THREE_BUTTONS;
    }

    public boolean isFullyGesturalNavMode() {
        return this.mMode == SysUINavigationMode.Mode.NO_BUTTON;
    }

    public boolean isGesturalNavMode() {
        SysUINavigationMode.Mode mode = this.mMode;
        return mode == SysUINavigationMode.Mode.TWO_BUTTONS || mode == SysUINavigationMode.Mode.NO_BUTTON;
    }

    public boolean isGestureBlockedActivity(ActivityManager.RunningTaskInfo runningTaskInfo) {
        return runningTaskInfo != null && this.mGestureBlockedActivities.contains(runningTaskInfo.topActivity);
    }

    public boolean isGlobalActionsShowing() {
        return (this.mSystemUiStateFlags & QuickStepContract.SYSUI_STATE_GLOBAL_ACTIONS_SHOWING) != 0;
    }

    public boolean isHomeDisabled() {
        return (this.mSystemUiStateFlags & 256) != 0;
    }

    public boolean isInDeferredGestureRegion(MotionEvent motionEvent) {
        return this.mDeferredGestureRegion.contains((int) motionEvent.getX(), (int) motionEvent.getY());
    }

    public boolean isInExclusionRegion(MotionEvent motionEvent) {
        Region region = this.mExclusionRegion;
        return this.mMode == SysUINavigationMode.Mode.NO_BUTTON && region != null && region.contains((int) motionEvent.getX(), (int) motionEvent.getY());
    }

    public boolean isInSwipeUpTouchRegion(MotionEvent motionEvent) {
        return this.mOrientationTouchTransformer.touchInValidSwipeRegions(motionEvent.getX(), motionEvent.getY());
    }

    public boolean isKeyguardShowingOccluded() {
        return (this.mSystemUiStateFlags & 512) != 0;
    }

    public boolean isLockToAppActive() {
        return ActivityManagerWrapper.getInstance().isLockToAppActive();
    }

    public boolean isOverviewDisabled() {
        return (this.mSystemUiStateFlags & 128) != 0;
    }

    public boolean isScreenPinningActive() {
        return (this.mSystemUiStateFlags & 1) != 0;
    }

    public boolean isUserSetupComplete() {
        return this.mIsUserSetupComplete;
    }

    public boolean isUserUnlocked() {
        return this.mIsUserUnlocked;
    }

    @Override // com.android.launcher3.util.DefaultDisplay.DisplayInfoChangeListener
    public void onDisplayInfoChanged(DefaultDisplay.Info info, int i) {
        if (info.id != getDisplayId() || i == 4) {
            return;
        }
        this.mDisplayRotation = info.rotation;
        SysUINavigationMode.Mode mode = this.mMode;
        if (mode.hasGestures) {
            this.mNavBarPosition = new NavBarPosition(mode, info);
            updateGestureTouchRegions();
            this.mOrientationTouchTransformer.createOrAddTouchRegion(info);
            int i2 = this.mDisplayRotation;
            this.mCurrentAppRotation = i2;
            if ((this.mPrioritizeDeviceRotation || i2 == this.mSensorRotation) && !this.mInOverview && this.mTaskListFrozen) {
                toggleSecondaryNavBarsForRotation();
            }
        }
    }

    public void onEndTargetCalculated(GestureState.GestureEndTarget gestureEndTarget, BaseActivityInterface baseActivityInterface) {
        if (gestureEndTarget == GestureState.GestureEndTarget.RECENTS) {
            this.mInOverview = true;
            if (!this.mTaskListFrozen) {
                enableMultipleRegions(true);
            }
            baseActivityInterface.onExitOverview(this, this.mExitOverviewRunnable);
            return;
        }
        if (gestureEndTarget == GestureState.GestureEndTarget.HOME) {
            enableMultipleRegions(false);
            return;
        }
        if (gestureEndTarget == GestureState.GestureEndTarget.NEW_TASK) {
            if (this.mOrientationTouchTransformer.getQuickStepStartingRotation() == -1) {
                enableMultipleRegions(true);
            } else {
                notifySysuiOfCurrentRotation(this.mOrientationTouchTransformer.getCurrentActiveRotation());
            }
            this.mPrioritizeDeviceRotation = false;
            return;
        }
        if (gestureEndTarget == GestureState.GestureEndTarget.LAST_TASK && this.mTaskListFrozen) {
            notifySysuiOfCurrentRotation(this.mOrientationTouchTransformer.getCurrentActiveRotation());
        }
    }

    @Override // com.android.quickstep.SysUINavigationMode.NavigationModeChangeListener
    public void onNavigationModeChanged(SysUINavigationMode.Mode mode) {
        this.mDefaultDisplay.mListeners.remove(this);
        this.mDefaultDisplay.mListeners.add(this);
        onDisplayInfoChanged(this.mDefaultDisplay.mInfo, 7);
        if (mode == SysUINavigationMode.Mode.NO_BUTTON) {
            this.mExclusionListener.register();
        } else {
            this.mExclusionListener.unregister();
        }
        this.mNavBarPosition = new NavBarPosition(mode, this.mDefaultDisplay.mInfo);
        this.mOrientationTouchTransformer.setNavigationMode(mode, this.mDefaultDisplay.mInfo);
        if (!this.mMode.hasGestures && mode.hasGestures) {
            setupOrientationSwipeHandler();
        } else if (this.mMode.hasGestures && !mode.hasGestures) {
            destroyOrientationSwipeHandlerCallback();
        }
        this.mMode = mode;
    }

    public void onStartGesture() {
        if (this.mTaskListFrozen) {
            notifySysuiOfCurrentRotation(this.mOrientationTouchTransformer.getCurrentActiveRotation());
        }
    }

    public void runOnUserUnlocked(Runnable runnable) {
        if (this.mIsUserUnlocked) {
            runnable.run();
        } else {
            this.mUserUnlockedActions.add(runnable);
        }
    }

    public void setAssistantAvailable(boolean z) {
        this.mAssistantAvailable = z;
    }

    public void setAssistantVisibility(float f) {
        this.mAssistantVisibility = f;
    }

    public void setDeferredGestureRegion(Region region) {
        this.mDeferredGestureRegion.set(region);
    }

    public void setOrientationTransformIfNeeded(MotionEvent motionEvent) {
        if (motionEvent.getX() < RecentsState.NO_OFFSET || motionEvent.getY() < RecentsState.NO_OFFSET) {
            motionEvent.setLocation(Math.max(RecentsState.NO_OFFSET, motionEvent.getX()), Math.max(RecentsState.NO_OFFSET, motionEvent.getY()));
        }
        this.mOrientationTouchTransformer.transform(motionEvent);
    }

    public void setSystemUiFlags(int i) {
        this.mSystemUiStateFlags = i;
    }

    public void updateGestureTouchRegions() {
        if (this.mMode.hasGestures) {
            this.mOrientationTouchTransformer.createOrAddTouchRegion(this.mDefaultDisplay.mInfo);
        }
    }

    public boolean isInSwipeUpTouchRegion(MotionEvent motionEvent, int i) {
        return this.mOrientationTouchTransformer.touchInValidSwipeRegions(motionEvent.getX(i), motionEvent.getY(i));
    }
}
