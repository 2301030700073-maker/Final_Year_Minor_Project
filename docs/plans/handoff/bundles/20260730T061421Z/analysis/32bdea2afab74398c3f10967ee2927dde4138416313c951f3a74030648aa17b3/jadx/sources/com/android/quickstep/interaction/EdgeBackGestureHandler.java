package com.android.quickstep.interaction;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.PointF;
import android.os.SystemProperties;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import b.l.W;
import com.android.quickstep.interaction.EdgeBackGesturePanel;

/* loaded from: classes.dex */
public class EdgeBackGestureHandler implements View.OnTouchListener {
    public static final int MAX_LONG_PRESS_TIMEOUT = SystemProperties.getInt("gestures.back_timeout", 250);
    public static final String TAG = "EdgeBackGestureHandler";
    public int mBottomGestureHeight;
    public final Context mContext;
    public BackGestureResult mDisallowedGestureReason;
    public EdgeBackGesturePanel mEdgeBackPanel;
    public int mEdgeWidth;
    public BackGestureAttemptCallback mGestureCallback;
    public boolean mIsEnabled;
    public int mLeftInset;
    public final int mLongPressTimeout;
    public int mRightInset;
    public final float mTouchSlop;
    public final Point mDisplaySize = new Point();
    public final PointF mDownPoint = new PointF();
    public boolean mThresholdCrossed = false;
    public boolean mAllowGesture = false;
    public final EdgeBackGesturePanel.BackCallback mBackCallback = new EdgeBackGesturePanel.BackCallback() { // from class: com.android.quickstep.interaction.EdgeBackGestureHandler.1
        @Override // com.android.quickstep.interaction.EdgeBackGesturePanel.BackCallback
        public void cancelBack() {
            if (EdgeBackGestureHandler.this.mGestureCallback != null) {
                EdgeBackGestureHandler.this.mGestureCallback.onBackGestureAttempted(EdgeBackGestureHandler.this.mEdgeBackPanel.getIsLeftPanel() ? BackGestureResult.BACK_CANCELLED_FROM_LEFT : BackGestureResult.BACK_CANCELLED_FROM_RIGHT);
            }
        }

        @Override // com.android.quickstep.interaction.EdgeBackGesturePanel.BackCallback
        public void triggerBack() {
            if (EdgeBackGestureHandler.this.mGestureCallback != null) {
                EdgeBackGestureHandler.this.mGestureCallback.onBackGestureAttempted(EdgeBackGestureHandler.this.mEdgeBackPanel.getIsLeftPanel() ? BackGestureResult.BACK_COMPLETED_FROM_LEFT : BackGestureResult.BACK_COMPLETED_FROM_RIGHT);
            }
        }
    };

    public interface BackGestureAttemptCallback {
        void onBackGestureAttempted(BackGestureResult backGestureResult);
    }

    public enum BackGestureResult {
        UNKNOWN,
        BACK_COMPLETED_FROM_LEFT,
        BACK_COMPLETED_FROM_RIGHT,
        BACK_CANCELLED_FROM_LEFT,
        BACK_CANCELLED_FROM_RIGHT,
        BACK_NOT_STARTED_TOO_FAR_FROM_EDGE,
        BACK_NOT_STARTED_IN_NAV_BAR_REGION
    }

    public EdgeBackGestureHandler(Context context) {
        Resources resources = context.getResources();
        this.mContext = context;
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.mLongPressTimeout = Math.min(MAX_LONG_PRESS_TIMEOUT, ViewConfiguration.getLongPressTimeout());
        this.mBottomGestureHeight = W.getNavbarSize("navigation_bar_gesture_height", resources);
        this.mEdgeWidth = W.getNavbarSize("config_backGestureInset", resources);
    }

    private void cancelGesture(MotionEvent motionEvent) {
        this.mAllowGesture = false;
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        this.mEdgeBackPanel.onMotionEvent(obtain);
        obtain.recycle();
    }

    private ViewGroup.LayoutParams createLayoutParams() {
        Resources resources = this.mContext.getResources();
        return new ViewGroup.LayoutParams(W.getNavbarSize("navigation_edge_panel_width", resources), W.getNavbarSize("navigation_edge_panel_height", resources));
    }

