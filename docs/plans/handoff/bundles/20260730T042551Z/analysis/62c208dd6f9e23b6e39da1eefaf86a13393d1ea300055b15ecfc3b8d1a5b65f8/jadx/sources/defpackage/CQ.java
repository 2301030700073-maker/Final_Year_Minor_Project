package defpackage;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzng;
import com.google.android.gms.internal.measurement.zzoe;
import com.google.android.gms.internal.measurement.zzoq;
import com.google.android.gms.internal.measurement.zzov;
import com.google.android.gms.internal.measurement.zzow;
import com.google.android.gms.internal.measurement.zzph;
import com.google.android.gms.internal.measurement.zzpn;
import com.google.android.gms.internal.measurement.zzpu;

/* loaded from: classes3.dex */
public final /* synthetic */ class CQ implements RR, E0, InterfaceC0603Xf, InterfaceC3328mN {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f374do;

    public /* synthetic */ CQ(int i) {
        this.f374do = i;
    }

    @Override // defpackage.InterfaceC0603Xf
    /* renamed from: do, reason: not valid java name */
    public final void mo268do(C0764bg c0764bg) {
        StringBuilder sb = new StringBuilder();
        sb.append((char) 0);
        while (true) {
            if (!c0764bg.m4849for()) {
                break;
            }
            sb.append(c0764bg.m4850if());
            int i = c0764bg.f8429do + 1;
            c0764bg.f8429do = i;
            if (O4.m1602continue(c0764bg.f8431do, i, 5) != 5) {
                c0764bg.f8436if = 0;
                break;
            }
        }
        int length = sb.length() - 1;
        int m4848do = c0764bg.m4848do() + length + 1;
        c0764bg.m4851new(m4848do);
        boolean z = c0764bg.f8430do.f13663do - m4848do > 0;
        if (c0764bg.m4849for() || z) {
            if (length <= 249) {
                sb.setCharAt(0, (char) length);
            } else {
                if (length > 1555) {
                    throw new IllegalStateException("Message length not in valid ranges: ".concat(String.valueOf(length)));
                }
                sb.setCharAt(0, (char) ((length / 250) + 249));
                sb.insert(1, (char) (length % 250));
            }
        }
        int length2 = sb.length();
        for (int i2 = 0; i2 < length2; i2++) {
            int m4848do2 = (((c0764bg.m4848do() + 1) * 149) % 255) + 1 + sb.charAt(i2);
            if (m4848do2 > 255) {
                m4848do2 -= 256;
            }
            c0764bg.m4852try((char) m4848do2);
        }
    }

    @Override // defpackage.E0
    /* renamed from: if, reason: not valid java name */
    public final void mo269if(Bundle bundle) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:285:0x061e, code lost:
    
        if (r1 != false) goto L362;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b8, code lost:
    
        r7 = r8;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x035a  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0369  */
    /* JADX WARN: Removed duplicated region for block: B:388:0x0783  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:394:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:501:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:548:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x014a A[LOOP:1: B:56:0x011b->B:65:0x014a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0159 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x033d A[LOOP:3: B:94:0x033b->B:95:0x033d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0349  */
    @Override // defpackage.InterfaceC3328mN
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.C3899w5 mo270new(java.lang.String r22, defpackage.K4 r23, java.util.EnumMap r24) {
        /*
            Method dump skipped, instructions count: 2013
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.CQ.mo270new(java.lang.String, K4, java.util.EnumMap):w5");
    }

    @Override // defpackage.RR
    public final Object zza() {
        switch (this.f374do) {
            case 0:
                return Boolean.valueOf(zzpn.zzi());
            case 1:
                return Integer.valueOf((int) zzng.zzae());
            case 2:
                return Boolean.valueOf(zzov.zzb());
            case 3:
                return Boolean.valueOf(zzoq.zza());
            case 4:
                return Integer.valueOf((int) zzng.zzam());
            case 5:
                return Long.valueOf(zzng.zzad());
            case 6:
                return Long.valueOf(zzng.zzt());
            case 7:
                return zzph.zze();
            case 8:
                return Integer.valueOf((int) zzng.zzn());
            case 9:
                return zzng.zzay();
            case 10:
                return Long.valueOf(zzng.zzy());
            case 11:
                return Boolean.valueOf(zzoe.zzb());
            case 12:
                return Boolean.valueOf(zzpu.zze());
            default:
                return Boolean.valueOf(zzow.zzb());
        }
    }
}
