package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.fragment.app.Cbreak;

/* renamed from: androidx.fragment.app.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew implements Animation.AnimationListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ View f6980do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ViewGroup f6981do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Cbreak.Cdo f6982do;

    /* renamed from: androidx.fragment.app.new$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Cnew cnew = Cnew.this;
            cnew.f6981do.endViewTransition(cnew.f6980do);
            cnew.f6982do.m4162do();
        }
    }

    public Cnew(View view, ViewGroup viewGroup, Cbreak.Cdo cdo) {
        this.f6981do = viewGroup;
        this.f6980do = view;
        this.f6982do = cdo;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.f6981do.post(new Cdo());
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
