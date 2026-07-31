package org.schabi.newpipe.extractor.localization;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import j$.util.Objects;
import java.io.Serializable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Localization implements Serializable {
    public static final Localization DEFAULT = new Localization("en", "GB");
    private final String countryCode;
    private final String languageCode;

    public Localization(String str, String str2) {
        this.languageCode = str;
        this.countryCode = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Localization)) {
            return false;
        }
        Localization localization = (Localization) obj;
        return this.languageCode.equals(localization.languageCode) && Objects.equals(this.countryCode, localization.countryCode);
    }

    public final String getCountryCode() {
        String str = this.countryCode;
        return str == null ? "" : str;
    }

    public final String getLanguageCode() {
        return this.languageCode;
    }

    public final String getLocalizationCode() {
        String str = this.languageCode;
        String str2 = this.countryCode;
        return Owner.CC.m$1(str, str2 == null ? "" : Owner.CC.m("-", str2));
    }

    public final int hashCode() {
        return Objects.hashCode(this.countryCode) + (this.languageCode.hashCode() * 31);
    }

    public final String toString() {
        return Modifier.CC.m("Localization[", getLocalizationCode(), "]");
    }
}
