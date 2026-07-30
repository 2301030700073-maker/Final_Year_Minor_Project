package j$.time;

import java.io.ObjectInputStream;
import java.io.Serializable;

/* renamed from: j$.time.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C2960b extends c implements Serializable {
    static final C2960b b;
    private static final long serialVersionUID = 6740630888130243051L;
    private final y a;

    static {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        b = new C2960b(ZoneOffset.UTC);
    }

    C2960b(ZoneOffset zoneOffset) {
        this.a = zoneOffset;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
    }

    @Override // j$.time.c
    public final long a() {
        return System.currentTimeMillis();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2960b)) {
            return false;
        }
        return this.a.equals(((C2960b) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode() + 1;
    }

    public final String toString() {
        return "SystemClock[" + this.a + "]";
    }
}
