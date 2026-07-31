package com.skydoves.balloon;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.PopupWindow;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Balloon$$ExternalSyntheticLambda7 implements PopupWindow.OnDismissListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ Balloon$$ExternalSyntheticLambda7(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        int i = this.$r8$classId;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                Balloon balloon = (Balloon) obj2;
                BalloonKt$sam$com_skydoves_balloon_OnBalloonDismissListener$0 balloonKt$sam$com_skydoves_balloon_OnBalloonDismissListener$0 = (BalloonKt$sam$com_skydoves_balloon_OnBalloonDismissListener$0) obj;
                FrameLayout frameLayout = (FrameLayout) balloon.binding.longSerializationPolicy;
                Animation animation = frameLayout.getAnimation();
                if (animation != null) {
                    animation.cancel();
                    animation.reset();
                }
                frameLayout.clearAnimation();
                balloon.dismiss();
                if (balloonKt$sam$com_skydoves_balloon_OnBalloonDismissListener$0 != null) {
                    balloonKt$sam$com_skydoves_balloon_OnBalloonDismissListener$0.function.invoke();
                    break;
                }
                break;
            default:
                ((ViewGroup) ((View) obj2)).removeView((View) obj);
                break;
        }
    }
}
