package androidx.datastore.preferences.core;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
