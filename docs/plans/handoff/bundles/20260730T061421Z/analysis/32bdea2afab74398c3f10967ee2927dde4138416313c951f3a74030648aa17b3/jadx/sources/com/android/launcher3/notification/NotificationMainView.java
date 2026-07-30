package com.android.launcher3.notification;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import b.l.W;
import com.android.launcher3.Launcher;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.touch.BaseSwipeDetector;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.Objects;

@TargetApi(24)
/* loaded from: classes.dex */
public class NotificationMainView extends FrameLayout implements SingleAxisSwipeDetector.Listener {
    public static final FloatProperty CONTENT_TRANSLATION = new FloatProperty("contentTranslation") { // from class: com.android.launcher3.notification.NotificationMainView.1
        @Override // android.util.Property
        public Float get(Object obj) {
            return Float.valueOf(((NotificationMainView) obj).mTextAndBackground.getTranslationX());
        }

        @Override // android.util.FloatProperty
        public void setValue(Object obj, float f) {
            NotificationMainView notificationMainView = (NotificationMainView) obj;
            notificationMainView.mTextAndBackground.setTranslationX(f);
            notificationMainView.mIconView.setTranslationX(f);
        }
    };
    public static final ItemInfo NOTIFICATION_ITEM_INFO = new ItemInfo();
    public int mBackgroundColor;
    public final ObjectAnimator mContentTranslateAnimator;
    public View mIconView;
    public NotificationInfo mNotificationInfo;
    public SingleAxisSwipeDetector mSwipeDetector;
    public ViewGroup mTextAndBackground;
    public TextView mTextView;
    public TextView mTitleView;

    public NotificationMainView(Context context) {
        this(context, null, 0);
    }

    public void applyNotificationInfo(NotificationInfo notificationInfo, boolean z) {
        this.mNotificationInfo = notificationInfo;
        NotificationListener instanceIfConnected = NotificationListener.getInstanceIfConnected();
        if (instanceIfConnected != null) {
            instanceIfConnected.setNotificationsShown(new String[]{this.mNotificationInfo.notificationKey});
        }
        NotificationInfo notificationInfo2 = this.mNotificationInfo;
        CharSequence charSequence = notificationInfo2.title;
        CharSequence charSequence2 = notificationInfo2.text;
        if (TextUtils.isEmpty(charSequence) || TextUtils.isEmpty(charSequence2)) {
            this.mTitleView.setMaxLines(2);
            this.mTitleView.setText(TextUtils.isEmpty(charSequence) ? charSequence2.toString() : charSequence.toString());
            this.mTextView.setVisibility(8);
        } else {
            this.mTitleView.setText(charSequence.toString());
            this.mTextView.setText(charSequence2.toString());
        }
        this.mIconView.setBackground(this.mNotificationInfo.getIconForBackground(getContext(), this.mBackgroundColor));
        NotificationInfo notificationInfo3 = this.mNotificationInfo;
        if (notificationInfo3.intent != null) {
            setOnClickListener(notificationInfo3);
        }
        setContentTranslation(RecentsState.NO_OFFSET);
        setTag(NOTIFICATION_ITEM_INFO);
        if (z) {
            ObjectAnimator.ofFloat(this.mTextAndBackground, (Property<ViewGroup, Float>) FrameLayout.ALPHA, RecentsState.NO_OFFSET, 1.0f).setDuration(150L).start();
        }
    }

    public boolean canChildBeDismissed() {
        NotificationInfo notificationInfo = this.mNotificationInfo;
        return notificationInfo != null && notificationInfo.dismissable;
    }

