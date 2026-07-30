package com.android.launcher3.notification;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.widget.TextView;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class NotificationItemView {
    public static final Rect sTempRect = new Rect();
    public boolean mAnimatingNextIcon;
    public final PopupContainerWithArrow mContainer;
    public final Context mContext;
    public final View mDivider;
    public final NotificationFooterLayout mFooter;
    public View mGutter;
    public final View mHeader;
    public final TextView mHeaderCount;
    public final TextView mHeaderText;
    public final View mIconView;
    public final NotificationMainView mMainView;
    public final SingleAxisSwipeDetector mSwipeDetector;
    public boolean mIgnoreTouch = false;
    public int mNotificationHeaderTextColor = 0;

    public NotificationItemView(PopupContainerWithArrow popupContainerWithArrow) {
        this.mContainer = popupContainerWithArrow;
        this.mContext = popupContainerWithArrow.getContext();
        this.mHeaderText = (TextView) popupContainerWithArrow.findViewById(R.id.notification_text);
        this.mHeaderCount = (TextView) popupContainerWithArrow.findViewById(R.id.notification_count);
        this.mMainView = (NotificationMainView) popupContainerWithArrow.findViewById(R.id.main_view);
        this.mFooter = (NotificationFooterLayout) popupContainerWithArrow.findViewById(R.id.footer);
        this.mIconView = popupContainerWithArrow.findViewById(R.id.popup_item_icon);
        this.mHeader = popupContainerWithArrow.findViewById(R.id.header);
        this.mDivider = popupContainerWithArrow.findViewById(R.id.divider);
        SingleAxisSwipeDetector singleAxisSwipeDetector = new SingleAxisSwipeDetector(this.mContext, this.mMainView, SingleAxisSwipeDetector.HORIZONTAL);
        this.mSwipeDetector = singleAxisSwipeDetector;
        singleAxisSwipeDetector.mScrollDirections = 3;
        singleAxisSwipeDetector.mIgnoreSlopWhenSettling = false;
        this.mMainView.mSwipeDetector = singleAxisSwipeDetector;
        this.mFooter.mContainer = this;
    }

    public void removeFooter() {
        if (this.mContainer.indexOfChild(this.mFooter) >= 0) {
            this.mContainer.removeView(this.mFooter);
            this.mContainer.removeView(this.mDivider);
        }
    }
}
