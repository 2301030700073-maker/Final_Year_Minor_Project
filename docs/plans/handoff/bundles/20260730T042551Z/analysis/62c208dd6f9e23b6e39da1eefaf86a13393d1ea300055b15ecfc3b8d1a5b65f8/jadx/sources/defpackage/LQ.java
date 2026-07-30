package defpackage;

import com.google.android.gms.internal.measurement.zzng;
import com.google.android.gms.internal.measurement.zznl;
import com.google.android.gms.internal.measurement.zznr;
import com.google.android.gms.internal.measurement.zzph;
import com.google.android.gms.internal.measurement.zzpn;
import com.google.android.gms.internal.measurement.zzpu;
import java.lang.reflect.Array;

/* loaded from: classes3.dex */
public final /* synthetic */ class LQ implements RR, InterfaceC3328mN {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f1950do;

    public /* synthetic */ LQ(int i) {
        this.f1950do = i;
    }

    /* renamed from: do, reason: not valid java name */
    public static C3899w5 m1325do(byte[][] bArr, int i) {
        int i2 = i * 2;
        int length = bArr[0].length + i2;
        int length2 = bArr.length + i2;
        C3899w5 c3899w5 = new C3899w5(length, length2);
        int[] iArr = c3899w5.f16196do;
        int length3 = iArr.length;
        for (int i3 = 0; i3 < length3; i3++) {
            iArr[i3] = 0;
        }
        int i4 = (length2 - i) - 1;
        int i5 = 0;
        while (i5 < bArr.length) {
            byte[] bArr2 = bArr[i5];
            for (int i6 = 0; i6 < bArr[0].length; i6++) {
                if (bArr2[i6] == 1) {
                    c3899w5.m8539if(i6 + i, i4);
                }
            }
            i5++;
            i4--;
        }
        return c3899w5;
    }

    /* renamed from: if, reason: not valid java name */
    public static byte[][] m1326if(byte[][] bArr) {
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, bArr[0].length, bArr.length);
        for (int i = 0; i < bArr.length; i++) {
            int length = (bArr.length - i) - 1;
            for (int i2 = 0; i2 < bArr[0].length; i2++) {
                bArr2[i2][length] = bArr[i][i2];
            }
        }
        return bArr2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:91:0x01eb, code lost:
    
        r15 = r15 - r14;
     */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x043b A[LOOP:13: B:219:0x0439->B:220:0x043b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0454  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x045d  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x04dd  */
    @Override // defpackage.InterfaceC3328mN
    /* renamed from: new */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.C3899w5 mo270new(java.lang.String r23, defpackage.K4 r24, java.util.EnumMap r25) {
        /*
            Method dump skipped, instructions count: 1276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.LQ.mo270new(java.lang.String, K4, java.util.EnumMap):w5");
    }

    @Override // defpackage.RR
    public final Object zza() {
        switch (this.f1950do) {
            case 0:
                return Boolean.valueOf(zzpn.zzb());
            case 1:
                return Boolean.valueOf(zznr.zzb());
            case 2:
                return Integer.valueOf((int) zzng.zzag());
            case 3:
                return Long.valueOf(zzng.zzv());
            case 4:
                return Boolean.valueOf(zzph.zzf());
            case 5:
                return Integer.valueOf((int) zzng.zzq());
            case 6:
                return zzng.zzaz();
            case 7:
                return Integer.valueOf((int) zznl.zza());
            default:
                return Boolean.valueOf(zzpu.zzb());
        }
    }
}
