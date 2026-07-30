package b.e.g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class d implements n {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f713a;

    public d(String str) {
        this.f713a = str;
    }

    @Override // b.e.g.n
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(h hVar) {
        synchronized (i.f724c) {
            ArrayList arrayList = (ArrayList) i.f725d.get(this.f713a);
            if (arrayList == null) {
                return;
            }
            i.f725d.remove(this.f713a);
            for (int i = 0; i < arrayList.size(); i++) {
                ((n) arrayList.get(i)).a(hVar);
            }
        }
    }
}
