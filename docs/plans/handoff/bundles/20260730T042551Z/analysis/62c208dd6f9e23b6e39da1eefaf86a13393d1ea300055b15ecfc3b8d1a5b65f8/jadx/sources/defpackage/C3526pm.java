package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* renamed from: pm, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3526pm extends AbstractRunnableC0595Wt {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ List f14978do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3408nm f14979do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f14980for;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3526pm(C3408nm c3408nm, Object[] objArr, int i, ArrayList arrayList) {
        super("OkHttp %s Push Request[%s]", objArr);
        this.f14979do = c3408nm;
        this.f14980for = i;
        this.f14978do = arrayList;
    }

    @Override // defpackage.AbstractRunnableC0595Wt
    /* renamed from: do */
    public final void mo2681do() {
        this.f14979do.f14561do.getClass();
        try {
            this.f14979do.f14570do.m8775this(this.f14980for, 6);
            synchronized (this.f14979do) {
                this.f14979do.f14565do.remove(Integer.valueOf(this.f14980for));
            }
        } catch (IOException unused) {
        }
    }
}
