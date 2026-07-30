package defpackage;

import android.view.View;
import android.view.animation.AnimationUtils;
import androidx.viewpager.widget.ViewPager;
import com.heinrichreimersoftware.materialintro.app.IntroActivity;
import com.joeykrim.rootcheck.R;

/* renamed from: Go, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ViewOnClickListenerC0239Go implements View.OnClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ IntroActivity f1245do;

    public ViewOnClickListenerC0239Go(IntroActivity introActivity) {
        this.f1245do = introActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        IntroActivity introActivity = this.f1245do;
        int i = ((ViewPager) introActivity.f12150do).f8038new;
        if (i > introActivity.f12140do.mo171try() - 1) {
            introActivity.m6362static();
        }
        if (introActivity.m6360public(i, true)) {
            introActivity.m6349abstract(i + 1);
        } else {
            introActivity.f12146do.startAnimation(AnimationUtils.loadAnimation(introActivity, R.anim.shake));
        }
    }
}
