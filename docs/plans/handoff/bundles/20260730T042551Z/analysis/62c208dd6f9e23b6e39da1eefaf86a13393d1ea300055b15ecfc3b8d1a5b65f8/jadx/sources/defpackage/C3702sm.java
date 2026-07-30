package defpackage;

/* renamed from: sm, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3702sm extends AbstractRunnableC0595Wt {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3408nm f15513do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f15514for;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3702sm(C3408nm c3408nm, Object[] objArr, int i, int i2) {
        super("OkHttp %s Push Reset[%s]", objArr);
        this.f15513do = c3408nm;
        this.f15514for = i;
    }

    @Override // defpackage.AbstractRunnableC0595Wt
    /* renamed from: do */
    public final void mo2681do() {
        this.f15513do.f14561do.getClass();
        synchronized (this.f15513do) {
            this.f15513do.f14565do.remove(Integer.valueOf(this.f15514for));
        }
    }
}
