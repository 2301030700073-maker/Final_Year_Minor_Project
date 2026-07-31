package j$.com.android.tools.r8;

import j$.desugar.sun.nio.fs.e;
import j$.desugar.sun.nio.fs.g;
import j$.lang.Iterable;
import j$.nio.channels.DesugarChannels;
import j$.nio.file.LinkOption;
import j$.nio.file.OpenOption;
import j$.nio.file.Path;
import j$.nio.file.StandardCopyOption;
import j$.nio.file.StandardOpenOption;
import j$.nio.file.a0;
import j$.nio.file.attribute.FileAttribute;
import j$.nio.file.attribute.FileTime;
import j$.nio.file.attribute.d;
import j$.nio.file.attribute.h;
import j$.nio.file.attribute.i;
import j$.nio.file.attribute.k;
import j$.nio.file.attribute.u;
import j$.nio.file.attribute.v;
import j$.nio.file.attribute.w;
import j$.nio.file.b;
import j$.nio.file.b0;
import j$.nio.file.c;
import j$.nio.file.p;
import j$.nio.file.y;
import j$.nio.file.z;
import j$.time.ZoneOffset;
import j$.time.chrono.ChronoLocalDate;
import j$.time.chrono.ChronoLocalDateTime;
import j$.time.chrono.ChronoZonedDateTime;
import j$.time.chrono.e0;
import j$.time.chrono.j;
import j$.time.chrono.m;
import j$.time.chrono.q;
import j$.time.chrono.t;
import j$.time.temporal.ChronoField;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalField;
import j$.time.temporal.TemporalQuery;
import j$.time.temporal.n;
import j$.time.temporal.o;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import j$.util.concurrent.l;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.file.CopyOption;
import java.nio.file.FileAlreadyExistsException;
import java.nio.file.NoSuchFileException;
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
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.function.Consumer;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class a {
    public static j A(TemporalAccessor temporalAccessor) {
        Objects.requireNonNull(temporalAccessor, "temporal");
        return (j) Objects.requireNonNullElse((j) temporalAccessor.L(n.b), q.c);
    }

    public static boolean B(Object obj) {
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

    public static /* synthetic */ long C(long j, long j2) {
        long j3 = j / j2;
        return (j - (j2 * j3) != 0 && (((j ^ j2) >> 63) | 1) < 0) ? j3 - 1 : j3;
    }

    public static /* synthetic */ String D(Iterable iterable) {
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

    public static /* synthetic */ List E(Object[] objArr) {
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            arrayList.add(Objects.requireNonNull(obj));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static /* synthetic */ Map.Entry F(Object obj, Object obj2) {
        return new AbstractMap.SimpleImmutableEntry(Objects.requireNonNull(obj), Objects.requireNonNull(obj2));
    }

    public static /* synthetic */ Set G(Object[] objArr) {
        HashSet hashSet = new HashSet(objArr.length);
        for (Object obj : objArr) {
            if (!hashSet.add(Objects.requireNonNull(obj))) {
                throw new IllegalArgumentException("duplicate element: " + obj);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    public static /* synthetic */ boolean H(Unsafe unsafe, Object obj, long j, l lVar) {
        while (true) {
            Unsafe unsafe2 = unsafe;
            Object obj2 = obj;
            long j2 = j;
            l lVar2 = lVar;
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

    public static /* synthetic */ LinkOption[] I(java.nio.file.LinkOption[] linkOptionArr) {
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

    public static b0[] J(WatchEvent.Kind[] kindArr) {
        if (kindArr == null) {
            return null;
        }
        int length = kindArr.length;
        b0[] b0VarArr = new b0[length];
        for (int i = 0; i < length; i++) {
            WatchEvent.Kind kind = kindArr[i];
            b0VarArr[i] = kind == null ? null : kind == StandardWatchEventKinds.ENTRY_CREATE ? y.b : kind == StandardWatchEventKinds.ENTRY_DELETE ? y.c : kind == StandardWatchEventKinds.ENTRY_MODIFY ? y.d : kind == StandardWatchEventKinds.OVERFLOW ? y.a : kind instanceof a0 ? ((a0) kind).a : new z(kind);
        }
        return b0VarArr;
    }

    public static FileAttribute[] K(java.nio.file.attribute.FileAttribute[] fileAttributeArr) {
        if (fileAttributeArr == null) {
            return null;
        }
        int length = fileAttributeArr.length;
        FileAttribute[] fileAttributeArr2 = new FileAttribute[length];
        for (int i = 0; i < length; i++) {
            java.nio.file.attribute.FileAttribute fileAttribute = fileAttributeArr[i];
            fileAttributeArr2[i] = fileAttribute == null ? null : B(fileAttribute.value()) ? new g(3, fileAttribute) : fileAttribute instanceof j$.nio.file.attribute.j ? ((j$.nio.file.attribute.j) fileAttribute).a : new i(fileAttribute);
        }
        return fileAttributeArr2;
    }

    public static /* synthetic */ CopyOption[] L(j$.nio.file.CopyOption[] copyOptionArr) {
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

    public static /* synthetic */ java.nio.file.LinkOption[] M(LinkOption[] linkOptionArr) {
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

    public static WatchEvent.Kind[] N(b0[] b0VarArr) {
        if (b0VarArr == null) {
            return null;
        }
        int length = b0VarArr.length;
        WatchEvent.Kind[] kindArr = new WatchEvent.Kind[length];
        for (int i = 0; i < length; i++) {
            b0 b0Var = b0VarArr[i];
            kindArr[i] = b0Var == null ? null : b0Var == y.b ? StandardWatchEventKinds.ENTRY_CREATE : b0Var == y.c ? StandardWatchEventKinds.ENTRY_DELETE : b0Var == y.d ? StandardWatchEventKinds.ENTRY_MODIFY : b0Var == y.a ? StandardWatchEventKinds.OVERFLOW : b0Var instanceof z ? ((z) b0Var).a : new a0(b0Var);
        }
        return kindArr;
    }

    public static java.nio.file.attribute.FileAttribute[] O(FileAttribute[] fileAttributeArr) {
        if (fileAttributeArr == null) {
            return null;
        }
        int length = fileAttributeArr.length;
        java.nio.file.attribute.FileAttribute[] fileAttributeArr2 = new java.nio.file.attribute.FileAttribute[length];
        for (int i = 0; i < length; i++) {
            FileAttribute fileAttribute = fileAttributeArr[i];
            fileAttributeArr2[i] = fileAttribute == null ? null : B(fileAttribute.value()) ? new k(fileAttribute) : fileAttribute instanceof i ? ((i) fileAttribute).a : new j$.nio.file.attribute.j(fileAttribute);
        }
        return fileAttributeArr2;
    }

    public static /* synthetic */ long P(long j, long j2) {
        long j3 = j % j2;
        if (j3 == 0) {
            return 0L;
        }
        return (((j ^ j2) >> 63) | 1) > 0 ? j3 : j3 + j2;
    }

    public static /* synthetic */ long Q(long j, long j2) {
        long j3 = j + j2;
        if (((j2 ^ j) < 0) || ((j ^ j3) >= 0)) {
            return j3;
        }
        throw new ArithmeticException();
    }

    public static /* synthetic */ long R(long j, long j2) {
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

    public static /* synthetic */ long S(long j, long j2) {
        long j3 = j - j2;
        if (((j2 ^ j) >= 0) || ((j ^ j3) >= 0)) {
            return j3;
        }
        throw new ArithmeticException();
    }

    public static char T(String str, int i) {
        if (i < str.length()) {
            return str.charAt(i);
        }
        return (char) 0;
    }

    public static j U(String str) {
        ConcurrentHashMap concurrentHashMap = j$.time.chrono.a.a;
        Objects.requireNonNull(str, "id");
        while (true) {
            ConcurrentHashMap concurrentHashMap2 = j$.time.chrono.a.a;
            j jVar = (j) concurrentHashMap2.get(str);
            if (jVar == null) {
                jVar = (j) j$.time.chrono.a.b.get(str);
            }
            if (jVar != null) {
                return jVar;
            }
            if (concurrentHashMap2.get("ISO") != null) {
                Iterator it = ServiceLoader.load(j.class).iterator();
                while (it.hasNext()) {
                    j jVar2 = (j) it.next();
                    if (str.equals(jVar2.i()) || str.equals(jVar2.p())) {
                        return jVar2;
                    }
                }
                j$.nio.file.j.j(str, "Unknown chronology: ");
                return null;
            }
            m mVar = m.l;
            mVar.getClass();
            j$.time.chrono.a.n(mVar, "Hijrah-umalqura");
            t tVar = t.c;
            tVar.getClass();
            j$.time.chrono.a.n(tVar, "Japanese");
            j$.time.chrono.y yVar = j$.time.chrono.y.c;
            yVar.getClass();
            j$.time.chrono.a.n(yVar, "Minguo");
            e0 e0Var = e0.c;
            e0Var.getClass();
            j$.time.chrono.a.n(e0Var, "ThaiBuddhist");
            try {
                for (j$.time.chrono.a aVar : Arrays.asList(new j$.time.chrono.a[0])) {
                    if (!aVar.i().equals("ISO")) {
                        j$.time.chrono.a.n(aVar, aVar.i());
                    }
                }
                q qVar = q.c;
                qVar.getClass();
                j$.time.chrono.a.n(qVar, "ISO");
            } catch (Throwable th) {
                throw new ServiceConfigurationError(th.getMessage(), th);
            }
        }
    }

    public static FileChannel V(Path path, Set set) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((OpenOption) it.next()).getClass();
        }
        if (path.toFile().exists()) {
            if (set.contains(StandardOpenOption.CREATE_NEW) && set.contains(StandardOpenOption.WRITE)) {
                throw new FileAlreadyExistsException(path.toString());
            }
        } else if (!set.contains(StandardOpenOption.CREATE) && !set.contains(StandardOpenOption.CREATE_NEW)) {
            throw new NoSuchFileException(path.toString());
        }
        if (set.contains(StandardOpenOption.READ) && set.contains(StandardOpenOption.APPEND)) {
            j$.nio.file.j.c("READ + APPEND not allowed");
            return null;
        }
        StandardOpenOption standardOpenOption = StandardOpenOption.APPEND;
        if (set.contains(standardOpenOption) && set.contains(StandardOpenOption.TRUNCATE_EXISTING)) {
            j$.nio.file.j.c("APPEND + TRUNCATE_EXISTING not allowed");
            return null;
        }
        File file = path.toFile();
        StandardOpenOption standardOpenOption2 = StandardOpenOption.WRITE;
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, (set.contains(standardOpenOption2) || set.contains(standardOpenOption)) ? set.contains(StandardOpenOption.SYNC) ? "rws" : set.contains(StandardOpenOption.DSYNC) ? "rwd" : "rw" : "r");
        if (set.contains(StandardOpenOption.TRUNCATE_EXISTING) && set.contains(standardOpenOption2)) {
            randomAccessFile.setLength(0L);
        }
        if (!set.contains(standardOpenOption) && !set.contains(StandardOpenOption.DELETE_ON_CLOSE)) {
            return DesugarChannels.convertMaybeLegacyFileChannelFromLibrary(randomAccessFile.getChannel());
        }
        FileChannel convertMaybeLegacyFileChannelFromLibrary = DesugarChannels.convertMaybeLegacyFileChannelFromLibrary(randomAccessFile.getChannel());
        int i = e.e;
        if (convertMaybeLegacyFileChannelFromLibrary instanceof e) {
            convertMaybeLegacyFileChannelFromLibrary = ((e) convertMaybeLegacyFileChannelFromLibrary).a;
        }
        return new e(convertMaybeLegacyFileChannelFromLibrary, set.contains(StandardOpenOption.DELETE_ON_CLOSE), set.contains(standardOpenOption), path);
    }

    public static Temporal a(ChronoLocalDate chronoLocalDate, Temporal temporal) {
        return temporal.b(chronoLocalDate.toEpochDay(), ChronoField.EPOCH_DAY);
    }

    public static int b(ChronoLocalDate chronoLocalDate, ChronoLocalDate chronoLocalDate2) {
        int compare = Long.compare(chronoLocalDate.toEpochDay(), chronoLocalDate2.toEpochDay());
        if (compare != 0) {
            return compare;
        }
        return ((j$.time.chrono.a) chronoLocalDate.a()).i().compareTo(chronoLocalDate2.a().i());
    }

    public static int c(ChronoLocalDateTime chronoLocalDateTime, ChronoLocalDateTime chronoLocalDateTime2) {
        int compareTo = chronoLocalDateTime.e().compareTo(chronoLocalDateTime2.e());
        return (compareTo == 0 && (compareTo = chronoLocalDateTime.toLocalTime().compareTo(chronoLocalDateTime2.toLocalTime())) == 0) ? ((j$.time.chrono.a) chronoLocalDateTime.a()).i().compareTo(chronoLocalDateTime2.a().i()) : compareTo;
    }

    public static int d(ChronoZonedDateTime chronoZonedDateTime, ChronoZonedDateTime chronoZonedDateTime2) {
        int compare = Long.compare(chronoZonedDateTime.T(), chronoZonedDateTime2.T());
        return (compare == 0 && (compare = chronoZonedDateTime.toLocalTime().getNano() - chronoZonedDateTime2.toLocalTime().getNano()) == 0 && (compare = chronoZonedDateTime.w().compareTo(chronoZonedDateTime2.w())) == 0 && (compare = chronoZonedDateTime.I().i().compareTo(chronoZonedDateTime2.I().i())) == 0) ? ((j$.time.chrono.a) chronoZonedDateTime.a()).i().compareTo(chronoZonedDateTime2.a().i()) : compare;
    }

    public static int e(ChronoZonedDateTime chronoZonedDateTime, TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return n.a(chronoZonedDateTime, temporalField);
        }
        int i = j$.time.chrono.g.a[((ChronoField) temporalField).ordinal()];
        if (i != 1) {
            return i != 2 ? chronoZonedDateTime.w().k(temporalField) : chronoZonedDateTime.f().getTotalSeconds();
        }
        throw new o("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    public static int f(j$.time.chrono.k kVar, TemporalField temporalField) {
        return temporalField == ChronoField.ERA ? kVar.getValue() : n.a(kVar, temporalField);
    }

    public static long g(j$.time.chrono.k kVar, TemporalField temporalField) {
        if (temporalField == ChronoField.ERA) {
            return kVar.getValue();
        }
        if (temporalField instanceof ChronoField) {
            throw new o(j$.time.b.a("Unsupported field: ", temporalField));
        }
        return temporalField.F(kVar);
    }

    public static boolean h(ChronoLocalDate chronoLocalDate, TemporalField temporalField) {
        return temporalField instanceof ChronoField ? ((ChronoField) temporalField).isDateBased() : temporalField != null && temporalField.k(chronoLocalDate);
    }

    public static boolean i(j$.time.chrono.k kVar, TemporalField temporalField) {
        return temporalField instanceof ChronoField ? temporalField == ChronoField.ERA : temporalField != null && temporalField.k(kVar);
    }

    public static Object j(ChronoLocalDate chronoLocalDate, TemporalQuery temporalQuery) {
        if (temporalQuery == n.a || temporalQuery == n.e || temporalQuery == n.d || temporalQuery == n.g) {
            return null;
        }
        return temporalQuery == n.b ? chronoLocalDate.a() : temporalQuery == n.c ? ChronoUnit.DAYS : temporalQuery.queryFrom(chronoLocalDate);
    }

    public static Object k(ChronoLocalDateTime chronoLocalDateTime, TemporalQuery temporalQuery) {
        if (temporalQuery == n.a || temporalQuery == n.e || temporalQuery == n.d) {
            return null;
        }
        return temporalQuery == n.g ? chronoLocalDateTime.toLocalTime() : temporalQuery == n.b ? chronoLocalDateTime.a() : temporalQuery == n.c ? ChronoUnit.NANOS : temporalQuery.queryFrom(chronoLocalDateTime);
    }

    public static Object l(ChronoZonedDateTime chronoZonedDateTime, TemporalQuery temporalQuery) {
        return (temporalQuery == n.e || temporalQuery == n.a) ? chronoZonedDateTime.I() : temporalQuery == n.d ? chronoZonedDateTime.f() : temporalQuery == n.g ? chronoZonedDateTime.toLocalTime() : temporalQuery == n.b ? chronoZonedDateTime.a() : temporalQuery == n.c ? ChronoUnit.NANOS : temporalQuery.queryFrom(chronoZonedDateTime);
    }

    public static Object m(j$.time.chrono.k kVar, TemporalQuery temporalQuery) {
        return temporalQuery == n.c ? ChronoUnit.ERAS : n.c(kVar, temporalQuery);
    }

    public static long n(ChronoLocalDateTime chronoLocalDateTime, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        return ((chronoLocalDateTime.e().toEpochDay() * 86400) + chronoLocalDateTime.toLocalTime().f0()) - zoneOffset.getTotalSeconds();
    }

    public static long o(ChronoZonedDateTime chronoZonedDateTime) {
        return ((chronoZonedDateTime.e().toEpochDay() * 86400) + chronoZonedDateTime.toLocalTime().f0()) - chronoZonedDateTime.f().getTotalSeconds();
    }

    public static FileTime p(java.nio.file.attribute.FileTime fileTime) {
        if (fileTime == null) {
            return null;
        }
        return new FileTime(fileTime.toMillis());
    }

    public static /* synthetic */ java.nio.file.StandardOpenOption q(StandardOpenOption standardOpenOption) {
        if (standardOpenOption == null) {
            return null;
        }
        return standardOpenOption == StandardOpenOption.READ ? java.nio.file.StandardOpenOption.READ : standardOpenOption == StandardOpenOption.WRITE ? java.nio.file.StandardOpenOption.WRITE : standardOpenOption == StandardOpenOption.APPEND ? java.nio.file.StandardOpenOption.APPEND : standardOpenOption == StandardOpenOption.TRUNCATE_EXISTING ? java.nio.file.StandardOpenOption.TRUNCATE_EXISTING : standardOpenOption == StandardOpenOption.CREATE ? java.nio.file.StandardOpenOption.CREATE : standardOpenOption == StandardOpenOption.CREATE_NEW ? java.nio.file.StandardOpenOption.CREATE_NEW : standardOpenOption == StandardOpenOption.DELETE_ON_CLOSE ? java.nio.file.StandardOpenOption.DELETE_ON_CLOSE : standardOpenOption == StandardOpenOption.SPARSE ? java.nio.file.StandardOpenOption.SPARSE : standardOpenOption == StandardOpenOption.SYNC ? java.nio.file.StandardOpenOption.SYNC : java.nio.file.StandardOpenOption.DSYNC;
    }

    public static java.nio.file.attribute.FileTime r(FileTime fileTime) {
        if (fileTime == null) {
            return null;
        }
        return java.nio.file.attribute.FileTime.fromMillis(fileTime.toMillis());
    }

    public static Object s(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj instanceof Path ? p.k((Path) obj) : obj instanceof java.nio.file.Path ? j$.nio.file.o.k((java.nio.file.Path) obj) : obj;
    }

    public static Class t(Class cls) {
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
            return j$.nio.file.attribute.t.class;
        }
        if (cls == j$.nio.file.attribute.t.class) {
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
        j$.util.g.a(cls, "java.nio.file.attribute.FileAttributeView");
        throw null;
    }

    public static Class u(Class cls) {
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
        j$.util.g.a(cls, "java.nio.file.attribute.BasicFileAttributes");
        throw null;
    }

    public static Map v(Map map) {
        if (map == null || map.isEmpty()) {
            return map;
        }
        HashMap hashMap = new HashMap();
        for (String str : map.keySet()) {
            hashMap.put(str, w(map.get(str)));
        }
        return hashMap;
    }

    public static Object w(Object obj) {
        if (obj instanceof java.nio.file.attribute.FileTime) {
            try {
                return p((java.nio.file.attribute.FileTime) obj);
            } catch (ClassCastException e) {
                j$.util.g.a(e, "java.nio.file.attribute.FileTime");
                throw null;
            }
        }
        if (!(obj instanceof FileTime)) {
            return obj;
        }
        try {
            return r((FileTime) obj);
        } catch (ClassCastException e2) {
            j$.util.g.a(e2, "java.nio.file.attribute.FileTime");
            throw null;
        }
    }

    public static Set x(Set set) {
        if (set == null || set.isEmpty()) {
            return set;
        }
        HashSet hashSet = new HashSet();
        Object next = set.iterator().next();
        if (next instanceof OpenOption) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                try {
                    hashSet.add(j$.nio.file.m.a((OpenOption) it.next()));
                } catch (ClassCastException e) {
                    j$.util.g.a(e, "java.nio.file.OpenOption");
                    throw null;
                }
            }
        } else {
            if (!(next instanceof java.nio.file.OpenOption)) {
                j$.util.g.a(next.getClass(), "java.nio.file.OpenOption");
                throw null;
            }
            Iterator it2 = set.iterator();
            while (it2.hasNext()) {
                try {
                    hashSet.add(j$.nio.file.l.a((java.nio.file.OpenOption) it2.next()));
                } catch (ClassCastException e2) {
                    j$.util.g.a(e2, "java.nio.file.OpenOption");
                    throw null;
                }
            }
        }
        return hashSet;
    }

    public static Set y(Set set) {
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
                    j$.util.g.a(e, "java.nio.file.attribute.PosixFilePermission");
                    throw null;
                }
            }
        } else {
            if (!(next instanceof PosixFilePermission)) {
                j$.util.g.a(next.getClass(), "java.nio.file.attribute.PosixFilePermission");
                throw null;
            }
            Iterator it2 = set.iterator();
            while (it2.hasNext()) {
                try {
                    PosixFilePermission posixFilePermission = (PosixFilePermission) it2.next();
                    hashSet.add(posixFilePermission == null ? null : posixFilePermission == PosixFilePermission.OWNER_READ ? v.OWNER_READ : posixFilePermission == PosixFilePermission.OWNER_WRITE ? v.OWNER_WRITE : posixFilePermission == PosixFilePermission.OWNER_EXECUTE ? v.OWNER_EXECUTE : posixFilePermission == PosixFilePermission.GROUP_READ ? v.GROUP_READ : posixFilePermission == PosixFilePermission.GROUP_WRITE ? v.GROUP_WRITE : posixFilePermission == PosixFilePermission.GROUP_EXECUTE ? v.GROUP_EXECUTE : posixFilePermission == PosixFilePermission.OTHERS_READ ? v.OTHERS_READ : posixFilePermission == PosixFilePermission.OTHERS_WRITE ? v.OTHERS_WRITE : v.OTHERS_EXECUTE);
                } catch (ClassCastException e2) {
                    j$.util.g.a(e2, "java.nio.file.attribute.PosixFilePermission");
                    throw null;
                }
            }
        }
        return hashSet;
    }

    public static void z(Iterable iterable, Consumer consumer) {
        if (iterable instanceof Iterable) {
            ((Iterable) iterable).forEach(consumer);
            return;
        }
        if (!(iterable instanceof Collection)) {
            Iterable.CC.$default$forEach(iterable, consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        Iterator it = ((Collection) iterable).iterator();
        while (it.hasNext()) {
            consumer.r(it.next());
        }
    }
}
