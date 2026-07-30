package com.android.quickstep;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.PendingIntent;
import android.app.RemoteAction;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.Trace;
import android.util.Log;
import android.view.Choreographer;
import android.view.InputEvent;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityManager;
import b.l.W;
import c.a.c.a.a;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.UserEventDispatcher;
import com.android.launcher3.model.AppLaunchTracker;
import com.android.launcher3.provider.RestoreDbTask;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.tracing.nano.LauncherTraceProto;
import com.android.launcher3.tracing.nano.TouchInteractionServiceProto;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.launcher3.util.WindowBounds;
import com.android.quickstep.BaseSwipeUpHandler;
import com.android.quickstep.GestureState;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.TouchInteractionService;
import com.android.quickstep.inputconsumers.AccessibilityInputConsumer;
import com.android.quickstep.inputconsumers.AssistantInputConsumer;
import com.android.quickstep.inputconsumers.DeviceLockedInputConsumer;
import com.android.quickstep.inputconsumers.OtherActivityInputConsumer;
import com.android.quickstep.inputconsumers.OverscrollInputConsumer;
import com.android.quickstep.inputconsumers.OverviewInputConsumer;
import com.android.quickstep.inputconsumers.OverviewWithoutFocusInputConsumer;
import com.android.quickstep.inputconsumers.ResetGestureInputConsumer;
import com.android.quickstep.inputconsumers.ScreenPinnedInputConsumer;
import com.android.quickstep.inputconsumers.SysUiOverlayInputConsumer;
import com.android.quickstep.util.ActiveGestureLog;
import com.android.quickstep.util.AssistantUtilities;
import com.android.quickstep.util.ProtoTracer;
import com.android.quickstep.util.SplitScreenBounds;
import com.android.systemui.plugins.OverscrollPlugin;
import com.android.systemui.plugins.PluginListener;
import com.android.systemui.shared.R;
import com.android.systemui.shared.plugins.PluginPrefs;
import com.android.systemui.shared.recents.IOverviewProxy;
import com.android.systemui.shared.recents.ISystemUiProxy;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.InputChannelCompat;
import com.android.systemui.shared.system.InputConsumerController;
import com.android.systemui.shared.system.InputMonitorCompat;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.shared.tracing.ProtoTraceable;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Predicate;

@TargetApi(30)
/* loaded from: classes.dex */
public class TouchInteractionService extends Service implements PluginListener, ProtoTraceable {
    public static final String HAS_ENABLED_QUICKSTEP_ONCE = "launcher.has_enabled_quickstep_once";
    public static final String KEY_BACK_NOTIFICATION_COUNT = "backNotificationCount";
    public static final int MAX_BACK_NOTIFICATION_COUNT = 3;
    public static final String NOTIFY_ACTION_BACK = "com.android.quickstep.action.BACK_GESTURE";
    public static final int SYSTEM_ACTION_ID_ALL_APPS = 14;
    public static final String TAG = "TouchInteractionService";
    public static boolean sConnected = false;
    public static boolean sIsInitialized = false;
    public ActivityManagerWrapper mAM;
    public InputConsumer mConsumer;
    public RecentsAnimationDeviceState mDeviceState;
    public GestureState mGestureState;
    public InputConsumerController mInputConsumer;
    public InputChannelCompat.InputEventReceiver mInputEventReceiver;
    public InputMonitorCompat mInputMonitorCompat;
    public Choreographer mMainChoreographer;
    public OverscrollPlugin mOverscrollPlugin;
    public OverviewCommandHelper mOverviewCommandHelper;
    public OverviewComponentObserver mOverviewComponentObserver;
    public InputConsumer mResetGestureInputConsumer;
    public TaskAnimationManager mTaskAnimationManager;
    public InputConsumer mUncheckedConsumer;
    public int mBackGestureNotificationCounter = -1;
    public final IBinder mMyBinder = new AnonymousClass1();
    public final BaseSwipeUpHandler.Factory mLauncherSwipeHandlerFactory = new BaseSwipeUpHandler.Factory() { // from class: c.a.b.J1
        @Override // com.android.quickstep.BaseSwipeUpHandler.Factory
        public final BaseSwipeUpHandler newHandler(GestureState gestureState, long j, boolean z) {
            BaseSwipeUpHandler createLauncherSwipeHandler;
            createLauncherSwipeHandler = TouchInteractionService.this.createLauncherSwipeHandler(gestureState, j, z);
            return createLauncherSwipeHandler;
        }
    };
    public final BaseSwipeUpHandler.Factory mFallbackSwipeHandlerFactory = new BaseSwipeUpHandler.Factory() { // from class: c.a.b.O1
        @Override // com.android.quickstep.BaseSwipeUpHandler.Factory
        public final BaseSwipeUpHandler newHandler(GestureState gestureState, long j, boolean z) {
            BaseSwipeUpHandler createFallbackSwipeHandler;
            createFallbackSwipeHandler = TouchInteractionService.this.createFallbackSwipeHandler(gestureState, j, z);
            return createFallbackSwipeHandler;
        }
    };

