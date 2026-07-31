package expo.modules.updates;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import expo.modules.core.errors.InvalidArgumentException;
import expo.modules.updates.codesigning.CodeSigningConfiguration;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* compiled from: UpdatesConfiguration.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u001a\b\u0086\b\u0018\u0000 J2\u00020\u0001:\u0002IJB\u008d\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000e\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e\u0012\u0006\u0010\u0011\u001a\u00020\f\u0012\u0006\u0010\u0012\u001a\u00020\f\u0012\u0006\u0010\u0013\u001a\u00020\f\u0012\u0006\u0010\u0014\u001a\u00020\f¢\u0006\u0004\b\u0015\u0010\u0016B)\b\u0016\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e¢\u0006\u0004\b\u0015\u0010\u001aB;\b\u0010\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e\u0012\u0006\u0010\u0014\u001a\u00020\f\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b\u0015\u0010\u001dJ\u0006\u00106\u001a\u00020\u0003J\t\u00107\u001a\u00020\u0003HÆ\u0003J\t\u00108\u001a\u00020\u0005HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010:\u001a\u00020\bHÆ\u0003J\t\u0010;\u001a\u00020\nHÆ\u0003J\t\u0010<\u001a\u00020\fHÆ\u0003J\u0015\u0010=\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000eHÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0017\u0010?\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000eHÆ\u0003J\t\u0010@\u001a\u00020\fHÆ\u0003J\t\u0010A\u001a\u00020\fHÂ\u0003J\t\u0010B\u001a\u00020\fHÆ\u0003J\t\u0010C\u001a\u00020\fHÆ\u0003J©\u0001\u0010D\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\u0014\b\u0002\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\u0016\b\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e2\b\b\u0002\u0010\u0011\u001a\u00020\f2\b\b\u0002\u0010\u0012\u001a\u00020\f2\b\b\u0002\u0010\u0013\u001a\u00020\f2\b\b\u0002\u0010\u0014\u001a\u00020\fHÆ\u0001J\u0013\u0010E\u001a\u00020\f2\b\u0010F\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010G\u001a\u00020\bHÖ\u0001J\t\u0010H\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u001d\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000e¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001fR\u001f\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b,\u0010*R\u0011\u0010\u0011\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b-\u0010(R\u000e\u0010\u0012\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0013\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b.\u0010(R\u0011\u0010\u0014\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b/\u0010(R\u001d\u00100\u001a\u0004\u0018\u0001018FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b2\u00103¨\u0006K"}, d2 = {"Lexpo/modules/updates/UpdatesConfiguration;", "", UpdatesConfiguration.UPDATES_CONFIGURATION_SCOPE_KEY_KEY, "", UpdatesConfiguration.UPDATES_CONFIGURATION_UPDATE_URL_KEY, "Landroid/net/Uri;", "runtimeVersionRaw", UpdatesConfiguration.UPDATES_CONFIGURATION_LAUNCH_WAIT_MS_KEY, "", UpdatesConfiguration.UPDATES_CONFIGURATION_CHECK_ON_LAUNCH_KEY, "Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;", UpdatesConfiguration.UPDATES_CONFIGURATION_HAS_EMBEDDED_UPDATE_KEY, "", UpdatesConfiguration.UPDATES_CONFIGURATION_REQUEST_HEADERS_KEY, "", UpdatesConfiguration.UPDATES_CONFIGURATION_CODE_SIGNING_CERTIFICATE, UpdatesConfiguration.UPDATES_CONFIGURATION_CODE_SIGNING_METADATA, UpdatesConfiguration.UPDATES_CONFIGURATION_CODE_SIGNING_INCLUDE_MANIFEST_RESPONSE_CERTIFICATE_CHAIN, UpdatesConfiguration.UPDATES_CONFIGURATION_CODE_SIGNING_ALLOW_UNSIGNED_MANIFESTS, "enableExpoUpdatesProtocolV0CompatibilityMode", UpdatesConfiguration.UPDATES_CONFIGURATION_DISABLE_ANTI_BRICKING_MEASURES, "<init>", "(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;ZLjava/util/Map;Ljava/lang/String;Ljava/util/Map;ZZZZ)V", "context", "Landroid/content/Context;", "overrideMap", "(Landroid/content/Context;Ljava/util/Map;)V", "configOverride", "Lexpo/modules/updates/UpdatesConfigurationOverride;", "(Landroid/content/Context;Ljava/util/Map;ZLexpo/modules/updates/UpdatesConfigurationOverride;)V", "getScopeKey", "()Ljava/lang/String;", "getUpdateUrl", "()Landroid/net/Uri;", "getRuntimeVersionRaw", "getLaunchWaitMs", "()I", "getCheckOnLaunch", "()Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;", "getHasEmbeddedUpdate", "()Z", "getRequestHeaders", "()Ljava/util/Map;", "getCodeSigningCertificate", "getCodeSigningMetadata", "getCodeSigningIncludeManifestResponseCertificateChain", "getEnableExpoUpdatesProtocolV0CompatibilityMode", "getDisableAntiBrickingMeasures", "codeSigningConfiguration", "Lexpo/modules/updates/codesigning/CodeSigningConfiguration;", "getCodeSigningConfiguration", "()Lexpo/modules/updates/codesigning/CodeSigningConfiguration;", "codeSigningConfiguration$delegate", "Lkotlin/Lazy;", "getRuntimeVersion", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "copy", "equals", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "CheckAutomaticallyConfiguration", "Companion", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final /* data */ class UpdatesConfiguration {
    private static final String FINGERPRINT_FILE_NAME = "fingerprint";
    public static final String UPDATES_CONFIGURATION_CHECK_ON_LAUNCH_KEY = "checkOnLaunch";
    public static final String UPDATES_CONFIGURATION_CODE_SIGNING_ALLOW_UNSIGNED_MANIFESTS = "codeSigningAllowUnsignedManifests";
    public static final String UPDATES_CONFIGURATION_CODE_SIGNING_CERTIFICATE = "codeSigningCertificate";
    public static final String UPDATES_CONFIGURATION_CODE_SIGNING_INCLUDE_MANIFEST_RESPONSE_CERTIFICATE_CHAIN = "codeSigningIncludeManifestResponseCertificateChain";
    public static final String UPDATES_CONFIGURATION_CODE_SIGNING_METADATA = "codeSigningMetadata";
    public static final String UPDATES_CONFIGURATION_DISABLE_ANTI_BRICKING_MEASURES = "disableAntiBrickingMeasures";
    public static final String UPDATES_CONFIGURATION_ENABLED_KEY = "enabled";
    public static final String UPDATES_CONFIGURATION_ENABLE_EXPO_UPDATES_PROTOCOL_V0_COMPATIBILITY_MODE = "enableExpoUpdatesProtocolCompatibilityMode";
    public static final String UPDATES_CONFIGURATION_HAS_EMBEDDED_UPDATE_KEY = "hasEmbeddedUpdate";
    private static final int UPDATES_CONFIGURATION_LAUNCH_WAIT_MS_DEFAULT_VALUE = 0;
    public static final String UPDATES_CONFIGURATION_LAUNCH_WAIT_MS_KEY = "launchWaitMs";
    public static final String UPDATES_CONFIGURATION_REQUEST_HEADERS_KEY = "requestHeaders";
    public static final String UPDATES_CONFIGURATION_RUNTIME_VERSION_KEY = "runtimeVersion";
    public static final String UPDATES_CONFIGURATION_RUNTIME_VERSION_READ_FINGERPRINT_FILE_SENTINEL = "file:fingerprint";
    public static final String UPDATES_CONFIGURATION_SCOPE_KEY_KEY = "scopeKey";
    public static final String UPDATES_CONFIGURATION_UPDATE_URL_KEY = "updateUrl";
    private final CheckAutomaticallyConfiguration checkOnLaunch;
    private final boolean codeSigningAllowUnsignedManifests;
    private final String codeSigningCertificate;

    /* renamed from: codeSigningConfiguration$delegate, reason: from kotlin metadata */
    private final Lazy codeSigningConfiguration;
    private final boolean codeSigningIncludeManifestResponseCertificateChain;
    private final Map<String, String> codeSigningMetadata;
    private final boolean disableAntiBrickingMeasures;
    private final boolean enableExpoUpdatesProtocolV0CompatibilityMode;
    private final boolean hasEmbeddedUpdate;
    private final int launchWaitMs;
    private final Map<String, String> requestHeaders;
    private final String runtimeVersionRaw;
    private final String scopeKey;
    private final Uri updateUrl;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "UpdatesConfiguration";

    /* renamed from: component11, reason: from getter */
    private final boolean getCodeSigningAllowUnsignedManifests() {
        return this.codeSigningAllowUnsignedManifests;
    }

    /* renamed from: component1, reason: from getter */
    public final String getScopeKey() {
        return this.scopeKey;
    }

    /* renamed from: component10, reason: from getter */
    public final boolean getCodeSigningIncludeManifestResponseCertificateChain() {
        return this.codeSigningIncludeManifestResponseCertificateChain;
    }

    /* renamed from: component12, reason: from getter */
    public final boolean getEnableExpoUpdatesProtocolV0CompatibilityMode() {
        return this.enableExpoUpdatesProtocolV0CompatibilityMode;
    }

    /* renamed from: component13, reason: from getter */
    public final boolean getDisableAntiBrickingMeasures() {
        return this.disableAntiBrickingMeasures;
    }

    /* renamed from: component2, reason: from getter */
    public final Uri getUpdateUrl() {
        return this.updateUrl;
    }

    /* renamed from: component3, reason: from getter */
    public final String getRuntimeVersionRaw() {
        return this.runtimeVersionRaw;
    }

    /* renamed from: component4, reason: from getter */
    public final int getLaunchWaitMs() {
        return this.launchWaitMs;
    }

    /* renamed from: component5, reason: from getter */
    public final CheckAutomaticallyConfiguration getCheckOnLaunch() {
        return this.checkOnLaunch;
    }

    /* renamed from: component6, reason: from getter */
    public final boolean getHasEmbeddedUpdate() {
        return this.hasEmbeddedUpdate;
    }

    public final Map<String, String> component7() {
        return this.requestHeaders;
    }

    /* renamed from: component8, reason: from getter */
    public final String getCodeSigningCertificate() {
        return this.codeSigningCertificate;
    }

    public final Map<String, String> component9() {
        return this.codeSigningMetadata;
    }

    public final UpdatesConfiguration copy(String scopeKey, Uri updateUrl, String runtimeVersionRaw, int launchWaitMs, CheckAutomaticallyConfiguration checkOnLaunch, boolean hasEmbeddedUpdate, Map<String, String> requestHeaders, String codeSigningCertificate, Map<String, String> codeSigningMetadata, boolean codeSigningIncludeManifestResponseCertificateChain, boolean codeSigningAllowUnsignedManifests, boolean enableExpoUpdatesProtocolV0CompatibilityMode, boolean disableAntiBrickingMeasures) {
        Intrinsics.checkNotNullParameter(scopeKey, "scopeKey");
        Intrinsics.checkNotNullParameter(updateUrl, "updateUrl");
        Intrinsics.checkNotNullParameter(checkOnLaunch, "checkOnLaunch");
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        return new UpdatesConfiguration(scopeKey, updateUrl, runtimeVersionRaw, launchWaitMs, checkOnLaunch, hasEmbeddedUpdate, requestHeaders, codeSigningCertificate, codeSigningMetadata, codeSigningIncludeManifestResponseCertificateChain, codeSigningAllowUnsignedManifests, enableExpoUpdatesProtocolV0CompatibilityMode, disableAntiBrickingMeasures);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UpdatesConfiguration)) {
            return false;
        }
        UpdatesConfiguration updatesConfiguration = (UpdatesConfiguration) other;
        return Intrinsics.areEqual(this.scopeKey, updatesConfiguration.scopeKey) && Intrinsics.areEqual(this.updateUrl, updatesConfiguration.updateUrl) && Intrinsics.areEqual(this.runtimeVersionRaw, updatesConfiguration.runtimeVersionRaw) && this.launchWaitMs == updatesConfiguration.launchWaitMs && this.checkOnLaunch == updatesConfiguration.checkOnLaunch && this.hasEmbeddedUpdate == updatesConfiguration.hasEmbeddedUpdate && Intrinsics.areEqual(this.requestHeaders, updatesConfiguration.requestHeaders) && Intrinsics.areEqual(this.codeSigningCertificate, updatesConfiguration.codeSigningCertificate) && Intrinsics.areEqual(this.codeSigningMetadata, updatesConfiguration.codeSigningMetadata) && this.codeSigningIncludeManifestResponseCertificateChain == updatesConfiguration.codeSigningIncludeManifestResponseCertificateChain && this.codeSigningAllowUnsignedManifests == updatesConfiguration.codeSigningAllowUnsignedManifests && this.enableExpoUpdatesProtocolV0CompatibilityMode == updatesConfiguration.enableExpoUpdatesProtocolV0CompatibilityMode && this.disableAntiBrickingMeasures == updatesConfiguration.disableAntiBrickingMeasures;
    }

    public int hashCode() {
        int hashCode = ((this.scopeKey.hashCode() * 31) + this.updateUrl.hashCode()) * 31;
        String str = this.runtimeVersionRaw;
        int hashCode2 = (((((((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + Integer.hashCode(this.launchWaitMs)) * 31) + this.checkOnLaunch.hashCode()) * 31) + Boolean.hashCode(this.hasEmbeddedUpdate)) * 31) + this.requestHeaders.hashCode()) * 31;
        String str2 = this.codeSigningCertificate;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Map<String, String> map = this.codeSigningMetadata;
        return ((((((((hashCode3 + (map != null ? map.hashCode() : 0)) * 31) + Boolean.hashCode(this.codeSigningIncludeManifestResponseCertificateChain)) * 31) + Boolean.hashCode(this.codeSigningAllowUnsignedManifests)) * 31) + Boolean.hashCode(this.enableExpoUpdatesProtocolV0CompatibilityMode)) * 31) + Boolean.hashCode(this.disableAntiBrickingMeasures);
    }

    public String toString() {
        return "UpdatesConfiguration(scopeKey=" + this.scopeKey + ", updateUrl=" + this.updateUrl + ", runtimeVersionRaw=" + this.runtimeVersionRaw + ", launchWaitMs=" + this.launchWaitMs + ", checkOnLaunch=" + this.checkOnLaunch + ", hasEmbeddedUpdate=" + this.hasEmbeddedUpdate + ", requestHeaders=" + this.requestHeaders + ", codeSigningCertificate=" + this.codeSigningCertificate + ", codeSigningMetadata=" + this.codeSigningMetadata + ", codeSigningIncludeManifestResponseCertificateChain=" + this.codeSigningIncludeManifestResponseCertificateChain + ", codeSigningAllowUnsignedManifests=" + this.codeSigningAllowUnsignedManifests + ", enableExpoUpdatesProtocolV0CompatibilityMode=" + this.enableExpoUpdatesProtocolV0CompatibilityMode + ", disableAntiBrickingMeasures=" + this.disableAntiBrickingMeasures + ")";
    }

    public UpdatesConfiguration(String scopeKey, Uri updateUrl, String str, int i, CheckAutomaticallyConfiguration checkOnLaunch, boolean z, Map<String, String> requestHeaders, String str2, Map<String, String> map, boolean z2, boolean z3, boolean z4, boolean z5) {
        Intrinsics.checkNotNullParameter(scopeKey, "scopeKey");
        Intrinsics.checkNotNullParameter(updateUrl, "updateUrl");
        Intrinsics.checkNotNullParameter(checkOnLaunch, "checkOnLaunch");
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        this.scopeKey = scopeKey;
        this.updateUrl = updateUrl;
        this.runtimeVersionRaw = str;
        this.launchWaitMs = i;
        this.checkOnLaunch = checkOnLaunch;
        this.hasEmbeddedUpdate = z;
        this.requestHeaders = requestHeaders;
        this.codeSigningCertificate = str2;
        this.codeSigningMetadata = map;
        this.codeSigningIncludeManifestResponseCertificateChain = z2;
        this.codeSigningAllowUnsignedManifests = z3;
        this.enableExpoUpdatesProtocolV0CompatibilityMode = z4;
        this.disableAntiBrickingMeasures = z5;
        this.codeSigningConfiguration = LazyKt.lazy(new Function0() { // from class: expo.modules.updates.UpdatesConfiguration$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                CodeSigningConfiguration codeSigningConfiguration_delegate$lambda$5;
                codeSigningConfiguration_delegate$lambda$5 = UpdatesConfiguration.codeSigningConfiguration_delegate$lambda$5(UpdatesConfiguration.this);
                return codeSigningConfiguration_delegate$lambda$5;
            }
        });
    }

    public final String getScopeKey() {
        return this.scopeKey;
    }

    public final Uri getUpdateUrl() {
        return this.updateUrl;
    }

    public final String getRuntimeVersionRaw() {
        return this.runtimeVersionRaw;
    }

    public final int getLaunchWaitMs() {
        return this.launchWaitMs;
    }

    public final CheckAutomaticallyConfiguration getCheckOnLaunch() {
        return this.checkOnLaunch;
    }

    public final boolean getHasEmbeddedUpdate() {
        return this.hasEmbeddedUpdate;
    }

    public final Map<String, String> getRequestHeaders() {
        return this.requestHeaders;
    }

    public final String getCodeSigningCertificate() {
        return this.codeSigningCertificate;
    }

    public final Map<String, String> getCodeSigningMetadata() {
        return this.codeSigningMetadata;
    }

    public final boolean getCodeSigningIncludeManifestResponseCertificateChain() {
        return this.codeSigningIncludeManifestResponseCertificateChain;
    }

    public final boolean getEnableExpoUpdatesProtocolV0CompatibilityMode() {
        return this.enableExpoUpdatesProtocolV0CompatibilityMode;
    }

    public final boolean getDisableAntiBrickingMeasures() {
        return this.disableAntiBrickingMeasures;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: UpdatesConfiguration.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH\u0016j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\n"}, d2 = {"Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;", "", "<init>", "(Ljava/lang/String;I)V", "NEVER", "ERROR_RECOVERY_ONLY", "WIFI_ONLY", "ALWAYS", "toJSString", "", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class CheckAutomaticallyConfiguration {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ CheckAutomaticallyConfiguration[] $VALUES;
        public static final CheckAutomaticallyConfiguration NEVER = new NEVER("NEVER", 0);
        public static final CheckAutomaticallyConfiguration ERROR_RECOVERY_ONLY = new ERROR_RECOVERY_ONLY("ERROR_RECOVERY_ONLY", 1);
        public static final CheckAutomaticallyConfiguration WIFI_ONLY = new WIFI_ONLY("WIFI_ONLY", 2);
        public static final CheckAutomaticallyConfiguration ALWAYS = new ALWAYS("ALWAYS", 3);

        private static final /* synthetic */ CheckAutomaticallyConfiguration[] $values() {
            return new CheckAutomaticallyConfiguration[]{NEVER, ERROR_RECOVERY_ONLY, WIFI_ONLY, ALWAYS};
        }

        public /* synthetic */ CheckAutomaticallyConfiguration(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, i);
        }

        public static EnumEntries<CheckAutomaticallyConfiguration> getEntries() {
            return $ENTRIES;
        }

        /* compiled from: UpdatesConfiguration.kt */
        @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\bÊ\u0001\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"expo/modules/updates/UpdatesConfiguration.CheckAutomaticallyConfiguration.NEVER", "Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;", "toJSString", "", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        static final class NEVER extends CheckAutomaticallyConfiguration {
            NEVER(String str, int i) {
                super(str, i, null);
            }

            @Override // expo.modules.updates.UpdatesConfiguration.CheckAutomaticallyConfiguration
            public String toJSString() {
                return "NEVER";
            }
        }

        private CheckAutomaticallyConfiguration(String str, int i) {
        }

        static {
            CheckAutomaticallyConfiguration[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        /* compiled from: UpdatesConfiguration.kt */
        @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\bÊ\u0001\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"expo/modules/updates/UpdatesConfiguration.CheckAutomaticallyConfiguration.ERROR_RECOVERY_ONLY", "Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;", "toJSString", "", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        static final class ERROR_RECOVERY_ONLY extends CheckAutomaticallyConfiguration {
            ERROR_RECOVERY_ONLY(String str, int i) {
                super(str, i, null);
            }

            @Override // expo.modules.updates.UpdatesConfiguration.CheckAutomaticallyConfiguration
            public String toJSString() {
                return "ERROR_RECOVERY_ONLY";
            }
        }

        /* compiled from: UpdatesConfiguration.kt */
        @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\bÊ\u0001\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"expo/modules/updates/UpdatesConfiguration.CheckAutomaticallyConfiguration.WIFI_ONLY", "Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;", "toJSString", "", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        static final class WIFI_ONLY extends CheckAutomaticallyConfiguration {
            WIFI_ONLY(String str, int i) {
                super(str, i, null);
            }

            @Override // expo.modules.updates.UpdatesConfiguration.CheckAutomaticallyConfiguration
            public String toJSString() {
                return "WIFI_ONLY";
            }
        }

        /* compiled from: UpdatesConfiguration.kt */
        @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\bÊ\u0001\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"expo/modules/updates/UpdatesConfiguration.CheckAutomaticallyConfiguration.ALWAYS", "Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;", "toJSString", "", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        static final class ALWAYS extends CheckAutomaticallyConfiguration {
            ALWAYS(String str, int i) {
                super(str, i, null);
            }

            @Override // expo.modules.updates.UpdatesConfiguration.CheckAutomaticallyConfiguration
            public String toJSString() {
                return "ALWAYS";
            }
        }

        public String toJSString() {
            throw new InvalidArgumentException("Unsupported CheckAutomaticallyConfiguration value");
        }

        public static CheckAutomaticallyConfiguration valueOf(String str) {
            return (CheckAutomaticallyConfiguration) Enum.valueOf(CheckAutomaticallyConfiguration.class, str);
        }

        public static CheckAutomaticallyConfiguration[] values() {
            return (CheckAutomaticallyConfiguration[]) $VALUES.clone();
        }
    }

    public UpdatesConfiguration(Context context, Map<String, ? extends Object> map) {
        this(context, map, INSTANCE.getDisableAntiBrickingMeasures(context, map), context != null ? UpdatesConfigurationOverride.INSTANCE.load$expo_updates_release(context) : null);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(39:0|1|(3:3|(1:5)(2:212|(2:214|215))|6)|(2:217|(35:219|(1:221)(2:222|(1:224)(2:225|(1:227)(1:228)))|8|(3:10|(1:12)(2:192|(2:194|195))|13)|(2:197|(31:199|(1:201)(2:204|(1:206)(2:207|(1:209)(1:210)))|(28:203|(4:17|(1:19)(2:168|(2:170|171))|20|(2:22|23))|(2:173|(1:175)(2:181|(1:183)(2:184|(1:186)(2:187|(1:189)(1:190)))))|191|177|178|25|(3:27|(1:29)(2:147|(2:149|150))|30)|(2:152|(21:154|(1:156)(2:157|(1:159)(2:160|(1:162)(1:163)))|32|(3:34|(1:36)(2:126|(2:128|129))|37)|(2:131|(1:133)(2:136|(1:138)(2:139|(1:141)(2:142|(1:144)(1:145)))))|146|135|39|(3:41|(1:43)(2:106|(2:108|109))|44)|(2:111|(12:113|(1:115)(2:118|(1:120)(2:121|(1:123)(1:124)))|(9:117|(3:48|(1:50)(2:86|(2:88|89))|51)|(2:91|(7:93|(1:95)(2:98|(1:100)(2:101|(1:103)(1:104)))|(4:97|(4:55|(1:57)(2:65|(2:67|68))|58|(4:60|61|62|63))|(2:70|(3:72|(1:74)(2:76|(1:78)(2:79|(1:81)(1:82)))|75))|(4:84|61|62|63)(3:85|62|63))|53|(0)|(0)|(0)(0)))|105|(0)|53|(0)|(0)|(0)(0))|46|(0)|(0)|105|(0)|53|(0)|(0)|(0)(0)))|125|(0)|46|(0)|(0)|105|(0)|53|(0)|(0)|(0)(0)))|164|(0)|(0)|146|135|39|(0)|(0)|125|(0)|46|(0)|(0)|105|(0)|53|(0)|(0)|(0)(0))|15|(0)|(0)|191|177|178|25|(0)|(0)|164|(0)|(0)|146|135|39|(0)|(0)|125|(0)|46|(0)|(0)|105|(0)|53|(0)|(0)|(0)(0)))|211|(0)|15|(0)|(0)|191|177|178|25|(0)|(0)|164|(0)|(0)|146|135|39|(0)|(0)|125|(0)|46|(0)|(0)|105|(0)|53|(0)|(0)|(0)(0)))|229|8|(0)|(0)|211|(0)|15|(0)|(0)|191|177|178|25|(0)|(0)|164|(0)|(0)|146|135|39|(0)|(0)|125|(0)|46|(0)|(0)|105|(0)|53|(0)|(0)|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x03b5, code lost:
    
        if (r2 == null) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00df, code lost:
    
        if (r8 != null) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0239, code lost:
    
        if (r8 == null) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0242, code lost:
    
        io.sentry.android.core.SentryLogcatAdapter.e(expo.modules.updates.UpdatesConfiguration.TAG, "Invalid value " + r8 + " for expo.modules.updates.EXPO_UPDATES_CHECK_ON_LAUNCH in AndroidManifest; defaulting to ALWAYS");
        r8 = expo.modules.updates.UpdatesConfiguration.CheckAutomaticallyConfiguration.ALWAYS;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0192, code lost:
    
        if (r8 == null) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x027f, code lost:
    
        if (r2 == null) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0329, code lost:
    
        if (r2 == null) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x03d7, code lost:
    
        if (r2 != null) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0486, code lost:
    
        if (r2 != null) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
    
        if (r7 == null) goto L14;
     */
    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Removed duplicated region for block: B:10:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x046e  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0472  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0521  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0563  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x05c8  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x05cf  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x04b0  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x051d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public UpdatesConfiguration(android.content.Context r25, java.util.Map<java.lang.String, ? extends java.lang.Object> r26, boolean r27, expo.modules.updates.UpdatesConfigurationOverride r28) {
        /*
            Method dump skipped, instructions count: 1499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: expo.modules.updates.UpdatesConfiguration.<init>(android.content.Context, java.util.Map, boolean, expo.modules.updates.UpdatesConfigurationOverride):void");
    }

    public final CodeSigningConfiguration getCodeSigningConfiguration() {
        return (CodeSigningConfiguration) this.codeSigningConfiguration.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CodeSigningConfiguration codeSigningConfiguration_delegate$lambda$5(UpdatesConfiguration updatesConfiguration) {
        String str = updatesConfiguration.codeSigningCertificate;
        if (str != null) {
            return new CodeSigningConfiguration(str, updatesConfiguration.codeSigningMetadata, updatesConfiguration.codeSigningIncludeManifestResponseCertificateChain, updatesConfiguration.codeSigningAllowUnsignedManifests);
        }
        return null;
    }

    public final String getRuntimeVersion() {
        String str = this.runtimeVersionRaw;
        if (str != null && str.length() != 0) {
            return this.runtimeVersionRaw;
        }
        throw new Exception("No runtime version provided in configuration");
    }

    /* compiled from: UpdatesConfiguration.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J(\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001fH\u0002J:\u0010 \u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001f2\u0006\u0010!\u001a\u00020\u001b2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0002J<\u0010$\u001a\u0004\u0018\u00010%2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001f2\u0006\u0010!\u001a\u00020\u001b2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0002JF\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u001f2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001f2\u0006\u0010!\u001a\u00020\u001b2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0002J(\u0010'\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001fH\u0002J*\u0010(\u001a\u0004\u0018\u00010\u00052\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001fH\u0002J&\u0010)\u001a\u00020*2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001fR\u0018\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lexpo/modules/updates/UpdatesConfiguration$Companion;", "", "<init>", "()V", "TAG", "", "kotlin.jvm.PlatformType", "Ljava/lang/String;", "UPDATES_CONFIGURATION_ENABLED_KEY", "UPDATES_CONFIGURATION_SCOPE_KEY_KEY", "UPDATES_CONFIGURATION_UPDATE_URL_KEY", "UPDATES_CONFIGURATION_REQUEST_HEADERS_KEY", "UPDATES_CONFIGURATION_RUNTIME_VERSION_KEY", "UPDATES_CONFIGURATION_CHECK_ON_LAUNCH_KEY", "UPDATES_CONFIGURATION_LAUNCH_WAIT_MS_KEY", "UPDATES_CONFIGURATION_HAS_EMBEDDED_UPDATE_KEY", "UPDATES_CONFIGURATION_ENABLE_EXPO_UPDATES_PROTOCOL_V0_COMPATIBILITY_MODE", "UPDATES_CONFIGURATION_DISABLE_ANTI_BRICKING_MEASURES", "UPDATES_CONFIGURATION_CODE_SIGNING_CERTIFICATE", "UPDATES_CONFIGURATION_CODE_SIGNING_METADATA", "UPDATES_CONFIGURATION_CODE_SIGNING_INCLUDE_MANIFEST_RESPONSE_CERTIFICATE_CHAIN", "UPDATES_CONFIGURATION_CODE_SIGNING_ALLOW_UNSIGNED_MANIFESTS", "UPDATES_CONFIGURATION_LAUNCH_WAIT_MS_DEFAULT_VALUE", "", "UPDATES_CONFIGURATION_RUNTIME_VERSION_READ_FINGERPRINT_FILE_SENTINEL", "FINGERPRINT_FILE_NAME", "getDisableAntiBrickingMeasures", "", "context", "Landroid/content/Context;", "overrideMap", "", "getHasEmbeddedUpdate", UpdatesConfiguration.UPDATES_CONFIGURATION_DISABLE_ANTI_BRICKING_MEASURES, "configOverride", "Lexpo/modules/updates/UpdatesConfigurationOverride;", "getUpdateUrl", "Landroid/net/Uri;", "getRequestHeaders", "getIsEnabled", "getRuntimeVersion", "getUpdatesConfigurationValidationResult", "Lexpo/modules/updates/UpdatesConfigurationValidationResult;", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Uri getUpdateUrl(Context context, Map<String, ? extends Object> overrideMap, boolean disableAntiBrickingMeasures, UpdatesConfigurationOverride configOverride) {
            String str;
            Object obj;
            if (disableAntiBrickingMeasures && configOverride != null) {
                return configOverride.getUpdateUrl();
            }
            if (overrideMap != null) {
                if (overrideMap.containsKey(UpdatesConfiguration.UPDATES_CONFIGURATION_UPDATE_URL_KEY)) {
                    obj = overrideMap.get(UpdatesConfiguration.UPDATES_CONFIGURATION_UPDATE_URL_KEY);
                    if (!(obj instanceof Uri)) {
                        Intrinsics.checkNotNull(obj);
                        throw new AssertionError("UpdatesConfiguration failed to initialize: bad value of type " + obj.getClass().getSimpleName() + " provided for key updateUrl");
                    }
                } else {
                    obj = null;
                }
                Uri uri = (Uri) obj;
                if (uri != null) {
                    return uri;
                }
            }
            if (context == null) {
                return null;
            }
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle.containsKey("expo.modules.updates.EXPO_UPDATE_URL")) {
                KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(String.class);
                if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(String.class))) {
                    str = bundle.getString("expo.modules.updates.EXPO_UPDATE_URL");
                } else {
                    str = Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Boolean.TYPE)) ? (String) Boolean.valueOf(bundle.getBoolean("expo.modules.updates.EXPO_UPDATE_URL")) : Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Integer.TYPE)) ? (String) Integer.valueOf(bundle.getInt("expo.modules.updates.EXPO_UPDATE_URL")) : (String) bundle.get("expo.modules.updates.EXPO_UPDATE_URL");
                }
            } else {
                str = null;
            }
            if (str != null) {
                return Uri.parse(str);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00b1, code lost:
        
            if (r4 == null) goto L34;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.Map<java.lang.String, java.lang.String> getRequestHeaders(android.content.Context r2, java.util.Map<java.lang.String, ? extends java.lang.Object> r3, boolean r4, expo.modules.updates.UpdatesConfigurationOverride r5) {
            /*
                r1 = this;
                if (r4 == 0) goto L9
                if (r5 == 0) goto L9
                java.util.Map r2 = r5.getRequestHeaders()
                return r2
            L9:
                r4 = 0
                if (r3 == 0) goto L49
                java.lang.String r5 = "requestHeaders"
                boolean r0 = r3.containsKey(r5)
                if (r0 != 0) goto L16
                r3 = r4
                goto L1e
            L16:
                java.lang.Object r3 = r3.get(r5)
                boolean r5 = r3 instanceof java.util.Map
                if (r5 == 0) goto L23
            L1e:
                java.util.Map r3 = (java.util.Map) r3
                if (r3 != 0) goto Lbb
                goto L49
            L23:
                java.lang.AssertionError r2 = new java.lang.AssertionError
                kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
                java.lang.Class r3 = r3.getClass()
                java.lang.String r3 = r3.getSimpleName()
                java.lang.StringBuilder r4 = new java.lang.StringBuilder
                java.lang.String r5 = "UpdatesConfiguration failed to initialize: bad value of type "
                r4.<init>(r5)
                java.lang.StringBuilder r3 = r4.append(r3)
                java.lang.String r4 = " provided for key requestHeaders"
                java.lang.StringBuilder r3 = r3.append(r4)
                java.lang.String r3 = r3.toString()
                r2.<init>(r3)
                throw r2
            L49:
                if (r2 == 0) goto Lb3
                android.content.pm.PackageManager r3 = r2.getPackageManager()
                java.lang.String r2 = r2.getPackageName()
                r5 = 128(0x80, float:1.8E-43)
                android.content.pm.ApplicationInfo r2 = r3.getApplicationInfo(r2, r5)
                android.os.Bundle r2 = r2.metaData
                java.lang.String r3 = "expo.modules.updates.UPDATES_CONFIGURATION_REQUEST_HEADERS_KEY"
                boolean r5 = r2.containsKey(r3)
                if (r5 != 0) goto L64
                goto Lb1
            L64:
                java.lang.Class<java.lang.String> r4 = java.lang.String.class
                kotlin.reflect.KClass r4 = kotlin.jvm.internal.Reflection.getOrCreateKotlinClass(r4)
                java.lang.Class<java.lang.String> r5 = java.lang.String.class
                kotlin.reflect.KClass r5 = kotlin.jvm.internal.Reflection.getOrCreateKotlinClass(r5)
                boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
                if (r5 == 0) goto L7c
                java.lang.String r2 = r2.getString(r3)
            L7a:
                r4 = r2
                goto Lb1
            L7c:
                java.lang.Class r5 = java.lang.Boolean.TYPE
                kotlin.reflect.KClass r5 = kotlin.jvm.internal.Reflection.getOrCreateKotlinClass(r5)
                boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
                if (r5 == 0) goto L93
                boolean r2 = r2.getBoolean(r3)
                java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
                java.lang.String r2 = (java.lang.String) r2
                goto L7a
            L93:
                java.lang.Class r5 = java.lang.Integer.TYPE
                kotlin.reflect.KClass r5 = kotlin.jvm.internal.Reflection.getOrCreateKotlinClass(r5)
                boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
                if (r4 == 0) goto Laa
                int r2 = r2.getInt(r3)
                java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                java.lang.String r2 = (java.lang.String) r2
                goto L7a
            Laa:
                java.lang.Object r2 = r2.get(r3)
                java.lang.String r2 = (java.lang.String) r2
                goto L7a
            Lb1:
                if (r4 != 0) goto Lb5
            Lb3:
                java.lang.String r4 = "{}"
            Lb5:
                expo.modules.updates.UpdatesUtils r2 = expo.modules.updates.UpdatesUtils.INSTANCE
                java.util.Map r3 = r2.getMapFromJSONString(r4)
            Lbb:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: expo.modules.updates.UpdatesConfiguration.Companion.getRequestHeaders(android.content.Context, java.util.Map, boolean, expo.modules.updates.UpdatesConfigurationOverride):java.util.Map");
        }

        public final UpdatesConfigurationValidationResult getUpdatesConfigurationValidationResult(Context context, Map<String, ? extends Object> overrideMap) {
            if (!getIsEnabled(context, overrideMap)) {
                return UpdatesConfigurationValidationResult.INVALID_NOT_ENABLED;
            }
            if (getUpdateUrl(context, overrideMap, getDisableAntiBrickingMeasures(context, overrideMap), context != null ? UpdatesConfigurationOverride.INSTANCE.load$expo_updates_release(context) : null) == null) {
                return UpdatesConfigurationValidationResult.INVALID_MISSING_URL;
            }
            String runtimeVersion = getRuntimeVersion(context, overrideMap);
            if (runtimeVersion == null || runtimeVersion.length() == 0) {
                return UpdatesConfigurationValidationResult.INVALID_MISSING_RUNTIME_VERSION;
            }
            return UpdatesConfigurationValidationResult.VALID;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean getDisableAntiBrickingMeasures(Context context, Map<String, ? extends Object> overrideMap) {
            Boolean valueOf;
            Object obj;
            Boolean bool = null;
            if (overrideMap != null) {
                if (overrideMap.containsKey(UpdatesConfiguration.UPDATES_CONFIGURATION_DISABLE_ANTI_BRICKING_MEASURES)) {
                    obj = overrideMap.get(UpdatesConfiguration.UPDATES_CONFIGURATION_DISABLE_ANTI_BRICKING_MEASURES);
                    if (!(obj instanceof Boolean)) {
                        Intrinsics.checkNotNull(obj);
                        throw new AssertionError("UpdatesConfiguration failed to initialize: bad value of type " + obj.getClass().getSimpleName() + " provided for key disableAntiBrickingMeasures");
                    }
                } else {
                    obj = null;
                }
                Boolean bool2 = (Boolean) obj;
                if (bool2 != null) {
                    return bool2.booleanValue();
                }
            }
            if (context != null) {
                Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
                if (bundle.containsKey("expo.modules.updates.DISABLE_ANTI_BRICKING_MEASURES")) {
                    KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Boolean.class);
                    if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(String.class))) {
                        valueOf = (Boolean) bundle.getString("expo.modules.updates.DISABLE_ANTI_BRICKING_MEASURES");
                    } else {
                        valueOf = Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Boolean.TYPE)) ? Boolean.valueOf(bundle.getBoolean("expo.modules.updates.DISABLE_ANTI_BRICKING_MEASURES")) : Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Integer.TYPE)) ? (Boolean) Integer.valueOf(bundle.getInt("expo.modules.updates.DISABLE_ANTI_BRICKING_MEASURES")) : (Boolean) bundle.get("expo.modules.updates.DISABLE_ANTI_BRICKING_MEASURES");
                    }
                    bool = valueOf;
                }
            }
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean getHasEmbeddedUpdate(Context context, Map<String, ? extends Object> overrideMap, boolean disableAntiBrickingMeasures, UpdatesConfigurationOverride configOverride) {
            Boolean valueOf;
            Object obj;
            if (disableAntiBrickingMeasures && configOverride != null) {
                return false;
            }
            Boolean bool = null;
            if (overrideMap != null) {
                if (overrideMap.containsKey(UpdatesConfiguration.UPDATES_CONFIGURATION_HAS_EMBEDDED_UPDATE_KEY)) {
                    obj = overrideMap.get(UpdatesConfiguration.UPDATES_CONFIGURATION_HAS_EMBEDDED_UPDATE_KEY);
                    if (!(obj instanceof Boolean)) {
                        Intrinsics.checkNotNull(obj);
                        throw new AssertionError("UpdatesConfiguration failed to initialize: bad value of type " + obj.getClass().getSimpleName() + " provided for key hasEmbeddedUpdate");
                    }
                } else {
                    obj = null;
                }
                Boolean bool2 = (Boolean) obj;
                if (bool2 != null) {
                    return bool2.booleanValue();
                }
            }
            if (context != null) {
                Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
                if (bundle.containsKey("expo.modules.updates.HAS_EMBEDDED_UPDATE")) {
                    KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Boolean.class);
                    if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(String.class))) {
                        valueOf = (Boolean) bundle.getString("expo.modules.updates.HAS_EMBEDDED_UPDATE");
                    } else {
                        valueOf = Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Boolean.TYPE)) ? Boolean.valueOf(bundle.getBoolean("expo.modules.updates.HAS_EMBEDDED_UPDATE")) : Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Integer.TYPE)) ? (Boolean) Integer.valueOf(bundle.getInt("expo.modules.updates.HAS_EMBEDDED_UPDATE")) : (Boolean) bundle.get("expo.modules.updates.HAS_EMBEDDED_UPDATE");
                    }
                    bool = valueOf;
                }
            }
            if (bool != null) {
                return bool.booleanValue();
            }
            return true;
        }

        private final boolean getIsEnabled(Context context, Map<String, ? extends Object> overrideMap) {
            Boolean valueOf;
            Object obj;
            Boolean bool = null;
            if (overrideMap != null) {
                if (overrideMap.containsKey("enabled")) {
                    obj = overrideMap.get("enabled");
                    if (!(obj instanceof Boolean)) {
                        Intrinsics.checkNotNull(obj);
                        throw new AssertionError("UpdatesConfiguration failed to initialize: bad value of type " + obj.getClass().getSimpleName() + " provided for key enabled");
                    }
                } else {
                    obj = null;
                }
                Boolean bool2 = (Boolean) obj;
                if (bool2 != null) {
                    return bool2.booleanValue();
                }
            }
            if (context != null) {
                Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
                if (bundle.containsKey("expo.modules.updates.ENABLED")) {
                    KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Boolean.class);
                    if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(String.class))) {
                        valueOf = (Boolean) bundle.getString("expo.modules.updates.ENABLED");
                    } else {
                        valueOf = Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Boolean.TYPE)) ? Boolean.valueOf(bundle.getBoolean("expo.modules.updates.ENABLED")) : Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Integer.TYPE)) ? (Boolean) Integer.valueOf(bundle.getInt("expo.modules.updates.ENABLED")) : (Boolean) bundle.get("expo.modules.updates.ENABLED");
                    }
                    bool = valueOf;
                }
            }
            if (bool != null) {
                return bool.booleanValue();
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
        
            if (r6 == null) goto L14;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String getRuntimeVersion(android.content.Context r5, java.util.Map<java.lang.String, ? extends java.lang.Object> r6) {
            /*
                Method dump skipped, instructions count: 277
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: expo.modules.updates.UpdatesConfiguration.Companion.getRuntimeVersion(android.content.Context, java.util.Map):java.lang.String");
        }
    }
}
