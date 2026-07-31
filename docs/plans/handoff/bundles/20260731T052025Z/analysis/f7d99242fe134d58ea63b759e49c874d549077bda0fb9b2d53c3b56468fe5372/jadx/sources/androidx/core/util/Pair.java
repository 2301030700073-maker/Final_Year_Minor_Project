package androidx.core.util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Pair {
    public final Object first;
    public final Object second;

    public Pair(Object obj, Object obj2) {
        this.first = obj;
        this.second = obj2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return pair.first.equals(this.first) && pair.second.equals(this.second);
    }

    public final int hashCode() {
        return this.second.hashCode() ^ this.first.hashCode();
    }

    public final String toString() {
        return "Pair{" + this.first + " " + this.second + "}";
    }
}
