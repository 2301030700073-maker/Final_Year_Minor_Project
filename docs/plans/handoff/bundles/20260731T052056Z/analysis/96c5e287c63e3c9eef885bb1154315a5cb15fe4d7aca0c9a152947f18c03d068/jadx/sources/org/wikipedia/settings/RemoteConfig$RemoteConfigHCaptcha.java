package org.wikipedia.settings;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class RemoteConfig$RemoteConfigHCaptcha {
    public static final Companion Companion = new Companion();
    public final String assetHost;
    public final String baseURL;
    public final String endpoint;
    public final String imgHost;
    public final String jsSrc;
    public final String reportApi;
    public final boolean sentry;
    public final String siteKey;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return RemoteConfig$RemoteConfigHCaptcha$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ RemoteConfig$RemoteConfigHCaptcha(int i, String str, String str2, String str3, String str4, String str5, String str6, boolean z, String str7) {
        if ((i & 1) == 0) {
            this.baseURL = "";
        } else {
            this.baseURL = str;
        }
        if ((i & 2) == 0) {
            this.jsSrc = "";
        } else {
            this.jsSrc = str2;
        }
        if ((i & 4) == 0) {
            this.endpoint = "";
        } else {
            this.endpoint = str3;
        }
        if ((i & 8) == 0) {
            this.assetHost = "";
        } else {
            this.assetHost = str4;
        }
        if ((i & 16) == 0) {
            this.imgHost = "";
        } else {
            this.imgHost = str5;
        }
        if ((i & 32) == 0) {
            this.reportApi = "";
        } else {
            this.reportApi = str6;
        }
        if ((i & 64) == 0) {
            this.sentry = false;
        } else {
            this.sentry = z;
        }
        if ((i & 128) == 0) {
            this.siteKey = "";
        } else {
            this.siteKey = str7;
        }
    }

    public RemoteConfig$RemoteConfigHCaptcha() {
        this.baseURL = "https://meta.wikimedia.org";
        this.jsSrc = "https://assets-hcaptcha.wikimedia.org/1/api.js";
        this.endpoint = "https://hcaptcha.wikimedia.org";
        this.assetHost = "https://assets-hcaptcha.wikimedia.org";
        this.imgHost = "https://imgs-hcaptcha.wikimedia.org";
        this.reportApi = "https://report-hcaptcha.wikimedia.org";
        this.sentry = false;
        this.siteKey = "e11698d6-51ca-4980-875c-72309c6678cc";
    }
}
