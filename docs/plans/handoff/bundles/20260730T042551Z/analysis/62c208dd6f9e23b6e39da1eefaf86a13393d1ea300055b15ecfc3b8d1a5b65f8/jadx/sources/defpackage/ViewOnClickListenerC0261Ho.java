package defpackage;

import android.view.View;
import android.view.animation.AnimationUtils;
import androidx.viewpager.widget.ViewPager;
import com.heinrichreimersoftware.materialintro.app.IntroActivity;
import com.joeykrim.rootcheck.R;

/* renamed from: Ho, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ViewOnClickListenerC0261Ho implements View.OnClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ IntroActivity f1391do;

    public ViewOnClickListenerC0261Ho(IntroActivity introActivity) {
        this.f1391do = introActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i;
        IntroActivity introActivity = this.f1391do;
        int i2 = introActivity.f12136case;
        if (i2 == 2) {
            int m6352extends = introActivity.m6352extends();
            int i3 = ((ViewPager) introActivity.f12150do).f8038new;
            while (i3 < m6352extends && introActivity.m6360public(i3, true)) {
                i3++;
            }
            introActivity.m6349abstract(i3);
            return;
        }
        if (i2 != 1 || (i = ((ViewPager) introActivity.f12150do).f8038new) <= 0) {
            return;
        }
        if (introActivity.m6356native(i, true)) {
            introActivity.m6349abstract(i - 1);
        } else {
            introActivity.f12158if.startAnimation(AnimationUtils.loadAnimation(introActivity, R.anim.shake));
        }
    }
}
