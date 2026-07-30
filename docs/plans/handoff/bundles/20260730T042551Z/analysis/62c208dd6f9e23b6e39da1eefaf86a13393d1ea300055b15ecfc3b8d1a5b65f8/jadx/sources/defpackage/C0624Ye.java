package defpackage;

import android.animation.ValueAnimator;
import androidx.drawerlayout.widget.DrawerLayout;

/* renamed from: Ye, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0624Ye implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f4747do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f4748do;

    public /* synthetic */ C0624Ye(Object obj, int i) {
        this.f4747do = i;
        this.f4748do = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i = this.f4747do;
        Object obj = this.f4748do;
        switch (i) {
            case 0:
                DrawerLayout drawerLayout = (DrawerLayout) obj;
                drawerLayout.f6725new = G8.m707case(-1728053248, C2785g1.m6710if(valueAnimator.getAnimatedFraction(), C0703af.f4980do, 0));
                drawerLayout.invalidate();
                break;
            default:
                ((C4051yh) obj).m8764do(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
        }
    }
}
