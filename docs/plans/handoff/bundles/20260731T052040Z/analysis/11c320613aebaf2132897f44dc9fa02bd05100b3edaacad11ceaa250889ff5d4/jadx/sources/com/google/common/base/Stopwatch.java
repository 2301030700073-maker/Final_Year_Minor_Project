package com.google.common.base;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.upstream.CmcdHeadersFactory;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Stopwatch {
    public long elapsedNanos;
    public boolean isRunning;
    public long startTick;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.google.common.base.Stopwatch$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$java$util$concurrent$TimeUnit;

        static {
            int[] iArr = new int[TimeUnit.values().length];
            $SwitchMap$java$util$concurrent$TimeUnit = iArr;
            try {
                iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$java$util$concurrent$TimeUnit[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$java$util$concurrent$TimeUnit[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$java$util$concurrent$TimeUnit[TimeUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$java$util$concurrent$TimeUnit[TimeUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$java$util$concurrent$TimeUnit[TimeUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$java$util$concurrent$TimeUnit[TimeUnit.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public final String toString() {
        String str;
        long nanoTime = this.isRunning ? (System.nanoTime() - this.startTick) + this.elapsedNanos : this.elapsedNanos;
        TimeUnit timeUnit = nanoTime / 86400000000000L > 0 ? TimeUnit.DAYS : nanoTime / 3600000000000L > 0 ? TimeUnit.HOURS : nanoTime / 60000000000L > 0 ? TimeUnit.MINUTES : nanoTime / C.NANOS_PER_SECOND > 0 ? TimeUnit.SECONDS : nanoTime / 1000000 > 0 ? TimeUnit.MILLISECONDS : nanoTime / 1000 > 0 ? TimeUnit.MICROSECONDS : TimeUnit.NANOSECONDS;
        double convert = nanoTime / r2.convert(1L, timeUnit);
        StringBuilder sb = new StringBuilder();
        int i = Platform.$r8$clinit;
        sb.append(String.format(Locale.ROOT, "%.4g", Double.valueOf(convert)));
        sb.append(" ");
        switch (AnonymousClass1.$SwitchMap$java$util$concurrent$TimeUnit[timeUnit.ordinal()]) {
            case 1:
                str = "ns";
                break;
            case 2:
                str = "μs";
                break;
            case 3:
                str = "ms";
                break;
            case 4:
                str = CmcdHeadersFactory.STREAMING_FORMAT_SS;
                break;
            case 5:
                str = "min";
                break;
            case 6:
                str = CmcdHeadersFactory.STREAMING_FORMAT_HLS;
                break;
            case 7:
                str = "d";
                break;
            default:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return null;
        }
        sb.append(str);
        return sb.toString();
    }
}
