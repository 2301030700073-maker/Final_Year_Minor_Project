package kotlin.time;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Instant implements Comparable, Serializable {
    private final long epochSeconds;
    private final int nanosecondsOfSecond;
    public static final Instant MIN = new Instant(-31557014167219200L, 0);
    public static final Instant MAX = new Instant(31556889864403199L, 999999999);

    public Instant(long j, int i) {
        this.epochSeconds = j;
        this.nanosecondsOfSecond = i;
        if (-31557014167219200L > j || j >= 31556889864403200L) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Instant exceeds minimum or maximum instant");
            throw null;
        }
    }

    private final void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        Instant instant = (Instant) obj;
        instant.getClass();
        int compare = Intrinsics.compare(this.epochSeconds, instant.epochSeconds);
        return compare != 0 ? compare : Intrinsics.compare(this.nanosecondsOfSecond, instant.nanosecondsOfSecond);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Instant)) {
            return false;
        }
        Instant instant = (Instant) obj;
        return this.epochSeconds == instant.epochSeconds && this.nanosecondsOfSecond == instant.nanosecondsOfSecond;
    }

    public final long getEpochSeconds() {
        return this.epochSeconds;
    }

    public final int hashCode() {
        long j = this.epochSeconds;
        return (this.nanosecondsOfSecond * 51) + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        long j;
        int[] iArr;
        StringBuilder sb = new StringBuilder();
        long j2 = this.epochSeconds;
        long j3 = j2 / 86400;
        if ((j2 ^ 86400) < 0 && j3 * 86400 != j2) {
            j3--;
        }
        long j4 = j2 % 86400;
        int i = (int) (j4 + (86400 & (((j4 ^ 86400) & ((-j4) | j4)) >> 63)));
        long j5 = 719468 + j3;
        if (j5 < 0) {
            long j6 = ((j3 + 719469) / 146097) - 1;
            j = j6 * 400;
            j5 += (-j6) * 146097;
        } else {
            j = 0;
        }
        long j7 = ((400 * j5) + 591) / 146097;
        long j8 = j5 - ((j7 / 400) + (((j7 / 4) + (365 * j7)) - (j7 / 100)));
        if (j8 < 0) {
            j7--;
            j8 = j5 - ((j7 / 400) + (((j7 / 4) + (365 * j7)) - (j7 / 100)));
        }
        int i2 = (int) j8;
        int i3 = ((i2 * 5) + 2) / Token.SETPROP_OP;
        int i4 = ((i3 + 2) % 12) + 1;
        int i5 = (i2 - (((i3 * 306) + 5) / 10)) + 1;
        int i6 = (int) (j7 + j + (i3 / 10));
        int i7 = i / 3600;
        int i8 = i - (i7 * 3600);
        int i9 = i8 / 60;
        int i10 = i8 - (i9 * 60);
        int i11 = this.nanosecondsOfSecond;
        int i12 = 0;
        if (Math.abs(i6) < 1000) {
            StringBuilder sb2 = new StringBuilder();
            if (i6 >= 0) {
                sb2.append(i6 + 10000);
                sb2.deleteCharAt(0).getClass();
            } else {
                sb2.append(i6 - 10000);
                sb2.deleteCharAt(1).getClass();
            }
            sb.append((CharSequence) sb2);
        } else {
            if (i6 >= 10000) {
                sb.append('+');
            }
            sb.append(i6);
        }
        sb.append('-');
        InstantKt.formatIso$lambda$0$appendTwoDigits(sb, sb, i4);
        sb.append('-');
        InstantKt.formatIso$lambda$0$appendTwoDigits(sb, sb, i5);
        sb.append('T');
        InstantKt.formatIso$lambda$0$appendTwoDigits(sb, sb, i7);
        sb.append(':');
        InstantKt.formatIso$lambda$0$appendTwoDigits(sb, sb, i9);
        sb.append(':');
        InstantKt.formatIso$lambda$0$appendTwoDigits(sb, sb, i10);
        if (i11 != 0) {
            sb.append('.');
            while (true) {
                int i13 = i12 + 1;
                iArr = InstantKt.POWERS_OF_TEN;
                if (i11 % iArr[i13] != 0) {
                    break;
                }
                i12 = i13;
            }
            int i14 = i12 - (i12 % 3);
            String valueOf = String.valueOf((i11 / iArr[i14]) + iArr[9 - i14]);
            valueOf.getClass();
            sb.append(valueOf.substring(1));
        }
        sb.append('Z');
        return sb.toString();
    }
}
