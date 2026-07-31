package com.hcaptcha.sdk;

import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HCaptchaException extends Exception {
    public final HCaptchaError hCaptchaError;
    public final String message;

    public HCaptchaException(HCaptchaError hCaptchaError, String str) {
        if (hCaptchaError == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("hCaptchaError is marked non-null but is null");
            throw null;
        }
        this.hCaptchaError = hCaptchaError;
        this.message = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HCaptchaException)) {
            return false;
        }
        HCaptchaException hCaptchaException = (HCaptchaException) obj;
        if (this != obj) {
            return false;
        }
        HCaptchaError hCaptchaError = hCaptchaException.hCaptchaError;
        HCaptchaError hCaptchaError2 = this.hCaptchaError;
        if (hCaptchaError2 != null ? !hCaptchaError2.equals(hCaptchaError) : hCaptchaError != null) {
            return false;
        }
        String message = getMessage();
        String message2 = hCaptchaException.getMessage();
        return message != null ? message.equals(message2) : message2 == null;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String str = this.message;
        return str == null ? this.hCaptchaError.getMessage() : str;
    }

    public final int hashCode() {
        int hashCode = super.hashCode() * 59;
        HCaptchaError hCaptchaError = this.hCaptchaError;
        int hashCode2 = hCaptchaError == null ? 43 : hCaptchaError.hashCode();
        String message = getMessage();
        return ((hashCode + hashCode2) * 59) + (message != null ? message.hashCode() : 43);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "HCaptchaException(hCaptchaError=" + this.hCaptchaError + ", message=" + getMessage() + ")";
    }
}
