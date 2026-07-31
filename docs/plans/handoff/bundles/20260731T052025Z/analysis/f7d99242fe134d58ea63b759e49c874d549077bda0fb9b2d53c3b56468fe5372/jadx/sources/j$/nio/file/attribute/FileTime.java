package j$.nio.file.attribute;

import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class FileTime implements Comparable<FileTime> {
    public final long a;
    public Instant b = null;
    public String c;

    public FileTime(long j) {
        this.a = j;
    }

    public static void k(StringBuilder sb, int i, int i2) {
        while (i > 0) {
            sb.append((char) ((i2 / i) + 48));
            i2 %= i;
            i /= 10;
        }
    }

    public static long n(long j, long j2, long j3) {
        if (j > j3) {
            return Long.MAX_VALUE;
        }
        if (j < (-j3)) {
            return Long.MIN_VALUE;
        }
        return j * j2;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof FileTime) && compareTo((FileTime) obj) == 0;
    }

    public final int hashCode() {
        return toInstant().hashCode();
    }

    @Override // java.lang.Comparable
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public final int compareTo(FileTime fileTime) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        if (timeUnit != null) {
            fileTime.getClass();
            return Long.compare(this.a, fileTime.a);
        }
        long epochSecond = toInstant().getEpochSecond();
        int compare = Long.compare(epochSecond, fileTime.toInstant().getEpochSecond());
        if (compare != 0) {
            return compare;
        }
        int compare2 = Long.compare(toInstant().getNano(), fileTime.toInstant().getNano());
        if (compare2 != 0) {
            return compare2;
        }
        if (epochSecond != 31556889864403199L && epochSecond != -31557014167219200L) {
            return 0;
        }
        long epochSecond2 = timeUnit != null ? this.a / 86400000 : toInstant().getEpochSecond() / 86400;
        long epochSecond3 = timeUnit != null ? fileTime.a / 86400000 : fileTime.toInstant().getEpochSecond() / 86400;
        return epochSecond2 == epochSecond3 ? Long.compare(u(epochSecond2), fileTime.u(epochSecond3)) : Long.compare(epochSecond2, epochSecond3);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final j$.time.Instant toInstant() {
        /*
            r12 = this;
            j$.time.Instant r0 = r12.b
            if (r0 != 0) goto La6
            int[] r0 = j$.nio.file.attribute.r.a
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.MILLISECONDS
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r1 = 0
            switch(r0) {
                case 1: goto L74;
                case 2: goto L66;
                case 3: goto L58;
                case 4: goto L52;
                case 5: goto L3e;
                case 6: goto L2b;
                case 7: goto L1a;
                default: goto L12;
            }
        L12:
            java.lang.AssertionError r12 = new java.lang.AssertionError
            java.lang.String r0 = "Unit not handled"
            r12.<init>(r0)
            throw r12
        L1a:
            long r0 = r12.a
            r2 = 1000000000(0x3b9aca00, double:4.94065646E-315)
            long r0 = j$.com.android.tools.r8.a.C(r0, r2)
            long r4 = r12.a
            long r2 = j$.com.android.tools.r8.a.P(r4, r2)
            int r2 = (int) r2
            goto L83
        L2b:
            long r0 = r12.a
            r2 = 1000000(0xf4240, double:4.940656E-318)
            long r0 = j$.com.android.tools.r8.a.C(r0, r2)
            long r4 = r12.a
            long r2 = j$.com.android.tools.r8.a.P(r4, r2)
            int r2 = (int) r2
            int r2 = r2 * 1000
            goto L83
        L3e:
            long r0 = r12.a
            r2 = 1000(0x3e8, double:4.94E-321)
            long r0 = j$.com.android.tools.r8.a.C(r0, r2)
            long r4 = r12.a
            long r2 = j$.com.android.tools.r8.a.P(r4, r2)
            int r2 = (int) r2
            r3 = 1000000(0xf4240, float:1.401298E-39)
            int r2 = r2 * r3
            goto L83
        L52:
            long r2 = r12.a
        L54:
            r10 = r2
            r2 = r1
            r0 = r10
            goto L83
        L58:
            long r4 = r12.a
            r6 = 60
            r8 = 153722867280912930(0x222222222222222, double:2.166167076120538E-298)
            long r2 = n(r4, r6, r8)
            goto L54
        L66:
            long r4 = r12.a
            r6 = 3600(0xe10, double:1.7786E-320)
            r8 = 2562047788015215(0x91a2b3c4d5e6f, double:1.2658197950618743E-308)
            long r2 = n(r4, r6, r8)
            goto L54
        L74:
            long r4 = r12.a
            r6 = 86400(0x15180, double:4.26873E-319)
            r8 = 106751991167300(0x611722833944, double:5.2742491460911E-310)
            long r2 = n(r4, r6, r8)
            goto L54
        L83:
            r3 = -31557014167219200(0xff8fe31014641400, double:-2.7989734602046733E306)
            int r3 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r3 > 0) goto L91
            j$.time.Instant r0 = j$.time.Instant.d
            r12.b = r0
            goto La6
        L91:
            r3 = 31556889864403199(0x701cd2fa9578ff, double:1.434068493154717E-306)
            int r3 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r3 < 0) goto L9f
            j$.time.Instant r0 = j$.time.Instant.e
            r12.b = r0
            goto La6
        L9f:
            long r2 = (long) r2
            j$.time.Instant r0 = j$.time.Instant.ofEpochSecond(r0, r2)
            r12.b = r0
        La6:
            j$.time.Instant r12 = r12.b
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.nio.file.attribute.FileTime.toInstant():j$.time.Instant");
    }

    public long toMillis() {
        if (TimeUnit.MILLISECONDS != null) {
            return this.a;
        }
        long epochSecond = this.b.getEpochSecond();
        long j = epochSecond * 1000;
        return (((Math.abs(epochSecond) | 1000) >>> 31) == 0 || j / 1000 == epochSecond) ? j + (this.b.getNano() / 1000000) : epochSecond < 0 ? Long.MIN_VALUE : Long.MAX_VALUE;
    }

    public final String toString() {
        long epochSecond;
        int nano;
        long j;
        LocalDateTime X;
        int year;
        if (this.c == null) {
            if (this.b != null || TimeUnit.MILLISECONDS.compareTo(TimeUnit.SECONDS) < 0) {
                epochSecond = toInstant().getEpochSecond();
                nano = toInstant().getNano();
            } else {
                epochSecond = this.a / 1000;
                nano = 0;
            }
            if (epochSecond >= -62167219200L) {
                long j2 = epochSecond - 253402300800L;
                j = j$.com.android.tools.r8.a.C(j2, 315569520000L) + 1;
                X = LocalDateTime.X(j$.com.android.tools.r8.a.P(j2, 315569520000L) - 62167219200L, nano, ZoneOffset.UTC);
                year = X.getYear();
            } else {
                long j3 = epochSecond + 62167219200L;
                j = j3 / 315569520000L;
                X = LocalDateTime.X((j3 % 315569520000L) - 62167219200L, nano, ZoneOffset.UTC);
                year = X.getYear();
            }
            int i = (((int) j) * 10000) + year;
            if (i <= 0) {
                i--;
            }
            int nano2 = X.b.getNano();
            StringBuilder sb = new StringBuilder(64);
            sb.append(i < 0 ? "-" : "");
            int abs = Math.abs(i);
            if (abs < 10000) {
                k(sb, 1000, Math.abs(abs));
            } else {
                sb.append(String.valueOf(abs));
            }
            sb.append('-');
            k(sb, 10, X.a.b);
            sb.append('-');
            k(sb, 10, X.a.getDayOfMonth());
            sb.append('T');
            k(sb, 10, X.b.getHour());
            sb.append(':');
            k(sb, 10, X.b.getMinute());
            sb.append(':');
            k(sb, 10, X.b.getSecond());
            if (nano2 != 0) {
                sb.append('.');
                int i2 = 100000000;
                while (nano2 % 10 == 0) {
                    nano2 /= 10;
                    i2 /= 10;
                }
                k(sb, i2, nano2);
            }
            sb.append('Z');
            this.c = sb.toString();
        }
        return this.c;
    }

    public final long u(long j) {
        TimeUnit timeUnit = TimeUnit.DAYS;
        TimeUnit timeUnit2 = TimeUnit.MILLISECONDS;
        if (timeUnit2 != null) {
            return timeUnit2.toNanos(this.a - timeUnit2.convert(j, timeUnit));
        }
        return TimeUnit.SECONDS.toNanos(toInstant().getEpochSecond() - timeUnit.toSeconds(j));
    }
}
