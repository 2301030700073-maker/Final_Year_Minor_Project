package defpackage;

import com.google.android.gms.internal.measurement.zzna;
import com.google.android.gms.internal.measurement.zzng;
import com.google.android.gms.internal.measurement.zznr;
import com.google.android.gms.internal.measurement.zzns;
import com.google.android.gms.internal.measurement.zzod;
import com.google.android.gms.internal.measurement.zzpb;
import com.google.android.gms.internal.measurement.zzpc;
import com.google.android.gms.internal.measurement.zzph;
import com.google.android.gms.internal.measurement.zzpo;
import java.util.List;

/* loaded from: classes.dex */
public class Gy implements RR, InterfaceC0603Xf {

    /* renamed from: if, reason: not valid java name */
    public static int f1278if;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f1279do;

    public Gy() {
        this.f1279do = 0;
    }

    /* renamed from: case, reason: not valid java name */
    public static void m777case(C0764bg c0764bg, StringBuilder sb) {
        int charAt = (sb.charAt(1) * '(') + (sb.charAt(0) * 1600) + sb.charAt(2) + 1;
        c0764bg.f8432do.append(new String(new char[]{(char) (charAt / 256), (char) (charAt % 256)}));
        sb.delete(0, 3);
    }

    /* renamed from: try, reason: not valid java name */
    public static float m778try(float f) {
        float f2;
        int i = f1278if;
        if (i == 0) {
            return 1.0f + ((float) Math.pow(f - 1.0f, 5.0d));
        }
        if (i == 1) {
            f /= 0.5f;
            if (f >= 1.0f) {
                float f3 = f - 2.0f;
                return ((f3 * f3 * f3 * f3 * f3) + 2.0f) * 0.5f;
            }
            f2 = 0.5f * f * f;
        } else {
            if (i != 2) {
                return 1.0f;
            }
            f2 = f * f;
        }
        return f2 * f * f * f;
    }

