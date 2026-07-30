package defpackage;

import com.google.android.gms.internal.measurement.zzng;
import com.google.android.gms.internal.measurement.zznm;
import com.google.android.gms.internal.measurement.zzod;
import com.google.android.gms.internal.measurement.zzoe;
import com.google.android.gms.internal.measurement.zzow;
import com.google.android.gms.internal.measurement.zzpn;
import com.google.android.gms.internal.measurement.zzpt;
import com.google.android.gms.internal.measurement.zzpu;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* renamed from: Vq, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0570Vq implements RR, InterfaceC3328mN {

    /* renamed from: do, reason: not valid java name */
    public static C0570Vq f4202do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ int f4203do;

    public /* synthetic */ C0570Vq(int i) {
        this.f4203do = i;
    }

    @Override // defpackage.InterfaceC3328mN
    /* renamed from: new */
    public final C3899w5 mo270new(String str, K4 k4, EnumMap enumMap) {
        byte[] bArr;
        int i;
        C3840v5 c3840v5;
        boolean z;
        int i2;
        int i3;
        int i4;
        C3840v5 m7995default;
        int i5;
        int i6;
        int i7;
        Charset charset = StandardCharsets.ISO_8859_1;
        EnumC0537Uf enumC0537Uf = EnumC0537Uf.CHARACTER_SET;
        if (enumMap.containsKey(enumC0537Uf)) {
            charset = Charset.forName(enumMap.get(enumC0537Uf).toString());
        }
        EnumC0537Uf enumC0537Uf2 = EnumC0537Uf.ERROR_CORRECTION;
        int parseInt = enumMap.containsKey(enumC0537Uf2) ? Integer.parseInt(enumMap.get(enumC0537Uf2).toString()) : 33;
        EnumC0537Uf enumC0537Uf3 = EnumC0537Uf.AZTEC_LAYERS;
        int parseInt2 = enumMap.containsKey(enumC0537Uf3) ? Integer.parseInt(enumMap.get(enumC0537Uf3).toString()) : 0;
        if (k4 != K4.AZTEC) {
            throw new IllegalArgumentException("Can only encode AZTEC, but got ".concat(String.valueOf(k4)));
        }
        C2828gm c2828gm = new C2828gm(str.getBytes(charset));
        List<C0740bF> singletonList = Collections.singletonList(C0740bF.f8345do);
        int i8 = 0;
        while (true) {
            bArr = c2828gm.f13210do;
            int i9 = 4;
            int i10 = 2;
            if (i8 >= bArr.length) {
                break;
            }
            int i11 = i8 + 1;
            byte b = i11 < bArr.length ? bArr[i11] : (byte) 0;
            byte b2 = bArr[i8];
            if (b2 == 13) {
                if (b == 10) {
                    i6 = 2;
                }
                i6 = 0;
            } else if (b2 == 44) {
                if (b == 32) {
                    i6 = 4;
                }
                i6 = 0;
            } else if (b2 != 46) {
                if (b2 == 58 && b == 32) {
                    i6 = 5;
                }
                i6 = 0;
            } else {
                if (b == 32) {
                    i6 = 3;
                }
                i6 = 0;
            }
            if (i6 > 0) {
                LinkedList linkedList = new LinkedList();
                for (C0740bF c0740bF : singletonList) {
                    C0740bF m4817if = c0740bF.m4817if(i8);
                    linkedList.add(m4817if.m4818new(4, i6));
                    if (c0740bF.f8346do != 4) {
                        linkedList.add(m4817if.m4819try(4, i6));
                    }
                    if (i6 == 3 || i6 == 4) {
                        linkedList.add(m4817if.m4818new(2, 16 - i6).m4818new(2, 1));
                    }
                    if (c0740bF.f8349if > 0) {
                        linkedList.add(c0740bF.m4815do(i8).m4815do(i11));
                    }
                }
                singletonList = C2828gm.m6748do(linkedList);
                i8 = i11;
            } else {
                LinkedList linkedList2 = new LinkedList();
                for (C0740bF c0740bF2 : singletonList) {
                    char c = (char) (bArr[i8] & 255);
                    int i12 = c0740bF2.f8346do;
                    int[][] iArr = C2828gm.f13209if;
                    boolean z2 = iArr[i12][c] > 0;
                    int i13 = 0;
                    C0740bF c0740bF3 = null;
                    while (true) {
                        i7 = c0740bF2.f8346do;
                        if (i13 > i9) {
                            break;
                        }
                        int i14 = iArr[i13][c];
                        if (i14 > 0) {
                            if (c0740bF3 == null) {
                                c0740bF3 = c0740bF2.m4817if(i8);
                            }
                            if (!z2 || i13 == i7 || i13 == i10) {
                                linkedList2.add(c0740bF3.m4818new(i13, i14));
                            }
                            if (!z2 && C2828gm.f13208for[i7][i13] >= 0) {
                                linkedList2.add(c0740bF3.m4819try(i13, i14));
                            }
                        }
                        i13++;
                        i9 = 4;
                        i10 = 2;
                    }
                    if (c0740bF2.f8349if > 0 || iArr[i7][c] == 0) {
                        linkedList2.add(c0740bF2.m4815do(i8));
                    }
                    i9 = 4;
                    i10 = 2;
                }
                singletonList = C2828gm.m6748do(linkedList2);
            }
            i8++;
        }
        C0740bF c0740bF4 = (C0740bF) Collections.min(singletonList, new C2769fm());
        c0740bF4.getClass();
        LinkedList linkedList3 = new LinkedList();
        for (BH bh = c0740bF4.m4817if(bArr.length).f8347do; bh != null; bh = bh.f223do) {
            linkedList3.addFirst(bh);
        }
        C3840v5 c3840v52 = new C3840v5();
        Iterator it = linkedList3.iterator();
        while (it.hasNext()) {
            ((BH) it.next()).mo172do(c3840v52, bArr);
        }
        int i15 = c3840v52.f16011for;
        int m6917if = Cif.m6917if(parseInt, i15, 100, 11);
        int i16 = i15 + m6917if;
        int[] iArr2 = C3645ro.f15318do;
        if (parseInt2 == 0) {
            C3840v5 c3840v53 = null;
            int i17 = 0;
            int i18 = 0;
            while (i17 <= i) {
                boolean z3 = i17 <= 3;
                int i19 = z3 ? i17 + 1 : i17;
                int i20 = ((z3 ? 88 : 112) + (i19 << 4)) * i19;
                if (i16 <= i20) {
                    if (c3840v53 == null || i18 != iArr2[i19]) {
                        int i21 = iArr2[i19];
                        i18 = i21;
                        c3840v53 = C3645ro.m8006interface(i21, c3840v52);
                    }
                    int i22 = i20 - (i20 % i18);
                    if ((!z3 || c3840v53.f16011for <= (i18 << 6)) && c3840v53.f16011for + m6917if <= i22) {
                        c3840v5 = c3840v53;
                        z = z3;
                        i2 = i18;
                        i3 = i19;
                        i4 = i20;
                    }
                }
                i17++;
                i = 32;
            }
            throw new IllegalArgumentException("Data too large for an Aztec code");
        }
        z = parseInt2 < 0;
        i3 = Math.abs(parseInt2);
        if (i3 > (z ? 4 : 32)) {
            throw new IllegalArgumentException(String.format("Illegal value %s for layers", Integer.valueOf(parseInt2)));
        }
        i4 = ((z ? 88 : 112) + (i3 << 4)) * i3;
        i2 = iArr2[i3];
        int i23 = i4 - (i4 % i2);
        c3840v5 = C3645ro.m8006interface(i2, c3840v52);
        int i24 = c3840v5.f16011for;
        if (m6917if + i24 > i23) {
            throw new IllegalArgumentException("Data to large for user specified layer");
        }
        if (z && i24 > (i2 << 6)) {
            throw new IllegalArgumentException("Data to large for user specified layer");
        }
        C3840v5 m7995default2 = C3645ro.m7995default(c3840v5, i4, i2);
        int i25 = c3840v5.f16011for / i2;
        C3840v5 c3840v54 = new C3840v5();
        if (z) {
            c3840v54.m8427if(i3 - 1, 2);
            c3840v54.m8427if(i25 - 1, 6);
            m7995default = C3645ro.m7995default(c3840v54, 28, 4);
        } else {
            c3840v54.m8427if(i3 - 1, 5);
            c3840v54.m8427if(i25 - 1, 11);
            m7995default = C3645ro.m7995default(c3840v54, 40, 4);
        }
        int i26 = (z ? 11 : 14) + (i3 << 2);
        int[] iArr3 = new int[i26];
        if (z) {
            for (int i27 = 0; i27 < i26; i27++) {
                iArr3[i27] = i27;
            }
            i5 = i26;
        } else {
            int i28 = i26 / 2;
            i5 = (((i28 - 1) / 15) * 2) + i26 + 1;
            int i29 = i5 / 2;
            for (int i30 = 0; i30 < i28; i30++) {
                iArr3[(i28 - i30) - 1] = (i29 - r10) - 1;
                iArr3[i28 + i30] = (i30 / 15) + i30 + i29 + 1;
            }
        }
        C3899w5 c3899w5 = new C3899w5(i5, i5);
        int i31 = 0;
        for (int i32 = 0; i32 < i3; i32++) {
            int i33 = ((i3 - i32) << 2) + (z ? 9 : 12);
            for (int i34 = 0; i34 < i33; i34++) {
                int i35 = i34 << 1;
                for (int i36 = 0; i36 < 2; i36++) {
                    if (m7995default2.m8428new(i31 + i35 + i36)) {
                        int i37 = i32 << 1;
                        c3899w5.m8539if(iArr3[i37 + i36], iArr3[i37 + i34]);
                    }
                    if (m7995default2.m8428new((i33 << 1) + i31 + i35 + i36)) {
                        int i38 = i32 << 1;
                        c3899w5.m8539if(iArr3[i38 + i34], iArr3[((i26 - 1) - i38) - i36]);
                    }
                    if (m7995default2.m8428new((i33 << 2) + i31 + i35 + i36)) {
                        int i39 = (i26 - 1) - (i32 << 1);
                        c3899w5.m8539if(iArr3[i39 - i36], iArr3[i39 - i34]);
                    }
                    if (m7995default2.m8428new((i33 * 6) + i31 + i35 + i36)) {
                        int i40 = i32 << 1;
                        c3899w5.m8539if(iArr3[((i26 - 1) - i40) - i34], iArr3[i40 + i36]);
                    }
                }
            }
            i31 += i33 << 3;
        }
        int i41 = i5 / 2;
        if (z) {
            for (int i42 = 0; i42 < 7; i42++) {
                int i43 = (i41 - 3) + i42;
                if (m7995default.m8428new(i42)) {
                    c3899w5.m8539if(i43, i41 - 5);
                }
                if (m7995default.m8428new(i42 + 7)) {
                    c3899w5.m8539if(i41 + 5, i43);
                }
                if (m7995default.m8428new(20 - i42)) {
                    c3899w5.m8539if(i43, i41 + 5);
                }
                if (m7995default.m8428new(27 - i42)) {
                    c3899w5.m8539if(i41 - 5, i43);
                }
            }
        } else {
            for (int i44 = 0; i44 < 10; i44++) {
                int i45 = (i44 / 5) + (i41 - 5) + i44;
                if (m7995default.m8428new(i44)) {
                    c3899w5.m8539if(i45, i41 - 7);
                }
                if (m7995default.m8428new(i44 + 10)) {
                    c3899w5.m8539if(i41 + 7, i45);
                }
                if (m7995default.m8428new(29 - i44)) {
                    c3899w5.m8539if(i45, i41 + 7);
                }
                if (m7995default.m8428new(39 - i44)) {
                    c3899w5.m8539if(i41 - 7, i45);
                }
            }
        }
        if (z) {
            C3645ro.m8011public(c3899w5, i41, 5);
        } else {
            C3645ro.m8011public(c3899w5, i41, 7);
            int i46 = 0;
            int i47 = 0;
            while (i46 < (i26 / 2) - 1) {
                for (int i48 = i41 & 1; i48 < i5; i48 += 2) {
                    int i49 = i41 - i47;
                    c3899w5.m8539if(i49, i48);
                    int i50 = i41 + i47;
                    c3899w5.m8539if(i50, i48);
                    c3899w5.m8539if(i48, i49);
                    c3899w5.m8539if(i48, i50);
                }
                i46 += 15;
                i47 += 16;
            }
        }
        int i51 = c3899w5.f16197for;
        int max = Math.max(200, i51);
        int i52 = c3899w5.f16198new;
        int max2 = Math.max(200, i52);
        int min = Math.min(max / i51, max2 / i52);
        int i53 = (max - (i51 * min)) / 2;
        int i54 = (max2 - (i52 * min)) / 2;
        C3899w5 c3899w52 = new C3899w5(max, max2);
        int i55 = 0;
        while (i55 < i52) {
            int i56 = 0;
            int i57 = i53;
            while (i56 < i51) {
                if (c3899w5.m8537do(i56, i55)) {
                    c3899w52.m8538for(i57, i54, min, min);
                }
                i56++;
                i57 += min;
            }
            i55++;
            i54 += min;
        }
        return c3899w52;
    }

    @Override // defpackage.RR
    public final Object zza() {
        switch (this.f4203do) {
            case 3:
                List<SR<?>> list = C3684sQ.f15460do;
                return Boolean.valueOf(zzpn.zzk());
            case 4:
                return Boolean.valueOf(zzpt.zza());
            case 5:
                List<SR<?>> list2 = C3684sQ.f15460do;
                return Boolean.valueOf(zzod.zzb());
            case 6:
                List<SR<?>> list3 = C3684sQ.f15460do;
                return Boolean.valueOf(zznm.zzb());
            case 7:
                List<SR<?>> list4 = C3684sQ.f15460do;
                return zzng.zzbb();
            case 8:
                List<SR<?>> list5 = C3684sQ.f15460do;
                return Long.valueOf(zzng.zze());
            case 9:
                List<SR<?>> list6 = C3684sQ.f15460do;
                return Long.valueOf(zzng.zzg());
            case 10:
                List<SR<?>> list7 = C3684sQ.f15460do;
                return Boolean.valueOf(zznm.zze());
            case 11:
                List<SR<?>> list8 = C3684sQ.f15460do;
                return Integer.valueOf((int) zzng.zzc());
            case 12:
                List<SR<?>> list9 = C3684sQ.f15460do;
                return zzng.zzav();
            case 13:
                List<SR<?>> list10 = C3684sQ.f15460do;
                return Integer.valueOf((int) zzng.zzo());
            case 14:
                List<SR<?>> list11 = C3684sQ.f15460do;
                return Boolean.valueOf(zzoe.zzd());
            case 15:
                List<SR<?>> list12 = C3684sQ.f15460do;
                return Boolean.valueOf(zzpu.zzc());
            default:
                return Boolean.valueOf(zzow.zzc());
        }
    }
}
