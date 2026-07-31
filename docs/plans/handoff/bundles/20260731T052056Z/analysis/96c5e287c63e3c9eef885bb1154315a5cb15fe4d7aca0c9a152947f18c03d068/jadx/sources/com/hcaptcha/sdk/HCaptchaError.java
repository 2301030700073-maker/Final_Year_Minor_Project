package com.hcaptcha.sdk;

import androidx.compose.animation.core.Animation;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public enum HCaptchaError implements Serializable {
    NETWORK_ERROR("NETWORK_ERROR", "No internet connection"),
    INVALID_DATA("INVALID_DATA", "Invalid data is not accepted by endpoints"),
    CHALLENGE_ERROR("CHALLENGE_ERROR", "Challenge encountered error on setup"),
    INTERNAL_ERROR("INTERNAL_ERROR", "hCaptcha client encountered an internal error"),
    SESSION_TIMEOUT("SESSION_TIMEOUT", "Session Timeout"),
    TOKEN_TIMEOUT("TOKEN_TIMEOUT", "Token Timeout"),
    CHALLENGE_CLOSED("CHALLENGE_CLOSED", "Challenge Closed"),
    RATE_LIMITED("RATE_LIMITED", "Rate Limited"),
    INVALID_CUSTOM_THEME("INVALID_CUSTOM_THEME", "Invalid custom theme"),
    INSECURE_HTTP_REQUEST_ERROR("INSECURE_HTTP_REQUEST_ERROR", "Insecure resource requested"),
    VERIFY_PARAMS_ERROR("VERIFY_PARAMS_ERROR", "Error handling verify parameters"),
    ERROR("ERROR", "Unknown error");

    private final int errorId;
    private final String message;

    HCaptchaError(String str, String str2) {
        this.errorId = r2;
        this.message = str2;
    }

    public static HCaptchaError fromId(int i) {
        for (HCaptchaError hCaptchaError : values()) {
            if (hCaptchaError.errorId == i) {
                return hCaptchaError;
            }
        }
        Gson$$ExternalSyntheticBUOutline0.m$1(Animation.CC.m(i, "Unsupported error id: "));
        return null;
    }

    public final int getErrorId() {
        return this.errorId;
    }

    public final String getMessage() {
        return this.message;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.message;
    }
}
