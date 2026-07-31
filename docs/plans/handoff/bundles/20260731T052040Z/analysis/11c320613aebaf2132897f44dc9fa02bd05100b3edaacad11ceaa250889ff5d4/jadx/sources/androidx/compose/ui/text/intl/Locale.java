package androidx.compose.ui.text.intl;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
