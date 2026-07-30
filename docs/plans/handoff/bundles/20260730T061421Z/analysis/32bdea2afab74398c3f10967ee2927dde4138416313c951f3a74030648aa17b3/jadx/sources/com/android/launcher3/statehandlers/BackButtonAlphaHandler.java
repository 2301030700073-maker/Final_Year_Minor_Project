package com.android.launcher3.statehandlers;

import c.a.a.C0239h;
import com.android.launcher3.BaseQuickstepLauncher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.statehandlers.BackButtonAlphaHandler;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.util.UiThreadHelper;
import com.android.quickstep.AnimatedFloat;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class BackButtonAlphaHandler implements StateManager.StateHandler {
    public final AnimatedFloat mBackAlpha = new AnimatedFloat(new Runnable() { // from class: c.a.a.V0.a
        @Override // java.lang.Runnable
        public final void run() {
            BackButtonAlphaHandler backButtonAlphaHandler = BackButtonAlphaHandler.this;
            BaseQuickstepLauncher baseQuickstepLauncher = backButtonAlphaHandler.mLauncher;
            UiThreadHelper.AsyncCommand asyncCommand = BaseQuickstepLauncher.SET_BACK_BUTTON_ALPHA;
            UiThreadHelper.setBackButtonAlphaAsync(baseQuickstepLauncher, C0239h.f1863a, backButtonAlphaHandler.mBackAlpha.value, false);
        }
    });
    public final BaseQuickstepLauncher mLauncher;

    public BackButtonAlphaHandler(BaseQuickstepLauncher baseQuickstepLauncher) {
        this.mLauncher = baseQuickstepLauncher;
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public void setState(Object obj) {
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public void setStateWithAnimation(Object obj, StateAnimationConfig stateAnimationConfig, PendingAnimation pendingAnimation) {
        LauncherState launcherState = (LauncherState) obj;
        if (stateAnimationConfig.onlyPlayAtomicComponent()) {
            return;
        }
        if (SysUINavigationMode.getMode(this.mLauncher).hasGestures) {
            this.mBackAlpha.value = ((SystemUiProxy) SystemUiProxy.INSTANCE.b(this.mLauncher)).getLastBackButtonAlpha();
            pendingAnimation.setFloat(this.mBackAlpha, AnimatedFloat.VALUE, this.mLauncher.shouldBackButtonBeHidden(launcherState) ? RecentsState.NO_OFFSET : 1.0f, Interpolators.LINEAR);
        } else {
            BaseQuickstepLauncher baseQuickstepLauncher = this.mLauncher;
            UiThreadHelper.AsyncCommand asyncCommand = BaseQuickstepLauncher.SET_BACK_BUTTON_ALPHA;
            UiThreadHelper.setBackButtonAlphaAsync(baseQuickstepLauncher, C0239h.f1863a, 1.0f, true);
        }
    }
}
