package defpackage;

import com.google.firebase.sessions.FirebaseSessionsRegistrar;
import java.util.Arrays;
import java.util.HashMap;

/* renamed from: if, reason: invalid class name */
/* loaded from: classes.dex */
public final /* synthetic */ class Cif implements InterfaceC3314m9 {
    /* renamed from: break, reason: not valid java name */
    public static void m6907break(int i, HashMap hashMap, String str, int i2, String str2, int i3, String str3, int i4, String str4) {
        hashMap.put(str, Integer.valueOf(i));
        hashMap.put(str2, Integer.valueOf(i2));
        hashMap.put(str3, Integer.valueOf(i3));
        hashMap.put(str4, Integer.valueOf(i4));
    }

    /* renamed from: case, reason: not valid java name */
    public static String m6908case(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m6909catch(StringBuilder sb, String str, String str2, StringBuilder sb2) {
        sb.append(str);
        sb.append(str2);
        sb2.append(sb.toString());
    }

    /* renamed from: class, reason: not valid java name */
    public static /* synthetic */ String m6910class(int i) {
        return i == 1 ? "IDLE" : i == 2 ? "QUEUING" : i == 3 ? "QUEUED" : i == 4 ? "RUNNING" : "null";
    }

    /* renamed from: const, reason: not valid java name */
    public static /* synthetic */ int m6911const(String str) {
        if (str == null) {
            throw new NullPointerException("Name is null");
        }
        if (str.equals("AUTO")) {
            return 1;
        }
        if (str.equals("TEXT")) {
            return 2;
        }
        if (str.equals("BYTE")) {
            return 3;
        }
        if (str.equals("NUMERIC")) {
            return 4;
        }
        throw new IllegalArgumentException("No enum constant com.google.zxing.pdf417.encoder.Compaction.".concat(str));
    }

    /* renamed from: do, reason: not valid java name */
    public static /* synthetic */ int m6912do(int i) {
        if (i == 1) {
            return 1;
        }
        if (i == 2) {
            return 0;
        }
        if (i == 3) {
            return 3;
        }
        if (i == 4) {
            return 2;
        }
        throw null;
    }

    /* renamed from: else, reason: not valid java name */
    public static String m6913else(Object[] objArr, int i, String str, String str2) {
        String format = String.format(str, Arrays.copyOf(objArr, i));
        C0173Do.m399new(format, str2);
        return format;
    }

    /* renamed from: final, reason: not valid java name */
    public static /* synthetic */ int m6914final(String str) {
        if (str == null) {
            throw new NullPointerException("Name is null");
        }
        if (str.equals("L")) {
            return 1;
        }
        if (str.equals("M")) {
            return 2;
        }
        if (str.equals("Q")) {
            return 3;
        }
        if (str.equals("H")) {
            return 4;
        }
        throw new IllegalArgumentException("No enum constant com.google.zxing.qrcode.decoder.ErrorCorrectionLevel.".concat(str));
    }

    /* renamed from: for, reason: not valid java name */
    public static int m6915for(String str, int i, int i2) {
        return (str.hashCode() + i) * i2;
    }

    /* renamed from: goto, reason: not valid java name */
    public static StringBuilder m6916goto(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m6917if(int i, int i2, int i3, int i4) {
        return ((i * i2) / i3) + i4;
    }

    /* renamed from: new, reason: not valid java name */
    public static String m6918new(String str, int i, String str2, int i2) {
        return str + i + str2 + i2;
    }

    /* renamed from: this, reason: not valid java name */
    public static StringBuilder m6919this(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        sb.append(str5);
        return sb;
    }

    @Override // defpackage.InterfaceC3314m9
    /* renamed from: try */
    public Object mo1186try(Xz xz) {
        InterfaceC3965xC components$lambda$4;
        components$lambda$4 = FirebaseSessionsRegistrar.getComponents$lambda$4(xz);
        return components$lambda$4;
    }
}
