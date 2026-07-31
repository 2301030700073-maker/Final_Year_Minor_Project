package net.thunderbird.core.common.cache;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Clock;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.Instant;
import kotlin.time.InstantKt;
import net.thunderbird.core.common.mail.EmailAddress;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TimeLimitedCache implements Cache {
    public static final long DEFAULT_EXPIRATION_TIME;
    public final Map cache;
    public final Clock clock;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Entry {
        public final Instant creationTime;
        public final Instant expiresAt;
        public final long expiresIn;
        public final Long value;

        public Entry(Long l, Instant instant, long j) {
            Instant fromEpochSeconds;
            instant.getClass();
            Duration.Companion companion = Duration.Companion;
            long m1001toLongimpl = Duration.m1001toLongimpl(j, DurationUnit.SECONDS);
            int m997getNanosecondsComponentimpl = Duration.m997getNanosecondsComponentimpl(j);
            if (m1001toLongimpl == 0 && m997getNanosecondsComponentimpl == 0) {
                fromEpochSeconds = instant;
            } else {
                long j2 = instant.epochSeconds;
                long j3 = j2 + m1001toLongimpl;
                if ((j2 ^ j3) >= 0 || (m1001toLongimpl ^ j2) < 0) {
                    int i = instant.nanosecondsOfSecond + m997getNanosecondsComponentimpl;
                    Instant instant2 = Instant.MIN;
                    fromEpochSeconds = InstantKt.fromEpochSeconds(i, j3);
                } else {
                    fromEpochSeconds = j > 0 ? Instant.MAX : Instant.MIN;
                }
            }
            instant.getClass();
            fromEpochSeconds.getClass();
            this.value = l;
            this.creationTime = instant;
            this.expiresIn = j;
            this.expiresAt = fromEpochSeconds;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            return Intrinsics.areEqual(this.value, entry.value) && Intrinsics.areEqual(this.creationTime, entry.creationTime) && Duration.m995equalsimpl0(this.expiresIn, entry.expiresIn) && Intrinsics.areEqual(this.expiresAt, entry.expiresAt);
        }

        public final int hashCode() {
            Long l = this.value;
            return this.expiresAt.hashCode() + ((Duration.m998hashCodeimpl(this.expiresIn) + ((this.creationTime.hashCode() + ((l == null ? 0 : l.hashCode()) * 31)) * 31)) * 31);
        }

        public final String toString() {
            return "Entry(value=" + this.value + ", creationTime=" + this.creationTime + ", expiresIn=" + Duration.m1002toStringimpl(this.expiresIn) + ", expiresAt=" + this.expiresAt + ")";
        }
    }

    static {
        Duration.Companion companion = Duration.Companion;
        DEFAULT_EXPIRATION_TIME = InstantKt.toDuration(1, DurationUnit.HOURS);
    }

    public TimeLimitedCache() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.clock = Clock.System.INSTANCE;
        this.cache = linkedHashMap;
    }

    /* renamed from: set-SxA4cEA$default, reason: not valid java name */
    public static void m1025setSxA4cEA$default(TimeLimitedCache timeLimitedCache, Object obj, Long l) {
        timeLimitedCache.getClass();
        obj.getClass();
        timeLimitedCache.cache.put(obj, new Entry(l, timeLimitedCache.clock.now(), DEFAULT_EXPIRATION_TIME));
    }

    @Override // net.thunderbird.core.common.cache.Cache
    public final void clear() {
        this.cache.clear();
    }

    @Override // net.thunderbird.core.common.cache.Cache
    public final Object get(Object obj) {
        obj.getClass();
        Map map = this.cache;
        Entry entry = (Entry) map.get(obj);
        if (entry != null) {
            Instant instant = entry.expiresAt;
            Instant now = this.clock.now();
            instant.getClass();
            now.getClass();
            int compare = Intrinsics.compare(instant.epochSeconds, now.epochSeconds);
            if (compare == 0) {
                compare = Intrinsics.compare(instant.nanosecondsOfSecond, now.nanosecondsOfSecond);
            }
            if (compare < 0) {
                map.remove(obj);
            }
        }
        return (Entry) map.get(obj);
    }

    @Override // net.thunderbird.core.common.cache.Cache
    public final boolean hasKey(Object obj) {
        obj.getClass();
        Map map = this.cache;
        Entry entry = (Entry) map.get(obj);
        if (entry != null) {
            Instant instant = entry.expiresAt;
            Instant now = this.clock.now();
            instant.getClass();
            now.getClass();
            int compare = Intrinsics.compare(instant.epochSeconds, now.epochSeconds);
            if (compare == 0) {
                compare = Intrinsics.compare(instant.nanosecondsOfSecond, now.nanosecondsOfSecond);
            }
            if (compare < 0) {
                map.remove(obj);
            }
        }
        return map.containsKey(obj);
    }

    @Override // net.thunderbird.core.common.cache.Cache
    public final void set(EmailAddress emailAddress, Object obj) {
        Entry entry = (Entry) obj;
        entry.getClass();
        this.cache.put(emailAddress, entry);
    }
}
