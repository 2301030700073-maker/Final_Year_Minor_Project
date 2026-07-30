package b.i.b;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class V implements U {

    /* renamed from: a, reason: collision with root package name */
    public final String f872a = null;

    /* renamed from: b, reason: collision with root package name */
    public final int f873b;

    /* renamed from: c, reason: collision with root package name */
    public final int f874c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ X f875d;

    public V(X x, String str, int i, int i2) {
        this.f875d = x;
        this.f873b = i;
        this.f874c = i2;
    }

    @Override // b.i.b.U
    public boolean a(ArrayList arrayList, ArrayList arrayList2) {
        r rVar = this.f875d.t;
        if (rVar == null || this.f873b >= 0 || this.f872a != null || !rVar.getChildFragmentManager().V()) {
            return this.f875d.W(arrayList, arrayList2, this.f872a, this.f873b, this.f874c);
        }
        return false;
    }
}
