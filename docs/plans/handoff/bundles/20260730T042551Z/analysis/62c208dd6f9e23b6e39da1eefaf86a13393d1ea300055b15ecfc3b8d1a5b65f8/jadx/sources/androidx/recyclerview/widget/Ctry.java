package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: androidx.recyclerview.widget.try, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ctry implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Ccatch f7695do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ArrayList f7696do;

    public Ctry(Ccatch ccatch, ArrayList arrayList) {
        this.f7695do = ccatch;
        this.f7696do = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = this.f7696do;
        Iterator it = arrayList.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            Ccatch ccatch = this.f7695do;
            if (!hasNext) {
                arrayList.clear();
                ccatch.f7541case.remove(arrayList);
                return;
            }
            RecyclerView.Cdefault cdefault = (RecyclerView.Cdefault) it.next();
            ccatch.getClass();
            View view = cdefault.f7398do;
            ViewPropertyAnimator animate = view.animate();
            ccatch.f7549this.add(cdefault);
            animate.alpha(1.0f).setDuration(((RecyclerView.Cthis) ccatch).f7453do).setListener(new Celse(view, animate, ccatch, cdefault)).start();
        }
    }
}
