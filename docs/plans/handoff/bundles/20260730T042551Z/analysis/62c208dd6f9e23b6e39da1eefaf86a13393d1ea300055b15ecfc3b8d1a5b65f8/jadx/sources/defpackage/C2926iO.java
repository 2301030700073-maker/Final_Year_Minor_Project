package defpackage;

/* renamed from: iO, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2926iO extends AbstractRunnableC2749fO {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ GG f13497do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ AbstractRunnableC2749fO f13498do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3917wN f13499do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2926iO(C3917wN c3917wN, GG gg, GG gg2, AbstractRunnableC2749fO abstractRunnableC2749fO) {
        super(gg);
        this.f13497do = gg2;
        this.f13498do = abstractRunnableC2749fO;
        this.f13499do = c3917wN;
    }

    @Override // defpackage.AbstractRunnableC2749fO
    public final void b() {
        synchronized (this.f13499do.f16329do) {
            final C3917wN c3917wN = this.f13499do;
            final GG gg = this.f13497do;
            c3917wN.f16333do.add(gg);
            gg.f1160do.mo599if(new InterfaceC0399Nv() { // from class: hO
                @Override // defpackage.InterfaceC0399Nv
                public final void onComplete(FG fg) {
                    C3917wN c3917wN2 = C3917wN.this;
                    GG gg2 = gg;
                    synchronized (c3917wN2.f16329do) {
                        c3917wN2.f16333do.remove(gg2);
                    }
                }
            });
            if (this.f13499do.f16334do.getAndIncrement() > 0) {
                this.f13499do.f16327do.m6563if("Already connected to the service.", new Object[0]);
            }
            C3917wN.m8569if(this.f13499do, this.f13498do);
        }
    }
}
