package org.maplibre.android.annotations;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Annotation implements Comparable {
    public long id;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        long j = this.id;
        long j2 = ((Annotation) obj).id;
        if (j < j2) {
            return 1;
        }
        return j > j2 ? -1 : 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && (obj instanceof Annotation) && this.id == ((Annotation) obj).id;
    }

    public final int hashCode() {
        long j = this.id;
        return (int) (j ^ (j >>> 32));
    }
}
