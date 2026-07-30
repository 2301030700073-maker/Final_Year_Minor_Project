package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import java.util.ArrayList;

/* renamed from: d1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2609d1 extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C0785c1 f12412do;

    public C2609d1(C0785c1 c0785c1) {
        this.f12412do = c0785c1;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        C0785c1 c0785c1 = this.f12412do;
        ArrayList arrayList = new ArrayList(c0785c1.f8472do);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((X0) arrayList.get(i)).mo2708do(c0785c1);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        C0785c1 c0785c1 = this.f12412do;
        ArrayList arrayList = new ArrayList(c0785c1.f8472do);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((X0) arrayList.get(i)).mo2793if(c0785c1);
        }
    }
}
