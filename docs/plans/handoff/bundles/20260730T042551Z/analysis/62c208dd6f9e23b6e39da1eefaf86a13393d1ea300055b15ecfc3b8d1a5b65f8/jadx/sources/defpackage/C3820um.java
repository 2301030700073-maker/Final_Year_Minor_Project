package defpackage;

import defpackage.C3408nm;
import java.io.IOException;
import java.util.Arrays;

/* renamed from: um, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3820um extends AbstractRunnableC0595Wt {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ M4 f15948do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3408nm.Ccase f15949do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f15950do = false;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3820um(C3408nm.Ccase ccase, Object[] objArr, M4 m4) {
        super("OkHttp %s ACK Settings", objArr);
        this.f15949do = ccase;
        this.f15948do = m4;
    }

    @Override // defpackage.AbstractRunnableC0595Wt
    /* renamed from: do */
    public final void mo2681do() {
        C3997xm[] c3997xmArr;
        long j;
        C3408nm.Ccase ccase = this.f15949do;
        boolean z = this.f15950do;
        M4 m4 = this.f15948do;
        synchronized (C3408nm.this.f14570do) {
            synchronized (C3408nm.this) {
                try {
                    int m1391do = C3408nm.this.f14576if.m1391do();
                    if (z) {
                        M4 m42 = C3408nm.this.f14576if;
                        m42.f2094do = 0;
                        Arrays.fill((int[]) m42.f2095do, 0);
                    }
                    M4 m43 = C3408nm.this.f14576if;
                    m43.getClass();
                    int i = 0;
                    while (true) {
                        boolean z2 = true;
                        if (i >= 10) {
                            break;
                        }
                        if (((1 << i) & m4.f2094do) == 0) {
                            z2 = false;
                        }
                        if (z2) {
                            m43.m1392if(i, ((int[]) m4.f2095do)[i]);
                        }
                        i++;
                    }
                    int m1391do2 = C3408nm.this.f14576if.m1391do();
                    c3997xmArr = null;
                    if (m1391do2 == -1 || m1391do2 == m1391do) {
                        j = 0;
                    } else {
                        j = m1391do2 - m1391do;
                        if (!C3408nm.this.f14564do.isEmpty()) {
                            c3997xmArr = (C3997xm[]) C3408nm.this.f14564do.values().toArray(new C3997xm[C3408nm.this.f14564do.size()]);
                        }
                    }
                } finally {
                }
            }
            try {
                C3408nm c3408nm = C3408nm.this;
                c3408nm.f14570do.m8769do(c3408nm.f14576if);
            } catch (IOException unused) {
                C3408nm c3408nm2 = C3408nm.this;
                c3408nm2.getClass();
                try {
                    c3408nm2.m7608do(2, 2);
                } catch (IOException unused2) {
                }
            }
        }
        if (c3997xmArr != null) {
            for (C3997xm c3997xm : c3997xmArr) {
                synchronized (c3997xm) {
                    c3997xm.f16607if += j;
                    if (j > 0) {
                        c3997xm.notifyAll();
                    }
                }
            }
        }
        C3408nm.f14557if.execute(new C3879vm(ccase, C3408nm.this.f14558break));
    }
}
