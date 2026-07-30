package b.i.b;

import android.view.View;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
public class z0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ArrayList f974a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Map f975b;

    public z0(A0 a0, ArrayList arrayList, Map map) {
        this.f974a = arrayList;
        this.f975b = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        int size = this.f974a.size();
        for (int i = 0; i < size; i++) {
            View view = (View) this.f974a.get(i);
            view.setTransitionName((String) this.f975b.get(b.e.i.q.m(view)));
        }
    }
}
