package com.fsck.k9.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.widget.ViewAnimator;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract;
import kotlin.io.CloseableKt;
import net.thunderbird.core.ui.animation.manager.AnimationManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ViewSwitcher extends ViewAnimator implements Animation.AnimationListener {
    public AnimationManager animationManager;
    public Animation mFirstInAnimation;
    public Animation mFirstOutAnimation;
    public OnSwitchCompleteListener mListener;
    public Animation mSecondInAnimation;
    public Animation mSecondOutAnimation;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnSwitchCompleteListener {
    }

    public ViewSwitcher(Context context) {
        super(context);
        this.animationManager = (AnimationManager) CloseableKt.get$default(AnimationManager.class);
    }

    public AnimationManager getAnimationManager() {
        return this.animationManager;
    }

    public Animation getFirstInAnimation() {
        return this.mFirstInAnimation;
    }

    public Animation getFirstOutAnimation() {
        return this.mFirstOutAnimation;
    }

    public Animation getSecondInAnimation() {
        return this.mSecondInAnimation;
    }

    public Animation getSecondOutAnimation() {
        return this.mSecondOutAnimation;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        OnSwitchCompleteListener onSwitchCompleteListener = this.mListener;
        if (onSwitchCompleteListener != null) {
            MessageHomeActivity messageHomeActivity = (MessageHomeActivity) onSwitchCompleteListener;
            if (getDisplayedChild() != 0) {
                messageHomeActivity.getClass();
                return;
            }
            messageHomeActivity.removeMessageViewContainerFragment();
            MessageListFragmentBridgeContract messageListFragmentBridgeContract = messageHomeActivity.messageListFragment;
            if (messageListFragmentBridgeContract != null) {
                messageListFragmentBridgeContract.onFullyActive();
            }
        }
    }

    public void setAnimationManager(AnimationManager animationManager) {
        this.animationManager = animationManager;
    }

    public void setFirstInAnimation(Animation animation) {
        this.mFirstInAnimation = animation;
    }

    public void setFirstOutAnimation(Animation animation) {
        this.mFirstOutAnimation = animation;
    }

    public void setOnSwitchCompleteListener(OnSwitchCompleteListener onSwitchCompleteListener) {
        this.mListener = onSwitchCompleteListener;
    }

    public void setSecondInAnimation(Animation animation) {
        this.mSecondInAnimation = animation;
    }

    public void setSecondOutAnimation(Animation animation) {
        this.mSecondOutAnimation = animation;
    }

    public ViewSwitcher(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.animationManager = (AnimationManager) CloseableKt.get$default(AnimationManager.class);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
