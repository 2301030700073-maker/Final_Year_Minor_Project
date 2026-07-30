package defpackage;

/* renamed from: oy, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3479oy implements InterfaceC2686eK {

    /* renamed from: do, reason: not valid java name */
    public C0385Nh f14871do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3302ly f14872do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f14873do = false;

    /* renamed from: if, reason: not valid java name */
    public boolean f14874if = false;

    public C3479oy(C3302ly c3302ly) {
        this.f14872do = c3302ly;
    }

    @Override // defpackage.InterfaceC2686eK
    /* renamed from: else */
    public final InterfaceC2686eK mo6557else(String str) {
        if (this.f14873do) {
            throw new C2646dg("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f14873do = true;
        this.f14872do.m7418try(this.f14871do, str, this.f14874if);
        return this;
    }

    @Override // defpackage.InterfaceC2686eK
    /* renamed from: try */
    public final InterfaceC2686eK mo6558try(boolean z) {
        if (this.f14873do) {
            throw new C2646dg("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f14873do = true;
        this.f14872do.m7414goto(this.f14871do, z ? 1 : 0, this.f14874if);
        return this;
    }
}
