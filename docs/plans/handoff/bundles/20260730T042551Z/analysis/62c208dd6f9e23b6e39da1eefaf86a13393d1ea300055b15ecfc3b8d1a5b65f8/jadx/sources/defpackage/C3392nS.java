package defpackage;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzbe;
import com.google.android.gms.measurement.internal.zzbf;

/* renamed from: nS, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3392nS {

    /* renamed from: do, reason: not valid java name */
    public final long f14523do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Bundle f14524do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f14525do;

    /* renamed from: if, reason: not valid java name */
    public final String f14526if;

    public C3392nS(String str, String str2, Bundle bundle, long j) {
        this.f14525do = str;
        this.f14526if = str2;
        this.f14524do = bundle;
        this.f14523do = j;
    }

    /* renamed from: if, reason: not valid java name */
    public static C3392nS m7569if(zzbf zzbfVar) {
        return new C3392nS(zzbfVar.f10313break, zzbfVar.f10314catch, zzbfVar.f10316do.j(), zzbfVar.f10315do);
    }

    /* renamed from: do, reason: not valid java name */
    public final zzbf m7570do() {
        return new zzbf(this.f14525do, new zzbe(new Bundle(this.f14524do)), this.f14526if, this.f14523do);
    }

    public final String toString() {
        return "origin=" + this.f14526if + ",name=" + this.f14525do + ",params=" + String.valueOf(this.f14524do);
    }
}
