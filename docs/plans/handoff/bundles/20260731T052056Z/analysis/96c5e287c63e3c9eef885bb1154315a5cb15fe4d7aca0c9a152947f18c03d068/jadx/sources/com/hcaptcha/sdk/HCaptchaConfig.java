package com.hcaptcha.sdk;

import androidx.compose.animation.core.Animation;
import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.util.Locale;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class HCaptchaConfig implements Serializable {

    @JsonIgnore
    @Deprecated
    private String apiEndpoint;
    private String assethost;
    private String customTheme;
    private Boolean diagnosticLog;
    private Boolean disableHardwareAcceleration;
    private String endpoint;
    private Boolean hideDialog;
    private String host;
    private String imghost;
    private String jsSrc;
    private Boolean loading;
    private String locale;
    private HCaptchaOrientation orientation;
    private String reportapi;

    @Deprecated
    private Boolean resetOnTimeout;

    @JsonIgnore
    private IHCaptchaRetryPredicate retryPredicate;

    @Deprecated
    private String rqdata;
    private Boolean sentry;
    private String siteKey;
    private HCaptchaSize size;
    private HCaptchaTheme theme;
    private long tokenExpiration;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HCaptchaConfigBuilder {
        public String assethost;
        public boolean customTheme$set;
        public String customTheme$value;
        public boolean diagnosticLog$set;
        public Boolean diagnosticLog$value;
        public boolean disableHardwareAcceleration$set;
        public Boolean disableHardwareAcceleration$value;
        public String endpoint;
        public boolean hideDialog$set;
        public Boolean hideDialog$value;
        public boolean host$set;
        public String host$value;
        public String imghost;
        public boolean jsSrc$set;
        public String jsSrc$value;
        public boolean loading$set;
        public Boolean loading$value;
        public boolean locale$set;
        public String locale$value;
        public boolean orientation$set;
        public HCaptchaOrientation orientation$value;
        public String reportapi;
        public boolean resetOnTimeout$set;
        public Boolean resetOnTimeout$value;
        public boolean retryPredicate$set;
        public IHCaptchaRetryPredicate retryPredicate$value;
        public String rqdata;
        public boolean sentry$set;
        public Boolean sentry$value;
        public String siteKey;
        public boolean size$set;
        public HCaptchaSize size$value;
        public boolean theme$set;
        public HCaptchaTheme theme$value;
        public boolean tokenExpiration$set;
        public long tokenExpiration$value;

        public final HCaptchaConfig build() {
            Boolean bool = this.sentry$value;
            if (!this.sentry$set) {
                bool = HCaptchaConfig.$default$sentry();
            }
            Boolean bool2 = bool;
            Boolean bool3 = this.loading$value;
            if (!this.loading$set) {
                bool3 = HCaptchaConfig.$default$loading();
            }
            Boolean bool4 = bool3;
            Boolean bool5 = this.hideDialog$value;
            if (!this.hideDialog$set) {
                bool5 = HCaptchaConfig.$default$hideDialog();
            }
            Boolean bool6 = bool5;
            String $default$apiEndpoint = HCaptchaConfig.$default$apiEndpoint();
            String str = this.jsSrc$value;
            if (!this.jsSrc$set) {
                str = HCaptchaConfig.$default$jsSrc();
            }
            String str2 = str;
            String str3 = this.locale$value;
            if (!this.locale$set) {
                str3 = HCaptchaConfig.$default$locale();
            }
            String str4 = str3;
            HCaptchaSize hCaptchaSize = this.size$value;
            if (!this.size$set) {
                hCaptchaSize = HCaptchaConfig.$default$size();
            }
            HCaptchaSize hCaptchaSize2 = hCaptchaSize;
            HCaptchaOrientation hCaptchaOrientation = this.orientation$value;
            if (!this.orientation$set) {
                hCaptchaOrientation = HCaptchaConfig.$default$orientation();
            }
            HCaptchaOrientation hCaptchaOrientation2 = hCaptchaOrientation;
            HCaptchaTheme hCaptchaTheme = this.theme$value;
            if (!this.theme$set) {
                hCaptchaTheme = HCaptchaConfig.$default$theme();
            }
            HCaptchaTheme hCaptchaTheme2 = hCaptchaTheme;
            String str5 = this.host$value;
            if (!this.host$set) {
                str5 = HCaptchaConfig.$default$host();
            }
            String str6 = str5;
            String str7 = this.customTheme$value;
            if (!this.customTheme$set) {
                str7 = HCaptchaConfig.$default$customTheme();
            }
            String str8 = str7;
            Boolean bool7 = this.resetOnTimeout$value;
            if (!this.resetOnTimeout$set) {
                bool7 = HCaptchaConfig.$default$resetOnTimeout();
            }
            Boolean bool8 = bool7;
            IHCaptchaRetryPredicate iHCaptchaRetryPredicate = this.retryPredicate$value;
            if (!this.retryPredicate$set) {
                iHCaptchaRetryPredicate = HCaptchaConfig.$default$retryPredicate();
            }
            IHCaptchaRetryPredicate iHCaptchaRetryPredicate2 = iHCaptchaRetryPredicate;
            long j = this.tokenExpiration$value;
            if (!this.tokenExpiration$set) {
                j = HCaptchaConfig.$default$tokenExpiration();
            }
            long j2 = j;
            Boolean bool9 = this.diagnosticLog$value;
            if (!this.diagnosticLog$set) {
                bool9 = HCaptchaConfig.$default$diagnosticLog();
            }
            Boolean bool10 = bool9;
            Boolean bool11 = this.disableHardwareAcceleration$value;
            if (!this.disableHardwareAcceleration$set) {
                bool11 = HCaptchaConfig.$default$disableHardwareAcceleration();
            }
            return new HCaptchaConfig(this.siteKey, bool2, bool4, bool6, this.rqdata, $default$apiEndpoint, str2, this.endpoint, this.reportapi, this.assethost, this.imghost, str4, hCaptchaSize2, hCaptchaOrientation2, hCaptchaTheme2, str6, str8, bool8, iHCaptchaRetryPredicate2, j2, bool10, bool11);
        }

        public final void host(String str) {
            if (str != null) {
                String trim = str.trim();
                if (trim.isEmpty()) {
                    this.host$value = null;
                } else {
                    if (trim.contains("://")) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m("Config 'host' must be a hostname, not a URL. Remove scheme from: '", trim, "'"));
                        return;
                    }
                    this.host$value = trim;
                }
            }
            this.host$set = true;
        }

        public final String toString() {
            return "HCaptchaConfig.HCaptchaConfigBuilder(siteKey=" + this.siteKey + ", sentry$value=" + this.sentry$value + ", loading$value=" + this.loading$value + ", hideDialog$value=" + this.hideDialog$value + ", rqdata=" + this.rqdata + ", apiEndpoint$value=null, jsSrc$value=" + this.jsSrc$value + ", endpoint=" + this.endpoint + ", reportapi=" + this.reportapi + ", assethost=" + this.assethost + ", imghost=" + this.imghost + ", locale$value=" + this.locale$value + ", size$value=" + this.size$value + ", orientation$value=" + this.orientation$value + ", theme$value=" + this.theme$value + ", host$value=" + this.host$value + ", customTheme$value=" + this.customTheme$value + ", resetOnTimeout$value=" + this.resetOnTimeout$value + ", retryPredicate$value=" + this.retryPredicate$value + ", tokenExpiration$value=" + this.tokenExpiration$value + ", diagnosticLog$value=" + this.diagnosticLog$value + ", disableHardwareAcceleration$value=" + this.disableHardwareAcceleration$value + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String $default$apiEndpoint() {
        return "https://js.hcaptcha.com/1/api.js";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String $default$customTheme() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Boolean $default$diagnosticLog() {
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Boolean $default$disableHardwareAcceleration() {
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Boolean $default$hideDialog() {
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String $default$host() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String $default$jsSrc() {
        return "https://js.hcaptcha.com/1/api.js";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Boolean $default$loading() {
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String $default$locale() {
        return Locale.getDefault().getLanguage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static HCaptchaOrientation $default$orientation() {
        return HCaptchaOrientation.PORTRAIT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Boolean $default$resetOnTimeout() {
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static IHCaptchaRetryPredicate $default$retryPredicate() {
        return new HCaptchaConfig$$ExternalSyntheticLambda0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Boolean $default$sentry() {
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static HCaptchaSize $default$size() {
        return HCaptchaSize.INVISIBLE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static HCaptchaTheme $default$theme() {
        return HCaptchaTheme.LIGHT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long $default$tokenExpiration() {
        return 120L;
    }

    public HCaptchaConfig(String str, Boolean bool, Boolean bool2, Boolean bool3, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, HCaptchaSize hCaptchaSize, HCaptchaOrientation hCaptchaOrientation, HCaptchaTheme hCaptchaTheme, String str10, String str11, Boolean bool4, IHCaptchaRetryPredicate iHCaptchaRetryPredicate, long j, Boolean bool5, Boolean bool6) {
        if (str == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("siteKey is marked non-null but is null");
            throw null;
        }
        if (bool6 == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("disableHardwareAcceleration is marked non-null but is null");
            throw null;
        }
        this.siteKey = str;
        this.sentry = bool;
        this.loading = bool2;
        this.hideDialog = bool3;
        this.rqdata = str2;
        this.apiEndpoint = str3;
        this.jsSrc = str4;
        this.endpoint = str5;
        this.reportapi = str6;
        this.assethost = str7;
        this.imghost = str8;
        this.locale = str9;
        this.size = hCaptchaSize;
        this.orientation = hCaptchaOrientation;
        this.theme = hCaptchaTheme;
        this.host = str10;
        this.customTheme = str11;
        this.resetOnTimeout = bool4;
        this.retryPredicate = iHCaptchaRetryPredicate;
        this.tokenExpiration = j;
        this.diagnosticLog = bool5;
        this.disableHardwareAcceleration = bool6;
    }

    public static HCaptchaConfigBuilder builder() {
        return new HCaptchaConfigBuilder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean lambda$$default$retryPredicate$41a513e9$1(HCaptchaConfig hCaptchaConfig, HCaptchaException hCaptchaException) {
        return Boolean.TRUE.equals(hCaptchaConfig.resetOnTimeout) && hCaptchaException.hCaptchaError == HCaptchaError.SESSION_TIMEOUT;
    }

    public boolean canEqual(Object obj) {
        return obj instanceof HCaptchaConfig;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HCaptchaConfig)) {
            return false;
        }
        HCaptchaConfig hCaptchaConfig = (HCaptchaConfig) obj;
        if (!hCaptchaConfig.canEqual(this) || getTokenExpiration() != hCaptchaConfig.getTokenExpiration()) {
            return false;
        }
        Boolean sentry = getSentry();
        Boolean sentry2 = hCaptchaConfig.getSentry();
        if (sentry != null ? !sentry.equals(sentry2) : sentry2 != null) {
            return false;
        }
        Boolean loading = getLoading();
        Boolean loading2 = hCaptchaConfig.getLoading();
        if (loading != null ? !loading.equals(loading2) : loading2 != null) {
            return false;
        }
        Boolean hideDialog = getHideDialog();
        Boolean hideDialog2 = hCaptchaConfig.getHideDialog();
        if (hideDialog != null ? !hideDialog.equals(hideDialog2) : hideDialog2 != null) {
            return false;
        }
        Boolean resetOnTimeout = getResetOnTimeout();
        Boolean resetOnTimeout2 = hCaptchaConfig.getResetOnTimeout();
        if (resetOnTimeout != null ? !resetOnTimeout.equals(resetOnTimeout2) : resetOnTimeout2 != null) {
            return false;
        }
        Boolean diagnosticLog = getDiagnosticLog();
        Boolean diagnosticLog2 = hCaptchaConfig.getDiagnosticLog();
        if (diagnosticLog != null ? !diagnosticLog.equals(diagnosticLog2) : diagnosticLog2 != null) {
            return false;
        }
        Boolean disableHardwareAcceleration = getDisableHardwareAcceleration();
        Boolean disableHardwareAcceleration2 = hCaptchaConfig.getDisableHardwareAcceleration();
        if (disableHardwareAcceleration != null ? !disableHardwareAcceleration.equals(disableHardwareAcceleration2) : disableHardwareAcceleration2 != null) {
            return false;
        }
        String siteKey = getSiteKey();
        String siteKey2 = hCaptchaConfig.getSiteKey();
        if (siteKey != null ? !siteKey.equals(siteKey2) : siteKey2 != null) {
            return false;
        }
        String rqdata = getRqdata();
        String rqdata2 = hCaptchaConfig.getRqdata();
        if (rqdata != null ? !rqdata.equals(rqdata2) : rqdata2 != null) {
            return false;
        }
        String apiEndpoint = getApiEndpoint();
        String apiEndpoint2 = hCaptchaConfig.getApiEndpoint();
        if (apiEndpoint != null ? !apiEndpoint.equals(apiEndpoint2) : apiEndpoint2 != null) {
            return false;
        }
        String jsSrc = getJsSrc();
        String jsSrc2 = hCaptchaConfig.getJsSrc();
        if (jsSrc != null ? !jsSrc.equals(jsSrc2) : jsSrc2 != null) {
            return false;
        }
        String endpoint = getEndpoint();
        String endpoint2 = hCaptchaConfig.getEndpoint();
        if (endpoint != null ? !endpoint.equals(endpoint2) : endpoint2 != null) {
            return false;
        }
        String reportapi = getReportapi();
        String reportapi2 = hCaptchaConfig.getReportapi();
        if (reportapi != null ? !reportapi.equals(reportapi2) : reportapi2 != null) {
            return false;
        }
        String assethost = getAssethost();
        String assethost2 = hCaptchaConfig.getAssethost();
        if (assethost != null ? !assethost.equals(assethost2) : assethost2 != null) {
            return false;
        }
        String imghost = getImghost();
        String imghost2 = hCaptchaConfig.getImghost();
        if (imghost != null ? !imghost.equals(imghost2) : imghost2 != null) {
            return false;
        }
        String locale = getLocale();
        String locale2 = hCaptchaConfig.getLocale();
        if (locale != null ? !locale.equals(locale2) : locale2 != null) {
            return false;
        }
        HCaptchaSize size = getSize();
        HCaptchaSize size2 = hCaptchaConfig.getSize();
        if (size != null ? !size.equals(size2) : size2 != null) {
            return false;
        }
        HCaptchaOrientation orientation = getOrientation();
        HCaptchaOrientation orientation2 = hCaptchaConfig.getOrientation();
        if (orientation != null ? !orientation.equals(orientation2) : orientation2 != null) {
            return false;
        }
        HCaptchaTheme theme = getTheme();
        HCaptchaTheme theme2 = hCaptchaConfig.getTheme();
        if (theme != null ? !theme.equals(theme2) : theme2 != null) {
            return false;
        }
        String host = getHost();
        String host2 = hCaptchaConfig.getHost();
        if (host != null ? !host.equals(host2) : host2 != null) {
            return false;
        }
        String customTheme = getCustomTheme();
        String customTheme2 = hCaptchaConfig.getCustomTheme();
        if (customTheme != null ? !customTheme.equals(customTheme2) : customTheme2 != null) {
            return false;
        }
        IHCaptchaRetryPredicate retryPredicate = getRetryPredicate();
        IHCaptchaRetryPredicate retryPredicate2 = hCaptchaConfig.getRetryPredicate();
        return retryPredicate != null ? retryPredicate.equals(retryPredicate2) : retryPredicate2 == null;
    }

    @Deprecated
    public String getApiEndpoint() {
        return this.jsSrc;
    }

    public String getAssethost() {
        return this.assethost;
    }

    @JsonIgnore
    public String getBaseUrl() {
        String str = this.host;
        if (str == null || str.isEmpty()) {
            return null;
        }
        return "https://".concat(str);
    }

    public String getCustomTheme() {
        return this.customTheme;
    }

    public Boolean getDiagnosticLog() {
        return this.diagnosticLog;
    }

    public Boolean getDisableHardwareAcceleration() {
        return this.disableHardwareAcceleration;
    }

    public String getEndpoint() {
        return this.endpoint;
    }

    public Boolean getHideDialog() {
        return this.hideDialog;
    }

    public String getHost() {
        return this.host;
    }

    public String getImghost() {
        return this.imghost;
    }

    public String getJsSrc() {
        return this.jsSrc;
    }

    public Boolean getLoading() {
        return this.loading;
    }

    public String getLocale() {
        return this.locale;
    }

    public HCaptchaOrientation getOrientation() {
        return this.orientation;
    }

    public String getReportapi() {
        return this.reportapi;
    }

    @Deprecated
    public Boolean getResetOnTimeout() {
        return this.resetOnTimeout;
    }

    public IHCaptchaRetryPredicate getRetryPredicate() {
        return this.retryPredicate;
    }

    @Deprecated
    public String getRqdata() {
        return this.rqdata;
    }

    public Boolean getSentry() {
        return this.sentry;
    }

    public String getSiteKey() {
        return this.siteKey;
    }

    public HCaptchaSize getSize() {
        return this.size;
    }

    public HCaptchaTheme getTheme() {
        return this.theme;
    }

    public long getTokenExpiration() {
        return this.tokenExpiration;
    }

    public int hashCode() {
        long tokenExpiration = getTokenExpiration();
        Boolean sentry = getSentry();
        int hashCode = ((((int) (tokenExpiration ^ (tokenExpiration >>> 32))) + 59) * 59) + (sentry == null ? 43 : sentry.hashCode());
        Boolean loading = getLoading();
        int hashCode2 = (hashCode * 59) + (loading == null ? 43 : loading.hashCode());
        Boolean hideDialog = getHideDialog();
        int hashCode3 = (hashCode2 * 59) + (hideDialog == null ? 43 : hideDialog.hashCode());
        Boolean resetOnTimeout = getResetOnTimeout();
        int hashCode4 = (hashCode3 * 59) + (resetOnTimeout == null ? 43 : resetOnTimeout.hashCode());
        Boolean diagnosticLog = getDiagnosticLog();
        int hashCode5 = (hashCode4 * 59) + (diagnosticLog == null ? 43 : diagnosticLog.hashCode());
        Boolean disableHardwareAcceleration = getDisableHardwareAcceleration();
        int hashCode6 = (hashCode5 * 59) + (disableHardwareAcceleration == null ? 43 : disableHardwareAcceleration.hashCode());
        String siteKey = getSiteKey();
        int hashCode7 = (hashCode6 * 59) + (siteKey == null ? 43 : siteKey.hashCode());
        String rqdata = getRqdata();
        int hashCode8 = (hashCode7 * 59) + (rqdata == null ? 43 : rqdata.hashCode());
        String apiEndpoint = getApiEndpoint();
        int hashCode9 = (hashCode8 * 59) + (apiEndpoint == null ? 43 : apiEndpoint.hashCode());
        String jsSrc = getJsSrc();
        int hashCode10 = (hashCode9 * 59) + (jsSrc == null ? 43 : jsSrc.hashCode());
        String endpoint = getEndpoint();
        int hashCode11 = (hashCode10 * 59) + (endpoint == null ? 43 : endpoint.hashCode());
        String reportapi = getReportapi();
        int hashCode12 = (hashCode11 * 59) + (reportapi == null ? 43 : reportapi.hashCode());
        String assethost = getAssethost();
        int hashCode13 = (hashCode12 * 59) + (assethost == null ? 43 : assethost.hashCode());
        String imghost = getImghost();
        int hashCode14 = (hashCode13 * 59) + (imghost == null ? 43 : imghost.hashCode());
        String locale = getLocale();
        int hashCode15 = (hashCode14 * 59) + (locale == null ? 43 : locale.hashCode());
        HCaptchaSize size = getSize();
        int hashCode16 = (hashCode15 * 59) + (size == null ? 43 : size.hashCode());
        HCaptchaOrientation orientation = getOrientation();
        int hashCode17 = (hashCode16 * 59) + (orientation == null ? 43 : orientation.hashCode());
        HCaptchaTheme theme = getTheme();
        int hashCode18 = (hashCode17 * 59) + (theme == null ? 43 : theme.hashCode());
        String host = getHost();
        int hashCode19 = (hashCode18 * 59) + (host == null ? 43 : host.hashCode());
        String customTheme = getCustomTheme();
        int i = hashCode19 * 59;
        int hashCode20 = customTheme == null ? 43 : customTheme.hashCode();
        IHCaptchaRetryPredicate retryPredicate = getRetryPredicate();
        return ((i + hashCode20) * 59) + (retryPredicate != null ? retryPredicate.hashCode() : 43);
    }

    @JsonIgnore
    @Deprecated
    public void setApiEndpoint(String str) {
        this.apiEndpoint = str;
    }

    public void setAssethost(String str) {
        this.assethost = str;
    }

    public void setCustomTheme(String str) {
        this.customTheme = str;
    }

    public void setDiagnosticLog(Boolean bool) {
        this.diagnosticLog = bool;
    }

    public void setDisableHardwareAcceleration(Boolean bool) {
        if (bool != null) {
            this.disableHardwareAcceleration = bool;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("disableHardwareAcceleration is marked non-null but is null");
        }
    }

    public void setEndpoint(String str) {
        this.endpoint = str;
    }

    public void setHideDialog(Boolean bool) {
        this.hideDialog = bool;
    }

    public void setHost(String str) {
        this.host = str;
    }

    public void setImghost(String str) {
        this.imghost = str;
    }

    public void setJsSrc(String str) {
        this.jsSrc = str;
    }

    public void setLoading(Boolean bool) {
        this.loading = bool;
    }

    public void setLocale(String str) {
        this.locale = str;
    }

    public void setOrientation(HCaptchaOrientation hCaptchaOrientation) {
        this.orientation = hCaptchaOrientation;
    }

    public void setReportapi(String str) {
        this.reportapi = str;
    }

    @Deprecated
    public void setResetOnTimeout(Boolean bool) {
        this.resetOnTimeout = bool;
    }

    @JsonIgnore
    public void setRetryPredicate(IHCaptchaRetryPredicate iHCaptchaRetryPredicate) {
        this.retryPredicate = iHCaptchaRetryPredicate;
    }

    @Deprecated
    public void setRqdata(String str) {
        this.rqdata = str;
    }

    public void setSentry(Boolean bool) {
        this.sentry = bool;
    }

    public void setSiteKey(String str) {
        if (str != null) {
            this.siteKey = str;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("siteKey is marked non-null but is null");
        }
    }

    public void setSize(HCaptchaSize hCaptchaSize) {
        this.size = hCaptchaSize;
    }

    public void setTheme(HCaptchaTheme hCaptchaTheme) {
        this.theme = hCaptchaTheme;
    }

    public void setTokenExpiration(long j) {
        this.tokenExpiration = j;
    }

    public HCaptchaConfigBuilder toBuilder() {
        HCaptchaConfigBuilder hCaptchaConfigBuilder = new HCaptchaConfigBuilder();
        String str = this.siteKey;
        if (str == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("siteKey is marked non-null but is null");
            return null;
        }
        hCaptchaConfigBuilder.siteKey = str;
        hCaptchaConfigBuilder.sentry$value = this.sentry;
        hCaptchaConfigBuilder.sentry$set = true;
        hCaptchaConfigBuilder.loading$value = this.loading;
        hCaptchaConfigBuilder.loading$set = true;
        hCaptchaConfigBuilder.hideDialog$value = this.hideDialog;
        hCaptchaConfigBuilder.hideDialog$set = true;
        hCaptchaConfigBuilder.rqdata = this.rqdata;
        hCaptchaConfigBuilder.jsSrc$value = this.jsSrc;
        hCaptchaConfigBuilder.jsSrc$set = true;
        hCaptchaConfigBuilder.endpoint = this.endpoint;
        hCaptchaConfigBuilder.reportapi = this.reportapi;
        hCaptchaConfigBuilder.assethost = this.assethost;
        hCaptchaConfigBuilder.imghost = this.imghost;
        hCaptchaConfigBuilder.locale$value = this.locale;
        hCaptchaConfigBuilder.locale$set = true;
        hCaptchaConfigBuilder.size$value = this.size;
        hCaptchaConfigBuilder.size$set = true;
        hCaptchaConfigBuilder.orientation$value = this.orientation;
        hCaptchaConfigBuilder.orientation$set = true;
        hCaptchaConfigBuilder.theme$value = this.theme;
        hCaptchaConfigBuilder.theme$set = true;
        hCaptchaConfigBuilder.host(this.host);
        hCaptchaConfigBuilder.customTheme$value = this.customTheme;
        hCaptchaConfigBuilder.customTheme$set = true;
        hCaptchaConfigBuilder.resetOnTimeout$value = this.resetOnTimeout;
        hCaptchaConfigBuilder.resetOnTimeout$set = true;
        hCaptchaConfigBuilder.retryPredicate$value = this.retryPredicate;
        hCaptchaConfigBuilder.retryPredicate$set = true;
        hCaptchaConfigBuilder.tokenExpiration$value = this.tokenExpiration;
        hCaptchaConfigBuilder.tokenExpiration$set = true;
        hCaptchaConfigBuilder.diagnosticLog$value = this.diagnosticLog;
        hCaptchaConfigBuilder.diagnosticLog$set = true;
        Boolean bool = this.disableHardwareAcceleration;
        if (bool == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("disableHardwareAcceleration is marked non-null but is null");
            return null;
        }
        hCaptchaConfigBuilder.disableHardwareAcceleration$value = bool;
        hCaptchaConfigBuilder.disableHardwareAcceleration$set = true;
        return hCaptchaConfigBuilder;
    }

    public String toString() {
        return "HCaptchaConfig(siteKey=" + getSiteKey() + ", sentry=" + getSentry() + ", loading=" + getLoading() + ", hideDialog=" + getHideDialog() + ", rqdata=" + getRqdata() + ", apiEndpoint=" + getApiEndpoint() + ", jsSrc=" + getJsSrc() + ", endpoint=" + getEndpoint() + ", reportapi=" + getReportapi() + ", assethost=" + getAssethost() + ", imghost=" + getImghost() + ", locale=" + getLocale() + ", size=" + getSize() + ", orientation=" + getOrientation() + ", theme=" + getTheme() + ", host=" + getHost() + ", customTheme=" + getCustomTheme() + ", resetOnTimeout=" + getResetOnTimeout() + ", retryPredicate=" + getRetryPredicate() + ", tokenExpiration=" + getTokenExpiration() + ", diagnosticLog=" + getDiagnosticLog() + ", disableHardwareAcceleration=" + getDisableHardwareAcceleration() + ")";
    }
}
