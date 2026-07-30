package b.d;

/* loaded from: classes.dex */
public final class f extends k {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ g f633d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(g gVar) {
        super(gVar.f656c);
        this.f633d = gVar;
    }

    @Override // b.d.k
    public Object a(int i) {
        return this.f633d.f655b[(i << 1) + 1];
    }

    @Override // b.d.k
    public void b(int i) {
        this.f633d.h(i);
    }
}
