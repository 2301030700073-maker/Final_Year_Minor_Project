package com.android.launcher3;

import android.content.Context;
import android.view.animation.Interpolator;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.HintState;
import com.android.launcher3.states.SpringLoadedState;
import com.android.launcher3.uioverrides.states.AllAppsState;
import com.android.launcher3.uioverrides.states.BackgroundAppState;
import com.android.launcher3.uioverrides.states.OverviewModalTaskState;
import com.android.launcher3.uioverrides.states.OverviewPeekState;
import com.android.launcher3.uioverrides.states.OverviewState;
import com.android.launcher3.uioverrides.states.QuickSwitchState;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.ImageActionUtils;
import com.android.systemui.plugins.OverscrollPlugin;

/* loaded from: classes.dex */
public abstract class LauncherState implements BaseState {
    public final int containerType;
    public final int mFlags;
    public final int ordinal;
    public final boolean overviewUi;
    public static final int FLAG_MULTI_PAGE = BaseState.getFlag(0);
    public static final int FLAG_WORKSPACE_INACCESSIBLE = BaseState.getFlag(1);
    public static final int FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED = BaseState.getFlag(2);
    public static final int FLAG_WORKSPACE_HAS_BACKGROUNDS = BaseState.getFlag(3);
    public static final int FLAG_HIDE_BACK_BUTTON = BaseState.getFlag(4);
    public static final int FLAG_HAS_SYS_UI_SCRIM = BaseState.getFlag(5);
    public static final int FLAG_CLOSE_POPUPS = BaseState.getFlag(6);
    public static final int FLAG_OVERVIEW_UI = BaseState.getFlag(7);
    public static final PageAlphaProvider DEFAULT_ALPHA_PROVIDER = new PageAlphaProvider(Interpolators.ACCEL_2) { // from class: com.android.launcher3.LauncherState.1
        @Override // com.android.launcher3.LauncherState.PageAlphaProvider
        public float getPageAlpha(int i) {
            return 1.0f;
        }
    };
    public static final LauncherState[] sAllStates = new LauncherState[9];
    public static final LauncherState NORMAL = new LauncherState(0, 1, ((FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED | 2) | FLAG_HIDE_BACK_BUTTON) | FLAG_HAS_SYS_UI_SCRIM) { // from class: com.android.launcher3.LauncherState.2
        @Override // com.android.launcher3.statemanager.BaseState
        public int getTransitionDuration(Context context) {
            return 0;
        }
    };
    public static final LauncherState SPRING_LOADED = new SpringLoadedState(1);
    public static final LauncherState ALL_APPS = new AllAppsState(6);
    public static final LauncherState HINT_STATE = new HintState(8);
    public static final LauncherState OVERVIEW = new OverviewState(2);
    public static final LauncherState OVERVIEW_PEEK = new OverviewPeekState(3);
    public static final LauncherState OVERVIEW_MODAL_TASK = new OverviewModalTaskState(4);
    public static final LauncherState QUICK_SWITCH = new QuickSwitchState(5);
    public static final LauncherState BACKGROUND_APP = new BackgroundAppState(7);

    public abstract class PageAlphaProvider {
        public final Interpolator interpolator;

        public PageAlphaProvider(Interpolator interpolator) {
            this.interpolator = interpolator;
        }

        public abstract float getPageAlpha(int i);
    }

    public class ScaleAndTranslation {
        public float scale;
        public float translationX;
        public float translationY;

        public ScaleAndTranslation(float f, float f2, float f3) {
            this.scale = f;
            this.translationX = f2;
            this.translationY = f3;
        }
    }

    public LauncherState(int i, int i2, int i3) {
        this.containerType = i2;
        this.mFlags = i3;
        this.overviewUi = (FLAG_OVERVIEW_UI & i3) != 0;
        this.ordinal = i;
        sAllStates[i] = this;
    }

    public final float getDepth(Context context) {
        return BaseActivity.fromContext(context).getDeviceProfile().isMultiWindowMode ? RecentsState.NO_OFFSET : getDepthUnchecked(context);
    }

    public float getDepthUnchecked(Context context) {
        return RecentsState.NO_OFFSET;
    }

    public String getDescription(Launcher launcher) {
        return launcher.mWorkspace.getCurrentPageDescription();
    }

    public ScaleAndTranslation getHotseatScaleAndTranslation(Launcher launcher) {
        return getWorkspaceScaleAndTranslation(launcher);
    }

    public float getOverviewFullscreenProgress() {
        return RecentsState.NO_OFFSET;
    }

    public float getOverviewModalness() {
        return RecentsState.NO_OFFSET;
    }

    public float[] getOverviewScaleAndOffset(Launcher launcher) {
        return launcher.getNormalOverviewScaleAndOffset();
    }

    public float getOverviewScrimAlpha(Launcher launcher) {
        return RecentsState.NO_OFFSET;
    }

    public ScaleAndTranslation getQsbScaleAndTranslation(Launcher launcher) {
        return new ScaleAndTranslation(1.0f, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
    }

    public float getVerticalProgress(Launcher launcher) {
        return 1.0f;
    }

    public int getVisibleElements(Launcher launcher) {
        return launcher.getDeviceProfile().isVerticalBarLayout() ? 33 : 35;
    }

    public PageAlphaProvider getWorkspacePageAlphaProvider(Launcher launcher) {
        if (this == NORMAL) {
            DeviceProfile deviceProfile = launcher.getDeviceProfile();
            if (deviceProfile.isVerticalBarLayout() || deviceProfile.isLargeTablet) {
                final int nextPage = launcher.mWorkspace.getNextPage();
                return new PageAlphaProvider(this, Interpolators.ACCEL_2) { // from class: com.android.launcher3.LauncherState.3
                    @Override // com.android.launcher3.LauncherState.PageAlphaProvider
                    public float getPageAlpha(int i) {
                        if (i != nextPage) {
                            return RecentsState.NO_OFFSET;
                        }
                        return 1.0f;
                    }
                };
            }
        }
        return DEFAULT_ALPHA_PROVIDER;
    }

    public ScaleAndTranslation getWorkspaceScaleAndTranslation(Launcher launcher) {
        return new ScaleAndTranslation(1.0f, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
    }

    public float getWorkspaceScrimAlpha(Launcher launcher) {
        return RecentsState.NO_OFFSET;
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public final boolean hasFlag(int i) {
        return (this.mFlags & i) != 0;
    }

    public void onBackPressed(Launcher launcher) {
        if (this != NORMAL) {
            StateManager stateManager = launcher.getStateManager();
            stateManager.goToState((LauncherState) stateManager.mLastStableState);
        }
    }

    public String toString() {
        switch (this.ordinal) {
            case 0:
                return "Normal";
            case 1:
                return "SpringLoaded";
            case 2:
                return ImageActionUtils.SUB_FOLDER;
            case 3:
                return "OverviewPeek";
            case 4:
                return "OverviewModal";
            case 5:
                return "QuickSwitch";
            case 6:
                return "AllApps";
            case 7:
                return "Background";
            case 8:
                return "Hint";
            default:
                return OverscrollPlugin.DEVICE_STATE_UNKNOWN;
        }
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public LauncherState getHistoryForState(LauncherState launcherState) {
        return NORMAL;
    }
}
