package defpackage;

import android.os.Looper;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.internal.measurement.zznf;
import com.google.android.gms.internal.measurement.zzng;
import com.google.android.gms.internal.measurement.zznm;
import com.google.android.gms.internal.measurement.zznx;
import com.google.android.gms.internal.measurement.zzny;
import com.google.android.gms.internal.measurement.zzph;
import com.google.android.gms.internal.measurement.zzpi;
import com.google.android.gms.internal.measurement.zzpn;
import com.google.android.gms.internal.measurement.zzpu;
import java.util.EnumMap;
import java.util.List;

/* renamed from: cd, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C0820cd implements InterfaceC3503pL, RewardItem, RR, InterfaceC3328mN {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f8566do;

    public /* synthetic */ C0820cd(int i) {
        this.f8566do = i;
    }

    /* renamed from: case, reason: not valid java name */
    public static final String m4912case(InterfaceC0576Wa interfaceC0576Wa) {
        Object m8004import;
        if (interfaceC0576Wa instanceof C4107ze) {
            return interfaceC0576Wa.toString();
        }
        try {
            m8004import = interfaceC0576Wa + '@' + m4914try(interfaceC0576Wa);
        } catch (Throwable th) {
            m8004import = C3645ro.m8004import(th);
        }
        if (C0675aA.m3108do(m8004import) != null) {
            m8004import = interfaceC0576Wa.getClass().getName() + '@' + m4914try(interfaceC0576Wa);
        }
        return (String) m8004import;
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m4913else() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: try, reason: not valid java name */
    public static final String m4914try(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    @Override // defpackage.InterfaceC3503pL
    /* renamed from: for */
    public void mo326for() {
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final int getAmount() {
        return 1;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final String getType() {
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    @Override // defpackage.InterfaceC3503pL
    /* renamed from: if */
    public void mo3547if() {
    }

    @Override // defpackage.InterfaceC3328mN
    /* renamed from: new */
    public final C3899w5 mo270new(String str, K4 k4, EnumMap enumMap) {
        int i;
        int i2;
        byte[] bArr;
        C3899w5 c3899w5;
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (k4 != K4.DATA_MATRIX) {
            throw new IllegalArgumentException("Can only encode DATA_MATRIX, but got ".concat(String.valueOf(k4)));
        }
        EnumC3203kG enumC3203kG = EnumC3203kG.FORCE_NONE;
        EnumC3203kG enumC3203kG2 = (EnumC3203kG) enumMap.get(EnumC0537Uf.DATA_MATRIX_SHAPE);
        if (enumC3203kG2 != null) {
            enumC3203kG = enumC3203kG2;
        }
        C3635re c3635re = (C3635re) enumMap.get(EnumC0537Uf.MIN_SIZE);
        if (c3635re == null) {
            c3635re = null;
        }
        C3635re c3635re2 = (C3635re) enumMap.get(EnumC0537Uf.MAX_SIZE);
        C3635re c3635re3 = c3635re2 != null ? c3635re2 : null;
        int i3 = 0;
        int i4 = 15;
        int i5 = 2;
        int i6 = 3;
        InterfaceC0603Xf[] interfaceC0603XfArr = {new QJ(18), new Gy(i4), new UG(), new C3446oN(), new HQ(i4), new CQ(i4)};
        C0764bg c0764bg = new C0764bg(str);
        c0764bg.f8433do = enumC3203kG;
        c0764bg.f8434do = c3635re;
        c0764bg.f8437if = c3635re3;
        if (str.startsWith("[)>\u001e05\u001d") && str.endsWith("\u001e\u0004")) {
            c0764bg.m4852try((char) 236);
            c0764bg.f8435for = 2;
            c0764bg.f8429do += 7;
        } else if (str.startsWith("[)>\u001e06\u001d") && str.endsWith("\u001e\u0004")) {
            c0764bg.m4852try((char) 237);
            c0764bg.f8435for = 2;
            c0764bg.f8429do += 7;
        }
        int i7 = 0;
        while (c0764bg.m4849for()) {
            interfaceC0603XfArr[i7].mo268do(c0764bg);
            int i8 = c0764bg.f8436if;
            if (i8 >= 0) {
                c0764bg.f8436if = -1;
                i7 = i8;
            }
        }
        int m4848do = c0764bg.m4848do();
        c0764bg.m4851new(c0764bg.m4848do());
        int i9 = c0764bg.f8430do.f13663do;
        if (m4848do < i9 && i7 != 0 && i7 != 5 && i7 != 4) {
            c0764bg.m4852try((char) 254);
        }
        StringBuilder sb = c0764bg.f8432do;
        if (sb.length() < i9) {
            sb.append((char) 129);
        }
        while (sb.length() < i9) {
            int length = (((sb.length() + 1) * 149) % 253) + 1 + 129;
            if (length > 254) {
                length -= 254;
            }
            sb.append((char) length);
        }
        String sb2 = sb.toString();
        C3144jG m7048case = C3144jG.m7048case(sb2.length(), enumC3203kG, c3635re, c3635re3);
        int[] iArr = C2939ig.f13532do;
        int length2 = sb2.length();
        int i10 = m7048case.f13663do;
        if (length2 != i10) {
            throw new IllegalArgumentException("The number of codewords does not match the selected symbol");
        }
        int i11 = m7048case.f13667if;
        StringBuilder sb3 = new StringBuilder(i10 + i11);
        sb3.append(sb2);
        int mo1543for = m7048case.mo1543for();
        if (mo1543for == 1) {
            sb3.append(C2939ig.m6920do(i11, sb2));
        } else {
            sb3.setLength(sb3.capacity());
            int[] iArr2 = new int[mo1543for];
            int[] iArr3 = new int[mo1543for];
            int[] iArr4 = new int[mo1543for];
            int i12 = 0;
            while (i12 < mo1543for) {
                int i13 = i12 + 1;
                iArr2[i12] = m7048case.mo1542do(i13);
                iArr3[i12] = m7048case.f13665else;
                iArr4[i12] = 0;
                if (i12 > 0) {
                    iArr4[i12] = iArr4[i12 - 1] + iArr2[i12];
                }
                i12 = i13;
            }
            for (int i14 = 0; i14 < mo1543for; i14++) {
                StringBuilder sb4 = new StringBuilder(iArr2[i14]);
                for (int i15 = i14; i15 < i10; i15 += mo1543for) {
                    sb4.append(sb2.charAt(i15));
                }
                String m6920do = C2939ig.m6920do(iArr3[i14], sb4.toString());
                int i16 = i14;
                int i17 = 0;
                while (i16 < iArr3[i14] * mo1543for) {
                    sb3.setCharAt(i10 + i16, m6920do.charAt(i17));
                    i16 += mo1543for;
                    i17++;
                }
            }
        }
        String sb5 = sb3.toString();
        int m7049if = m7048case.m7049if();
        int i18 = m7048case.f13666for;
        int m7051try = m7048case.m7051try();
        int i19 = m7048case.f13668new;
        C3517pd c3517pd = new C3517pd(sb5, m7049if * i18, m7051try * i19);
        int i20 = 4;
        int i21 = 0;
        int i22 = 0;
        while (true) {
            i = c3517pd.f14944if;
            i2 = c3517pd.f14941do;
            if (i20 == i2 && i21 == 0) {
                int i23 = i2 - 1;
                c3517pd.m7797do(i23, i3, i22, 1);
                c3517pd.m7797do(i23, 1, i22, i5);
                c3517pd.m7797do(i23, i5, i22, i6);
                c3517pd.m7797do(i3, i - 2, i22, 4);
                int i24 = i - 1;
                c3517pd.m7797do(i3, i24, i22, 5);
                c3517pd.m7797do(1, i24, i22, 6);
                c3517pd.m7797do(i5, i24, i22, 7);
                c3517pd.m7797do(i6, i24, i22, 8);
                i22++;
            }
            int i25 = i2 - 2;
            if (i20 == i25 && i21 == 0 && i % 4 != 0) {
                c3517pd.m7797do(i2 - 3, i3, i22, 1);
                c3517pd.m7797do(i25, i3, i22, i5);
                c3517pd.m7797do(i2 - 1, i3, i22, i6);
                c3517pd.m7797do(i3, i - 4, i22, 4);
                c3517pd.m7797do(i3, i - 3, i22, 5);
                c3517pd.m7797do(i3, i - 2, i22, 6);
                int i26 = i - 1;
                c3517pd.m7797do(i3, i26, i22, 7);
                c3517pd.m7797do(1, i26, i22, 8);
                i22++;
            }
            if (i20 == i25 && i21 == 0 && i % 8 == 4) {
                c3517pd.m7797do(i2 - 3, i3, i22, 1);
                c3517pd.m7797do(i25, i3, i22, i5);
                c3517pd.m7797do(i2 - 1, i3, i22, 3);
                c3517pd.m7797do(i3, i - 2, i22, 4);
                int i27 = i - 1;
                c3517pd.m7797do(i3, i27, i22, 5);
                c3517pd.m7797do(1, i27, i22, 6);
                c3517pd.m7797do(i5, i27, i22, 7);
                c3517pd.m7797do(3, i27, i22, 8);
                i22++;
            }
            if (i20 == i2 + 4 && i21 == i5 && i % 8 == 0) {
                int i28 = i2 - 1;
                c3517pd.m7797do(i28, i3, i22, 1);
                int i29 = i - 1;
                c3517pd.m7797do(i28, i29, i22, i5);
                int i30 = i - 3;
                c3517pd.m7797do(i3, i30, i22, 3);
                int i31 = i - 2;
                c3517pd.m7797do(i3, i31, i22, 4);
                c3517pd.m7797do(i3, i29, i22, 5);
                c3517pd.m7797do(1, i30, i22, 6);
                c3517pd.m7797do(1, i31, i22, 7);
                c3517pd.m7797do(1, i29, i22, 8);
                i22++;
            }
            do {
                bArr = c3517pd.f14943do;
                if (i20 < i2 && i21 >= 0) {
                    if (!(bArr[(i20 * i) + i21] >= 0)) {
                        c3517pd.m7798if(i20, i21, i22);
                        i22++;
                    }
                }
                i20 -= 2;
                i21 += 2;
                if (i20 < 0) {
                    break;
                }
            } while (i21 < i);
            int i32 = i20 + 1;
            int i33 = i21 + 3;
            do {
                if (i32 >= 0 && i33 < i) {
                    if (!(bArr[(i32 * i) + i33] >= 0)) {
                        c3517pd.m7798if(i32, i33, i22);
                        i22++;
                    }
                }
                i32 += 2;
                i33 -= 2;
                if (i32 >= i2) {
                    break;
                }
            } while (i33 >= 0);
            i20 = i32 + 3;
            i21 = i33 + 1;
            if (i20 >= i2 && i21 >= i) {
                break;
            }
            i3 = 0;
            i5 = 2;
            i6 = 3;
        }
        int i34 = i - 1;
        int i35 = i2 - 1;
        if (!(bArr[(i35 * i) + i34] >= 0)) {
            int i36 = (i35 * i) + i34;
            byte b = (byte) 1;
            bArr[i36] = b;
            bArr[((i2 - 2) * i) + (i - 2)] = b;
        }
        int m7049if2 = m7048case.m7049if() * i18;
        int m7051try2 = m7048case.m7051try() * i19;
        C2908i6 c2908i6 = new C2908i6(m7048case.m7050new(), (m7048case.m7051try() * i19) + (m7048case.m7051try() << 1));
        int i37 = 0;
        for (int i38 = 0; i38 < m7051try2; i38++) {
            int i39 = i38 % i19;
            if (i39 == 0) {
                int i40 = 0;
                for (int i41 = 0; i41 < m7048case.m7050new(); i41++) {
                    c2908i6.m6875for(i40, i37, i41 % 2 == 0);
                    i40++;
                }
                i37++;
            }
            int i42 = 0;
            for (int i43 = 0; i43 < m7049if2; i43++) {
                int i44 = i43 % i18;
                if (i44 == 0) {
                    c2908i6.m6875for(i42, i37, true);
                    i42++;
                }
                c2908i6.m6875for(i42, i37, bArr[(i * i38) + i43] == 1);
                i42++;
                if (i44 == i18 - 1) {
                    c2908i6.m6875for(i42, i37, i38 % 2 == 0);
                    i42++;
                }
            }
            i37++;
            if (i39 == i19 - 1) {
                int i45 = 0;
                for (int i46 = 0; i46 < m7048case.m7050new(); i46++) {
                    c2908i6.m6875for(i45, i37, true);
                    i45++;
                }
                i37++;
            }
        }
        int i47 = c2908i6.f13426do;
        int max = Math.max(200, i47);
        int i48 = c2908i6.f13428if;
        int max2 = Math.max(200, i48);
        int min = Math.min(max / i47, max2 / i48);
        int i49 = (max - (i47 * min)) / 2;
        int i50 = (max2 - (i48 * min)) / 2;
        if (200 < i48 || 200 < i47) {
            c3899w5 = new C3899w5(i47, i48);
            i49 = 0;
            i50 = 0;
        } else {
            c3899w5 = new C3899w5(200, 200);
        }
        int[] iArr5 = c3899w5.f16196do;
        int length3 = iArr5.length;
        for (int i51 = 0; i51 < length3; i51++) {
            iArr5[i51] = 0;
        }
        int i52 = 0;
        while (i52 < i48) {
            int i53 = i49;
            int i54 = 0;
            while (i54 < i47) {
                if (c2908i6.m6874do(i54, i52) == 1) {
                    c3899w5.m8538for(i53, i50, min, min);
                }
                i54++;
                i53 += min;
            }
            i52++;
            i50 += min;
        }
        return c3899w5;
    }

    @Override // defpackage.RR
    public final Object zza() {
        switch (this.f8566do) {
            case 4:
                List<SR<?>> list = C3684sQ.f15460do;
                return Long.valueOf(zzng.zza());
            case 5:
                List<SR<?>> list2 = C3684sQ.f15460do;
                return Boolean.valueOf(zzpn.zzh());
            case 6:
                List<SR<?>> list3 = C3684sQ.f15460do;
                return Boolean.valueOf(zznx.zza());
            case 7:
                List<SR<?>> list4 = C3684sQ.f15460do;
                return Boolean.valueOf(zznf.zza());
            case 8:
                List<SR<?>> list5 = C3684sQ.f15460do;
                return Integer.valueOf((int) zzng.zzak());
            case 9:
                List<SR<?>> list6 = C3684sQ.f15460do;
                return Boolean.valueOf(zznm.zzc());
            case 10:
                List<SR<?>> list7 = C3684sQ.f15460do;
                return Boolean.valueOf(zznm.zzd());
            case 11:
                List<SR<?>> list8 = C3684sQ.f15460do;
                return Long.valueOf(zzng.zzw());
            case 12:
                List<SR<?>> list9 = C3684sQ.f15460do;
                return Double.valueOf(zzph.zza());
            case 13:
                List<SR<?>> list10 = C3684sQ.f15460do;
                return zzng.zzas();
            case 14:
                List<SR<?>> list11 = C3684sQ.f15460do;
                return Boolean.valueOf(zzpn.zzd());
            case 15:
                List<SR<?>> list12 = C3684sQ.f15460do;
                return Boolean.valueOf(zzpi.zza());
            case 16:
                List<SR<?>> list13 = C3684sQ.f15460do;
                return Boolean.valueOf(zzny.zzc());
            default:
                List<SR<?>> list14 = C3684sQ.f15460do;
                return Boolean.valueOf(zzpu.zzf());
        }
    }

    public C0820cd() {
        this.f8566do = 3;
    }
}
