package defpackage;

import com.google.firebase.perf.util.Timer;
import com.google.firebase.sessions.FirebaseSessionsRegistrar;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.ServiceConfigurationError;

/* renamed from: zt, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C4122zt implements InterfaceC3314m9 {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int[] f16955do = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};

    public static int[] _values() {
        return m8821const(8);
    }

    /* renamed from: break, reason: not valid java name */
    public static /* synthetic */ void m8817break(Object obj) {
        if (obj != null) {
            throw new ClassCastException();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static String m8818case(StringBuilder sb, long j, String str) {
        sb.append(j);
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: catch, reason: not valid java name */
    public static /* synthetic */ int m8819catch(int i) {
        if (i != 0) {
            return i - 1;
        }
        throw null;
    }

    /* renamed from: class, reason: not valid java name */
    public static /* synthetic */ String m8820class(int i) {
        return i == 1 ? "EXPONENTIAL" : i == 2 ? "LINEAR" : "null";
    }

    /* renamed from: const, reason: not valid java name */
    public static /* synthetic */ int[] m8821const(int i) {
        int[] iArr = new int[i];
        System.arraycopy(f16955do, 0, iArr, 0, i);
        return iArr;
    }

    /* renamed from: do, reason: not valid java name */
    public static /* synthetic */ boolean m8822do(int i, int i2) {
        if (i != 0) {
            return i == i2;
        }
        throw null;
    }

    /* renamed from: else, reason: not valid java name */
    public static HashMap m8823else(Class cls, N2 n2) {
        HashMap hashMap = new HashMap();
        hashMap.put(cls, n2);
        return hashMap;
    }

    /* renamed from: for, reason: not valid java name */
    public static String m8824for(String str, String str2) {
        return str + str2;
    }

    /* renamed from: goto, reason: not valid java name */
    public static /* synthetic */ Iterator m8825goto() {
        try {
            return Arrays.asList(new P0()).iterator();
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static /* synthetic */ int m8826if(int i) {
        if (i == 1) {
            return 1;
        }
        if (i == 2) {
            return 2;
        }
        if (i == 3) {
            return 3;
        }
        if (i == 4) {
            return 4;
        }
        throw null;
    }

    /* renamed from: new, reason: not valid java name */
    public static String m8827new(String str, String str2, String str3, String str4) {
        return str + str2 + str3 + str4;
    }

    /* renamed from: this, reason: not valid java name */
    public static void m8828this(Timer timer, C0113Au c0113Au, C0113Au c0113Au2) {
        c0113Au.m116super(timer.m6126do());
        C0135Bu.m237for(c0113Au2);
    }

    @Override // defpackage.InterfaceC3314m9
    /* renamed from: try */
    public Object mo1186try(Xz xz) {
        CC components$lambda$2;
        components$lambda$2 = FirebaseSessionsRegistrar.getComponents$lambda$2(xz);
        return components$lambda$2;
    }
}
