package com.android.launcher3.statemanager;

import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.LauncherRootView;
import com.android.launcher3.Utilities;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.views.BaseDragLayer;

/* loaded from: classes.dex */
public abstract class StatefulActivity extends BaseDraggingActivity {
    public boolean mDeferredResumePending;
    public LauncherRootView mRootView;
    public final Handler mHandler = new Handler();
    public final Runnable mHandleDeferredResume = new Runnable() { // from class: c.a.a.W0.b
        @Override // java.lang.Runnable
        public final void run() {
            StatefulActivity.this.handleDeferredResume();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDeferredResume() {
        if (!hasBeenResumed() || getStateManager().mState.hasFlag(1)) {
            this.mDeferredResumePending = true;
            return;
        }
        onDeferredResumed();
        addActivityFlags(4);
        this.mDeferredResumePending = false;
    }

    public void c(BaseState baseState, BaseDragLayer baseDragLayer, int i) {
        Object obj;
        StateManager stateManager = getStateManager();
        if ((stateManager.mState == baseState && stateManager.mCurrentStableState == baseState && ((obj = stateManager.mConfig.targetState) == null || obj == baseState)) && baseDragLayer.getAlpha() >= 1.0f && baseDragLayer.getChildCount() == i) {
            return;
        }
        onUiChangedWhileSleeping();
    }

    public StateManager.AtomicAnimationFactory createAtomicAnimationFactory() {
        return new StateManager.AtomicAnimationFactory(0);
    }

    public abstract StateManager.StateHandler[] createStateHandlers();

    @Override // android.app.Activity
    public View findViewById(int i) {
        return this.mRootView.findViewById(i);
    }

    public abstract StateManager getStateManager();

    public void inflateRootView(int i) {
        LauncherRootView launcherRootView = (LauncherRootView) LayoutInflater.from(this).inflate(i, (ViewGroup) null);
        this.mRootView = launcherRootView;
        launcherRootView.setSystemUiVisibility(1792);
    }

    public boolean isInState(BaseState baseState) {
        return getStateManager().mState == baseState;
    }

    public void onDeferredResumed() {
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.mHandler.removeCallbacks(this.mHandleDeferredResume);
        Utilities.postAsyncCallback(this.mHandler, this.mHandleDeferredResume);
    }

    public void onStateSetEnd(BaseState baseState) {
    }

    public void onStateSetStart(BaseState baseState) {
        if (this.mDeferredResumePending) {
            handleDeferredResume();
        }
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public void onStop() {
        final BaseDragLayer dragLayer = getDragLayer();
        boolean isUserActive = isUserActive();
        final BaseState baseState = getStateManager().mState;
        final int childCount = dragLayer.getChildCount();
        super.onStop();
        getStateManager().moveToRestState();
        onTrimMemory(20);
        if (isUserActive) {
            dragLayer.post(new Runnable() { // from class: c.a.a.W0.c
                @Override // java.lang.Runnable
                public final void run() {
                    StatefulActivity.this.c(baseState, dragLayer, childCount);
                }
            });
        }
    }

    public void onUiChangedWhileSleeping() {
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public void reapplyUi() {
        reapplyUi(true);
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public final LauncherRootView getRootView() {
        return this.mRootView;
    }

    public void reapplyUi(boolean z) {
        getRootView().dispatchInsets();
        getStateManager().reapplyState(z);
    }
}
