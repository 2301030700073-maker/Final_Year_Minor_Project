package defpackage;

import com.facebook.internal.security.CertificateUtil;
import defpackage.C0587Wl;
import defpackage.C3947wv;
import j$.util.DesugarCollections;
import j$.util.DesugarTimeZone;
import java.io.Closeable;
import java.io.InterruptedIOException;
import java.lang.reflect.Method;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class SJ {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f3488do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Uz f3489do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Method f3490do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Charset f3491do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final TimeZone f3492do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Pattern f3493do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3488p6 f3494do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final byte[] f3495do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final String[] f3496do = new String[0];

    /* renamed from: for, reason: not valid java name */
    public static final Charset f3497for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public static final C3488p6 f3498for;

    /* renamed from: if, reason: not valid java name */
    public static final Charset f3499if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final C3488p6 f3500if;

    /* renamed from: new, reason: not valid java name */
    public static final Charset f3501new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public static final C3488p6 f3502new;

    /* renamed from: try, reason: not valid java name */
    public static final Charset f3503try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public static final C3488p6 f3504try;

    /* renamed from: SJ$do, reason: invalid class name */
    public class Cdo implements Comparator<String> {
        @Override // java.util.Comparator
        public final int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    }

    static {
        Method method;
        byte[] bArr = new byte[0];
        f3495do = bArr;
        U5 u5 = new U5();
        u5.write(bArr, 0, 0);
        long j = 0;
        f3489do = new Uz(j, u5);
        if ((j | j) < 0 || j > j || j - j < j) {
            throw new ArrayIndexOutOfBoundsException();
        }
        f3494do = C3488p6.m7783case("efbbbf");
        f3500if = C3488p6.m7783case("feff");
        f3498for = C3488p6.m7783case("fffe");
        f3502new = C3488p6.m7783case("0000ffff");
        f3504try = C3488p6.m7783case("ffff0000");
        f3491do = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        f3499if = Charset.forName("UTF-16BE");
        f3497for = Charset.forName("UTF-16LE");
        f3501new = Charset.forName("UTF-32BE");
        f3503try = Charset.forName("UTF-32LE");
        f3492do = DesugarTimeZone.getTimeZone("GMT");
        f3488do = new Cdo();
        try {
            method = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception unused) {
            method = null;
        }
        f3490do = method;
        f3493do = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
    }

    /* renamed from: break, reason: not valid java name */
    public static int m2129break(String str, int i, int i2, char c) {
        while (i < i2) {
            if (str.charAt(i) == c) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: case, reason: not valid java name */
    public static void m2130case(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e) {
                if (!m2148throw(e)) {
                    throw e;
                }
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m2131catch(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: class, reason: not valid java name */
    public static String m2132class(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    /* renamed from: const, reason: not valid java name */
    public static String m2133const(C0237Gm c0237Gm, boolean z) {
        boolean contains = c0237Gm.f1234new.contains(CertificateUtil.DELIMITER);
        String str = c0237Gm.f1234new;
        if (contains) {
            str = Cif.m6908case("[", str, "]");
        }
        int i = c0237Gm.f1228do;
        if (!z && i == C0237Gm.m750for(c0237Gm.f1229do)) {
            return str;
        }
        return str + CertificateUtil.DELIMITER + i;
    }

    /* renamed from: do, reason: not valid java name */
    public static AssertionError m2134do(String str, Exception exc) {
        AssertionError assertionError = new AssertionError(str);
        try {
            assertionError.initCause(exc);
        } catch (IllegalStateException unused) {
        }
        return assertionError;
    }

    /* renamed from: else, reason: not valid java name */
    public static int m2135else(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        char c2 = 'a';
        if (c < 'a' || c > 'f') {
            c2 = 'A';
            if (c < 'A' || c > 'F') {
                return -1;
            }
        }
        return (c - c2) + 10;
    }

    /* renamed from: final, reason: not valid java name */
    public static <T> List<T> m2136final(T... tArr) {
        return DesugarCollections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:76:0x00d1, code lost:
    
        return null;
     */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m2137for(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.SJ.m2137for(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d7, code lost:
    
        if (r7 == 16) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00da, code lost:
    
        if (r8 != (-1)) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00dc, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00dd, code lost:
    
        r1 = r7 - r8;
        java.lang.System.arraycopy(r3, r8, r3, 16 - r1, r1);
        java.util.Arrays.fill(r3, r8, (16 - r7) + r8, (byte) 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ef, code lost:
    
        return java.net.InetAddress.getByAddress(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f5, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00a6  */
    /* renamed from: goto, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.net.InetAddress m2138goto(int r16, int r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.SJ.m2138goto(int, int, java.lang.String):java.net.InetAddress");
    }

    /* renamed from: if, reason: not valid java name */
    public static Charset m2139if(InterfaceC0671a6 interfaceC0671a6, Charset charset) {
        if (interfaceC0671a6.i(f3494do)) {
            interfaceC0671a6.mo2334implements(r0.f14882do.length);
            return f3491do;
        }
        if (interfaceC0671a6.i(f3500if)) {
            interfaceC0671a6.mo2334implements(r0.f14882do.length);
            return f3499if;
        }
        if (interfaceC0671a6.i(f3498for)) {
            interfaceC0671a6.mo2334implements(r0.f14882do.length);
            return f3497for;
        }
        if (interfaceC0671a6.i(f3502new)) {
            interfaceC0671a6.mo2334implements(r0.f14882do.length);
            return f3501new;
        }
        if (!interfaceC0671a6.i(f3504try)) {
            return charset;
        }
        interfaceC0671a6.mo2334implements(r0.f14882do.length);
        return f3503try;
    }

    /* renamed from: import, reason: not valid java name */
    public static boolean m2140import(KE ke, int i, TimeUnit timeUnit) {
        long nanoTime = System.nanoTime();
        long mo8084for = ke.mo632try().mo8087try() ? ke.mo632try().mo8084for() - nanoTime : Long.MAX_VALUE;
        ke.mo632try().mo8086new(Math.min(mo8084for, timeUnit.toNanos(i)) + nanoTime);
        try {
            U5 u5 = new U5();
            while (ke.mo631throw(u5, 8192L) != -1) {
                u5.m2330do();
            }
            if (mo8084for == Long.MAX_VALUE) {
                ke.mo632try().mo8082do();
                return true;
            }
            ke.mo632try().mo8086new(nanoTime + mo8084for);
            return true;
        } catch (InterruptedIOException unused) {
            if (mo8084for == Long.MAX_VALUE) {
                ke.mo632try().mo8082do();
                return false;
            }
            ke.mo632try().mo8086new(nanoTime + mo8084for);
            return false;
        } catch (Throwable th) {
            if (mo8084for == Long.MAX_VALUE) {
                ke.mo632try().mo8082do();
            } else {
                ke.mo632try().mo8086new(nanoTime + mo8084for);
            }
            throw th;
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static int m2141native(int i, int i2, String str) {
        while (i < i2) {
            char charAt = str.charAt(i);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m2142new(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException("timeout < 0");
        }
        if (timeUnit == null) {
            throw new NullPointerException("unit == null");
        }
        long millis = timeUnit.toMillis(j);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException("timeout too large.");
        }
        if (millis != 0 || j <= 0) {
            return (int) millis;
        }
        throw new IllegalArgumentException("timeout too small.");
    }

    /* renamed from: public, reason: not valid java name */
    public static int m2143public(int i, int i2, String str) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            char charAt = str.charAt(i3);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i3 + 1;
            }
        }
        return i;
    }

    /* renamed from: return, reason: not valid java name */
    public static C0587Wl m2144return(ArrayList arrayList) {
        C0587Wl.Cdo cdo = new C0587Wl.Cdo();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C0565Vl c0565Vl = (C0565Vl) it.next();
            C3947wv.Cdo cdo2 = AbstractC4058yo.f16832do;
            String mo2900return = c0565Vl.f4186do.mo2900return();
            String mo2900return2 = c0565Vl.f4187if.mo2900return();
            cdo2.getClass();
            cdo.m2771do(mo2900return, mo2900return2);
        }
        return new C0587Wl(cdo);
    }

    /* renamed from: static, reason: not valid java name */
    public static String m2145static(int i, int i2, String str) {
        int m2141native = m2141native(i, i2, str);
        return str.substring(m2141native, m2143public(m2141native, i2, str));
    }

    /* renamed from: super, reason: not valid java name */
    public static String[] m2146super(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (comparator.compare(str, strArr2[i]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i++;
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: this, reason: not valid java name */
    public static int m2147this(int i, int i2, String str, String str2) {
        while (i < i2) {
            if (str2.indexOf(str.charAt(i)) != -1) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: throw, reason: not valid java name */
    public static boolean m2148throw(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m2149try(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static boolean m2150while(Comparator<String> comparator, String[] strArr, String[] strArr2) {
        if (strArr != null && strArr2 != null && strArr.length != 0 && strArr2.length != 0) {
            for (String str : strArr) {
                for (String str2 : strArr2) {
                    if (comparator.compare(str, str2) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
