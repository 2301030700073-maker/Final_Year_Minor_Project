package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* renamed from: qm, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3585qm extends AbstractRunnableC0595Wt {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ List f15154do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3408nm f15155do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f15156for;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3585qm(C3408nm c3408nm, Object[] objArr, int i, ArrayList arrayList, boolean z) {
        super("OkHttp %s Push Headers[%s]", objArr);
        this.f15155do = c3408nm;
        this.f15156for = i;
        this.f15154do = arrayList;
    }

    @Override // defpackage.AbstractRunnableC0595Wt
    /* renamed from: do */
    public final void mo2681do() {
        this.f15155do.f14561do.getClass();
        try {
            this.f15155do.f14570do.m8775this(this.f15156for, 6);
            synchronized (this.f15155do) {
                this.f15155do.f14565do.remove(Integer.valueOf(this.f15156for));
            }
        } catch (IOException unused) {
        }
    }
}
