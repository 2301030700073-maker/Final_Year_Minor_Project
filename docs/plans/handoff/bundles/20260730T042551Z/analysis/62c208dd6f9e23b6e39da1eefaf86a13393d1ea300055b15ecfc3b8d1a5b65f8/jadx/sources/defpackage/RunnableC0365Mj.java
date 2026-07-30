package defpackage;

import android.view.View;
import defpackage.QK;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* renamed from: Mj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0365Mj implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ ArrayList f2225do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f2226for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ArrayList f2227for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ ArrayList f2228if;

    /* renamed from: new, reason: not valid java name */
    public final /* synthetic */ ArrayList f2229new;

    public RunnableC0365Mj(int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        this.f2226for = i;
        this.f2225do = arrayList;
        this.f2228if = arrayList2;
        this.f2227for = arrayList3;
        this.f2229new = arrayList4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        for (int i = 0; i < this.f2226for; i++) {
            View view = (View) this.f2225do.get(i);
            String str = (String) this.f2228if.get(i);
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            QK.Cnew.m1936static(view, str);
            QK.Cnew.m1936static((View) this.f2227for.get(i), (String) this.f2229new.get(i));
        }
    }
}
