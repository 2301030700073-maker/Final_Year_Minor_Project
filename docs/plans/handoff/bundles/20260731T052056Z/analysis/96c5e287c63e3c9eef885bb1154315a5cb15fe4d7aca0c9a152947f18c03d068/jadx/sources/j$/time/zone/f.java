package j$.time.zone;

import j$.time.DayOfWeek;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import j$.time.Month;
import j$.time.ZoneOffset;
import j$.time.chrono.p;
import j$.time.temporal.l;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.TimeZone;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class f implements Serializable {
    public static final long[] i = new long[0];
    public static final e[] j = new e[0];
    public static final LocalDateTime[] k = new LocalDateTime[0];
    public static final b[] l = new b[0];
    private static final long serialVersionUID = 3044319355680032515L;
    public final long[] a;
    public final ZoneOffset[] b;
    public final long[] c;
    public final LocalDateTime[] d;
    public final ZoneOffset[] e;
    public final e[] f;
    public final TimeZone g;
    public final transient ConcurrentHashMap h = new ConcurrentHashMap();

    public f(long[] jArr, ZoneOffset[] zoneOffsetArr, long[] jArr2, ZoneOffset[] zoneOffsetArr2, e[] eVarArr) {
        this.a = jArr;
        this.b = zoneOffsetArr;
        this.c = jArr2;
        this.e = zoneOffsetArr2;
        this.f = eVarArr;
        if (jArr2.length == 0) {
            this.d = k;
        } else {
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            while (i2 < jArr2.length) {
                ZoneOffset zoneOffset = zoneOffsetArr2[i2];
                int i3 = i2 + 1;
                ZoneOffset zoneOffset2 = zoneOffsetArr2[i3];
                LocalDateTime w = LocalDateTime.w(jArr2[i2], 0, zoneOffset);
                if (zoneOffset2.b > zoneOffset.b) {
                    arrayList.add(w);
                    arrayList.add(w.y(zoneOffset2.b - zoneOffset.b));
                } else {
                    arrayList.add(w.y(r3 - r4));
                    arrayList.add(w);
                }
                i2 = i3;
            }
            this.d = (LocalDateTime[]) arrayList.toArray(new LocalDateTime[arrayList.size()]);
        }
        this.g = null;
    }

    public static Object a(LocalDateTime localDateTime, b bVar) {
        LocalDateTime localDateTime2 = bVar.b;
        if (bVar.f()) {
            if (localDateTime.isBefore(localDateTime2)) {
                return bVar.c;
            }
            if (!localDateTime.isBefore(bVar.b.y(bVar.d.b - bVar.c.b))) {
                return bVar.d;
            }
        } else {
            if (!localDateTime.isBefore(localDateTime2)) {
                return bVar.d;
            }
            if (localDateTime.isBefore(bVar.b.y(bVar.d.b - bVar.c.b))) {
                return bVar.c;
            }
        }
        return bVar;
    }

    public static int c(long j2, ZoneOffset zoneOffset) {
        return LocalDate.ofEpochDay(j$.time.a.T(j2 + zoneOffset.b, 86400L)).getYear();
    }

    public static ZoneOffset h(int i2) {
        return ZoneOffset.D(i2 / 1000);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new a(this.g != null ? (byte) 100 : (byte) 1, this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final b[] b(int i2) {
        LocalDate of;
        b[] bVarArr = l;
        Integer valueOf = Integer.valueOf(i2);
        b[] bVarArr2 = (b[]) this.h.get(valueOf);
        if (bVarArr2 != null) {
            return bVarArr2;
        }
        long j2 = 1;
        int i3 = 1;
        if (this.g == null) {
            e[] eVarArr = this.f;
            b[] bVarArr3 = new b[eVarArr.length];
            for (int i4 = 0; i4 < eVarArr.length; i4++) {
                e eVar = eVarArr[i4];
                byte b = eVar.b;
                Month month = eVar.a;
                int i5 = 2;
                if (b < 0) {
                    of = LocalDate.of(i2, month, month.v(p.c.isLeapYear(i2)) + 1 + eVar.b);
                    DayOfWeek dayOfWeek = eVar.c;
                    if (dayOfWeek != null) {
                        of = of.g(new l(dayOfWeek.getValue(), i5));
                    }
                } else {
                    of = LocalDate.of(i2, month, b);
                    DayOfWeek dayOfWeek2 = eVar.c;
                    if (dayOfWeek2 != null) {
                        of = of.g(new l(dayOfWeek2.getValue(), i3));
                    }
                }
                if (eVar.e) {
                    of = of.plusDays(1L);
                }
                LocalDateTime of2 = LocalDateTime.of(of, eVar.d);
                d dVar = eVar.f;
                ZoneOffset zoneOffset = eVar.g;
                ZoneOffset zoneOffset2 = eVar.h;
                dVar.getClass();
                int i6 = c.a[dVar.ordinal()];
                if (i6 == 1) {
                    of2 = of2.y(zoneOffset2.b - ZoneOffset.UTC.b);
                } else if (i6 == 2) {
                    of2 = of2.y(zoneOffset2.b - zoneOffset.b);
                }
                bVarArr3[i4] = new b(of2, eVar.h, eVar.i);
            }
            if (i2 < 2100) {
                this.h.putIfAbsent(valueOf, bVarArr3);
            }
            return bVarArr3;
        }
        if (i2 < 1800) {
            return bVarArr;
        }
        LocalDateTime localDateTime = LocalDateTime.c;
        LocalDate of3 = LocalDate.of(i2 - 1, 12, 31);
        j$.time.temporal.a.HOUR_OF_DAY.o(0L);
        long w = j$.time.a.w(new LocalDateTime(of3, LocalTime.g[0]), this.b[0]);
        long j3 = 1000;
        int offset = this.g.getOffset(w * 1000);
        long j4 = 31968000 + w;
        while (w < j4) {
            long j5 = w + 7776000;
            long j6 = j3;
            if (offset != this.g.getOffset(j5 * j6)) {
                while (j5 - w > j2) {
                    long T = j$.time.a.T(j5 + w, 2L);
                    if (this.g.getOffset(T * j6) == offset) {
                        w = T;
                    } else {
                        j5 = T;
                    }
                    j2 = 1;
                }
                if (this.g.getOffset(w * j6) == offset) {
                    w = j5;
                }
                ZoneOffset h = h(offset);
                int offset2 = this.g.getOffset(w * j6);
                ZoneOffset h2 = h(offset2);
                if (c(w, h2) == i2) {
                    bVarArr = (b[]) Arrays.copyOf(bVarArr, bVarArr.length + 1);
                    bVarArr[bVarArr.length - 1] = new b(w, h, h2);
                }
                offset = offset2;
            } else {
                w = j5;
            }
            j3 = j6;
            j2 = 1;
        }
        if (1916 <= i2 && i2 < 2100) {
            this.h.putIfAbsent(valueOf, bVarArr);
        }
        return bVarArr;
    }

    public final ZoneOffset d(Instant instant) {
        TimeZone timeZone = this.g;
        if (timeZone != null) {
            return h(timeZone.getOffset(instant.toEpochMilli()));
        }
        if (this.c.length == 0) {
            return this.b[0];
        }
        long epochSecond = instant.getEpochSecond();
        if (this.f.length > 0) {
            if (epochSecond > this.c[r7.length - 1]) {
                b[] b = b(c(epochSecond, this.e[r7.length - 1]));
                b bVar = null;
                for (int i2 = 0; i2 < b.length; i2++) {
                    bVar = b[i2];
                    if (epochSecond < bVar.a) {
                        return bVar.c;
                    }
                }
                return bVar.d;
            }
        }
        int binarySearch = Arrays.binarySearch(this.c, epochSecond);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 2;
        }
        return this.e[binarySearch + 1];
    }

    public final Object e(LocalDateTime localDateTime) {
        Object obj = null;
        int i2 = 0;
        if (this.g != null) {
            b[] b = b(localDateTime.getYear());
            if (b.length == 0) {
                return h(this.g.getOffset(j$.time.a.w(localDateTime, this.b[0]) * 1000));
            }
            int length = b.length;
            while (i2 < length) {
                b bVar = b[i2];
                Object a = a(localDateTime, bVar);
                if ((a instanceof b) || a.equals(bVar.c)) {
                    return a;
                }
                i2++;
                obj = a;
            }
            return obj;
        }
        if (this.c.length == 0) {
            return this.b[0];
        }
        if (this.f.length > 0) {
            if (localDateTime.isAfter(this.d[r0.length - 1])) {
                b[] b2 = b(localDateTime.getYear());
                int length2 = b2.length;
                while (i2 < length2) {
                    b bVar2 = b2[i2];
                    Object a2 = a(localDateTime, bVar2);
                    if ((a2 instanceof b) || a2.equals(bVar2.c)) {
                        return a2;
                    }
                    i2++;
                    obj = a2;
                }
                return obj;
            }
        }
        int binarySearch = Arrays.binarySearch(this.d, localDateTime);
        if (binarySearch == -1) {
            return this.e[0];
        }
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 2;
        } else {
            Object[] objArr = this.d;
            if (binarySearch < objArr.length - 1) {
                int i3 = binarySearch + 1;
                if (objArr[binarySearch].equals(objArr[i3])) {
                    binarySearch = i3;
                }
            }
        }
        if ((binarySearch & 1) != 0) {
            return this.e[(binarySearch / 2) + 1];
        }
        LocalDateTime[] localDateTimeArr = this.d;
        LocalDateTime localDateTime2 = localDateTimeArr[binarySearch];
        LocalDateTime localDateTime3 = localDateTimeArr[binarySearch + 1];
        ZoneOffset[] zoneOffsetArr = this.e;
        int i4 = binarySearch / 2;
        ZoneOffset zoneOffset = zoneOffsetArr[i4];
        ZoneOffset zoneOffset2 = zoneOffsetArr[i4 + 1];
        return zoneOffset2.b > zoneOffset.b ? new b(localDateTime2, zoneOffset, zoneOffset2) : new b(localDateTime3, zoneOffset, zoneOffset2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return Objects.equals(this.g, fVar.g) && Arrays.equals(this.a, fVar.a) && Arrays.equals(this.b, fVar.b) && Arrays.equals(this.c, fVar.c) && Arrays.equals(this.e, fVar.e) && Arrays.equals(this.f, fVar.f);
    }

    public final List f(LocalDateTime localDateTime) {
        Object e = e(localDateTime);
        if (!(e instanceof b)) {
            return Collections.singletonList((ZoneOffset) e);
        }
        b bVar = (b) e;
        return bVar.f() ? Collections.EMPTY_LIST : j$.time.a.Q(new Object[]{bVar.c, bVar.d});
    }

    public final boolean g(Instant instant) {
        ZoneOffset zoneOffset;
        TimeZone timeZone = this.g;
        if (timeZone != null) {
            zoneOffset = h(timeZone.getRawOffset());
        } else if (this.c.length == 0) {
            zoneOffset = this.b[0];
        } else {
            int binarySearch = Arrays.binarySearch(this.a, instant.getEpochSecond());
            if (binarySearch < 0) {
                binarySearch = (-binarySearch) - 2;
            }
            zoneOffset = this.b[binarySearch + 1];
        }
        return !zoneOffset.equals(d(instant));
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f) ^ ((((Objects.hashCode(this.g) ^ Arrays.hashCode(this.a)) ^ Arrays.hashCode(this.b)) ^ Arrays.hashCode(this.c)) ^ Arrays.hashCode(this.e));
    }

    public final String toString() {
        TimeZone timeZone = this.g;
        if (timeZone != null) {
            return "ZoneRules[timeZone=" + timeZone.getID() + "]";
        }
        return "ZoneRules[currentStandardOffset=" + this.b[r3.length - 1] + "]";
    }

    public f(ZoneOffset zoneOffset) {
        ZoneOffset[] zoneOffsetArr = {zoneOffset};
        this.b = zoneOffsetArr;
        long[] jArr = i;
        this.a = jArr;
        this.c = jArr;
        this.d = k;
        this.e = zoneOffsetArr;
        this.f = j;
        this.g = null;
    }

    public f(TimeZone timeZone) {
        ZoneOffset[] zoneOffsetArr = {h(timeZone.getRawOffset())};
        this.b = zoneOffsetArr;
        long[] jArr = i;
        this.a = jArr;
        this.c = jArr;
        this.d = k;
        this.e = zoneOffsetArr;
        this.f = j;
        this.g = timeZone;
    }
}
