package defpackage;

import com.google.android.gms.internal.measurement.zzng;
import com.google.android.gms.internal.measurement.zzph;
import com.google.android.gms.internal.measurement.zzpn;
import com.google.android.gms.internal.measurement.zzpt;
import com.google.android.gms.internal.measurement.zzpz;

/* loaded from: classes3.dex */
public /* synthetic */ class HQ implements RR, InterfaceC0603Xf {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f1352do;

    public /* synthetic */ HQ(int i) {
        this.f1352do = i;
    }

    /* renamed from: if, reason: not valid java name */
    public static String m853if(StringBuilder sb) {
        int length = sb.length() - 0;
        if (length == 0) {
            throw new IllegalStateException("StringBuilder must not be empty");
        }
        int charAt = (sb.charAt(0) << 18) + ((length >= 2 ? sb.charAt(1) : (char) 0) << '\f') + ((length >= 3 ? sb.charAt(2) : (char) 0) << 6) + (length >= 4 ? sb.charAt(3) : (char) 0);
        char c = (char) ((charAt >> 16) & 255);
        char c2 = (char) ((charAt >> 8) & 255);
        char c3 = (char) (charAt & 255);
        StringBuilder sb2 = new StringBuilder(3);
        sb2.append(c);
        if (length >= 2) {
            sb2.append(c2);
        }
        if (length >= 3) {
            sb2.append(c3);
        }
        return sb2.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0051, code lost:
    
        defpackage.O4.m1629throws(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0054, code lost:
    
        throw null;
     */
    @Override // defpackage.InterfaceC0603Xf
    /* renamed from: do */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo268do(defpackage.C0764bg r12) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.HQ.mo268do(bg):void");
    }

    /* renamed from: for */
    public void mo277for(float f, float f2, C3730tD c3730tD) {
        throw null;
    }

    @Override // defpackage.RR
    public final Object zza() {
        switch (this.f1352do) {
            case 0:
                return Boolean.valueOf(zzpn.zzf());
            case 1:
                return Boolean.valueOf(zzpt.zzb());
            case 2:
                return Integer.valueOf((int) zzng.zzai());
            case 3:
                return Integer.valueOf((int) zzng.zzah());
            case 4:
                return Long.valueOf(zzng.zzab());
            case 5:
                return Long.valueOf(zzng.zzr());
            case 6:
                return Integer.valueOf((int) zzng.zzm());
            case 7:
                return Integer.valueOf((int) zzph.zzc());
            case 8:
                return Long.valueOf(zzng.zzaa());
            case 9:
                return zzng.zzat();
            case 10:
                return Boolean.valueOf(zzng.zzbd());
            case 11:
                return Boolean.valueOf(zzpz.zzb());
            default:
                return zzng.zzaw();
        }
    }
}
