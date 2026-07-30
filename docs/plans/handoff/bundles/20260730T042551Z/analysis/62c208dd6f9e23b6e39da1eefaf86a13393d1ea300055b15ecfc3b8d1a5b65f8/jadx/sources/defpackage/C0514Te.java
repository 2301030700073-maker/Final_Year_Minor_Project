package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: Te, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0514Te extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AbstractC0558Ve f3719do;

    public C0514Te(AbstractC0558Ve abstractC0558Ve) {
        this.f3719do = abstractC0558Ve;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        super.onAnimationStart(animator);
        AbstractC0558Ve abstractC0558Ve = this.f3719do;
        ArrayList arrayList = abstractC0558Ve.f4169do;
        if (arrayList == null || abstractC0558Ve.f4170do) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((X0) it.next()).mo2793if(abstractC0558Ve);
        }
    }
}
