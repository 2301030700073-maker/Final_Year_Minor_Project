package defpackage;

/* loaded from: classes3.dex */
public final /* synthetic */ class C9 implements NF {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ D9 f337do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ E9 f338do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f339do = true;

    public /* synthetic */ C9(D9 d9, E9 e9) {
        this.f337do = d9;
        this.f338do = e9;
    }

    @Override // defpackage.NF
    public final FG then(Object obj) {
        D9 d9 = this.f337do;
        boolean z = this.f339do;
        E9 e9 = this.f338do;
        if (z) {
            synchronized (d9) {
                d9.f518do = LG.m1320try(e9);
            }
        } else {
            d9.getClass();
        }
        return LG.m1320try(e9);
    }
}
