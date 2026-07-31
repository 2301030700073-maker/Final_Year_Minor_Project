package androidx.datastore.preferences.core;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Preferences$Key {
    public final String name;

    public Preferences$Key(String str) {
        this.name = str;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Preferences$Key)) {
            return false;
        }
        return this.name.equals(((Preferences$Key) obj).name);
    }

    public final int hashCode() {
        return this.name.hashCode();
    }

    public final String toString() {
        return this.name;
    }
}
