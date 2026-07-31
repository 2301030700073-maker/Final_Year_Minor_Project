package com.hcaptcha.sdk;

import com.fasterxml.jackson.annotation.JsonValue;
import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public enum HCaptchaOrientation implements Serializable {
    PORTRAIT("portrait"),
    LANDSCAPE("landscape");

    private final String orientation;

    HCaptchaOrientation(String str) {
        this.orientation = str;
    }

    @Override // java.lang.Enum
    @JsonValue
    public String toString() {
        return this.orientation;
    }
}
