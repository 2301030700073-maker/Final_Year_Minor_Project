package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.Ccatch;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: androidx.recyclerview.widget.for, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfor implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Ccatch f7640do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ArrayList f7641do;

    public Cfor(Ccatch ccatch, ArrayList arrayList) {
        this.f7640do = ccatch;
        this.f7641do = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = this.f7641do;
        Iterator it = arrayList.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            Ccatch ccatch = this.f7640do;
            if (!hasNext) {
                arrayList.clear();
                ccatch.f7544else.remove(arrayList);
                return;
            }
            Ccatch.Cif cif = (Ccatch.Cif) it.next();
            RecyclerView.Cdefault cdefault = cif.f7558do;
            ccatch.getClass();
            View view = cdefault.f7398do;
            int i = cif.f7559for - cif.f7557do;
            int i2 = cif.f7561new - cif.f7560if;
            if (i != 0) {
                view.animate().translationX(0.0f);
            }
            if (i2 != 0) {
                view.animate().translationY(0.0f);
            }
            ViewPropertyAnimator animate = view.animate();
            ccatch.f7540break.add(cdefault);
            animate.setDuration(((RecyclerView.Cthis) ccatch).f7456for).setListener(new Cgoto(ccatch, cdefault, i, view, i2, animate)).start();
        }
    }
}