    @Override // defpackage.InterfaceC0603Xf
    /* renamed from: do */
    public void mo268do(C0764bg c0764bg) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!c0764bg.m4849for()) {
                break;
            }
            char m4850if = c0764bg.m4850if();
            c0764bg.f8429do++;
            int mo780if = mo780if(m4850if, sb);
            int m4848do = c0764bg.m4848do() + ((sb.length() / 3) << 1);
            c0764bg.m4851new(m4848do);
            int i = c0764bg.f8430do.f13663do - m4848do;
            if (!c0764bg.m4849for()) {
                StringBuilder sb2 = new StringBuilder();
                if (sb.length() % 3 == 2 && (i < 2 || i > 2)) {
                    int length = sb.length();
                    sb.delete(length - mo780if, length);
                    c0764bg.f8429do--;
                    mo780if = mo780if(c0764bg.m4850if(), sb2);
                    c0764bg.f8430do = null;
                }
                while (sb.length() % 3 == 1 && ((mo780if <= 3 && i != 1) || mo780if > 3)) {
                    int length2 = sb.length();
                    sb.delete(length2 - mo780if, length2);
                    c0764bg.f8429do--;
                    mo780if = mo780if(c0764bg.m4850if(), sb2);
                    c0764bg.f8430do = null;
                }
            } else if (sb.length() % 3 == 0) {
                if (O4.m1602continue(c0764bg.f8431do, c0764bg.f8429do, mo779for()) != mo779for()) {
                    c0764bg.f8436if = 0;
                    break;
                }
            }
        }
        mo781new(c0764bg, sb);
    }

    /* renamed from: for, reason: not valid java name */
    public int mo779for() {
        return 1;
    }

    /* renamed from: if, reason: not valid java name */
    public int mo780if(char c, StringBuilder sb) {
        if (c == ' ') {
            sb.append((char) 3);
            return 1;
        }
        if (c >= '0' && c <= '9') {
            sb.append((char) ((c - '0') + 4));
            return 1;
        }
        if (c >= 'A' && c <= 'Z') {
            sb.append((char) ((c - 'A') + 14));
            return 1;
        }
        if (c < ' ') {
            sb.append((char) 0);
            sb.append(c);
            return 2;
        }
        if (c >= '!' && c <= '/') {
            sb.append((char) 1);
            sb.append((char) (c - '!'));
            return 2;
        }
        if (c >= ':' && c <= '@') {
            sb.append((char) 1);
            sb.append((char) ((c - ':') + 15));
            return 2;
        }
        if (c >= '[' && c <= '_') {
            sb.append((char) 1);
            sb.append((char) ((c - '[') + 22));
            return 2;
        }
        if (c < '`' || c > 127) {
            sb.append("\u0001\u001e");
            return mo780if((char) (c - 128), sb) + 2;
        }
        sb.append((char) 2);
        sb.append((char) (c - '`'));
        return 2;
    }

    /* renamed from: new, reason: not valid java name */
    public void mo781new(C0764bg c0764bg, StringBuilder sb) {
        int length = (sb.length() / 3) << 1;
        int length2 = sb.length() % 3;
        int m4848do = c0764bg.m4848do() + length;
        c0764bg.m4851new(m4848do);
        int i = c0764bg.f8430do.f13663do - m4848do;
        if (length2 == 2) {
            sb.append((char) 0);
            while (sb.length() >= 3) {
                m777case(c0764bg, sb);
            }
            if (c0764bg.m4849for()) {
                c0764bg.m4852try((char) 254);
            }
        } else if (i == 1 && length2 == 1) {
            while (sb.length() >= 3) {
                m777case(c0764bg, sb);
            }
            if (c0764bg.m4849for()) {
                c0764bg.m4852try((char) 254);
            }
            c0764bg.f8429do--;
        } else {
            if (length2 != 0) {
                throw new IllegalStateException("Unexpected case. Please report!");
            }
            while (sb.length() >= 3) {
                m777case(c0764bg, sb);
            }
            if (i > 0 || c0764bg.m4849for()) {
                c0764bg.m4852try((char) 254);
            }
        }
        c0764bg.f8436if = 0;
    }

    @Override // defpackage.RR
    public final Object zza() {
        switch (this.f1279do) {
            case 1:
                List<SR<?>> list = C3684sQ.f15460do;
                return Boolean.valueOf(zzns.zza());
            case 2:
                List<SR<?>> list2 = C3684sQ.f15460do;
                return Boolean.valueOf(zznr.zzd());
            case 3:
                List<SR<?>> list3 = C3684sQ.f15460do;
                return Boolean.valueOf(zzod.zza());
            case 4:
                List<SR<?>> list4 = C3684sQ.f15460do;
                return Boolean.valueOf(zzna.zza());
            case 5:
                List<SR<?>> list5 = C3684sQ.f15460do;
                return zzng.zzau();
            case 6:
                List<SR<?>> list6 = C3684sQ.f15460do;
                return Long.valueOf(zzng.zzs());
            case 7:
                List<SR<?>> list7 = C3684sQ.f15460do;
                return Integer.valueOf((int) zzng.zzao());
            case 8:
                List<SR<?>> list8 = C3684sQ.f15460do;
                return Long.valueOf(zzph.zzb());
            case 9:
                List<SR<?>> list9 = C3684sQ.f15460do;
                return Long.valueOf(zzng.zzz());
            case 10:
                List<SR<?>> list10 = C3684sQ.f15460do;
                return zzng.zzax();
            case 11:
                List<SR<?>> list11 = C3684sQ.f15460do;
                return zzng.zzar();
            case 12:
                List<SR<?>> list12 = C3684sQ.f15460do;
                return Boolean.valueOf(zzpc.zza());
            case 13:
                List<SR<?>> list13 = C3684sQ.f15460do;
                return Boolean.valueOf(zzpo.zzb());
            default:
                List<SR<?>> list14 = C3684sQ.f15460do;
                return Boolean.valueOf(zzpb.zzb());
        }
    }

    public /* synthetic */ Gy(int i) {
        this.f1279do = i;
    }
}
