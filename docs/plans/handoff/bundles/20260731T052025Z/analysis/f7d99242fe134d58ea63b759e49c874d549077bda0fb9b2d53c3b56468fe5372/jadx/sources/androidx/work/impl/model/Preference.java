package androidx.work.impl.model;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Preference {
    public final String key;
    public final Long value;

    public Preference(String str, Long l) {
        this.key = str;
        this.value = l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Preference)) {
            return false;
        }
        Preference preference = (Preference) obj;
        return this.key.equals(preference.key) && this.value.equals(preference.value);
    }

    public final int hashCode() {
        return this.value.hashCode() + (this.key.hashCode() * 31);
    }

    public final String toString() {
        return "Preference(key=" + this.key + ", value=" + this.value + ')';
    }
}
