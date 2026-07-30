package defpackage;

import com.google.android.gms.measurement.internal.zzbf;

/* renamed from: jT, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC3157jT implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f13725break;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ YS f13726do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzbf f13727do;

    public RunnableC3157jT(YS ys, zzbf zzbfVar, String str) {
        this.f13727do = zzbfVar;
        this.f13725break = str;
        this.f13726do = ys;
    }

    @Override // java.lang.Runnable
    public final void run() {
        YS ys = this.f13726do;
        ys.f4740do.p();
        ys.f4740do.m3034native(this.f13727do, this.f13725break);
    }
}
