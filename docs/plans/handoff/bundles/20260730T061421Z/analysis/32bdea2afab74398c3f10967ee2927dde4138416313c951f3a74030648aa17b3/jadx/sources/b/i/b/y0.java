package b.i.b;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class y0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ArrayList f968a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Map f969b;

    public y0(A0 a0, ArrayList arrayList, Map map) {
        this.f968a = arrayList;
        this.f969b = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        int size = this.f968a.size();
        for (int i = 0; i < size; i++) {
            View view = (View) this.f968a.get(i);
            String m = b.e.i.q.m(view);
            if (m != null) {
                Iterator it = this.f969b.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        str = null;
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it.next();
                    if (m.equals(entry.getValue())) {
                        str = (String) entry.getKey();
                        break;
                    }
                }
                view.setTransitionName(str);
            }
        }
    }
}
