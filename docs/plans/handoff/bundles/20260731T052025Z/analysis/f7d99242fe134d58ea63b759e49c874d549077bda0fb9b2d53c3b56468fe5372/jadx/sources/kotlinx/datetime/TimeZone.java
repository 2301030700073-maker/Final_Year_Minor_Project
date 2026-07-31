package kotlinx.datetime;

import j$.time.ZoneId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class TimeZone {
    public static final FixedOffsetTimeZone UTC;
    public final ZoneId zoneId;

    static {
        UtcOffset.Companion.getClass();
        UtcOffset utcOffset = UtcOffset.ZERO;
        ZoneId of = ZoneId.of("UTC");
        of.getClass();
        utcOffset.getClass();
        UTC = new FixedOffsetTimeZone(of);
    }

    public TimeZone(ZoneId zoneId) {
        this.zoneId = zoneId;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TimeZone) {
            return this.zoneId.equals(((TimeZone) obj).zoneId);
        }
        return false;
    }

    public final int hashCode() {
        return this.zoneId.hashCode();
    }

    public final String toString() {
        String zoneId = this.zoneId.toString();
        zoneId.getClass();
        return zoneId;
    }
}
