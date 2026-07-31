package j$.com.android.tools.r8;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import j$.nio.file.LinkOption;
import j$.nio.file.OpenOption;
import j$.nio.file.Path;
import j$.nio.file.StandardCopyOption;
import j$.nio.file.attribute.FileAttribute;
import j$.nio.file.attribute.FileTime;
import j$.nio.file.attribute.d;
import j$.nio.file.attribute.h;
import j$.nio.file.attribute.i;
import j$.nio.file.attribute.j;
import j$.nio.file.attribute.k;
import j$.nio.file.attribute.t;
import j$.nio.file.attribute.u;
import j$.nio.file.attribute.v;
import j$.nio.file.attribute.w;
import j$.nio.file.b;
import j$.nio.file.c;
import j$.nio.file.c0;
import j$.nio.file.d0;
import j$.nio.file.e0;
import j$.nio.file.f0;
import j$.nio.file.m;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.ChronoZonedDateTime;
import j$.time.chrono.a0;
import j$.time.chrono.e;
import j$.time.chrono.g0;
import j$.time.chrono.l;
import j$.time.chrono.o;
import j$.time.chrono.s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.p;
import j$.time.temporal.q;
import j$.time.temporal.r;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import j$.util.g;
import java.nio.file.CopyOption;
import java.nio.file.StandardOpenOption;
import java.nio.file.StandardWatchEventKinds;
import java.nio.file.WatchEvent;
import java.nio.file.attribute.AclFileAttributeView;
import java.nio.file.attribute.BasicFileAttributeView;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.DosFileAttributeView;
import java.nio.file.attribute.DosFileAttributes;
import java.nio.file.attribute.FileOwnerAttributeView;
import java.nio.file.attribute.PosixFileAttributeView;
import java.nio.file.attribute.PosixFileAttributes;
import java.nio.file.attribute.PosixFilePermission;
import java.nio.file.attribute.UserDefinedFileAttributeView;
import java.text.SimpleDateFormat;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.TimeZone;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class a {
    public static Set A(Set set) {
        if (set == null || set.isEmpty()) {
            return set;
        }
        HashSet hashSet = new HashSet();
        Object next = set.iterator().next();
        if (next instanceof v) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                try {
                    v vVar = (v) it.next();
                    hashSet.add(vVar == null ? null : vVar == v.OWNER_READ ? PosixFilePermission.OWNER_READ : vVar == v.OWNER_WRITE ? PosixFilePermission.OWNER_WRITE : vVar == v.OWNER_EXECUTE ? PosixFilePermission.OWNER_EXECUTE : vVar == v.GROUP_READ ? PosixFilePermission.GROUP_READ : vVar == v.GROUP_WRITE ? PosixFilePermission.GROUP_WRITE : vVar == v.GROUP_EXECUTE ? PosixFilePermission.GROUP_EXECUTE : vVar == v.OTHERS_READ ? PosixFilePermission.OTHERS_READ : vVar == v.OTHERS_WRITE ? PosixFilePermission.OTHERS_WRITE : PosixFilePermission.OTHERS_EXECUTE);
                } catch (ClassCastException e) {
                    g.a(e, "java.nio.file.attribute.PosixFilePermission");
                    throw null;
                }
            }
        } else {
            if (!(next instanceof PosixFilePermission)) {
                g.a(next.getClass(), "java.nio.file.attribute.PosixFilePermission");
                throw null;
            }
            Iterator it2 = set.iterator();
            while (it2.hasNext()) {
                try {
                    PosixFilePermission posixFilePermission = (PosixFilePermission) it2.next();
                    hashSet.add(posixFilePermission == null ? null : posixFilePermission == PosixFilePermission.OWNER_READ ? v.OWNER_READ : posixFilePermission == PosixFilePermission.OWNER_WRITE ? v.OWNER_WRITE : posixFilePermission == PosixFilePermission.OWNER_EXECUTE ? v.OWNER_EXECUTE : posixFilePermission == PosixFilePermission.GROUP_READ ? v.GROUP_READ : posixFilePermission == PosixFilePermission.GROUP_WRITE ? v.GROUP_WRITE : posixFilePermission == PosixFilePermission.GROUP_EXECUTE ? v.GROUP_EXECUTE : posixFilePermission == PosixFilePermission.OTHERS_READ ? v.OTHERS_READ : posixFilePermission == PosixFilePermission.OTHERS_WRITE ? v.OTHERS_WRITE : v.OTHERS_EXECUTE);
                } catch (ClassCastException e2) {
                    g.a(e2, "java.nio.file.attribute.PosixFilePermission");
                    throw null;
                }
            }
        }
        return hashSet;
    }

    public static l B(TemporalAccessor temporalAccessor) {
        Objects.requireNonNull(temporalAccessor, "temporal");
        return (l) Objects.requireNonNullElse((l) temporalAccessor.F(q.b), s.c);
    }

    public static boolean C(Object obj) {
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (set.isEmpty()) {
            return false;
        }
        Object next = set.iterator().next();
        return (next instanceof v) || (next instanceof PosixFilePermission);
    }

    public static /* synthetic */ int D(long j) {
        int i = (int) j;
        if (j == i) {
            return i;
        }
        throw new ArithmeticException();
    }

    public static /* synthetic */ long E(long j, long j2) {
        long j3 = j / j2;
        return (j - (j2 * j3) != 0 && (((j ^ j2) >> 63) | 1) < 0) ? j3 - 1 : j3;
    }

    public static /* synthetic */ String F(Iterable iterable) {
        StringBuilder sb = new StringBuilder();
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            while (true) {
                sb.append((CharSequence) it.next());
                if (!it.hasNext()) {
                    break;
                }
                sb.append((CharSequence) "/");
            }
        }
        return sb.toString();
    }

    public static /* synthetic */ List G(Object[] objArr) {
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            arrayList.add(Objects.requireNonNull(obj));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static /* synthetic */ Map.Entry H(Object obj, Object obj2) {
        return new AbstractMap.SimpleImmutableEntry(Objects.requireNonNull(obj), Objects.requireNonNull(obj2));
    }

    public static /* synthetic */ Set I(Object[] objArr) {
        HashSet hashSet = new HashSet(objArr.length);
        for (Object obj : objArr) {
            if (!hashSet.add(Objects.requireNonNull(obj))) {
                throw new IllegalArgumentException("duplicate element: " + obj);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    public static /* synthetic */ boolean J(Unsafe unsafe, Object obj, long j, j$.util.concurrent.l lVar) {
        while (true) {
            Unsafe unsafe2 = unsafe;
            Object obj2 = obj;
            long j2 = j;
            j$.util.concurrent.l lVar2 = lVar;
            if (unsafe2.compareAndSwapObject(obj2, j2, (Object) null, lVar2)) {
                return true;
            }
            if (unsafe2.getObject(obj2, j2) != null) {
                return false;
            }
            unsafe = unsafe2;
            obj = obj2;
            j = j2;
            lVar = lVar2;
        }
    }

    public static /* synthetic */ LinkOption[] K(java.nio.file.LinkOption[] linkOptionArr) {
        if (linkOptionArr == null) {
            return null;
        }
        int length = linkOptionArr.length;
        LinkOption[] linkOptionArr2 = new LinkOption[length];
        for (int i = 0; i < length; i++) {
            linkOptionArr2[i] = linkOptionArr[i] == null ? null : LinkOption.NOFOLLOW_LINKS;
        }
        return linkOptionArr2;
    }

    public static f0[] L(WatchEvent.Kind[] kindArr) {
        if (kindArr == null) {
            return null;
        }
        int length = kindArr.length;
        f0[] f0VarArr = new f0[length];
        for (int i = 0; i < length; i++) {
            WatchEvent.Kind kind = kindArr[i];
            f0VarArr[i] = kind == null ? null : kind == StandardWatchEventKinds.ENTRY_CREATE ? c0.b : kind == StandardWatchEventKinds.ENTRY_DELETE ? c0.c : kind == StandardWatchEventKinds.ENTRY_MODIFY ? c0.d : kind == StandardWatchEventKinds.OVERFLOW ? c0.a : kind instanceof e0 ? ((e0) kind).a : new d0(kind);
        }
        return f0VarArr;
    }

    public static FileAttribute[] M(java.nio.file.attribute.FileAttribute[] fileAttributeArr) {
        if (fileAttributeArr == null) {
            return null;
        }
        int length = fileAttributeArr.length;
        FileAttribute[] fileAttributeArr2 = new FileAttribute[length];
        for (int i = 0; i < length; i++) {
            java.nio.file.attribute.FileAttribute fileAttribute = fileAttributeArr[i];
            fileAttributeArr2[i] = fileAttribute == null ? null : C(fileAttribute.value()) ? new j$.desugar.sun.nio.fs.g(2, fileAttribute) : fileAttribute instanceof j ? ((j) fileAttribute).a : new i(fileAttribute);
        }
        return fileAttributeArr2;
    }

    public static /* synthetic */ CopyOption[] N(j$.nio.file.CopyOption[] copyOptionArr) {
        CopyOption cVar;
        if (copyOptionArr == null) {
            return null;
        }
        int length = copyOptionArr.length;
        CopyOption[] copyOptionArr2 = new CopyOption[length];
        for (int i = 0; i < length; i++) {
            j$.nio.file.CopyOption copyOption = copyOptionArr[i];
            if (copyOption == null) {
                cVar = null;
            } else if (copyOption instanceof b) {
                cVar = ((b) copyOption).a;
            } else if (copyOption instanceof LinkOption) {
                cVar = java.nio.file.LinkOption.NOFOLLOW_LINKS;
            } else if (copyOption instanceof StandardCopyOption) {
                StandardCopyOption standardCopyOption = (StandardCopyOption) copyOption;
                cVar = standardCopyOption == StandardCopyOption.REPLACE_EXISTING ? java.nio.file.StandardCopyOption.REPLACE_EXISTING : standardCopyOption == StandardCopyOption.COPY_ATTRIBUTES ? java.nio.file.StandardCopyOption.COPY_ATTRIBUTES : java.nio.file.StandardCopyOption.ATOMIC_MOVE;
            } else {
                cVar = new c(copyOption);
            }
            copyOptionArr2[i] = cVar;
        }
        return copyOptionArr2;
    }

    public static /* synthetic */ java.nio.file.LinkOption[] O(LinkOption[] linkOptionArr) {
        if (linkOptionArr == null) {
            return null;
        }
        int length = linkOptionArr.length;
        java.nio.file.LinkOption[] linkOptionArr2 = new java.nio.file.LinkOption[length];
        for (int i = 0; i < length; i++) {
            linkOptionArr2[i] = linkOptionArr[i] == null ? null : java.nio.file.LinkOption.NOFOLLOW_LINKS;
        }
        return linkOptionArr2;
    }

    public static WatchEvent.Kind[] P(f0[] f0VarArr) {
        if (f0VarArr == null) {
            return null;
        }
        int length = f0VarArr.length;
        WatchEvent.Kind[] kindArr = new WatchEvent.Kind[length];
        for (int i = 0; i < length; i++) {
            f0 f0Var = f0VarArr[i];
            kindArr[i] = f0Var == null ? null : f0Var == c0.b ? StandardWatchEventKinds.ENTRY_CREATE : f0Var == c0.c ? StandardWatchEventKinds.ENTRY_DELETE : f0Var == c0.d ? StandardWatchEventKinds.ENTRY_MODIFY : f0Var == c0.a ? StandardWatchEventKinds.OVERFLOW : f0Var instanceof d0 ? ((d0) f0Var).a : new e0(f0Var);
        }
        return kindArr;
    }

    public static java.nio.file.attribute.FileAttribute[] Q(FileAttribute[] fileAttributeArr) {
        if (fileAttributeArr == null) {
            return null;
        }
        int length = fileAttributeArr.length;
        java.nio.file.attribute.FileAttribute[] fileAttributeArr2 = new java.nio.file.attribute.FileAttribute[length];
        for (int i = 0; i < length; i++) {
            FileAttribute fileAttribute = fileAttributeArr[i];
            fileAttributeArr2[i] = fileAttribute == null ? null : C(fileAttribute.value()) ? new k(fileAttribute) : fileAttribute instanceof i ? ((i) fileAttribute).a : new j(fileAttribute);
        }
        return fileAttributeArr2;
    }

    public static /* synthetic */ long R(long j, long j2) {
        long j3 = j % j2;
        if (j3 == 0) {
            return 0L;
        }
        return (((j ^ j2) >> 63) | 1) > 0 ? j3 : j3 + j2;
    }

    public static /* synthetic */ long S(long j, long j2) {
        long j3 = j + j2;
        if (((j2 ^ j) < 0) || ((j ^ j3) >= 0)) {
            return j3;
        }
        throw new ArithmeticException();
    }

    public static /* synthetic */ long T(long j, long j2) {
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(~j2) + Long.numberOfLeadingZeros(j2) + Long.numberOfLeadingZeros(~j) + Long.numberOfLeadingZeros(j);
        if (numberOfLeadingZeros > 65) {
            return j * j2;
        }
        if (numberOfLeadingZeros >= 64) {
            if ((j2 != Long.MIN_VALUE) | (j >= 0)) {
                long j3 = j * j2;
                if (j == 0 || j3 / j == j2) {
                    return j3;
                }
            }
        }
        throw new ArithmeticException();
    }

    public static /* synthetic */ long U(long j, long j2) {
        long j3 = j - j2;
        if (((j2 ^ j) >= 0) || ((j ^ j3) >= 0)) {
            return j3;
        }
        throw new ArithmeticException();
    }

    public static char V(String str, int i) {
        if (i < str.length()) {
            return str.charAt(i);
        }
        return (char) 0;
    }

    public static l W(String str) {
        ConcurrentHashMap concurrentHashMap = j$.time.chrono.a.a;
        Objects.requireNonNull(str, TtmlNode.ATTR_ID);
        while (true) {
            ConcurrentHashMap concurrentHashMap2 = j$.time.chrono.a.a;
            l lVar = (l) concurrentHashMap2.get(str);
            if (lVar == null) {
                lVar = (l) j$.time.chrono.a.b.get(str);
            }
            if (lVar != null) {
                return lVar;
            }
            if (concurrentHashMap2.get("ISO") != null) {
                Iterator it = ServiceLoader.load(l.class).iterator();
                while (it.hasNext()) {
                    l lVar2 = (l) it.next();
                    if (str.equals(lVar2.i()) || str.equals(lVar2.q())) {
                        return lVar2;
                    }
                }
                m.j(str, "Unknown chronology: ");
                return null;
            }
            o oVar = o.l;
            oVar.getClass();
            j$.time.chrono.a.o(oVar, "Hijrah-umalqura");
            j$.time.chrono.v vVar = j$.time.chrono.v.c;
            vVar.getClass();
            j$.time.chrono.a.o(vVar, "Japanese");
            a0 a0Var = a0.c;
            a0Var.getClass();
            j$.time.chrono.a.o(a0Var, "Minguo");
            g0 g0Var = g0.c;
            g0Var.getClass();
            j$.time.chrono.a.o(g0Var, "ThaiBuddhist");
            try {
                for (j$.time.chrono.a aVar : Arrays.asList(new j$.time.chrono.a[0])) {
                    if (!aVar.i().equals("ISO")) {
                        j$.time.chrono.a.o(aVar, aVar.i());
                    }
                }
                s sVar = s.c;
                sVar.getClass();
                j$.time.chrono.a.o(sVar, "ISO");
            } catch (Throwable th) {
                throw new ServiceConfigurationError(th.getMessage(), th);
            }
        }
    }

    public static j$.time.a X() {
        return new j$.time.a(ZoneId.systemDefault());
    }

    public static j$.time.temporal.l a(j$.time.chrono.b bVar, j$.time.temporal.l lVar) {
        return lVar.c(bVar.N(), j$.time.temporal.a.EPOCH_DAY);
    }

    public static int b(j$.time.chrono.b bVar, j$.time.chrono.b bVar2) {
        int compare = Long.compare(bVar.N(), bVar2.N());
        if (compare != 0) {
            return compare;
        }
        return ((j$.time.chrono.a) bVar.a()).i().compareTo(bVar2.a().i());
    }

    public static int c(e eVar, e eVar2) {
        int compareTo = eVar.f().compareTo(eVar2.f());
        return (compareTo == 0 && (compareTo = eVar.b().compareTo(eVar2.b())) == 0) ? ((j$.time.chrono.a) eVar.a()).i().compareTo(eVar2.a().i()) : compareTo;
    }

    public static int d(ChronoZonedDateTime chronoZonedDateTime, ChronoZonedDateTime chronoZonedDateTime2) {
        int compare = Long.compare(chronoZonedDateTime.toEpochSecond(), chronoZonedDateTime2.toEpochSecond());
        return (compare == 0 && (compare = chronoZonedDateTime.b().d - chronoZonedDateTime2.b().d) == 0 && (compare = chronoZonedDateTime.w().compareTo(chronoZonedDateTime2.w())) == 0 && (compare = chronoZonedDateTime.L().i().compareTo(chronoZonedDateTime2.L().i())) == 0) ? ((j$.time.chrono.a) chronoZonedDateTime.a()).i().compareTo(chronoZonedDateTime2.a().i()) : compare;
    }

    public static int e(ChronoZonedDateTime chronoZonedDateTime, p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return q.a(chronoZonedDateTime, pVar);
        }
        int i = j$.time.chrono.i.a[((j$.time.temporal.a) pVar).ordinal()];
        if (i != 1) {
            return i != 2 ? chronoZonedDateTime.w().k(pVar) : chronoZonedDateTime.g().b;
        }
        throw new r("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    public static int f(j$.time.chrono.m mVar, p pVar) {
        return pVar == j$.time.temporal.a.ERA ? mVar.getValue() : q.a(mVar, pVar);
    }

    public static long g(j$.time.chrono.m mVar, p pVar) {
        if (pVar == j$.time.temporal.a.ERA) {
            return mVar.getValue();
        }
        if (pVar instanceof j$.time.temporal.a) {
            throw new r(j$.time.b.a("Unsupported field: ", pVar));
        }
        return pVar.F(mVar);
    }

    public static boolean h(j$.time.chrono.b bVar, p pVar) {
        return pVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) pVar).isDateBased() : pVar != null && pVar.k(bVar);
    }

    public static boolean i(j$.time.chrono.m mVar, p pVar) {
        return pVar instanceof j$.time.temporal.a ? pVar == j$.time.temporal.a.ERA : pVar != null && pVar.k(mVar);
    }

    public static Object j(j$.time.chrono.b bVar, j$.desugar.sun.nio.fs.m mVar) {
        if (mVar == q.a || mVar == q.e || mVar == q.d || mVar == q.g) {
            return null;
        }
        return mVar == q.b ? bVar.a() : mVar == q.c ? ChronoUnit.DAYS : mVar.g(bVar);
    }

    public static Object k(e eVar, j$.desugar.sun.nio.fs.m mVar) {
        if (mVar == q.a || mVar == q.e || mVar == q.d) {
            return null;
        }
        return mVar == q.g ? eVar.b() : mVar == q.b ? eVar.a() : mVar == q.c ? ChronoUnit.NANOS : mVar.g(eVar);
    }

    public static Object l(ChronoZonedDateTime chronoZonedDateTime, j$.desugar.sun.nio.fs.m mVar) {
        return (mVar == q.e || mVar == q.a) ? chronoZonedDateTime.L() : mVar == q.d ? chronoZonedDateTime.g() : mVar == q.g ? chronoZonedDateTime.b() : mVar == q.b ? chronoZonedDateTime.a() : mVar == q.c ? ChronoUnit.NANOS : mVar.g(chronoZonedDateTime);
    }

    public static Object m(j$.time.chrono.m mVar, j$.desugar.sun.nio.fs.m mVar2) {
        return mVar2 == q.c ? ChronoUnit.ERAS : q.c(mVar, mVar2);
    }

    public static long n(e eVar, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        return ((eVar.f().N() * 86400) + eVar.b().m0()) - zoneOffset.b;
    }

    public static long o(ChronoZonedDateTime chronoZonedDateTime) {
        return ((chronoZonedDateTime.f().N() * 86400) + chronoZonedDateTime.b().m0()) - chronoZonedDateTime.g().b;
    }

    public static String p(long j, String str, Locale locale) {
        TimeZone timeZone = TimeZone.getTimeZone("UTC");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, locale);
        simpleDateFormat.setTimeZone(timeZone);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(timeZone);
        calendar.set(2016, 1, (int) j, 0, 0, 0);
        return simpleDateFormat.format(calendar.getTime());
    }

    public static String q(long j, String str, Locale locale) {
        TimeZone timeZone = TimeZone.getTimeZone("UTC");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, locale);
        simpleDateFormat.setTimeZone(timeZone);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(timeZone);
        calendar.set(0, (int) j, 0, 0, 0, 0);
        return simpleDateFormat.format(calendar.getTime());
    }

    public static FileTime r(java.nio.file.attribute.FileTime fileTime) {
        if (fileTime == null) {
            return null;
        }
        return new FileTime(fileTime.toMillis());
    }

    public static /* synthetic */ StandardOpenOption s(j$.nio.file.a0 a0Var) {
        if (a0Var == null) {
            return null;
        }
        return a0Var == j$.nio.file.a0.READ ? StandardOpenOption.READ : a0Var == j$.nio.file.a0.WRITE ? StandardOpenOption.WRITE : a0Var == j$.nio.file.a0.APPEND ? StandardOpenOption.APPEND : a0Var == j$.nio.file.a0.TRUNCATE_EXISTING ? StandardOpenOption.TRUNCATE_EXISTING : a0Var == j$.nio.file.a0.CREATE ? StandardOpenOption.CREATE : a0Var == j$.nio.file.a0.CREATE_NEW ? StandardOpenOption.CREATE_NEW : a0Var == j$.nio.file.a0.DELETE_ON_CLOSE ? StandardOpenOption.DELETE_ON_CLOSE : a0Var == j$.nio.file.a0.SPARSE ? StandardOpenOption.SPARSE : a0Var == j$.nio.file.a0.SYNC ? StandardOpenOption.SYNC : StandardOpenOption.DSYNC;
    }

    public static java.nio.file.attribute.FileTime t(FileTime fileTime) {
        if (fileTime == null) {
            return null;
        }
        return java.nio.file.attribute.FileTime.fromMillis(fileTime.toMillis());
    }

    public static Object u(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj instanceof Path ? j$.nio.file.s.k((Path) obj) : obj instanceof java.nio.file.Path ? j$.nio.file.r.k((java.nio.file.Path) obj) : obj;
    }

    public static Class v(Class cls) {
        if (cls == null) {
            return null;
        }
        if (cls == BasicFileAttributeView.class) {
            return d.class;
        }
        if (cls == d.class) {
            return BasicFileAttributeView.class;
        }
        if (cls == PosixFileAttributeView.class) {
            return t.class;
        }
        if (cls == t.class) {
            return PosixFileAttributeView.class;
        }
        if (cls == FileOwnerAttributeView.class) {
            return j$.nio.file.attribute.q.class;
        }
        if (cls == j$.nio.file.attribute.q.class) {
            return FileOwnerAttributeView.class;
        }
        if (cls == j$.nio.file.attribute.g.class) {
            return DosFileAttributeView.class;
        }
        if (cls == DosFileAttributeView.class) {
            return j$.nio.file.attribute.g.class;
        }
        if (cls == w.class) {
            return UserDefinedFileAttributeView.class;
        }
        if (cls == UserDefinedFileAttributeView.class) {
            return w.class;
        }
        if (cls == j$.nio.file.attribute.a.class) {
            return AclFileAttributeView.class;
        }
        if (cls == AclFileAttributeView.class) {
            return j$.nio.file.attribute.a.class;
        }
        g.a(cls, "java.nio.file.attribute.FileAttributeView");
        throw null;
    }

    public static Class w(Class cls) {
        if (cls == null) {
            return null;
        }
        if (cls == BasicFileAttributes.class) {
            return j$.nio.file.attribute.BasicFileAttributes.class;
        }
        if (cls == j$.nio.file.attribute.BasicFileAttributes.class) {
            return BasicFileAttributes.class;
        }
        if (cls == PosixFileAttributes.class) {
            return u.class;
        }
        if (cls == u.class) {
            return PosixFileAttributes.class;
        }
        if (cls == h.class) {
            return DosFileAttributes.class;
        }
        if (cls == DosFileAttributes.class) {
            return h.class;
        }
        g.a(cls, "java.nio.file.attribute.BasicFileAttributes");
        throw null;
    }

    public static Map x(Map map) {
        if (map == null || map.isEmpty()) {
            return map;
        }
        HashMap hashMap = new HashMap();
        for (String str : map.keySet()) {
            hashMap.put(str, y(map.get(str)));
        }
        return hashMap;
    }

    public static Object y(Object obj) {
        if (obj instanceof java.nio.file.attribute.FileTime) {
            try {
                return r((java.nio.file.attribute.FileTime) obj);
            } catch (ClassCastException e) {
                g.a(e, "java.nio.file.attribute.FileTime");
                throw null;
            }
        }
        if (!(obj instanceof FileTime)) {
            return obj;
        }
        try {
            return t((FileTime) obj);
        } catch (ClassCastException e2) {
            g.a(e2, "java.nio.file.attribute.FileTime");
            throw null;
        }
    }

    public static Set z(Set set) {
        if (set == null || set.isEmpty()) {
            return set;
        }
        HashSet hashSet = new HashSet();
        Object next = set.iterator().next();
        if (next instanceof OpenOption) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                try {
                    hashSet.add(j$.nio.file.p.a((OpenOption) it.next()));
                } catch (ClassCastException e) {
                    g.a(e, "java.nio.file.OpenOption");
                    throw null;
                }
            }
        } else {
            if (!(next instanceof java.nio.file.OpenOption)) {
                g.a(next.getClass(), "java.nio.file.OpenOption");
                throw null;
            }
            Iterator it2 = set.iterator();
            while (it2.hasNext()) {
                try {
                    hashSet.add(j$.nio.file.o.a((java.nio.file.OpenOption) it2.next()));
                } catch (ClassCastException e2) {
                    g.a(e2, "java.nio.file.OpenOption");
                    throw null;
                }
            }
        }
        return hashSet;
    }
}
