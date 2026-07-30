package defpackage;

import com.google.android.gms.internal.measurement.zzng;
import com.google.android.gms.internal.measurement.zzny;
import com.google.android.gms.internal.measurement.zzop;
import com.google.android.gms.internal.measurement.zzov;
import com.google.android.gms.internal.measurement.zzph;
import com.google.android.gms.internal.measurement.zzpn;
import com.google.android.gms.internal.play_billing.zzlk;
import java.util.List;

/* loaded from: classes.dex */
public final class QJ implements InterfaceC3146jI, RR, InterfaceC0603Xf {

    /* renamed from: do, reason: not valid java name */
    public static QJ f2902do;

    /* renamed from: if, reason: not valid java name */
    public static QJ f2903if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ int f2904do;

    public QJ() {
        this.f2904do = 0;
    }

    @Override // defpackage.InterfaceC3146jI
    public final Object apply(Object obj) {
        return ((zzlk) obj).zzh();
    }

    @Override // defpackage.InterfaceC0603Xf
    /* renamed from: do */
    public final void mo268do(C0764bg c0764bg) {
        int i;
        int i2 = c0764bg.f8429do;
        String str = c0764bg.f8431do;
        int length = str.length();
        if (i2 < length) {
            char charAt = str.charAt(i2);
            i = 0;
            while (true) {
                if (!(charAt >= '0' && charAt <= '9') || i2 >= length) {
                    break;
                }
                i++;
                i2++;
                if (i2 < length) {
                    charAt = str.charAt(i2);
                }
            }
        } else {
            i = 0;
        }
        if (i >= 2) {
            char charAt2 = str.charAt(c0764bg.f8429do);
            char charAt3 = str.charAt(c0764bg.f8429do + 1);
            if (charAt2 >= '0' && charAt2 <= '9') {
                if (charAt3 >= '0' && charAt3 <= '9') {
                    c0764bg.m4852try((char) V1.m2501for(charAt3, -48, (charAt2 - '0') * 10, 130));
                    c0764bg.f8429do += 2;
                    return;
                }
            }
            throw new IllegalArgumentException("not digits: " + charAt2 + charAt3);
        }
        char m4850if = c0764bg.m4850if();
        int m1602continue = O4.m1602continue(str, c0764bg.f8429do, 0);
        if (m1602continue == 0) {
            if (!O4.m1605extends(m4850if)) {
                c0764bg.m4852try((char) (m4850if + 1));
                c0764bg.f8429do++;
                return;
            } else {
                c0764bg.m4852try((char) 235);
                c0764bg.m4852try((char) ((m4850if - 128) + 1));
                c0764bg.f8429do++;
                return;
            }
        }
        if (m1602continue == 1) {
            c0764bg.m4852try((char) 230);
            c0764bg.f8436if = 1;
            return;
        }
        if (m1602continue == 2) {
            c0764bg.m4852try((char) 239);
            c0764bg.f8436if = 2;
            return;
        }
        if (m1602continue == 3) {
            c0764bg.m4852try((char) 238);
            c0764bg.f8436if = 3;
        } else if (m1602continue == 4) {
            c0764bg.m4852try((char) 240);
            c0764bg.f8436if = 4;
        } else {
            if (m1602continue != 5) {
                throw new IllegalStateException("Illegal mode: ".concat(String.valueOf(m1602continue)));
            }
            c0764bg.m4852try((char) 231);
            c0764bg.f8436if = 5;
        }
    }

    @Override // defpackage.RR
    public final Object zza() {
        switch (this.f2904do) {
            case 2:
                List<SR<?>> list = C3684sQ.f15460do;
                return Boolean.valueOf(zzpn.zzl());
            case 3:
                List<SR<?>> list2 = C3684sQ.f15460do;
                return Boolean.valueOf(zzov.zzc());
            case 4:
                List<SR<?>> list3 = C3684sQ.f15460do;
                return Boolean.valueOf(zzop.zza());
            case 5:
                List<SR<?>> list4 = C3684sQ.f15460do;
                return Integer.valueOf((int) zzng.zzk());
            case 6:
                List<SR<?>> list5 = C3684sQ.f15460do;
                return Long.valueOf(zzng.zzu());
            case 7:
                List<SR<?>> list6 = C3684sQ.f15460do;
                return Long.valueOf(zzng.zzap());
            case 8:
                List<SR<?>> list7 = C3684sQ.f15460do;
                return Long.valueOf(zzph.zzd());
            case 9:
                List<SR<?>> list8 = C3684sQ.f15460do;
                return Integer.valueOf((int) zzng.zzj());
            case 10:
                List<SR<?>> list9 = C3684sQ.f15460do;
                return zzng.zzba();
            case 11:
                List<SR<?>> list10 = C3684sQ.f15460do;
                return Integer.valueOf((int) zzng.zzp());
            case 12:
                List<SR<?>> list11 = C3684sQ.f15460do;
                return Boolean.valueOf(zzpn.zzc());
            case 13:
                List<SR<?>> list12 = C3684sQ.f15460do;
                return Boolean.valueOf(zzny.zzb());
            default:
                List<SR<?>> list13 = C3684sQ.f15460do;
                return Integer.valueOf((int) zzng.zzan());
        }
    }

    public /* synthetic */ QJ(int i) {
        this.f2904do = i;
    }
}
