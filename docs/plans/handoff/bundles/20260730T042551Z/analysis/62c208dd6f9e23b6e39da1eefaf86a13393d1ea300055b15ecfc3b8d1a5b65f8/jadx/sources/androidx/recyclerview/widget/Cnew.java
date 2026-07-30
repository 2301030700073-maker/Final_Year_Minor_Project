package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.Ccatch;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: androidx.recyclerview.widget.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Ccatch f7658do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ArrayList f7659do;

    public Cnew(Ccatch ccatch, ArrayList arrayList) {
        this.f7658do = ccatch;
        this.f7659do = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = this.f7659do;
        Iterator it = arrayList.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            Ccatch ccatch = this.f7658do;
            if (!hasNext) {
                arrayList.clear();
                ccatch.f7546goto.remove(arrayList);
                return;
            }
            Ccatch.Cdo cdo = (Ccatch.Cdo) it.next();
            ccatch.getClass();
            RecyclerView.Cdefault cdefault = cdo.f7552do;
            View view = cdefault == null ? null : cdefault.f7398do;
            RecyclerView.Cdefault cdefault2 = cdo.f7555if;
            View view2 = cdefault2 != null ? cdefault2.f7398do : null;
            ArrayList<RecyclerView.Cdefault> arrayList2 = ccatch.f7543class;
            long j = ((RecyclerView.Cthis) ccatch).f7458new;
            if (view != null) {
                ViewPropertyAnimator duration = view.animate().setDuration(j);
                arrayList2.add(cdo.f7552do);
                duration.translationX(cdo.f7553for - cdo.f7551do);
                duration.translationY(cdo.f7556new - cdo.f7554if);
                duration.alpha(0.0f).setListener(new Cthis(ccatch, cdo, duration, view)).start();
            }
            if (view2 != null) {
                ViewPropertyAnimator animate = view2.animate();
                arrayList2.add(cdo.f7555if);
                animate.translationX(0.0f).translationY(0.0f).setDuration(j).alpha(1.0f).setListener(new Cbreak(ccatch, cdo, animate, view2)).start();
            }
        }
    }
}
