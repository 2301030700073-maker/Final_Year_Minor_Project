package b.i.b;

import android.view.View;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class x0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f962a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f963b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f964c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ArrayList f965d;
    public final /* synthetic */ ArrayList e;

    public x0(A0 a0, int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        this.f962a = i;
        this.f963b = arrayList;
        this.f964c = arrayList2;
        this.f965d = arrayList3;
        this.e = arrayList4;
    }

    @Override // java.lang.Runnable
    public void run() {
        for (int i = 0; i < this.f962a; i++) {
            b.e.i.q.J((View) this.f963b.get(i), (String) this.f964c.get(i));
            ((View) this.f965d.get(i)).setTransitionName((String) this.e.get(i));
        }
    }
}