    public void onChildDismissed() {
        Launcher launcher = Launcher.getLauncher(getContext());
        PopupDataProvider popupDataProvider = launcher.mPopupDataProvider;
        String str = this.mNotificationInfo.notificationKey;
        Objects.requireNonNull(popupDataProvider);
        NotificationListener instanceIfConnected = NotificationListener.getInstanceIfConnected();
        if (instanceIfConnected != null) {
            instanceIfConnected.mWorkerHandler.obtainMessage(4, str).sendToTarget();
        }
        launcher.getUserEventDispatcher().logActionOnItem(3, 4, 8);
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public boolean onDrag(float f) {
        if (!canChildBeDismissed()) {
            f = W.dampedScroll(f, getWidth());
        }
        setContentTranslation(f);
        this.mContentTranslateAnimator.cancel();
        return true;
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public void onDragEnd(float f) {
        final boolean z;
        float translationX = this.mTextAndBackground.getTranslationX();
        boolean canChildBeDismissed = canChildBeDismissed();
        float f2 = RecentsState.NO_OFFSET;
        if (canChildBeDismissed) {
            if (this.mSwipeDetector.isFling(f)) {
                f2 = f < RecentsState.NO_OFFSET ? -getWidth() : getWidth();
            } else if (Math.abs(translationX) > getWidth() / 2) {
                f2 = translationX < RecentsState.NO_OFFSET ? -getWidth() : getWidth();
            }
            z = true;
            long calculateDuration = BaseSwipeDetector.calculateDuration(f, (f2 - translationX) / getWidth());
            this.mContentTranslateAnimator.removeAllListeners();
            this.mContentTranslateAnimator.setDuration(calculateDuration).setInterpolator(Interpolators.scrollInterpolatorForVelocity(f));
            this.mContentTranslateAnimator.setFloatValues(translationX, f2);
            this.mContentTranslateAnimator.addListener(new AnimationSuccessListener() { // from class: com.android.launcher3.notification.NotificationMainView.2
                @Override // com.android.launcher3.anim.AnimationSuccessListener
                public void onAnimationSuccess(Animator animator) {
                    NotificationMainView.this.mSwipeDetector.a(BaseSwipeDetector.ScrollState.IDLE);
                    if (z) {
                        NotificationMainView.this.onChildDismissed();
                    }
                }
            });
            this.mContentTranslateAnimator.start();
        }
        z = false;
        long calculateDuration2 = BaseSwipeDetector.calculateDuration(f, (f2 - translationX) / getWidth());
        this.mContentTranslateAnimator.removeAllListeners();
        this.mContentTranslateAnimator.setDuration(calculateDuration2).setInterpolator(Interpolators.scrollInterpolatorForVelocity(f));
        this.mContentTranslateAnimator.setFloatValues(translationX, f2);
        this.mContentTranslateAnimator.addListener(new AnimationSuccessListener() { // from class: com.android.launcher3.notification.NotificationMainView.2
            @Override // com.android.launcher3.anim.AnimationSuccessListener
            public void onAnimationSuccess(Animator animator) {
                NotificationMainView.this.mSwipeDetector.a(BaseSwipeDetector.ScrollState.IDLE);
                if (z) {
                    NotificationMainView.this.onChildDismissed();
                }
            }
        });
        this.mContentTranslateAnimator.start();
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public void onDragStart(boolean z, float f) {
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.text_and_background);
        this.mTextAndBackground = viewGroup;
        ColorDrawable colorDrawable = (ColorDrawable) viewGroup.getBackground();
        this.mBackgroundColor = colorDrawable.getColor();
        this.mTextAndBackground.setBackground(new RippleDrawable(ColorStateList.valueOf(W.getAttrColor(getContext(), android.R.attr.colorControlHighlight)), colorDrawable, null));
        this.mTitleView = (TextView) this.mTextAndBackground.findViewById(R.id.title);
        this.mTextView = (TextView) this.mTextAndBackground.findViewById(R.id.text);
        this.mIconView = findViewById(R.id.popup_item_icon);
    }

    public void setContentTranslation(float f) {
        this.mTextAndBackground.setTranslationX(f);
        this.mIconView.setTranslationX(f);
    }

    public NotificationMainView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NotificationMainView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mContentTranslateAnimator = ObjectAnimator.ofFloat(this, CONTENT_TRANSLATION, RecentsState.NO_OFFSET);
    }
}
