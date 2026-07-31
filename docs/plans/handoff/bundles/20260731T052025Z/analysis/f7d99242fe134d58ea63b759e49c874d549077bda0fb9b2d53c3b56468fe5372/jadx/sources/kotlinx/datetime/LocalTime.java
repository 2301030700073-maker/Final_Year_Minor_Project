package kotlinx.datetime;

import j$.time.DateTimeException;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.serializers.LocalTimeSerializer;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Serializable(with = LocalTimeSerializer.class)
/* loaded from: classes.dex */
public final class LocalTime implements Comparable<LocalTime>, java.io.Serializable {
    public static final Companion Companion = new Companion();
    public final j$.time.LocalTime value;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public final KSerializer serializer() {
            return LocalTimeSerializer.INSTANCE;
        }
    }

    static {
        j$.time.LocalTime localTime = j$.time.LocalTime.MIN;
        localTime.getClass();
        new LocalTime(localTime);
        j$.time.LocalTime localTime2 = j$.time.LocalTime.MAX;
        localTime2.getClass();
        new LocalTime(localTime2);
    }

    public LocalTime(int i, int i2, int i3, int i4) {
        try {
            j$.time.LocalTime of = j$.time.LocalTime.of(i, i2, i3, i4);
            of.getClass();
            this.value = of;
        } catch (DateTimeException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(LocalTime localTime) {
        LocalTime localTime2 = localTime;
        localTime2.getClass();
        return this.value.compareTo(localTime2.value);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalTime) {
            return Intrinsics.areEqual(this.value, ((LocalTime) obj).value);
        }
        return false;
    }

    public final int hashCode() {
        return this.value.hashCode();
    }

    public final String toString() {
        String localTime = this.value.toString();
        localTime.getClass();
        return localTime;
    }

    public LocalTime(j$.time.LocalTime localTime) {
        localTime.getClass();
        this.value = localTime;
    }
}
