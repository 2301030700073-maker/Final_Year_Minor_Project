package defpackage;

/* renamed from: iE, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2916iE extends BH {

    /* renamed from: do, reason: not valid java name */
    public final short f13443do;

    /* renamed from: if, reason: not valid java name */
    public final short f13444if;

    public C2916iE(BH bh, int i, int i2) {
        super(bh);
        this.f13443do = (short) i;
        this.f13444if = (short) i2;
    }

    @Override // defpackage.BH
    /* renamed from: do */
    public final void mo172do(C3840v5 c3840v5, byte[] bArr) {
        c3840v5.m8427if(this.f13443do, this.f13444if);
    }

    public final String toString() {
        short s = this.f13444if;
        return "<" + Integer.toBinaryString((1 << s) | (((1 << s) - 1) & this.f13443do) | (1 << s)).substring(1) + '>';
    }
}
