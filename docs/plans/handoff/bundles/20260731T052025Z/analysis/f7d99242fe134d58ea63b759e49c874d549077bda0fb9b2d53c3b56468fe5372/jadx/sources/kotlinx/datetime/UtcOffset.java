package kotlinx.datetime;

import j$.time.ZoneOffset;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.serializers.UtcOffsetSerializer;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Serializable(with = UtcOffsetSerializer.class)
/* loaded from: classes.dex */
public final class UtcOffset implements java.io.Serializable {
    public static final Companion Companion = new Companion();
    public static final UtcOffset ZERO;
    public final ZoneOffset zoneOffset;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public final KSerializer serializer() {
            return UtcOffsetSerializer.INSTANCE;
        }
    }

    static {
        ZoneOffset zoneOffset = ZoneOffset.UTC;
        zoneOffset.getClass();
        ZERO = new UtcOffset(zoneOffset);
    }

    public UtcOffset(ZoneOffset zoneOffset) {
        zoneOffset.getClass();
        this.zoneOffset = zoneOffset;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof UtcOffset) {
            return Intrinsics.areEqual(this.zoneOffset, ((UtcOffset) obj).zoneOffset);
        }
        return false;
    }

    public final int hashCode() {
        return this.zoneOffset.hashCode();
    }

    public final String toString() {
        String zoneOffset = this.zoneOffset.toString();
        zoneOffset.getClass();
        return zoneOffset;
    }
}
