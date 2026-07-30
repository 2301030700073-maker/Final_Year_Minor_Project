package b.b.g;

/* renamed from: b.b.g.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0066p implements b.b.f.m.B {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f566a;

    public C0066p(r rVar) {
        this.f566a = rVar;
    }

    @Override // b.b.f.m.B
    public void a(b.b.f.m.o oVar, boolean z) {
        if (oVar instanceof b.b.f.m.K) {
            oVar.k().c(false);
        }
        b.b.f.m.B b2 = this.f566a.e;
        if (b2 != null) {
            b2.a(oVar, z);
        }
    }

    @Override // b.b.f.m.B
    public boolean b(b.b.f.m.o oVar) {
        r rVar = this.f566a;
        if (oVar == rVar.f575c) {
            return false;
        }
        int i = ((b.b.f.m.K) oVar).B.f408a;
        b.b.f.m.B b2 = rVar.e;
        if (b2 != null) {
            return b2.b(oVar);
        }
        return false;
    }
}
