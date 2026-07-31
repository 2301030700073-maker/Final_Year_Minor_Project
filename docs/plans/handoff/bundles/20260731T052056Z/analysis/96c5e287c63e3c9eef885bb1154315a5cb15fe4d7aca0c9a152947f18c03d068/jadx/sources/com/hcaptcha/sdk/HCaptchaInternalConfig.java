package com.hcaptcha.sdk;

import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HCaptchaInternalConfig implements Serializable {
    public HCaptchaHtml htmlProvider;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof HCaptchaInternalConfig) && this.htmlProvider == ((HCaptchaInternalConfig) obj).htmlProvider;
    }

    public final int hashCode() {
        return this.htmlProvider.hashCode() + 59;
    }

    public final String toString() {
        return "HCaptchaInternalConfig(htmlProvider=" + this.htmlProvider + ")";
    }
}
