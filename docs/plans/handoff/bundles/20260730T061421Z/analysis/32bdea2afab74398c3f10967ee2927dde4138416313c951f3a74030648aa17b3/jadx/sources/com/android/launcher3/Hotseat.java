package com.android.launcher3;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewDebug;
import android.widget.FrameLayout;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.logging.StatsLogUtils$LogContainerProvider;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class Hotseat extends CellLayout implements StatsLogUtils$LogContainerProvider, Insettable {

    @ViewDebug.ExportedProperty(category = "launcher")
    public boolean mHasVerticalHotseat;
    public boolean mSendTouchToWorkspace;
    public Workspace mWorkspace;

    public Hotseat(Context context) {
        this(context, null);
    }

    @Override // com.android.launcher3.logging.StatsLogUtils$LogContainerProvider
    public void fillInLogContainerData(ItemInfo itemInfo, LauncherLogProto$Target launcherLogProto$Target, ArrayList arrayList) {
        launcherLogProto$Target.rank = itemInfo.rank;
        launcherLogProto$Target.gridX = itemInfo.cellX;
        launcherLogProto$Target.gridY = itemInfo.cellY;
        arrayList.add(LoggerUtils.newContainerTarget(2));
    }

    public int getCellXFromOrder(int i) {
        if (this.mHasVerticalHotseat) {
            return 0;
        }
        return i;
    }

    public int getCellYFromOrder(int i) {
        if (this.mHasVerticalHotseat) {
            return this.mCountY - (i + 1);
        }
        return 0;
    }

    @Override // com.android.launcher3.CellLayout, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int measuredHeight = getMeasuredHeight() - getPaddingBottom();
        if (this.mWorkspace == null || motionEvent.getY() > measuredHeight) {
            return false;
        }
        boolean onInterceptTouchEvent = this.mWorkspace.onInterceptTouchEvent(motionEvent);
        this.mSendTouchToWorkspace = onInterceptTouchEvent;
        return onInterceptTouchEvent;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mSendTouchToWorkspace) {
            return motionEvent.getY() > ((float) this.mCellHeight);
        }
        int action = motionEvent.getAction() & 255;
        if (action == 1 || action == 3) {
            this.mSendTouchToWorkspace = false;
        }
        return this.mWorkspace.onTouchEvent(motionEvent);
    }

    public void resetLayout(boolean z) {
        removeAllViewsInLayout();
        this.mHasVerticalHotseat = z;
        InvariantDeviceProfile invariantDeviceProfile = this.mActivity.getDeviceProfile().inv;
        if (z) {
            setGridSize(1, invariantDeviceProfile.numHotseatIcons);
        } else {
            setGridSize(invariantDeviceProfile.numHotseatIcons, 1);
        }
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        if (deviceProfile.isVerticalBarLayout()) {
            layoutParams.height = -1;
            if (deviceProfile.isSeascape()) {
                layoutParams.gravity = 3;
                layoutParams.width = deviceProfile.hotseatBarSizePx + rect.left;
            } else {
                layoutParams.gravity = 5;
                layoutParams.width = deviceProfile.hotseatBarSizePx + rect.right;
            }
        } else {
            layoutParams.gravity = 80;
            layoutParams.width = -1;
            layoutParams.height = deviceProfile.hotseatBarSizePx + rect.bottom;
        }
        Rect hotseatLayoutPadding = deviceProfile.getHotseatLayoutPadding();
        setPadding(hotseatLayoutPadding.left, hotseatLayoutPadding.top, hotseatLayoutPadding.right, hotseatLayoutPadding.bottom);
        setLayoutParams(layoutParams);
        InsettableFrameLayout.dispatchInsets(this, rect);
    }

    public Hotseat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Hotseat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
