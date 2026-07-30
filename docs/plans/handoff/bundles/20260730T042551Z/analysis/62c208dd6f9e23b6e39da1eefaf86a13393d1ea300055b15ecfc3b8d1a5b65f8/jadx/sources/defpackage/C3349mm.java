package defpackage;

import java.io.IOException;

/* renamed from: mm, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3349mm extends AbstractRunnableC0595Wt {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3408nm f14384do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f14385for;

    /* renamed from: new, reason: not valid java name */
    public final /* synthetic */ int f14386new;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3349mm(C3408nm c3408nm, Object[] objArr, int i, int i2) {
        super("OkHttp %s stream %d", objArr);
        this.f14384do = c3408nm;
        this.f14385for = i;
        this.f14386new = i2;
    }

    @Override // defpackage.AbstractRunnableC0595Wt
    /* renamed from: do */
    public final void mo2681do() {
        C3408nm c3408nm = this.f14384do;
        try {
            c3408nm.f14570do.m8775this(this.f14385for, this.f14386new);
        } catch (IOException unused) {
            c3408nm.getClass();
            try {
                c3408nm.m7608do(2, 2);
            } catch (IOException unused2) {
            }
        }
    }
}
