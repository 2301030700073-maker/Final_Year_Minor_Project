package com.caverock.androidsvg;

import kotlin.time.Instant;
import kotlin.time.InstantFormatException;
import kotlin.time.InstantParseResult;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IntegerParser implements InstantParseResult {
    public final int pos;
    public final long value;

    public /* synthetic */ IntegerParser(long j, int i) {
        this.value = j;
        this.pos = i;
    }

    public static IntegerParser parseInt(int i, int i2, String str) {
        if (i >= i2) {
            return null;
        }
        long j = 0;
        int i3 = i;
        while (i3 < i2) {
            char charAt = str.charAt(i3);
            if (charAt < '0' || charAt > '9') {
                break;
            }
            j = (j * 10) + (charAt - '0');
            if (j > 2147483647L) {
                return null;
            }
            i3++;
        }
        if (i3 == i) {
            return null;
        }
        return new IntegerParser(j, i3);
    }

    @Override // kotlin.time.InstantParseResult
    public Instant toInstant() {
        Instant instant = Instant.MIN;
        Instant instant2 = Instant.MIN;
        long j = instant2.epochSeconds;
        long j2 = this.value;
        if (j2 >= j) {
            Instant instant3 = Instant.MAX;
            if (j2 <= instant3.epochSeconds) {
                long j3 = this.pos;
                long j4 = j3 / 1000000000;
                if ((j3 ^ 1000000000) < 0 && j4 * 1000000000 != j3) {
                    j4--;
                }
                long j5 = j2 + j4;
                if ((j2 ^ j5) < 0 && (j4 ^ j2) >= 0) {
                    return j2 > 0 ? instant3 : instant2;
                }
                if (j5 >= -31557014167219200L) {
                    if (j5 <= 31556889864403199L) {
                        long j6 = j3 % 1000000000;
                        return new Instant(j5, (int) (j6 + ((((j6 ^ 1000000000) & ((-j6) | j6)) >> 63) & 1000000000)));
                    }
                }
            }
        }
        throw new InstantFormatException("The parsed date is outside the range representable by Instant (Unix epoch second " + j2 + ')');
    }
}
