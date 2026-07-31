package org.ocpsoft.prettytime.impl;

import androidx.compose.ui.Modifier;
import j$.util.Objects;
import org.ocpsoft.prettytime.Duration;
import org.ocpsoft.prettytime.TimeUnit;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DurationImpl implements Duration {
    public long delta;
    public long quantity;
    public TimeUnit unit;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DurationImpl.class != obj.getClass()) {
            return false;
        }
        DurationImpl durationImpl = (DurationImpl) obj;
        if (this.delta == durationImpl.delta && this.quantity == durationImpl.quantity) {
            return Objects.equals(this.unit, durationImpl.unit);
        }
        return false;
    }

    public final long getQuantityRounded(int i) {
        long abs = Math.abs(this.quantity);
        long j = this.delta;
        return (j == 0 || Math.abs((((double) j) / ((double) ((ResourcesTimeUnit) this.unit).millisPerUnit)) * 100.0d) <= ((double) i)) ? abs : abs + 1;
    }

    public final int hashCode() {
        long j = this.delta;
        int i = (((int) (j ^ (j >>> 32))) + 31) * 31;
        long j2 = this.quantity;
        return Objects.hashCode(this.unit) + ((i + ((int) (j2 ^ (j2 >>> 32)))) * 31);
    }

    public final boolean isInFuture() {
        return !isInPast();
    }

    public final boolean isInPast() {
        return this.quantity < 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DurationImpl [");
        sb.append(this.quantity);
        sb.append(" ");
        sb.append(this.unit);
        sb.append(", delta=");
        return Modifier.CC.m(this.delta, "]", sb);
    }
}
