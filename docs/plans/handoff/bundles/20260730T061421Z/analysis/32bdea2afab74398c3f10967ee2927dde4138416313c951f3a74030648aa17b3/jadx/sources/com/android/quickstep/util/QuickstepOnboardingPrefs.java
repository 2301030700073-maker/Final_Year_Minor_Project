package com.android.quickstep.util;

import android.content.SharedPreferences;
import c.a.a.K0.m;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseQuickstepLauncher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.hybridhotseat.HotseatPredictionController;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.views.AllAppsEduView;

/* loaded from: classes.dex */
public class QuickstepOnboardingPrefs extends OnboardingPrefs {
    public QuickstepOnboardingPrefs(final BaseQuickstepLauncher baseQuickstepLauncher, SharedPreferences sharedPreferences) {
        super(baseQuickstepLauncher, sharedPreferences);
        final StateManager stateManager = baseQuickstepLauncher.getStateManager();
        if (!getBoolean(OnboardingPrefs.HOME_BOUNCE_SEEN)) {
            stateManager.mListeners.add(new StateManager.StateListener() { // from class: com.android.quickstep.util.QuickstepOnboardingPrefs.1
                @Override // com.android.launcher3.statemanager.StateManager.StateListener
                public void onStateTransitionComplete(LauncherState launcherState) {
                    boolean z = ((SysUINavigationMode) SysUINavigationMode.INSTANCE.b(QuickstepOnboardingPrefs.this.mLauncher)).getMode().hasGestures;
                    LauncherState launcherState2 = (LauncherState) stateManager.mLastStableState;
                    if ((z && launcherState == LauncherState.OVERVIEW) || ((!z && launcherState == LauncherState.ALL_APPS && launcherState2 == LauncherState.NORMAL) || QuickstepOnboardingPrefs.this.hasReachedMaxCount(OnboardingPrefs.HOME_BOUNCE_COUNT))) {
                        QuickstepOnboardingPrefs.this.mSharedPrefs.edit().putBoolean(OnboardingPrefs.HOME_BOUNCE_SEEN, true).apply();
                        stateManager.mListeners.remove(this);
                    }
                }
            });
        }
        boolean z = getBoolean(OnboardingPrefs.SHELF_BOUNCE_SEEN);
        if (!z && FeatureFlags.ENABLE_OVERVIEW_ACTIONS.get() && SysUINavigationMode.removeShelfFromOverview(baseQuickstepLauncher)) {
            z = true;
            this.mSharedPrefs.edit().putBoolean(OnboardingPrefs.SHELF_BOUNCE_SEEN, true).apply();
        }
        if (!z) {
            stateManager.mListeners.add(new StateManager.StateListener() { // from class: com.android.quickstep.util.QuickstepOnboardingPrefs.2
                @Override // com.android.launcher3.statemanager.StateManager.StateListener
                public void onStateTransitionComplete(LauncherState launcherState) {
                    LauncherState launcherState2 = (LauncherState) stateManager.mLastStableState;
                    if ((launcherState == LauncherState.ALL_APPS && launcherState2 == LauncherState.OVERVIEW) || QuickstepOnboardingPrefs.this.hasReachedMaxCount(OnboardingPrefs.SHELF_BOUNCE_COUNT)) {
                        QuickstepOnboardingPrefs.this.mSharedPrefs.edit().putBoolean(OnboardingPrefs.SHELF_BOUNCE_SEEN, true).apply();
                        stateManager.mListeners.remove(this);
                    }
                }
            });
        }
        if (!hasReachedMaxCount(OnboardingPrefs.ALL_APPS_COUNT)) {
            stateManager.mListeners.add(new StateManager.StateListener() { // from class: com.android.quickstep.util.QuickstepOnboardingPrefs.3
                @Override // com.android.launcher3.statemanager.StateManager.StateListener
                public void onStateTransitionComplete(LauncherState launcherState) {
                    if (launcherState == LauncherState.ALL_APPS && QuickstepOnboardingPrefs.this.incrementEventCount(OnboardingPrefs.ALL_APPS_COUNT)) {
                        stateManager.mListeners.remove(this);
                        ((BaseQuickstepLauncher) QuickstepOnboardingPrefs.this.mLauncher).mScrimView.updateDragHandleVisibility();
                    }
                }
            });
        }
        if (FeatureFlags.ENABLE_HYBRID_HOTSEAT.get() && !hasReachedMaxCount(OnboardingPrefs.HOTSEAT_DISCOVERY_TIP_COUNT)) {
            stateManager.mListeners.add(new StateManager.StateListener() { // from class: com.android.quickstep.util.QuickstepOnboardingPrefs.4
                public boolean mFromAllApps = false;

                @Override // com.android.launcher3.statemanager.StateManager.StateListener
                public void onStateTransitionComplete(LauncherState launcherState) {
                    HotseatPredictionController hotseatPredictionController = ((BaseQuickstepLauncher) QuickstepOnboardingPrefs.this.mLauncher).mHotseatPredictionController;
                    if (this.mFromAllApps && launcherState == LauncherState.NORMAL && (!hotseatPredictionController.mComponentKeyMappers.isEmpty()) && QuickstepOnboardingPrefs.this.incrementEventCount(OnboardingPrefs.HOTSEAT_DISCOVERY_TIP_COUNT)) {
                        hotseatPredictionController.mLauncher.getStateManager().goToState(LauncherState.NORMAL, true, new m(hotseatPredictionController));
                        stateManager.mListeners.remove(this);
                    }
                }

                @Override // com.android.launcher3.statemanager.StateManager.StateListener
                public void onStateTransitionStart(LauncherState launcherState) {
                    this.mFromAllApps = ((BaseQuickstepLauncher) QuickstepOnboardingPrefs.this.mLauncher).getStateManager().mCurrentStableState == LauncherState.ALL_APPS;
                }
            });
        }
        if (SysUINavigationMode.getMode(baseQuickstepLauncher) == SysUINavigationMode.Mode.NO_BUTTON && FeatureFlags.ENABLE_ALL_APPS_EDU.get()) {
            stateManager.mListeners.add(new StateManager.StateListener() { // from class: com.android.quickstep.util.QuickstepOnboardingPrefs.5
                public static final int MAX_NUM_SWIPES_TO_TRIGGER_EDU = 3;
                public int mCount = 0;
                public boolean mShouldIncreaseCount;

                @Override // com.android.launcher3.statemanager.StateManager.StateListener
                public void onStateTransitionComplete(LauncherState launcherState) {
                    AllAppsEduView allAppsEduView;
                    if (launcherState == LauncherState.NORMAL) {
                        if (this.mCount >= 3) {
                            if (AbstractFloatingView.getOpenView(QuickstepOnboardingPrefs.this.mLauncher, 512) == null) {
                                AllAppsEduView.show(baseQuickstepLauncher);
                            }
                            this.mCount = 0;
                            return;
                        }
                        return;
                    }
                    if (this.mShouldIncreaseCount && launcherState == LauncherState.HINT_STATE) {
                        this.mCount++;
                    } else {
                        this.mCount = 0;
                    }
                    if (launcherState != LauncherState.ALL_APPS || (allAppsEduView = (AllAppsEduView) AbstractFloatingView.getOpenView(QuickstepOnboardingPrefs.this.mLauncher, 512)) == null) {
                        return;
                    }
                    allAppsEduView.close(false);
                }

                @Override // com.android.launcher3.statemanager.StateManager.StateListener
                public void onStateTransitionStart(LauncherState launcherState) {
                    if (launcherState == LauncherState.NORMAL) {
                        return;
                    }
                    this.mShouldIncreaseCount = launcherState == LauncherState.HINT_STATE && baseQuickstepLauncher.mWorkspace.getNextPage() == 0;
                }
            });
        }
    }
}
