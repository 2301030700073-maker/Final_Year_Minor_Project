package com.airbnb.lottie;

import com.airbnb.lottie.LottieDrawable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class LottieDrawable$$ExternalSyntheticLambda0 implements LottieDrawable.LazyCompositionTask {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LottieDrawable f$0;

    public /* synthetic */ LottieDrawable$$ExternalSyntheticLambda0(LottieDrawable lottieDrawable, int i) {
        this.$r8$classId = i;
        this.f$0 = lottieDrawable;
    }

    @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
    public final void run() {
        int i = this.$r8$classId;
        LottieDrawable lottieDrawable = this.f$0;
        switch (i) {
            case 0:
                lottieDrawable.resumeAnimation();
                break;
            default:
                lottieDrawable.playAnimation();
                break;
        }
    }
}
