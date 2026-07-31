package androidx.compose.ui.text.intl;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Locale {
    public final java.util.Locale platformLocale;

    public Locale(java.util.Locale locale) {
        this.platformLocale = locale;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Locale)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        return Intrinsics.areEqual(this.platformLocale.toLanguageTag(), ((Locale) obj).platformLocale.toLanguageTag());
    }

    public final int hashCode() {
        return this.platformLocale.toLanguageTag().hashCode();
    }

    public final String toString() {
        return this.platformLocale.toLanguageTag();
    }
}
