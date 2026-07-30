package defpackage;

import androidx.fragment.app.Fragment;
import java.util.Arrays;
import java.util.Iterator;
import java.util.ServiceConfigurationError;

/* renamed from: return, reason: invalid class name */
/* loaded from: classes.dex */
public final /* synthetic */ class Creturn {
    /* renamed from: break, reason: not valid java name */
    public static /* synthetic */ String m7974break(int i) {
        return i == 1 ? "BEGIN_ARRAY" : i == 2 ? "END_ARRAY" : i == 3 ? "BEGIN_OBJECT" : i == 4 ? "END_OBJECT" : i == 5 ? "NAME" : i == 6 ? "STRING" : i == 7 ? "NUMBER" : i == 8 ? "BOOLEAN" : i == 9 ? "NULL" : i == 10 ? "END_DOCUMENT" : "null";
    }

    /* renamed from: case, reason: not valid java name */
    public static /* synthetic */ Iterator m7975case() {
        try {
            return Arrays.asList(new O0()).iterator();
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static /* synthetic */ String m7976catch(int i) {
        return i == 1 ? "OK" : i == 2 ? "BAD_CONFIG" : i == 3 ? "AUTH_ERROR" : "null";
    }

    /* renamed from: do, reason: not valid java name */
    public static /* synthetic */ String m7977do(int i) {
        if (i == 1) {
            return "_as";
        }
        if (i == 2) {
            return "_astui";
        }
        if (i == 3) {
            return "_astfd";
        }
        if (i == 4) {
            return "_asti";
        }
        if (i == 5) {
            return "_fs";
        }
        if (i == 6) {
            return "_bs";
        }
        throw null;
    }

    /* renamed from: else, reason: not valid java name */
    public static /* synthetic */ void m7978else(int i, String str) {
        if (i == 0) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            String name = C0173Do.class.getName();
            int i2 = 0;
            while (!stackTrace[i2].getClassName().equals(name)) {
                i2++;
            }
            while (stackTrace[i2].getClassName().equals(name)) {
                i2++;
            }
            StackTraceElement stackTraceElement = stackTrace[i2];
            StringBuilder m6919this = Cif.m6919this("Parameter specified as non-null is null: method ", stackTraceElement.getClassName(), ".", stackTraceElement.getMethodName(), ", parameter ");
            m6919this.append(str);
            NullPointerException nullPointerException = new NullPointerException(m6919this.toString());
            C0173Do.m395else(C0173Do.class.getName(), nullPointerException);
            throw nullPointerException;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static String m7979for(String str, Fragment fragment, String str2) {
        return str + fragment + str2;
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m7980goto(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
    }

    /* renamed from: if, reason: not valid java name */
    public static String m7981if(String str, int i, String str2) {
        return str + i + str2;
    }

    /* renamed from: new, reason: not valid java name */
    public static String m7982new(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    /* renamed from: this, reason: not valid java name */
    public static /* synthetic */ String m7983this(int i) {
        return i == 1 ? "OK" : i == 2 ? "TRANSIENT_ERROR" : i == 3 ? "FATAL_ERROR" : i == 4 ? "INVALID_PAYLOAD" : "null";
    }

    /* renamed from: try, reason: not valid java name */
    public static String m7984try(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }
}
