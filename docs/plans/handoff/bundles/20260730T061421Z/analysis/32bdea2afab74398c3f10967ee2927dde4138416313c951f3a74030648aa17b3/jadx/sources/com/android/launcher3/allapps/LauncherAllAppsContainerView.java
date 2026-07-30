package com.android.launcher3.allapps;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.views.WorkEduView;

/* loaded from: classes.dex */
public class LauncherAllAppsContainerView extends AllAppsContainerView {
    public final Launcher mLauncher;
    public StateManager.StateListener mWorkTabListener;

    public LauncherAllAppsContainerView(Context context) {
        this(context, null);
    }

    @Override // com.android.launcher3.allapps.AllAppsContainerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.mLauncher.isInState(LauncherState.ALL_APPS)) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        this.mTouchHandler = null;
        return false;
    }

    @Override // com.android.launcher3.allapps.AllAppsContainerView
    public void onTabChanged(int i) {
        super.onTabChanged(i);
        if (this.mUsingTabs) {
            if (i == 1) {
                WorkEduView.showWorkEduIfNeeded(this.mLauncher);
            } else {
                this.mWorkTabListener = WorkEduView.showEduFlowIfNeeded(this.mLauncher, this.mWorkTabListener);
            }
        }
    }

    @Override // com.android.launcher3.allapps.AllAppsContainerView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mLauncher.isInState(LauncherState.ALL_APPS)) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // com.android.launcher3.allapps.AllAppsContainerView, com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        super.setInsets(rect);
        this.mLauncher.mAllAppsController.setScrollRangeDelta(this.mSearchUiManager.getScrollRangeDelta(rect));
    }

    @Override // com.android.launcher3.allapps.AllAppsContainerView
    public void setupHeader() {
        super.setupHeader();
        if (this.mWorkTabListener == null || this.mUsingTabs) {
            return;
        }
        StateManager stateManager = this.mLauncher.getStateManager();
        stateManager.mListeners.remove(this.mWorkTabListener);
    }

    public LauncherAllAppsContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LauncherAllAppsContainerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mLauncher = Launcher.getLauncher(context);
    }
}
