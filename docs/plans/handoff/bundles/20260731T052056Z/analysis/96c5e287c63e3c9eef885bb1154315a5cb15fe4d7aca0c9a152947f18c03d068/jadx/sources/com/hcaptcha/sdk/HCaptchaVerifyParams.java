package com.hcaptcha.sdk;

import androidx.compose.animation.core.Animation;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@JsonInclude(JsonInclude.Include.NON_NULL)
/* loaded from: classes.dex */
public class HCaptchaVerifyParams implements Serializable {

    @JsonProperty("mfa_phone")
    private String phoneNumber;

    @JsonProperty("mfa_phoneprefix")
    private String phonePrefix;

    @JsonProperty("rqdata")
    private String rqdata;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HCaptchaVerifyParamsBuilder {
        public String phoneNumber;
        public String phonePrefix;
        public String rqdata;

        public final String toString() {
            StringBuilder sb = new StringBuilder("HCaptchaVerifyParams.HCaptchaVerifyParamsBuilder(phonePrefix=");
            sb.append(this.phonePrefix);
            sb.append(", phoneNumber=");
            sb.append(this.phoneNumber);
            sb.append(", rqdata=");
            return Animation.CC.m(sb, this.rqdata, ")");
        }
    }

    public HCaptchaVerifyParams(String str, String str2, String str3) {
        this.phonePrefix = str;
        this.phoneNumber = str2;
        this.rqdata = str3;
    }

    public static HCaptchaVerifyParamsBuilder builder() {
        return new HCaptchaVerifyParamsBuilder();
    }

    public boolean canEqual(Object obj) {
        return obj instanceof HCaptchaVerifyParams;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HCaptchaVerifyParams)) {
            return false;
        }
        HCaptchaVerifyParams hCaptchaVerifyParams = (HCaptchaVerifyParams) obj;
        if (!hCaptchaVerifyParams.canEqual(this)) {
            return false;
        }
        String phonePrefix = getPhonePrefix();
        String phonePrefix2 = hCaptchaVerifyParams.getPhonePrefix();
        if (phonePrefix != null ? !phonePrefix.equals(phonePrefix2) : phonePrefix2 != null) {
            return false;
        }
        String phoneNumber = getPhoneNumber();
        String phoneNumber2 = hCaptchaVerifyParams.getPhoneNumber();
        if (phoneNumber != null ? !phoneNumber.equals(phoneNumber2) : phoneNumber2 != null) {
            return false;
        }
        String rqdata = getRqdata();
        String rqdata2 = hCaptchaVerifyParams.getRqdata();
        return rqdata != null ? rqdata.equals(rqdata2) : rqdata2 == null;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public String getPhonePrefix() {
        return this.phonePrefix;
    }

    public String getRqdata() {
        return this.rqdata;
    }

    public int hashCode() {
        String phonePrefix = getPhonePrefix();
        int hashCode = phonePrefix == null ? 43 : phonePrefix.hashCode();
        String phoneNumber = getPhoneNumber();
        int i = (hashCode + 59) * 59;
        int hashCode2 = phoneNumber == null ? 43 : phoneNumber.hashCode();
        String rqdata = getRqdata();
        return ((i + hashCode2) * 59) + (rqdata != null ? rqdata.hashCode() : 43);
    }

    @JsonProperty("mfa_phone")
    public void setPhoneNumber(String str) {
        this.phoneNumber = str;
    }

    @JsonProperty("mfa_phoneprefix")
    public void setPhonePrefix(String str) {
        this.phonePrefix = str;
    }

    @JsonProperty("rqdata")
    public void setRqdata(String str) {
        this.rqdata = str;
    }

    public HCaptchaVerifyParamsBuilder toBuilder() {
        HCaptchaVerifyParamsBuilder hCaptchaVerifyParamsBuilder = new HCaptchaVerifyParamsBuilder();
        hCaptchaVerifyParamsBuilder.phonePrefix = this.phonePrefix;
        hCaptchaVerifyParamsBuilder.phoneNumber = this.phoneNumber;
        hCaptchaVerifyParamsBuilder.rqdata = this.rqdata;
        return hCaptchaVerifyParamsBuilder;
    }

    public String toString() {
        return "HCaptchaVerifyParams(phonePrefix=" + getPhonePrefix() + ", phoneNumber=" + getPhoneNumber() + ", rqdata=" + getRqdata() + ")";
    }

    public HCaptchaVerifyParams() {
    }
}