    private boolean isWithinTouchRegion(int i, int i2) {
        int i3 = this.mEdgeWidth;
        if (i > this.mLeftInset + i3 && i < (this.mDisplaySize.x - i3) - this.mRightInset) {
            this.mDisallowedGestureReason = BackGestureResult.BACK_NOT_STARTED_TOO_FAR_FROM_EDGE;
            return false;
        }
        if (i2 < this.mDisplaySize.y - this.mBottomGestureHeight) {
            return true;
        }
        this.mDisallowedGestureReason = BackGestureResult.BACK_NOT_STARTED_IN_NAV_BAR_REGION;
        return false;
    }

    private void onMotionEvent(MotionEvent motionEvent) {
        BackGestureAttemptCallback backGestureAttemptCallback;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            boolean z = motionEvent.getX() <= ((float) (this.mEdgeWidth + this.mLeftInset));
            this.mDisallowedGestureReason = BackGestureResult.UNKNOWN;
            this.mAllowGesture = isWithinTouchRegion((int) motionEvent.getX(), (int) motionEvent.getY());
            this.mDownPoint.set(motionEvent.getX(), motionEvent.getY());
            if (this.mAllowGesture) {
                this.mEdgeBackPanel.setIsLeftPanel(z);
                this.mEdgeBackPanel.onMotionEvent(motionEvent);
                this.mThresholdCrossed = false;
            }
        } else if (this.mAllowGesture) {
            if (!this.mThresholdCrossed) {
                if (actionMasked == 5) {
                    cancelGesture(motionEvent);
                    return;
                }
                if (actionMasked == 2) {
                    if (motionEvent.getEventTime() - motionEvent.getDownTime() > this.mLongPressTimeout) {
                        cancelGesture(motionEvent);
                        return;
                    }
                    float abs = Math.abs(motionEvent.getX() - this.mDownPoint.x);
                    float abs2 = Math.abs(motionEvent.getY() - this.mDownPoint.y);
                    if (abs2 > abs && abs2 > this.mTouchSlop) {
                        cancelGesture(motionEvent);
                        return;
                    } else if (abs > abs2 && abs > this.mTouchSlop) {
                        this.mThresholdCrossed = true;
                    }
                }
            }
            this.mEdgeBackPanel.onMotionEvent(motionEvent);
        }
        if (actionMasked == 1 || actionMasked == 3) {
            float abs3 = Math.abs(motionEvent.getX() - this.mDownPoint.x);
            if (abs3 <= Math.abs(motionEvent.getY() - this.mDownPoint.y) || abs3 <= this.mTouchSlop || this.mAllowGesture || (backGestureAttemptCallback = this.mGestureCallback) == null) {
                return;
            }
            backGestureAttemptCallback.onBackGestureAttempted(this.mDisallowedGestureReason);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.mIsEnabled) {
            return false;
        }
        onMotionEvent(motionEvent);
        return true;
    }

    public void registerBackGestureAttemptCallback(BackGestureAttemptCallback backGestureAttemptCallback) {
        this.mGestureCallback = backGestureAttemptCallback;
    }

    public void setInsets(int i, int i2) {
        this.mLeftInset = i;
        this.mRightInset = i2;
    }

    public void setViewGroupParent(ViewGroup viewGroup) {
        this.mIsEnabled = viewGroup != null;
        EdgeBackGesturePanel edgeBackGesturePanel = this.mEdgeBackPanel;
        if (edgeBackGesturePanel != null) {
            edgeBackGesturePanel.onDestroy();
            this.mEdgeBackPanel = null;
        }
        if (this.mIsEnabled) {
            EdgeBackGesturePanel edgeBackGesturePanel2 = new EdgeBackGesturePanel(this.mContext, viewGroup, createLayoutParams());
            this.mEdgeBackPanel = edgeBackGesturePanel2;
            edgeBackGesturePanel2.setBackCallback(this.mBackCallback);
            if (this.mContext.getDisplay() != null) {
                this.mContext.getDisplay().getRealSize(this.mDisplaySize);
                this.mEdgeBackPanel.setDisplaySize(this.mDisplaySize);
            }
        }
    }

    public void unregisterBackGestureAttemptCallback() {
        this.mGestureCallback = null;
    }
}
