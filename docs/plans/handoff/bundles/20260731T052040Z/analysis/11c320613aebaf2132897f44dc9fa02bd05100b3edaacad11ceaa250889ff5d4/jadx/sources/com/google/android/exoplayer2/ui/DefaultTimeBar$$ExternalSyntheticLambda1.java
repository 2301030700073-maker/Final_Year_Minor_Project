package com.google.android.exoplayer2.ui;

import android.animation.ValueAnimator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class DefaultTimeBar$$ExternalSyntheticLambda1 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ DefaultTimeBar$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                ((DefaultTimeBar) obj).lambda$new$1(valueAnimator);
                break;
            case 1:
                ((StyledPlayerControlViewLayoutManager) obj).lambda$new$1(valueAnimator);
                break;
            case 2:
                ((StyledPlayerControlViewLayoutManager) obj).lambda$new$2(valueAnimator);
                break;
            case 3:
                ((StyledPlayerControlViewLayoutManager) obj).lambda$new$3(valueAnimator);
                break;
            default:
                ((StyledPlayerControlViewLayoutManager) obj).lambda$new$0(valueAnimator);
                break;
        }
    }
}
