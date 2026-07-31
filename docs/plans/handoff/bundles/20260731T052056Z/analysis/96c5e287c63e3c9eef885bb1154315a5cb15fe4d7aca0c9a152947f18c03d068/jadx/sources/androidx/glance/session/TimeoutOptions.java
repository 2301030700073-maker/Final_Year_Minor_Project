package androidx.glance.session;

import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.InstantKt;
import okio.Path;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TimeoutOptions {
    public final long additionalTime;
    public final long idleTimeout;
    public final long initialTimeout;

    public TimeoutOptions() {
        Path.Companion companion = Duration.Companion;
        DurationUnit durationUnit = DurationUnit.SECONDS;
        long duration = InstantKt.toDuration(45, durationUnit);
        long duration2 = InstantKt.toDuration(5, durationUnit);
        long duration3 = InstantKt.toDuration(5, durationUnit);
        this.initialTimeout = duration;
        this.additionalTime = duration2;
        this.idleTimeout = duration3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TimeoutOptions)) {
            return false;
        }
        TimeoutOptions timeoutOptions = (TimeoutOptions) obj;
        long j = timeoutOptions.initialTimeout;
        Path.Companion companion = Duration.Companion;
        return this.initialTimeout == j && this.additionalTime == timeoutOptions.additionalTime && this.idleTimeout == timeoutOptions.idleTimeout;
    }

    public final int hashCode() {
        Path.Companion companion = Duration.Companion;
        long j = this.initialTimeout;
        long j2 = this.additionalTime;
        int i = (((int) (j2 ^ (j2 >>> 32))) + (((int) (j ^ (j >>> 32))) * 31)) * 31;
        long j3 = this.idleTimeout;
        return TimeSource$Companion.Monotonic.hashCode() + ((((int) (j3 ^ (j3 >>> 32))) + i) * 31);
    }

    public final String toString() {
        return "TimeoutOptions(initialTimeout=" + ((Object) Duration.m855toStringimpl(this.initialTimeout)) + ", additionalTime=" + ((Object) Duration.m855toStringimpl(this.additionalTime)) + ", idleTimeout=" + ((Object) Duration.m855toStringimpl(this.idleTimeout)) + ", timeSource=" + TimeSource$Companion.Monotonic + ')';
    }
}
