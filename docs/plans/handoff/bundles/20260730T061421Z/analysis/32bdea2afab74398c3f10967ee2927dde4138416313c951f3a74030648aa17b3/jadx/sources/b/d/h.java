package b.d;

/* loaded from: classes.dex */
public class h extends k {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ i f634d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(i iVar) {
        super(iVar.f638c);
        this.f634d = iVar;
    }

    @Override // b.d.k
    public Object a(int i) {
        return this.f634d.f637b[i];
    }

    @Override // b.d.k
    public void b(int i) {
        this.f634d.k(i);
    }
}
