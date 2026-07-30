package defpackage;

import defpackage.By;
import java.io.IOException;

/* renamed from: rm, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3643rm extends AbstractRunnableC0595Wt {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ U5 f15311do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3408nm f15312do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f15313for;

    /* renamed from: new, reason: not valid java name */
    public final /* synthetic */ int f15314new;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3643rm(C3408nm c3408nm, Object[] objArr, int i, U5 u5, int i2, boolean z) {
        super("OkHttp %s Push Data[%s]", objArr);
        this.f15312do = c3408nm;
        this.f15313for = i;
        this.f15311do = u5;
        this.f15314new = i2;
    }

    @Override // defpackage.AbstractRunnableC0595Wt
    /* renamed from: do */
    public final void mo2681do() {
        try {
            By.Cdo cdo = this.f15312do.f14561do;
            U5 u5 = this.f15311do;
            int i = this.f15314new;
            cdo.getClass();
            u5.mo2334implements(i);
            this.f15312do.f14570do.m8775this(this.f15313for, 6);
            synchronized (this.f15312do) {
                this.f15312do.f14565do.remove(Integer.valueOf(this.f15313for));
            }
        } catch (IOException unused) {
        }
    }
}
