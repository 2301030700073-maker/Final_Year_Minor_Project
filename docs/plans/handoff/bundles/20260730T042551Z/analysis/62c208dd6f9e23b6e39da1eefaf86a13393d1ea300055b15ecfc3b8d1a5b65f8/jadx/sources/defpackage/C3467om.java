package defpackage;

import java.io.IOException;

/* renamed from: om, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3467om extends AbstractRunnableC0595Wt {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3408nm f14850do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3467om(C3408nm c3408nm, Object... objArr) {
        super("OkHttp %s ping", objArr);
        this.f14850do = c3408nm;
    }

    @Override // defpackage.AbstractRunnableC0595Wt
    /* renamed from: do */
    public final void mo2681do() {
        C3408nm c3408nm = this.f14850do;
        c3408nm.getClass();
        try {
            try {
                c3408nm.f14570do.m8771goto(2, 0, false);
            } catch (IOException unused) {
            }
        } catch (IOException unused2) {
            c3408nm.m7608do(2, 2);
        }
    }
}
