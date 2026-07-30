package com.android.launcher3.allapps;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.FloatProperty;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import c.a.a.D0.m;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherState;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.PropertySetter;
import com.android.launcher3.pageindicators.WorkspacePageIndicator;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.views.ScrimView;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.plugins.AllAppsSearchPlugin;
import com.android.systemui.plugins.Plugin;
import com.android.systemui.plugins.PluginListener;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class AllAppsTransitionController implements StateManager.StateHandler, DeviceProfile.OnDeviceProfileChangeListener, PluginListener {
    public static final FloatProperty ALL_APPS_PROGRESS = new FloatProperty("allAppsProgress") { // from class: com.android.launcher3.allapps.AllAppsTransitionController.1
        @Override // android.util.Property
        public Float get(Object obj) {
            return Float.valueOf(((AllAppsTransitionController) obj).mProgress);
        }

        @Override // android.util.FloatProperty
        public void setValue(Object obj, float f) {
            ((AllAppsTransitionController) obj).setProgress(f);
        }
    };
    public AllAppsContainerView mAppsView;
    public boolean mIsVerticalLayout;
    public final Launcher mLauncher;
    public AllAppsSearchPlugin mPlugin;
    public View mPluginContent;
    public ScrimView mScrimView;
    public float mShiftRange;
    public float mScrollRangeDelta = RecentsState.NO_OFFSET;
    public float mProgress = 1.0f;

    public AllAppsTransitionController(Launcher launcher) {
        this.mLauncher = launcher;
        this.mShiftRange = launcher.getDeviceProfile().heightPx;
        this.mIsVerticalLayout = this.mLauncher.getDeviceProfile().isVerticalBarLayout();
        this.mLauncher.addOnDeviceProfileChangeListener(this);
    }

    @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
    public void onDeviceProfileChanged(DeviceProfile deviceProfile) {
        this.mIsVerticalLayout = deviceProfile.isVerticalBarLayout();
        setScrollRangeDelta(this.mScrollRangeDelta);
        if (this.mIsVerticalLayout) {
            this.mAppsView.getAlphaProperty(0).setValue(1.0f);
            this.mLauncher.mHotseat.setTranslationY(RecentsState.NO_OFFSET);
            ((WorkspacePageIndicator) this.mLauncher.mWorkspace.getPageIndicator()).setTranslationY(RecentsState.NO_OFFSET);
        }
    }

    @Override // com.android.systemui.plugins.PluginListener
    public void onPluginConnected(Plugin plugin, Context context) {
        this.mPlugin = (AllAppsSearchPlugin) plugin;
        View inflate = this.mLauncher.getLayoutInflater().inflate(R.layout.all_apps_content_layout, (ViewGroup) this.mAppsView, false);
        this.mPluginContent = inflate;
        this.mAppsView.addView(inflate);
        this.mPluginContent.setAlpha(RecentsState.NO_OFFSET);
        this.mPlugin.setup((ViewGroup) this.mPluginContent, this.mLauncher, this.mShiftRange);
    }

    @Override // com.android.systemui.plugins.PluginListener
    public void onPluginDisconnected(Plugin plugin) {
        this.mPlugin = null;
        this.mAppsView.removeView(this.mPluginContent);
    }

    public final void onProgressAnimationEnd() {
        if (Float.compare(this.mProgress, 1.0f) == 0) {
            this.mAppsView.reset(false);
        }
        AllAppsSearchPlugin allAppsSearchPlugin = this.mPlugin;
        if (allAppsSearchPlugin == null) {
            return;
        }
        allAppsSearchPlugin.onAnimationEnd(this.mProgress);
        if (Float.compare(this.mProgress, 1.0f) == 0) {
            this.mAppsView.mSearchUiManager.setTextSearchEnabled(false);
            this.mPlugin.setEditText(null);
        }
    }

    public void setAlphas(LauncherState launcherState, StateAnimationConfig stateAnimationConfig, PropertySetter propertySetter) {
        int visibleElements = launcherState.getVisibleElements(this.mLauncher);
        boolean z = (visibleElements & 8) != 0;
        boolean z2 = (visibleElements & 16) != 0;
        boolean z3 = (visibleElements & 30) != 0;
        Interpolator interpolator = stateAnimationConfig.getInterpolator(10, Interpolators.LINEAR);
        Interpolator interpolator2 = stateAnimationConfig.getInterpolator(12, interpolator);
        AllAppsSearchPlugin allAppsSearchPlugin = this.mPlugin;
        float f = RecentsState.NO_OFFSET;
        if (allAppsSearchPlugin == null) {
            propertySetter.setViewAlpha(this.mAppsView.getContentView(), z2 ? 1.0f : 0.0f, interpolator);
            AllAppsRecyclerView activeRecyclerView = this.mAppsView.getActiveRecyclerView();
            propertySetter.setViewAlpha(activeRecyclerView != null ? activeRecyclerView.mScrollbar : null, z2 ? 1.0f : 0.0f, interpolator);
            FloatingHeaderView floatingHeaderView = this.mAppsView.mHeader;
            FloatingHeaderRow[] floatingHeaderRowArr = floatingHeaderView.mAllRows;
            int length = floatingHeaderRowArr.length;
            int i = 0;
            while (i < length) {
                floatingHeaderRowArr[i].setContentVisibility(z, z2, propertySetter, interpolator2, interpolator);
                i++;
                floatingHeaderView = floatingHeaderView;
                length = length;
                floatingHeaderRowArr = floatingHeaderRowArr;
            }
            FloatingHeaderView floatingHeaderView2 = floatingHeaderView;
            floatingHeaderView2.mAllowTouchForwarding = z2;
            propertySetter.setFloat(floatingHeaderView2.mTabLayout, LauncherAnimUtils.VIEW_ALPHA, z2 ? 1.0f : 0.0f, interpolator2);
        } else {
            propertySetter.setViewAlpha(this.mPluginContent, z2 ? 1.0f : 0.0f, interpolator);
            propertySetter.setViewAlpha(this.mAppsView.getContentView(), RecentsState.NO_OFFSET, interpolator);
            AllAppsRecyclerView activeRecyclerView2 = this.mAppsView.getActiveRecyclerView();
            propertySetter.setViewAlpha(activeRecyclerView2 != null ? activeRecyclerView2.mScrollbar : null, RecentsState.NO_OFFSET, interpolator);
        }
        this.mAppsView.mSearchUiManager.setContentVisibility(visibleElements, propertySetter, interpolator);
        propertySetter.setInt(this.mScrimView, ScrimView.DRAG_HANDLE_ALPHA, (visibleElements & 32) != 0 ? 255 : 0, interpolator);
        AllAppsContainerView allAppsContainerView = this.mAppsView;
        if (z3) {
            f = 1.0f;
        }
        propertySetter.setViewAlpha(allAppsContainerView, f, z3 ? Interpolators.INSTANT : Interpolators.FINAL_FRAME);
    }

    public void setProgress(float f) {
        this.mProgress = f;
        this.mScrimView.setProgress(f);
        this.mAppsView.setTranslationY(this.mShiftRange * f);
        AllAppsSearchPlugin allAppsSearchPlugin = this.mPlugin;
        if (allAppsSearchPlugin != null) {
            allAppsSearchPlugin.setProgress(f);
        }
    }

    public void setScrollRangeDelta(float f) {
        this.mScrollRangeDelta = f;
        this.mShiftRange = this.mLauncher.getDeviceProfile().heightPx - this.mScrollRangeDelta;
        ScrimView scrimView = this.mScrimView;
        if (scrimView != null) {
            scrimView.reInitUi();
        }
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public void setState(Object obj) {
        LauncherState launcherState = (LauncherState) obj;
        setProgress(launcherState.getVerticalProgress(this.mLauncher));
        setAlphas(launcherState, new StateAnimationConfig(), PropertySetter.NO_ANIM_PROPERTY_SETTER);
        onProgressAnimationEnd();
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public void setStateWithAnimation(Object obj, StateAnimationConfig stateAnimationConfig, PendingAnimation pendingAnimation) {
        LauncherState launcherState = (LauncherState) obj;
        float verticalProgress = launcherState.getVerticalProgress(this.mLauncher);
        if (Float.compare(this.mProgress, verticalProgress) == 0) {
            if (!stateAnimationConfig.onlyPlayAtomicComponent()) {
                setAlphas(launcherState, stateAnimationConfig, pendingAnimation);
            }
            onProgressAnimationEnd();
        } else {
            if (stateAnimationConfig.onlyPlayAtomicComponent()) {
                return;
            }
            Interpolator interpolator = stateAnimationConfig.userControlled ? Interpolators.LINEAR : launcherState == LauncherState.OVERVIEW ? stateAnimationConfig.getInterpolator(6, Interpolators.FAST_OUT_SLOW_IN) : Interpolators.FAST_OUT_SLOW_IN;
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, ALL_APPS_PROGRESS, this.mProgress, verticalProgress);
            ofFloat.setInterpolator(stateAnimationConfig.getInterpolator(0, interpolator));
            ofFloat.addListener(AnimationSuccessListener.forRunnable(new m(this)));
            pendingAnimation.add(ofFloat);
            setAlphas(launcherState, stateAnimationConfig, pendingAnimation);
        }
    }
}