    /* renamed from: com.android.quickstep.TouchInteractionService$1, reason: invalid class name */
    public class AnonymousClass1 extends IOverviewProxy.Stub {
        public AnonymousClass1() {
        }

        public /* synthetic */ void a(Region region) {
            TouchInteractionService.this.mDeviceState.setDeferredGestureRegion(region);
        }

        public /* synthetic */ void b(boolean z) {
            TouchInteractionService.this.mDeviceState.setAssistantAvailable(z);
            TouchInteractionService.this.onAssistantVisibilityChanged();
        }

        public /* synthetic */ void c(float f) {
            TouchInteractionService.this.mDeviceState.setAssistantVisibility(f);
            TouchInteractionService.this.onAssistantVisibilityChanged();
        }

        public /* synthetic */ void d(ISystemUiProxy iSystemUiProxy) {
            ((SystemUiProxy) SystemUiProxy.INSTANCE.b(TouchInteractionService.this)).setProxy(iSystemUiProxy);
            TouchInteractionService.this.initInputMonitor();
            TouchInteractionService.this.preloadOverview(true);
        }

        public /* synthetic */ void f(int i) {
            TouchInteractionService.this.mDeviceState.setSystemUiFlags(i);
            TouchInteractionService.this.onSystemUiFlagsChanged();
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onActiveNavBarRegionChanges(final Region region) {
            Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: c.a.b.F1
                @Override // java.lang.Runnable
                public final void run() {
                    TouchInteractionService.AnonymousClass1.this.a(region);
                }
            });
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onAssistantAvailable(final boolean z) {
            Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: c.a.b.B1
                @Override // java.lang.Runnable
                public final void run() {
                    TouchInteractionService.AnonymousClass1.this.b(z);
                }
            });
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onAssistantVisibilityChanged(final float f) {
            Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: c.a.b.D1
                @Override // java.lang.Runnable
                public final void run() {
                    TouchInteractionService.AnonymousClass1.this.c(f);
                }
            });
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onBackAction(boolean z, int i, int i2, boolean z2, boolean z3) {
            if (TouchInteractionService.this.mOverviewComponentObserver == null) {
                return;
            }
            UserEventDispatcher.newInstance(TouchInteractionService.this.getBaseContext()).logActionBack(z, i, i2, z2, z3, TouchInteractionService.this.mOverviewComponentObserver.getActivityInterface().getContainerType());
            if (z && !z2 && TouchInteractionService.this.shouldNotifyBackGesture()) {
                LooperExecutor looperExecutor = Executors.UI_HELPER_EXECUTOR;
                final TouchInteractionService touchInteractionService = TouchInteractionService.this;
                looperExecutor.execute(new Runnable() { // from class: c.a.b.V1
                    @Override // java.lang.Runnable
                    public final void run() {
                        TouchInteractionService.this.tryNotifyBackGesture();
                    }
                });
            }
        }

        public void onBind(ISystemUiProxy iSystemUiProxy) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onInitialize(Bundle bundle) {
            final ISystemUiProxy asInterface = ISystemUiProxy.Stub.asInterface(bundle.getBinder(QuickStepContract.KEY_EXTRA_SYSUI_PROXY));
            Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: c.a.b.G1
                @Override // java.lang.Runnable
                public final void run() {
                    TouchInteractionService.AnonymousClass1.this.d(asInterface);
                }
            });
            boolean unused = TouchInteractionService.sIsInitialized = true;
        }

        public void onMotionEvent(MotionEvent motionEvent) {
            motionEvent.recycle();
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onOverviewHidden(boolean z, boolean z2) {
            if (!z || z2) {
                return;
            }
            TouchInteractionService.this.mOverviewCommandHelper.onOverviewHidden();
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onOverviewShown(boolean z) {
            TouchInteractionService.this.mOverviewCommandHelper.onOverviewShown(z);
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onOverviewToggle() {
            W.recordEvent("Main", "onOverviewToggle");
            TouchInteractionService.this.mOverviewCommandHelper.onOverviewToggle();
        }

        public void onPreMotionEvent(int i) {
        }

        public void onQuickScrubEnd() {
        }

        public void onQuickScrubProgress(float f) {
        }

        public void onQuickScrubStart() {
        }

        public void onQuickStep(MotionEvent motionEvent) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onSplitScreenSecondaryBoundsChanged(Rect rect, Rect rect2) {
            final WindowBounds windowBounds = new WindowBounds(rect, rect2);
            Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: c.a.b.C1
                @Override // java.lang.Runnable
                public final void run() {
                    SplitScreenBounds.INSTANCE.setSecondaryWindowBounds(WindowBounds.this);
                }
            });
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onSystemUiStateChanged(final int i) {
            Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: c.a.b.E1
                @Override // java.lang.Runnable
                public final void run() {
                    TouchInteractionService.AnonymousClass1.this.f(i);
                }
            });
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onTip(int i, int i2) {
            TouchInteractionService.this.mOverviewCommandHelper.onTip(i, i2);
        }
    }

    public TouchInteractionService() {
        InputConsumer inputConsumer = InputConsumer.NO_OP;
        this.mUncheckedConsumer = inputConsumer;
        this.mConsumer = inputConsumer;
        this.mGestureState = GestureState.DEFAULT_STATE;
    }

    private InputConsumer createDeviceLockedInputConsumer(GestureState gestureState) {
        return (!this.mDeviceState.isFullyGesturalNavMode() || gestureState.getRunningTask() == null) ? this.mResetGestureInputConsumer : new DeviceLockedInputConsumer(this, this.mDeviceState, this.mTaskAnimationManager, gestureState, this.mInputMonitorCompat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BaseSwipeUpHandler createFallbackSwipeHandler(GestureState gestureState, long j, boolean z) {
        return new FallbackSwipeHandler(this, this.mDeviceState, this.mTaskAnimationManager, gestureState, j, z, this.mInputConsumer);
    }

    private GestureState createGestureState(GestureState gestureState) {
        GestureState gestureState2 = new GestureState(this.mOverviewComponentObserver, ActiveGestureLog.INSTANCE.generateAndSetLogId());
        if (this.mTaskAnimationManager.isRecentsAnimationRunning()) {
            gestureState2.updateRunningTask(gestureState.getRunningTask());
            gestureState2.updateLastStartedTaskId(gestureState.getLastStartedTaskId());
            gestureState2.updatePreviouslyAppearedTaskIds(gestureState.getPreviouslyAppearedTaskIds());
        } else {
            Trace.beginSection("getRunningTask.0");
            try {
                ActivityManager.RunningTaskInfo d2 = d();
                Trace.endSection();
                gestureState2.updateRunningTask(d2);
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        }
        return gestureState2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BaseSwipeUpHandler createLauncherSwipeHandler(GestureState gestureState, long j, boolean z) {
        return new LauncherSwipeHandlerV2(this, this.mDeviceState, this.mTaskAnimationManager, gestureState, j, z, this.mInputConsumer);
    }

    private InputConsumer createOtherActivityInputConsumer(GestureState gestureState, MotionEvent motionEvent) {
        return new OtherActivityInputConsumer(this, this.mDeviceState, this.mTaskAnimationManager, gestureState, !this.mOverviewComponentObserver.isHomeAndOverviewSame() || gestureState.getActivityInterface().deferStartingActivity(this.mDeviceState, motionEvent), new Consumer() { // from class: c.a.b.L1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                TouchInteractionService.this.onConsumerInactive((OtherActivityInputConsumer) obj);
            }
        }, this.mInputMonitorCompat, this.mDeviceState.isInExclusionRegion(motionEvent), !this.mOverviewComponentObserver.isHomeAndOverviewSame() ? this.mFallbackSwipeHandlerFactory : this.mLauncherSwipeHandlerFactory);
    }

    private void disposeEventHandlers() {
        InputChannelCompat.InputEventReceiver inputEventReceiver = this.mInputEventReceiver;
        if (inputEventReceiver != null) {
            inputEventReceiver.dispose();
            this.mInputEventReceiver = null;
        }
        InputMonitorCompat inputMonitorCompat = this.mInputMonitorCompat;
        if (inputMonitorCompat != null) {
            inputMonitorCompat.dispose();
            this.mInputMonitorCompat = null;
        }
    }

    private void handleOrientationSetup(InputConsumer inputConsumer) {
        inputConsumer.notifyOrientationSetup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initInputMonitor() {
        disposeEventHandlers();
        if (this.mDeviceState.isButtonNavMode() || !((SystemUiProxy) SystemUiProxy.INSTANCE.b(this)).isActive()) {
            return;
        }
        InputMonitorCompat fromBundle = InputMonitorCompat.fromBundle(((SystemUiProxy) SystemUiProxy.INSTANCE.b(this)).monitorGestureInput("swipe-up", this.mDeviceState.getDisplayId()), QuickStepContract.KEY_EXTRA_INPUT_MONITOR);
        this.mInputMonitorCompat = fromBundle;
        this.mInputEventReceiver = fromBundle.getInputReceiver(Looper.getMainLooper(), this.mMainChoreographer, new InputChannelCompat.InputEventListener() { // from class: c.a.b.H1
            @Override // com.android.systemui.shared.system.InputChannelCompat.InputEventListener
            public final void onInputEvent(InputEvent inputEvent) {
                TouchInteractionService.this.onInputEvent(inputEvent);
            }
        });
        this.mDeviceState.updateGestureTouchRegions();
    }

    public static boolean isConnected() {
        return sConnected;
    }

    public static boolean isInitialized() {
        return sIsInitialized;
    }

    private InputConsumer newBaseConsumer(GestureState gestureState, GestureState gestureState2, MotionEvent motionEvent) {
        if (this.mDeviceState.isKeyguardShowingOccluded()) {
            return createDeviceLockedInputConsumer(gestureState2);
        }
        boolean z = gestureState2.getActivityInterface().isStarted() && gestureState2.getRunningTask() != null && "android.intent.action.CHOOSER".equals(gestureState2.getRunningTask().baseIntent.getAction());
        if (AssistantUtilities.isExcludedAssistant(gestureState2.getRunningTask())) {
            Trace.beginSection("getRunningTask.assistant");
            try {
                ActivityManager.RunningTaskInfo f = f();
                Trace.endSection();
                gestureState2.updateRunningTask(f);
                ComponentName component = this.mOverviewComponentObserver.getHomeIntent().getComponent();
                ComponentName component2 = gestureState2.getRunningTask().baseIntent.getComponent();
                z = component2 != null && component2.equals(component);
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        }
        return gestureState2.getRunningTask() == null ? this.mResetGestureInputConsumer : (gestureState.isRunningAnimationToLauncher() || gestureState2.getActivityInterface().isResumed() || z) ? createOverviewInputConsumer(gestureState, gestureState2, motionEvent, z) : (FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get() && gestureState2.getActivityInterface().isInLiveTileMode()) ? createOverviewInputConsumer(gestureState, gestureState2, motionEvent, z) : this.mDeviceState.isGestureBlockedActivity(gestureState2.getRunningTask()) ? this.mResetGestureInputConsumer : createOtherActivityInputConsumer(gestureState2, motionEvent);
    }

    private InputConsumer newConsumer(GestureState gestureState, GestureState gestureState2, MotionEvent motionEvent) {
        OverscrollPlugin overscrollPlugin;
        boolean canStartSystemGesture = this.mDeviceState.canStartSystemGesture();
        if (!this.mDeviceState.isUserUnlocked()) {
            return canStartSystemGesture ? createDeviceLockedInputConsumer(gestureState2) : this.mResetGestureInputConsumer;
        }
        InputConsumer newBaseConsumer = (canStartSystemGesture || gestureState.isRecentsAnimationRunning()) ? newBaseConsumer(gestureState, gestureState2, motionEvent) : this.mResetGestureInputConsumer;
        if (this.mDeviceState.isGesturalNavMode()) {
            handleOrientationSetup(newBaseConsumer);
        }
        if (!this.mDeviceState.isFullyGesturalNavMode()) {
            return this.mDeviceState.isScreenPinningActive() ? this.mResetGestureInputConsumer : newBaseConsumer;
        }
        InputConsumer assistantInputConsumer = this.mDeviceState.canTriggerAssistantAction(motionEvent, gestureState2.getRunningTask()) ? new AssistantInputConsumer(this, gestureState2, newBaseConsumer, this.mInputMonitorCompat, this.mOverviewComponentObserver.assistantGestureIsConstrained()) : newBaseConsumer;
        if (FeatureFlags.ENABLE_QUICK_CAPTURE_GESTURE.get()) {
            OverscrollPlugin localOverscrollPlugin = FeatureFlags.FORCE_LOCAL_OVERSCROLL_PLUGIN.get() ? ((TaskOverlayFactory) TaskOverlayFactory.INSTANCE.b(getApplicationContext())).getLocalOverscrollPlugin() : null;
            if (localOverscrollPlugin == null && (overscrollPlugin = this.mOverscrollPlugin) != null && overscrollPlugin.isActive()) {
                localOverscrollPlugin = this.mOverscrollPlugin;
            }
            OverscrollPlugin overscrollPlugin2 = localOverscrollPlugin;
            if (overscrollPlugin2 != null) {
                assistantInputConsumer = new OverscrollInputConsumer(this, gestureState2, assistantInputConsumer, this.mInputMonitorCompat, overscrollPlugin2);
            }
        }
        if (this.mDeviceState.isBubblesExpanded() || this.mDeviceState.isGlobalActionsShowing()) {
            assistantInputConsumer = new SysUiOverlayInputConsumer(getBaseContext(), this.mDeviceState, this.mInputMonitorCompat);
        }
        InputConsumer screenPinnedInputConsumer = this.mDeviceState.isScreenPinningActive() ? new ScreenPinnedInputConsumer(this, gestureState2) : assistantInputConsumer;
        return this.mDeviceState.isAccessibilityMenuAvailable() ? new AccessibilityInputConsumer(this, this.mDeviceState, screenPinnedInputConsumer, this.mInputMonitorCompat) : screenPinnedInputConsumer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAssistantVisibilityChanged() {
        if (this.mDeviceState.isUserUnlocked()) {
            this.mOverviewComponentObserver.getActivityInterface().onAssistantVisibilityChanged(this.mDeviceState.getAssistantVisibility());
        }
    }

    private void onCommand(PrintWriter printWriter, ArgList argList) {
        String nextArg = argList.nextArg();
        if (((nextArg.hashCode() == 1640635446 && nextArg.equals("clear-touch-log")) ? (char) 0 : (char) 65535) != 0) {
            return;
        }
        ActiveGestureLog.INSTANCE.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onConsumerInactive(InputConsumer inputConsumer) {
        InputConsumer inputConsumer2 = this.mConsumer;
        if (inputConsumer2 == null || inputConsumer2.getActiveConsumerInHierarchy() != inputConsumer) {
            return;
        }
        reset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onInputEvent(InputEvent inputEvent) {
        InputConsumer inputConsumer;
        if (!(inputEvent instanceof MotionEvent)) {
            Log.e(TAG, "Unknown event " + inputEvent);
            return;
        }
        MotionEvent motionEvent = (MotionEvent) inputEvent;
        W.recordMotionEvent("TIS", "TouchInteractionService.onInputEvent", motionEvent);
        if (this.mDeviceState.isUserUnlocked()) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.mDeviceState.setOrientationTransformIfNeeded(motionEvent);
                if (this.mDeviceState.isInSwipeUpTouchRegion(motionEvent)) {
                    GestureState gestureState = new GestureState(this.mGestureState);
                    GestureState createGestureState = createGestureState(this.mGestureState);
                    this.mConsumer.onConsumerAboutToBeSwitched();
                    this.mGestureState = createGestureState;
                    this.mConsumer = newConsumer(gestureState, createGestureState, motionEvent);
                    ActiveGestureLog activeGestureLog = ActiveGestureLog.INSTANCE;
                    StringBuilder f = a.f("setInputConsumer: ");
                    f.append(this.mConsumer.getName());
                    activeGestureLog.addLog(f.toString());
                    this.mUncheckedConsumer = this.mConsumer;
                } else if (this.mDeviceState.isUserUnlocked() && this.mDeviceState.isFullyGesturalNavMode()) {
                    GestureState createGestureState2 = createGestureState(this.mGestureState);
                    this.mGestureState = createGestureState2;
                    if (this.mDeviceState.canTriggerAssistantAction(motionEvent, createGestureState2.getRunningTask())) {
                        this.mUncheckedConsumer = new AssistantInputConsumer(this, this.mGestureState, InputConsumer.NO_OP, this.mInputMonitorCompat, this.mOverviewComponentObserver.assistantGestureIsConstrained());
                    } else {
                        this.mUncheckedConsumer = InputConsumer.NO_OP;
                    }
                } else {
                    this.mUncheckedConsumer = InputConsumer.NO_OP;
                }
            } else if (this.mUncheckedConsumer != InputConsumer.NO_OP) {
                this.mDeviceState.setOrientationTransformIfNeeded(motionEvent);
            }
            if (this.mUncheckedConsumer != InputConsumer.NO_OP) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0 || actionMasked == 1) {
                    ActiveGestureLog activeGestureLog2 = ActiveGestureLog.INSTANCE;
                    StringBuilder f2 = a.f("onMotionEvent(");
                    f2.append((int) motionEvent.getRawX());
                    f2.append(", ");
                    f2.append((int) motionEvent.getRawY());
                    f2.append(")");
                    activeGestureLog2.addLog(f2.toString(), motionEvent.getActionMasked());
                } else {
                    ActiveGestureLog.INSTANCE.addLog("onMotionEvent", motionEvent.getActionMasked());
                }
            }
            boolean z = (!(action == 1 || action == 3) || (inputConsumer = this.mConsumer) == null || inputConsumer.getActiveConsumerInHierarchy().isConsumerDetachedFromGesture()) ? false : true;
            this.mUncheckedConsumer.onMotionEvent(motionEvent);
            if (z) {
                reset();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNavigationModeChanged(SysUINavigationMode.Mode mode) {
        initInputMonitor();
        resetHomeBounceSeenOnQuickstepEnabledFirstTime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onOverviewTargetChange(boolean z) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) getSystemService(AccessibilityManager.class);
        if (!z) {
            accessibilityManager.unregisterSystemAction(14);
        } else {
            accessibilityManager.registerSystemAction(new RemoteAction(Icon.createWithResource(this, R.drawable.ic_apps), getString(R.string.all_apps_label), getString(R.string.all_apps_label), PendingIntent.getActivity(this, 14, new Intent(this.mOverviewComponentObserver.getHomeIntent()).setAction("android.intent.action.ALL_APPS"), 134217728)), 14);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSystemUiFlagsChanged() {
        if (this.mDeviceState.isUserUnlocked()) {
            ((SystemUiProxy) SystemUiProxy.INSTANCE.b(this)).setLastSystemUiStateFlags(this.mDeviceState.getSystemUiStateFlags());
            this.mOverviewComponentObserver.onSystemUiStateChanged();
            if ((this.mDeviceState.getSystemUiStateFlags() & QuickStepContract.SYSUI_STATE_TRACING_ENABLED) != 0) {
                ((ProtoTracer) ProtoTracer.INSTANCE.b(this)).start();
            } else {
                ((ProtoTracer) ProtoTracer.INSTANCE.b(this)).stop();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void preloadOverview(boolean z) {
        if (this.mDeviceState.isUserUnlocked()) {
            if ((!this.mDeviceState.isButtonNavMode() || this.mOverviewComponentObserver.isHomeAndOverviewSame()) && !RestoreDbTask.isPending(this) && this.mDeviceState.isUserSetupComplete()) {
                BaseActivityInterface activityInterface = this.mOverviewComponentObserver.getActivityInterface();
                Intent intent = new Intent(this.mOverviewComponentObserver.getOverviewIntentIgnoreSysUiState());
                if (activityInterface.getCreatedActivity() == null) {
                    activityInterface.createActivityInitListener(new Predicate() { // from class: c.a.b.N1
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            return TouchInteractionService.this.h(obj);
                        }
                    }).register(intent);
                } else if (z) {
                    return;
                }
                this.mTaskAnimationManager.preloadRecentsAnimation(intent);
            }
        }
    }

    private void printAvailableCommands(PrintWriter printWriter) {
        printWriter.println("Available commands:");
        printWriter.println("  clear-touch-log: Clears the touch interaction log");
    }

    private void reset() {
        InputConsumer inputConsumer = this.mResetGestureInputConsumer;
        this.mUncheckedConsumer = inputConsumer;
        this.mConsumer = inputConsumer;
        this.mGestureState = GestureState.DEFAULT_STATE;
    }

    private void resetHomeBounceSeenOnQuickstepEnabledFirstTime() {
        if (!this.mDeviceState.isUserUnlocked() || this.mDeviceState.isButtonNavMode()) {
            return;
        }
        SharedPreferences prefs = Utilities.getPrefs(this);
        if (prefs.getBoolean(HAS_ENABLED_QUICKSTEP_ONCE, true)) {
            return;
        }
        prefs.edit().putBoolean(HAS_ENABLED_QUICKSTEP_ONCE, true).putBoolean(OnboardingPrefs.HOME_BOUNCE_SEEN, false).apply();
    }

    public InputConsumer createOverviewInputConsumer(GestureState gestureState, GestureState gestureState2, MotionEvent motionEvent, boolean z) {
        StatefulActivity createdActivity = gestureState2.getActivityInterface().getCreatedActivity();
        if (createdActivity == null) {
            return this.mResetGestureInputConsumer;
        }
        if (createdActivity.getRootView().hasWindowFocus() || gestureState.isRunningAnimationToLauncher() || (FeatureFlags.ASSISTANT_GIVES_LAUNCHER_FOCUS.get() && z)) {
            return new OverviewInputConsumer(gestureState2, createdActivity, this.mInputMonitorCompat, false);
        }
        return new OverviewWithoutFocusInputConsumer(createdActivity, this.mDeviceState, gestureState2, this.mInputMonitorCompat, this.mDeviceState.isInExclusionRegion(motionEvent));
    }

    public /* synthetic */ ActivityManager.RunningTaskInfo d() {
        return this.mAM.getRunningTask(false);
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (strArr.length > 0 && Utilities.IS_DEBUG_DEVICE) {
            ArgList argList = new ArgList(Arrays.asList(strArr));
            String nextArg = argList.nextArg();
            if ((nextArg.hashCode() == 98618 && nextArg.equals("cmd")) ? false : -1) {
                return;
            }
            if (argList.peekArg() == null) {
                printAvailableCommands(printWriter);
                return;
            } else {
                onCommand(printWriter, argList);
                return;
            }
        }
        FeatureFlags.dump(printWriter);
        if (this.mDeviceState.isUserUnlocked()) {
            PluginManagerWrapper pluginManagerWrapper = (PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(getBaseContext());
            Objects.requireNonNull(pluginManagerWrapper);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            Iterator it = new PluginPrefs(pluginManagerWrapper.mContext).getPluginList().iterator();
            while (it.hasNext()) {
                Iterator<ResolveInfo> it2 = pluginManagerWrapper.mContext.getPackageManager().queryIntentServices(new Intent((String) it.next()), 512).iterator();
                while (it2.hasNext()) {
                    ServiceInfo serviceInfo = it2.next().serviceInfo;
                    ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                    if (pluginManagerWrapper.mPluginEnabler.isEnabled(componentName)) {
                        arrayList.add(componentName);
                    } else {
                        arrayList2.add(componentName);
                    }
                }
            }
            printWriter.println("PluginManager:");
            printWriter.println("  numEnabledPlugins=" + arrayList.size());
            printWriter.println("  numDisabledPlugins=" + arrayList2.size());
            printWriter.println("  enabledPlugins=" + arrayList);
            printWriter.println("  disabledPlugins=" + arrayList2);
        }
        this.mDeviceState.dump(printWriter);
        OverviewComponentObserver overviewComponentObserver = this.mOverviewComponentObserver;
        if (overviewComponentObserver != null) {
            overviewComponentObserver.dump(printWriter);
        }
        GestureState gestureState = this.mGestureState;
        if (gestureState != null) {
            gestureState.dump(printWriter);
        }
        ((SysUINavigationMode) SysUINavigationMode.INSTANCE.b(this)).dump(printWriter);
        printWriter.println("TouchState:");
        OverviewComponentObserver overviewComponentObserver2 = this.mOverviewComponentObserver;
        StatefulActivity createdActivity = overviewComponentObserver2 == null ? null : overviewComponentObserver2.getActivityInterface().getCreatedActivity();
        OverviewComponentObserver overviewComponentObserver3 = this.mOverviewComponentObserver;
        if (overviewComponentObserver3 != null && overviewComponentObserver3.getActivityInterface().isResumed()) {
            r0 = true;
        }
        printWriter.println("  createdOverviewActivity=" + createdActivity);
        printWriter.println("  resumed=" + r0);
        printWriter.println("  mConsumer=" + this.mConsumer.getName());
        ActiveGestureLog.INSTANCE.dump("", printWriter);
        printWriter.println("ProtoTrace:");
        printWriter.println("  file=" + ((ProtoTracer) ProtoTracer.INSTANCE.b(this)).getTraceFile());
    }

    public /* synthetic */ ActivityManager.RunningTaskInfo f() {
        return this.mAM.getRunningTask(true);
    }

    public /* synthetic */ boolean h(Object obj) {
        AppLaunchTracker.INSTANCE.b(this);
        return false;
    }

    public /* synthetic */ void j(String str) {
        sendBroadcast(new Intent(NOTIFY_ACTION_BACK).setPackage(str));
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        Log.d(TAG, "Touch service connected");
        return this.mMyBinder;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        StatefulActivity createdActivity;
        if (!this.mDeviceState.isUserUnlocked() || (createdActivity = this.mOverviewComponentObserver.getActivityInterface().getCreatedActivity()) == null || createdActivity.isStarted() || this.mOverviewComponentObserver.canHandleConfigChanges(createdActivity.getComponentName(), createdActivity.getResources().getConfiguration().diff(configuration))) {
            return;
        }
        preloadOverview(false);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mMainChoreographer = Choreographer.getInstance();
        this.mAM = ActivityManagerWrapper.getInstance();
        RecentsAnimationDeviceState recentsAnimationDeviceState = new RecentsAnimationDeviceState(this);
        this.mDeviceState = recentsAnimationDeviceState;
        recentsAnimationDeviceState.addNavigationModeChangedCallback(new SysUINavigationMode.NavigationModeChangeListener() { // from class: c.a.b.K1
            @Override // com.android.quickstep.SysUINavigationMode.NavigationModeChangeListener
            public final void onNavigationModeChanged(SysUINavigationMode.Mode mode) {
                TouchInteractionService.this.onNavigationModeChanged(mode);
            }
        });
        this.mDeviceState.runOnUserUnlocked(new Runnable() { // from class: c.a.b.c
            @Override // java.lang.Runnable
            public final void run() {
                TouchInteractionService.this.onUserUnlocked();
            }
        });
        ((ProtoTracer) ProtoTracer.INSTANCE.b(this)).add(this);
        sConnected = true;
    }

    @Override // android.app.Service
    public void onDestroy() {
        sIsInitialized = false;
        if (this.mDeviceState.isUserUnlocked()) {
            this.mInputConsumer.unregisterInputConsumer();
            this.mOverviewComponentObserver.onDestroy();
            ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(getBaseContext())).mPluginManager.removePluginListener(this);
        }
        disposeEventHandlers();
        this.mDeviceState.destroy();
        ((SystemUiProxy) SystemUiProxy.INSTANCE.b(this)).setProxy(null);
        ((ProtoTracer) ProtoTracer.INSTANCE.b(this)).stop();
        ((ProtoTracer) ProtoTracer.INSTANCE.b(this)).remove(this);
        ((AccessibilityManager) getSystemService(AccessibilityManager.class)).unregisterSystemAction(14);
        sConnected = false;
        super.onDestroy();
    }

    public void onUserUnlocked() {
        this.mTaskAnimationManager = new TaskAnimationManager();
        OverviewComponentObserver overviewComponentObserver = new OverviewComponentObserver(this, this.mDeviceState);
        this.mOverviewComponentObserver = overviewComponentObserver;
        this.mOverviewCommandHelper = new OverviewCommandHelper(this, this.mDeviceState, overviewComponentObserver);
        this.mResetGestureInputConsumer = new ResetGestureInputConsumer(this.mTaskAnimationManager);
        InputConsumerController recentsAnimationInputConsumer = InputConsumerController.getRecentsAnimationInputConsumer();
        this.mInputConsumer = recentsAnimationInputConsumer;
        recentsAnimationInputConsumer.registerInputConsumer();
        onSystemUiFlagsChanged();
        onAssistantVisibilityChanged();
        this.mBackGestureNotificationCounter = Math.max(0, Utilities.getDevicePrefs(this).getInt(KEY_BACK_NOTIFICATION_COUNT, 3));
        resetHomeBounceSeenOnQuickstepEnabledFirstTime();
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(getBaseContext())).mPluginManager.addPluginListener((PluginListener) this, OverscrollPlugin.class, false);
        this.mOverviewComponentObserver.setOverviewChangeListener(new Consumer() { // from class: c.a.b.I1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                TouchInteractionService.this.onOverviewTargetChange(((Boolean) obj).booleanValue());
            }
        });
        onOverviewTargetChange(this.mOverviewComponentObserver.isHomeAndOverviewSame());
    }

    public boolean shouldNotifyBackGesture() {
        return this.mBackGestureNotificationCounter > 0 && !this.mDeviceState.getGestureBlockedActivityPackages().isEmpty();
    }

    public void tryNotifyBackGesture() {
        if (shouldNotifyBackGesture()) {
            this.mBackGestureNotificationCounter--;
            Utilities.getDevicePrefs(this).edit().putInt(KEY_BACK_NOTIFICATION_COUNT, this.mBackGestureNotificationCounter).apply();
            this.mDeviceState.getGestureBlockedActivityPackages().forEach(new Consumer() { // from class: c.a.b.M1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    TouchInteractionService.this.j((String) obj);
                }
            });
        }
    }

    @Override // com.android.systemui.plugins.PluginListener
    public void onPluginConnected(OverscrollPlugin overscrollPlugin, Context context) {
        this.mOverscrollPlugin = overscrollPlugin;
    }

    @Override // com.android.systemui.plugins.PluginListener
    public void onPluginDisconnected(OverscrollPlugin overscrollPlugin) {
        this.mOverscrollPlugin = null;
    }

    @Override // com.android.systemui.shared.tracing.ProtoTraceable
    public void writeToProto(LauncherTraceProto launcherTraceProto) {
        if (launcherTraceProto.touchInteractionService == null) {
            launcherTraceProto.touchInteractionService = new TouchInteractionServiceProto();
        }
        TouchInteractionServiceProto touchInteractionServiceProto = launcherTraceProto.touchInteractionService;
        touchInteractionServiceProto.serviceConnected = true;
        touchInteractionServiceProto.serviceConnected = true;
    }
}
