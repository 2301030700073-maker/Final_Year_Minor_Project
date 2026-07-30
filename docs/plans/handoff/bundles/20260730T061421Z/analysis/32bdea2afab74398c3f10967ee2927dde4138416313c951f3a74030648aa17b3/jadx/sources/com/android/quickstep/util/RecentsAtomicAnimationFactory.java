package com.android.quickstep.util;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import com.android.launcher3.anim.SpringAnimationBuilder;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.quickstep.views.RecentsView;

/* loaded from: classes.dex */
public class RecentsAtomicAnimationFactory extends StateManager.AtomicAnimationFactory {
    public static final int INDEX_RECENTS_FADE_ANIM = 0;
    public static final int INDEX_RECENTS_TRANSLATE_X_ANIM = 1;
    public static final int MY_ANIM_COUNT = 2;
    public static final int NEXT_INDEX = 2;
    public final StatefulActivity mActivity;

    public RecentsAtomicAnimationFactory(StatefulActivity statefulActivity, int i) {
        super(i + 2);
        this.mActivity = statefulActivity;
    }

    @Override // com.android.launcher3.statemanager.StateManager.AtomicAnimationFactory
    public Animator createStateElementAnimation(int i, float... fArr) {
        if (i == 0) {
            return ObjectAnimator.ofFloat((RecentsView) this.mActivity.getOverviewPanel(), RecentsView.CONTENT_ALPHA, fArr);
        }
        if (i != 1) {
            return super.createStateElementAnimation(i, fArr);
        }
        RecentsView recentsView = (RecentsView) this.mActivity.getOverviewPanel();
        SpringAnimationBuilder springAnimationBuilder = new SpringAnimationBuilder(this.mActivity);
        springAnimationBuilder.setMinimumVisibleChange(1.0f / recentsView.getPageOffsetScale());
        springAnimationBuilder.setDampingRatio(0.8f);
        springAnimationBuilder.setStiffness(250.0f);
        if (fArr.length > 1) {
            springAnimationBuilder.mStartValue = fArr[0];
            springAnimationBuilder.mEndValue = fArr[fArr.length - 1];
        } else {
            springAnimationBuilder.mEndValue = fArr[0];
        }
        return springAnimationBuilder.build(recentsView, RecentsView.ADJACENT_PAGE_OFFSET);
    }
}
