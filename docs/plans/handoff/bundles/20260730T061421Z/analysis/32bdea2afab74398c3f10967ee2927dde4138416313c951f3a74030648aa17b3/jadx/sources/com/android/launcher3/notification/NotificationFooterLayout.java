package com.android.launcher3.notification;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import b.l.W;
import c.a.a.O0.b;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.PropertyResetListener;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class NotificationFooterLayout extends FrameLayout {
    public static final Rect sTempRect = new Rect();
    public final int mBackgroundColor;
    public NotificationItemView mContainer;
    public FrameLayout.LayoutParams mIconLayoutParams;
    public LinearLayout mIconRow;
    public final List mNotifications;
    public View mOverflowEllipsis;
    public final List mOverflowNotifications;
    public final boolean mRtl;

    public NotificationFooterLayout(Context context) {
        this(context, null, 0);
    }

    public final View addNotificationIconForInfo(NotificationInfo notificationInfo) {
        View view = new View(getContext());
        view.setBackground(notificationInfo.getIconForBackground(getContext(), this.mBackgroundColor));
        view.setOnClickListener(notificationInfo);
        view.setTag(notificationInfo);
        view.setImportantForAccessibility(2);
        this.mIconRow.addView(view, 0, this.mIconLayoutParams);
        return view;
    }

    public void animateFirstNotificationTo(Rect rect, final b bVar) {
        Property property = FrameLayout.TRANSLATION_X;
        AnimatorSet animatorSet = new AnimatorSet();
        LinearLayout linearLayout = this.mIconRow;
        final View childAt = linearLayout.getChildAt(linearLayout.getChildCount() - 1);
        childAt.getGlobalVisibleRect(sTempRect);
        float height = rect.height() / r3.height();
        ArrayList arrayList = new ArrayList();
        arrayList.add(PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_X, height));
        arrayList.add(PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_Y, height));
        arrayList.add(PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, (((r3.height() * height) - r3.height()) / 2.0f) + (rect.top - r3.top)));
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(childAt, (PropertyValuesHolder[]) arrayList.toArray(new PropertyValuesHolder[arrayList.size()]));
        ofPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.notification.NotificationFooterLayout.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                b bVar2 = bVar;
                NotificationInfo notificationInfo = (NotificationInfo) childAt.getTag();
                NotificationItemView notificationItemView = bVar2.f1564a;
                if (notificationInfo != null) {
                    notificationItemView.mMainView.applyNotificationInfo(notificationInfo, true);
                    NotificationMainView notificationMainView = notificationItemView.mMainView;
                    notificationMainView.mTextAndBackground.setVisibility(0);
                    notificationMainView.mIconView.setVisibility(0);
                }
                notificationItemView.mAnimatingNextIcon = false;
                NotificationFooterLayout.this.removeViewFromIconRow(childAt);
            }
        });
        animatorSet.play(ofPropertyValuesHolder);
        FrameLayout.LayoutParams layoutParams = this.mIconLayoutParams;
        int marginStart = layoutParams.getMarginStart() + layoutParams.width;
        if (this.mRtl) {
            marginStart = -marginStart;
        }
        if (!this.mOverflowNotifications.isEmpty()) {
            NotificationInfo notificationInfo = (NotificationInfo) this.mOverflowNotifications.remove(0);
            this.mNotifications.add(notificationInfo);
            animatorSet.play(ObjectAnimator.ofFloat(addNotificationIconForInfo(notificationInfo), (Property<View, Float>) FrameLayout.ALPHA, RecentsState.NO_OFFSET, 1.0f));
        }
        int childCount = this.mIconRow.getChildCount() - 1;
        PropertyResetListener propertyResetListener = new PropertyResetListener(property, Float.valueOf(RecentsState.NO_OFFSET));
        for (int i = 0; i < childCount; i++) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mIconRow.getChildAt(i), (Property<View, Float>) property, marginStart);
            ofFloat.addListener(propertyResetListener);
            animatorSet.play(ofFloat);
        }
        animatorSet.start();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mOverflowEllipsis = findViewById(R.id.overflow);
        this.mIconRow = (LinearLayout) findViewById(R.id.icon_row);
    }

    public final void removeViewFromIconRow(View view) {
        NotificationItemView notificationItemView;
        this.mIconRow.removeView(view);
        this.mNotifications.remove(view.getTag());
        this.mOverflowEllipsis.setVisibility(this.mOverflowNotifications.isEmpty() ? 8 : 0);
        if (this.mIconRow.getChildCount() != 0 || (notificationItemView = this.mContainer) == null) {
            return;
        }
        notificationItemView.removeFooter();
    }

    public void setWidth(int i) {
        if (getLayoutParams() != null) {
            getLayoutParams().width = i;
        }
        Resources resources = getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.notification_footer_icon_size);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.notification_footer_icon_row_padding);
        int i2 = i - dimensionPixelSize2;
        this.mIconLayoutParams.setMarginStart(((i2 - (resources.getDimensionPixelSize(R.dimen.horizontal_ellipsis_size) + resources.getDimensionPixelSize(R.dimen.horizontal_ellipsis_offset))) - (dimensionPixelSize * 5)) / 5);
    }

    public NotificationFooterLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NotificationFooterLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mNotifications = new ArrayList();
        this.mOverflowNotifications = new ArrayList();
        Resources resources = getResources();
        this.mRtl = Utilities.isRtl(resources);
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.notification_footer_icon_size);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dimensionPixelSize, dimensionPixelSize);
        this.mIconLayoutParams = layoutParams;
        layoutParams.gravity = 16;
        setWidth((int) resources.getDimension(R.dimen.bg_popup_item_width));
        this.mBackgroundColor = W.getAttrColor(context, R.attr.popupColorPrimary);
    }
}
