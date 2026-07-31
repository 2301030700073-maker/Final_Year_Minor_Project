package androidx.webkit.internal;

import android.content.pm.PackageInfo;
import android.os.Build;
import androidx.datastore.core.Api26Impl;
import androidx.webkit.WebViewCompat;
import androidx.webkit.internal.ApiFeature;
import com.fsck.k9.sasl.OAuthBearer;
import java.lang.reflect.InvocationTargetException;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class WebViewFeatureInternal {
    public static final AnonymousClass1 ALGORITHMIC_DARKENING;
    public static final ApiFeature.M MULTI_PROCESS;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.webkit.internal.WebViewFeatureInternal$1, reason: invalid class name */
    public final class AnonymousClass1 extends ApiFeature {
        public final Pattern mVersionPattern;

        public AnonymousClass1() {
            super("ALGORITHMIC_DARKENING", "ALGORITHMIC_DARKENING");
            this.mVersionPattern = Pattern.compile("\\A\\d+");
        }

        @Override // androidx.webkit.internal.ApiFeature
        public final boolean isSupportedByFramework() {
            return Build.VERSION.SDK_INT >= 33;
        }

        @Override // androidx.webkit.internal.ApiFeature
        public final boolean isSupportedByWebView() {
            int i;
            PackageInfo packageInfo;
            boolean isSupportedByWebView = super.isSupportedByWebView();
            if (!isSupportedByWebView || (i = Build.VERSION.SDK_INT) >= 29) {
                return isSupportedByWebView;
            }
            int i2 = WebViewCompat.$r8$clinit;
            if (i >= 26) {
                packageInfo = Api26Impl.getCurrentWebViewPackage();
            } else {
                try {
                    packageInfo = WebViewCompat.getLoadedWebViewPackageInfo();
                } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                    packageInfo = null;
                }
            }
            if (packageInfo == null) {
                return false;
            }
            Matcher matcher = this.mVersionPattern.matcher(packageInfo.versionName);
            return matcher.find() && Integer.parseInt(packageInfo.versionName.substring(matcher.start(), matcher.end())) >= 105;
        }
    }

    static {
        new ApiFeature.M(0, "VISUAL_STATE_CALLBACK", "VISUAL_STATE_CALLBACK");
        new ApiFeature.M(0, "OFF_SCREEN_PRERASTER", "OFF_SCREEN_PRERASTER");
        new ApiFeature.M(3, "SAFE_BROWSING_ENABLE", "SAFE_BROWSING_ENABLE");
        new ApiFeature.M(1, "DISABLED_ACTION_MODE_MENU_ITEMS", "DISABLED_ACTION_MODE_MENU_ITEMS");
        new ApiFeature.M(4, "START_SAFE_BROWSING", "START_SAFE_BROWSING");
        new ApiFeature.M(4, "SAFE_BROWSING_WHITELIST", "SAFE_BROWSING_WHITELIST");
        new ApiFeature.M(4, "SAFE_BROWSING_WHITELIST", "SAFE_BROWSING_ALLOWLIST");
        new ApiFeature.M(4, "SAFE_BROWSING_ALLOWLIST", "SAFE_BROWSING_WHITELIST");
        new ApiFeature.M(4, "SAFE_BROWSING_ALLOWLIST", "SAFE_BROWSING_ALLOWLIST");
        new ApiFeature.M(4, "SAFE_BROWSING_PRIVACY_POLICY_URL", "SAFE_BROWSING_PRIVACY_POLICY_URL");
        new ApiFeature.M(1, "SERVICE_WORKER_BASIC_USAGE", "SERVICE_WORKER_BASIC_USAGE");
        new ApiFeature.M(1, "SERVICE_WORKER_CACHE_MODE", "SERVICE_WORKER_CACHE_MODE");
        new ApiFeature.M(1, "SERVICE_WORKER_CONTENT_ACCESS", "SERVICE_WORKER_CONTENT_ACCESS");
        new ApiFeature.M(1, "SERVICE_WORKER_FILE_ACCESS", "SERVICE_WORKER_FILE_ACCESS");
        new ApiFeature.M(1, "SERVICE_WORKER_BLOCK_NETWORK_LOADS", "SERVICE_WORKER_BLOCK_NETWORK_LOADS");
        new ApiFeature.M(1, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST", "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST");
        new ApiFeature.M(0, "RECEIVE_WEB_RESOURCE_ERROR", "RECEIVE_WEB_RESOURCE_ERROR");
        new ApiFeature.M(0, "RECEIVE_HTTP_ERROR", "RECEIVE_HTTP_ERROR");
        new ApiFeature.M(1, "SHOULD_OVERRIDE_WITH_REDIRECTS", "SHOULD_OVERRIDE_WITH_REDIRECTS");
        new ApiFeature.M(4, "SAFE_BROWSING_HIT", "SAFE_BROWSING_HIT");
        new ApiFeature.M(1, "WEB_RESOURCE_REQUEST_IS_REDIRECT", "WEB_RESOURCE_REQUEST_IS_REDIRECT");
        new ApiFeature.M(0, "WEB_RESOURCE_ERROR_GET_DESCRIPTION", "WEB_RESOURCE_ERROR_GET_DESCRIPTION");
        new ApiFeature.M(0, "WEB_RESOURCE_ERROR_GET_CODE", "WEB_RESOURCE_ERROR_GET_CODE");
        new ApiFeature.M(4, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY", "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY");
        new ApiFeature.M(4, "SAFE_BROWSING_RESPONSE_PROCEED", "SAFE_BROWSING_RESPONSE_PROCEED");
        new ApiFeature.M(4, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL", "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL");
        new ApiFeature.M(0, "WEB_MESSAGE_PORT_POST_MESSAGE", "WEB_MESSAGE_PORT_POST_MESSAGE");
        new ApiFeature.M(0, "WEB_MESSAGE_PORT_CLOSE", "WEB_MESSAGE_PORT_CLOSE");
        new ApiFeature.M(2, "WEB_MESSAGE_ARRAY_BUFFER", "WEB_MESSAGE_ARRAY_BUFFER");
        new ApiFeature.M(0, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK", "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK");
        new ApiFeature.M(0, "CREATE_WEB_MESSAGE_CHANNEL", "CREATE_WEB_MESSAGE_CHANNEL");
        new ApiFeature.M(0, "POST_WEB_MESSAGE", "POST_WEB_MESSAGE");
        new ApiFeature.M(0, "WEB_MESSAGE_CALLBACK_ON_MESSAGE", "WEB_MESSAGE_CALLBACK_ON_MESSAGE");
        new ApiFeature.M(3, "GET_WEB_VIEW_CLIENT", "GET_WEB_VIEW_CLIENT");
        new ApiFeature.M(3, "GET_WEB_CHROME_CLIENT", "GET_WEB_CHROME_CLIENT");
        new ApiFeature.M(6, "GET_WEB_VIEW_RENDERER", "GET_WEB_VIEW_RENDERER");
        new ApiFeature.M(6, "WEB_VIEW_RENDERER_TERMINATE", "WEB_VIEW_RENDERER_TERMINATE");
        new ApiFeature.M(5, "TRACING_CONTROLLER_BASIC_USAGE", "TRACING_CONTROLLER_BASIC_USAGE");
        new Object() { // from class: androidx.webkit.internal.StartupApiFeature$P
            public static final HashSet sValues = new HashSet();

            {
                sValues.add(this);
            }
        };
        new Object() { // from class: androidx.webkit.internal.StartupApiFeature$P
            public static final HashSet sValues = new HashSet();

            {
                sValues.add(this);
            }
        };
        new Object() { // from class: androidx.webkit.internal.StartupApiFeature$P
            public static final HashSet sValues = new HashSet();

            {
                sValues.add(this);
            }
        };
        new ApiFeature.M(6, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE", "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE");
        ALGORITHMIC_DARKENING = new AnonymousClass1();
        new ApiFeature.M(2, "PROXY_OVERRIDE", "PROXY_OVERRIDE:3");
        MULTI_PROCESS = new ApiFeature.M(2, "MULTI_PROCESS", "MULTI_PROCESS_QUERY");
        new ApiFeature.M(6, "FORCE_DARK", "FORCE_DARK");
        new ApiFeature.M(2, "FORCE_DARK_STRATEGY", "FORCE_DARK_BEHAVIOR");
        new ApiFeature.M(2, "WEB_MESSAGE_LISTENER", "WEB_MESSAGE_LISTENER");
        new ApiFeature.M(2, "DOCUMENT_START_SCRIPT", "DOCUMENT_START_SCRIPT:1");
        new ApiFeature.M(2, "PROXY_OVERRIDE_REVERSE_BYPASS", "PROXY_OVERRIDE_REVERSE_BYPASS");
        new ApiFeature.M(2, "GET_VARIATIONS_HEADER", "GET_VARIATIONS_HEADER");
        new ApiFeature.M(2, "ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY", "ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY");
        new ApiFeature.M(2, "GET_COOKIE_INFO", "GET_COOKIE_INFO");
        new ApiFeature.M(2, "REQUESTED_WITH_HEADER_ALLOW_LIST", "REQUESTED_WITH_HEADER_ALLOW_LIST");
        new ApiFeature.M(2, "USER_AGENT_METADATA", "USER_AGENT_METADATA");
        final int i = 0;
        new ApiFeature.M("USER_AGENT_METADATA_FORM_FACTORS", "USER_AGENT_METADATA") { // from class: androidx.webkit.internal.WebViewFeatureInternal.2
            @Override // androidx.webkit.internal.ApiFeature
            public final boolean isSupportedByWebView() {
                PackageInfo packageInfo;
                switch (i) {
                    case 0:
                        if (!super.isSupportedByWebView()) {
                            return false;
                        }
                        int i2 = WebViewCompat.$r8$clinit;
                        if (Build.VERSION.SDK_INT >= 26) {
                            packageInfo = Api26Impl.getCurrentWebViewPackage();
                        } else {
                            try {
                                packageInfo = WebViewCompat.getLoadedWebViewPackageInfo();
                            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                                packageInfo = null;
                            }
                        }
                        if (packageInfo == null) {
                            return false;
                        }
                        return (Build.VERSION.SDK_INT >= 28 ? ApiHelperForP.getLongVersionCode(packageInfo) : (long) packageInfo.versionCode) >= 636700000;
                    case 1:
                        if (!super.isSupportedByWebView() || !OAuthBearer.isFeatureSupported("MULTI_PROCESS")) {
                            return false;
                        }
                        int i3 = WebViewCompat.$r8$clinit;
                        if (WebViewFeatureInternal.MULTI_PROCESS.isSupportedByWebView()) {
                            return WebViewGlueCommunicator$LAZY_FACTORY_HOLDER.INSTANCE.getStatics().isMultiProcessEnabled();
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("This method is not supported by the current version of the framework and the current WebView APK");
                        return false;
                    default:
                        if (OAuthBearer.isFeatureSupported("MULTI_PROFILE")) {
                            return super.isSupportedByWebView();
                        }
                        return false;
                }
            }
        };
        final int i2 = 1;
        new ApiFeature.M("MULTI_PROFILE", "MULTI_PROFILE") { // from class: androidx.webkit.internal.WebViewFeatureInternal.2
            @Override // androidx.webkit.internal.ApiFeature
            public final boolean isSupportedByWebView() {
                PackageInfo packageInfo;
                switch (i2) {
                    case 0:
                        if (!super.isSupportedByWebView()) {
                            return false;
                        }
                        int i22 = WebViewCompat.$r8$clinit;
                        if (Build.VERSION.SDK_INT >= 26) {
                            packageInfo = Api26Impl.getCurrentWebViewPackage();
                        } else {
                            try {
                                packageInfo = WebViewCompat.getLoadedWebViewPackageInfo();
                            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                                packageInfo = null;
                            }
                        }
                        if (packageInfo == null) {
                            return false;
                        }
                        return (Build.VERSION.SDK_INT >= 28 ? ApiHelperForP.getLongVersionCode(packageInfo) : (long) packageInfo.versionCode) >= 636700000;
                    case 1:
                        if (!super.isSupportedByWebView() || !OAuthBearer.isFeatureSupported("MULTI_PROCESS")) {
                            return false;
                        }
                        int i3 = WebViewCompat.$r8$clinit;
                        if (WebViewFeatureInternal.MULTI_PROCESS.isSupportedByWebView()) {
                            return WebViewGlueCommunicator$LAZY_FACTORY_HOLDER.INSTANCE.getStatics().isMultiProcessEnabled();
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("This method is not supported by the current version of the framework and the current WebView APK");
                        return false;
                    default:
                        if (OAuthBearer.isFeatureSupported("MULTI_PROFILE")) {
                            return super.isSupportedByWebView();
                        }
                        return false;
                }
            }
        };
        final int i3 = 2;
        new ApiFeature.M(2, "ATTRIBUTION_REGISTRATION_BEHAVIOR", "ATTRIBUTION_BEHAVIOR");
        new ApiFeature.M(2, "WEBVIEW_MEDIA_INTEGRITY_API_STATUS", "WEBVIEW_INTEGRITY_API_STATUS");
        new ApiFeature.M(2, "MUTE_AUDIO", "MUTE_AUDIO");
        new ApiFeature.M(2, "WEB_AUTHENTICATION", "WEB_AUTHENTICATION");
        new ApiFeature.M(2, "SPECULATIVE_LOADING_STATUS", "SPECULATIVE_LOADING");
        new ApiFeature.M(2, "BACK_FORWARD_CACHE", "BACK_FORWARD_CACHE");
        new ApiFeature.M(2, "BACK_FORWARD_CACHE_SETTINGS", "BACK_FORWARD_CACHE_SETTINGS");
        new ApiFeature.M(2, "DELETE_BROWSING_DATA", "WEB_STORAGE_DELETE_BROWSING_DATA");
        new ApiFeature.M("PREFETCH_URL_V5", "PREFETCH_URL_V5") { // from class: androidx.webkit.internal.WebViewFeatureInternal.2
            @Override // androidx.webkit.internal.ApiFeature
            public final boolean isSupportedByWebView() {
                PackageInfo packageInfo;
                switch (i3) {
                    case 0:
                        if (!super.isSupportedByWebView()) {
                            return false;
                        }
                        int i22 = WebViewCompat.$r8$clinit;
                        if (Build.VERSION.SDK_INT >= 26) {
                            packageInfo = Api26Impl.getCurrentWebViewPackage();
                        } else {
                            try {
                                packageInfo = WebViewCompat.getLoadedWebViewPackageInfo();
                            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                                packageInfo = null;
                            }
                        }
                        if (packageInfo == null) {
                            return false;
                        }
                        return (Build.VERSION.SDK_INT >= 28 ? ApiHelperForP.getLongVersionCode(packageInfo) : (long) packageInfo.versionCode) >= 636700000;
                    case 1:
                        if (!super.isSupportedByWebView() || !OAuthBearer.isFeatureSupported("MULTI_PROCESS")) {
                            return false;
                        }
                        int i32 = WebViewCompat.$r8$clinit;
                        if (WebViewFeatureInternal.MULTI_PROCESS.isSupportedByWebView()) {
                            return WebViewGlueCommunicator$LAZY_FACTORY_HOLDER.INSTANCE.getStatics().isMultiProcessEnabled();
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("This method is not supported by the current version of the framework and the current WebView APK");
                        return false;
                    default:
                        if (OAuthBearer.isFeatureSupported("MULTI_PROFILE")) {
                            return super.isSupportedByWebView();
                        }
                        return false;
                }
            }
        };
        new ApiFeature.M(2, "IMPLEMENTATION_ONLY_FEATURE", "ASYNC_WEBVIEW_STARTUP");
        new ApiFeature.M(2, "IMPLEMENTATION_ONLY_FEATURE", "ASYNC_WEBVIEW_STARTUP_ASYNC_STARTUP_LOCATIONS");
        new ApiFeature.M(2, "DEFAULT_TRAFFICSTATS_TAGGING", "DEFAULT_TRAFFICSTATS_TAGGING");
        new ApiFeature.M(2, "PRERENDER_URL_V2", "PRERENDER_URL_V3");
        new ApiFeature.M(2, "SPECULATIVE_LOADING_CONFIG_V2", "SPECULATIVE_LOADING_CONFIG_V2");
        new ApiFeature.M(2, "SAVE_STATE", "SAVE_STATE");
        new ApiFeature.M(2, "WEB_VIEW_NAVIGATION_CLIENT_BASIC_USAGE", "WEB_VIEW_NAVIGATION_CLIENT_BASIC_USAGE");
        new ApiFeature.M(2, "NAVIGATION_LISTENER_V1", "WEB_VIEW_NAVIGATION_LISTENER_V1");
        new ApiFeature.M(2, "PROVIDER_WEAKLY_REF_WEBVIEW", "PROVIDER_WEAKLY_REF_WEBVIEW");
        new ApiFeature.M(2, "PAYMENT_REQUEST", "PAYMENT_REQUEST");
        new ApiFeature.M(2, "WEBVIEW_BUILDER_EXPERIMENTAL_V1", "WEBVIEW_BUILDER_V1");
        new ApiFeature.M(2, "COOKIE_INTERCEPT", "COOKIE_INTERCEPT");
        new ApiFeature.M(2, "WARM_UP_RENDERER_PROCESS", "WARM_UP_RENDERER_PROCESS");
        new ApiFeature.M(2, "ORIGIN_MATCHED_HEADERS", "EXTRA_HEADER_FOR_ORIGINS");
        new ApiFeature.M(2, "CUSTOM_REQUEST_HEADERS", "CUSTOM_REQUEST_HEADERS");
        new Object() { // from class: androidx.webkit.internal.StartupApiFeature$P
            public static final HashSet sValues = new HashSet();

            {
                sValues.add(this);
            }
        };
        new Object() { // from class: androidx.webkit.internal.StartupApiFeature$P
            public static final HashSet sValues = new HashSet();

            {
                sValues.add(this);
            }
        };
        new Object() { // from class: androidx.webkit.internal.StartupApiFeature$P
            public static final HashSet sValues = new HashSet();

            {
                sValues.add(this);
            }
        };
        new ApiFeature.M(2, "PRECONNECT", "PRECONNECT");
        new ApiFeature.M(2, "ADD_QUIC_HINTS", "ADD_QUIC_HINTS_V1");
        new ApiFeature.M(2, "HYPERLINK_CONTEXT_MENU_ITEMS", "HYPERLINK_CONTEXT_MENU_ITEMS");
    }
}
