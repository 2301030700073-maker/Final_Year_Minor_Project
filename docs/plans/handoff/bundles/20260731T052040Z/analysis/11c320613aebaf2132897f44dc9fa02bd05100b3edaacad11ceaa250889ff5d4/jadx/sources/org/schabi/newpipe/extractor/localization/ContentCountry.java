package org.schabi.newpipe.extractor.localization;

import java.io.Serializable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ContentCountry implements Serializable {
    public static final ContentCountry DEFAULT = new ContentCountry(Localization.DEFAULT.getCountryCode());
    private final String countryCode;

    public ContentCountry(String str) {
        this.countryCode = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ContentCountry) {
            return this.countryCode.equals(((ContentCountry) obj).countryCode);
        }
        return false;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final int hashCode() {
        return this.countryCode.hashCode();
    }

    public final String toString() {
        return this.countryCode;
    }
}
