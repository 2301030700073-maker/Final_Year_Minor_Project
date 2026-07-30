package defpackage;

import com.google.android.gms.internal.measurement.zzng;
import com.google.android.gms.internal.measurement.zznr;
import com.google.android.gms.internal.measurement.zznx;
import com.google.android.gms.internal.measurement.zzoe;
import com.google.android.gms.internal.measurement.zzpn;
import com.google.android.gms.internal.measurement.zzpu;
import com.google.android.gms.internal.measurement.zzqf;

/* renamed from: Ei, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0189Ei implements HG, RR {

    /* renamed from: do, reason: not valid java name */
    public final int f878do;

    public /* synthetic */ C0189Ei(int i) {
        this.f878do = i;
    }

    @Override // defpackage.HG
    /* renamed from: do, reason: not valid java name */
    public int mo495do() {
        return this.f878do;
    }

    @Override // defpackage.HG
    /* renamed from: if, reason: not valid java name */
    public void mo496if() {
    }

    @Override // defpackage.RR
    public Object zza() {
        switch (this.f878do) {
            case 0:
                return Boolean.valueOf(zzpn.zzj());
            case 1:
                return Boolean.valueOf(zznx.zzc());
            case 2:
                return Boolean.valueOf(zznr.zzc());
            case 3:
                return Boolean.valueOf(zzqf.zza());
            case 4:
                return Long.valueOf(zzng.zzb());
            case 5:
                return Long.valueOf(zzng.zzac());
            case 6:
                return Integer.valueOf((int) zzng.zzh());
            case 7:
                return Integer.valueOf((int) zzng.zzl());
            case 8:
                return Integer.valueOf((int) zzng.zzi());
            case 9:
                return zzng.zzbc();
            case 10:
                return Boolean.valueOf(zzoe.zzc());
            case 11:
                return Integer.valueOf((int) zzng.zzaf());
            default:
                return Boolean.valueOf(zzpu.zzd());
        }
    }
}
