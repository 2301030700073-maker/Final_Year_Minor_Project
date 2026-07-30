package j$.time.zone;

import j$.time.AbstractC2959a;
import j$.time.Duration;
import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import j$.time.chrono.AbstractC2962b;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class b implements Comparable, Serializable {
    private static final long serialVersionUID = -6946044323557704546L;
    private final long a;
    private final LocalDateTime b;
    private final ZoneOffset c;
    private final ZoneOffset d;

    b(long j, ZoneOffset zoneOffset, ZoneOffset zoneOffset2) {
        this.a = j;
        this.b = LocalDateTime.M(j, 0, zoneOffset);
        this.c = zoneOffset;
        this.d = zoneOffset2;
    }

    b(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneOffset zoneOffset2) {
        localDateTime.getClass();
        this.a = AbstractC2962b.p(localDateTime, zoneOffset);
        this.b = localDateTime;
        this.c = zoneOffset;
        this.d = zoneOffset2;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new a((byte) 2, this);
    }

    public final long C() {
        return this.a;
    }

    final void D(DataOutput dataOutput) {
        a.c(this.a, dataOutput);
        a.d(this.c, dataOutput);
        a.d(this.d, dataOutput);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Long.compare(this.a, ((b) obj).a);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.a == bVar.a && this.c.equals(bVar.c) && this.d.equals(bVar.d);
    }

    public final int hashCode() {
        return (this.b.hashCode() ^ this.c.hashCode()) ^ Integer.rotateLeft(this.d.hashCode(), 16);
    }

    public final LocalDateTime i() {
        return this.b.O(this.d.J() - this.c.J());
    }

    public final LocalDateTime j() {
        return this.b;
    }

    public final Duration k() {
        return Duration.r(this.d.J() - this.c.J());
    }

    public final ZoneOffset n() {
        return this.d;
    }

    public final ZoneOffset r() {
        return this.c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Transition[");
        sb.append(y() ? "Gap" : "Overlap");
        sb.append(" at ");
        sb.append(this.b);
        sb.append(this.c);
        sb.append(" to ");
        sb.append(this.d);
        sb.append(']');
        return sb.toString();
    }

    final List v() {
        return y() ? Collections.emptyList() : AbstractC2959a.f(new Object[]{this.c, this.d});
    }

    public final boolean y() {
        return this.d.J() > this.c.J();
    }
}
