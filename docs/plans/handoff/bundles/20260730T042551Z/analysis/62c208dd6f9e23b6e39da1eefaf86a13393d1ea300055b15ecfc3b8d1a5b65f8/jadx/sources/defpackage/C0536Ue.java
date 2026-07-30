package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: Ue, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0536Ue extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AbstractC0558Ve f3939do;

    public C0536Ue(AbstractC0558Ve abstractC0558Ve) {
        this.f3939do = abstractC0558Ve;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        AbstractC0558Ve abstractC0558Ve = this.f3939do;
        super/*android.graphics.drawable.Drawable*/.setVisible(false, false);
        ArrayList arrayList = abstractC0558Ve.f4169do;
        if (arrayList == null || abstractC0558Ve.f4170do) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((X0) it.next()).mo2708do(abstractC0558Ve);
        }
    }
}
