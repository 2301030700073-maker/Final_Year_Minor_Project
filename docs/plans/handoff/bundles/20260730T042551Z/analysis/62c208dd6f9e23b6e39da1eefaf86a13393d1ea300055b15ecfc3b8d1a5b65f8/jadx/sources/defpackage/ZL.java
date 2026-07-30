package defpackage;

import android.content.pm.PackageInfo;
import android.os.Build;
import defpackage.AbstractC3306m1;
import defpackage.C0687aM;
import defpackage.YE;
import java.lang.reflect.InvocationTargetException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class ZL {

    /* renamed from: do, reason: not valid java name */
    public static final AbstractC3306m1.Cnew f4805do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final AbstractC3306m1.Ctry f4806do;

    /* renamed from: for, reason: not valid java name */
    public static final AbstractC3306m1.Cnew f4807for;

    /* renamed from: if, reason: not valid java name */
    public static final AbstractC3306m1.Cnew f4808if;

    /* renamed from: new, reason: not valid java name */
    public static final AbstractC3306m1.Cnew f4809new;

    /* renamed from: ZL$do, reason: invalid class name */
    public class Cdo extends AbstractC3306m1.Cthis {

        /* renamed from: do, reason: not valid java name */
        public final Pattern f4810do = Pattern.compile("\\A\\d+");

        @Override // defpackage.AbstractC3306m1
        /* renamed from: new, reason: not valid java name */
        public final boolean mo2991new() {
            int i;
            PackageInfo packageInfo;
            boolean mo2991new = super.mo2991new();
            if (!mo2991new || (i = Build.VERSION.SDK_INT) >= 29) {
                return mo2991new;
            }
            int i2 = YL.f4729do;
            if (i >= 26) {
                packageInfo = C3424o1.m7648do();
            } else {
                try {
                    packageInfo = YL.m2913do();
                } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                    packageInfo = null;
                }
            }
            if (packageInfo == null) {
                return false;
            }
            Matcher matcher = this.f4810do.matcher(packageInfo.versionName);
            return matcher.find() && Integer.parseInt(packageInfo.versionName.substring(matcher.start(), matcher.end())) >= 105;
        }
    }

    /* renamed from: ZL$if, reason: invalid class name */
    public class Cif extends AbstractC3306m1.Cnew {
        public Cif() {
            super("MULTI_PROFILE", "MULTI_PROFILE");
        }

        @Override // defpackage.AbstractC3306m1
        /* renamed from: new */
        public final boolean mo2991new() {
            if (!super.mo2991new() || !C0315Kc.m1176return("MULTI_PROCESS")) {
                return false;
            }
            int i = YL.f4729do;
            if (ZL.f4808if.mo2991new()) {
                return C0687aM.Cdo.f4943do.mo4831case().isMultiProcessEnabled();
            }
            throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
        }
    }

    static {
        new AbstractC3306m1.Cif("VISUAL_STATE_CALLBACK", "VISUAL_STATE_CALLBACK");
        new AbstractC3306m1.Cif("OFF_SCREEN_PRERASTER", "OFF_SCREEN_PRERASTER");
        new AbstractC3306m1.Ctry("SAFE_BROWSING_ENABLE", "SAFE_BROWSING_ENABLE");
        new AbstractC3306m1.Cfor("DISABLED_ACTION_MODE_MENU_ITEMS", "DISABLED_ACTION_MODE_MENU_ITEMS");
        new AbstractC3306m1.Ccase("START_SAFE_BROWSING", "START_SAFE_BROWSING");
        new AbstractC3306m1.Ccase("SAFE_BROWSING_WHITELIST", "SAFE_BROWSING_WHITELIST");
        new AbstractC3306m1.Ccase("SAFE_BROWSING_WHITELIST", "SAFE_BROWSING_ALLOWLIST");
        new AbstractC3306m1.Ccase("SAFE_BROWSING_ALLOWLIST", "SAFE_BROWSING_WHITELIST");
        new AbstractC3306m1.Ccase("SAFE_BROWSING_ALLOWLIST", "SAFE_BROWSING_ALLOWLIST");
        new AbstractC3306m1.Ccase("SAFE_BROWSING_PRIVACY_POLICY_URL", "SAFE_BROWSING_PRIVACY_POLICY_URL");
        new AbstractC3306m1.Cfor("SERVICE_WORKER_BASIC_USAGE", "SERVICE_WORKER_BASIC_USAGE");
        new AbstractC3306m1.Cfor("SERVICE_WORKER_CACHE_MODE", "SERVICE_WORKER_CACHE_MODE");
        new AbstractC3306m1.Cfor("SERVICE_WORKER_CONTENT_ACCESS", "SERVICE_WORKER_CONTENT_ACCESS");
        new AbstractC3306m1.Cfor("SERVICE_WORKER_FILE_ACCESS", "SERVICE_WORKER_FILE_ACCESS");
        new AbstractC3306m1.Cfor("SERVICE_WORKER_BLOCK_NETWORK_LOADS", "SERVICE_WORKER_BLOCK_NETWORK_LOADS");
        new AbstractC3306m1.Cfor("SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST", "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST");
        new AbstractC3306m1.Cif("RECEIVE_WEB_RESOURCE_ERROR", "RECEIVE_WEB_RESOURCE_ERROR");
        new AbstractC3306m1.Cif("RECEIVE_HTTP_ERROR", "RECEIVE_HTTP_ERROR");
        new AbstractC3306m1.Cfor("SHOULD_OVERRIDE_WITH_REDIRECTS", "SHOULD_OVERRIDE_WITH_REDIRECTS");
        new AbstractC3306m1.Ccase("SAFE_BROWSING_HIT", "SAFE_BROWSING_HIT");
        new AbstractC3306m1.Cfor("WEB_RESOURCE_REQUEST_IS_REDIRECT", "WEB_RESOURCE_REQUEST_IS_REDIRECT");
        new AbstractC3306m1.Cif("WEB_RESOURCE_ERROR_GET_DESCRIPTION", "WEB_RESOURCE_ERROR_GET_DESCRIPTION");
        new AbstractC3306m1.Cif("WEB_RESOURCE_ERROR_GET_CODE", "WEB_RESOURCE_ERROR_GET_CODE");
        new AbstractC3306m1.Ccase("SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY", "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY");
        new AbstractC3306m1.Ccase("SAFE_BROWSING_RESPONSE_PROCEED", "SAFE_BROWSING_RESPONSE_PROCEED");
        new AbstractC3306m1.Ccase("SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL", "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL");
        new AbstractC3306m1.Cif("WEB_MESSAGE_PORT_POST_MESSAGE", "WEB_MESSAGE_PORT_POST_MESSAGE");
        new AbstractC3306m1.Cif("WEB_MESSAGE_PORT_CLOSE", "WEB_MESSAGE_PORT_CLOSE");
        f4805do = new AbstractC3306m1.Cnew("WEB_MESSAGE_ARRAY_BUFFER", "WEB_MESSAGE_ARRAY_BUFFER");
        new AbstractC3306m1.Cif("WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK", "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK");
        new AbstractC3306m1.Cif("CREATE_WEB_MESSAGE_CHANNEL", "CREATE_WEB_MESSAGE_CHANNEL");
        new AbstractC3306m1.Cif("POST_WEB_MESSAGE", "POST_WEB_MESSAGE");
        new AbstractC3306m1.Cif("WEB_MESSAGE_CALLBACK_ON_MESSAGE", "WEB_MESSAGE_CALLBACK_ON_MESSAGE");
        f4806do = new AbstractC3306m1.Ctry("GET_WEB_VIEW_CLIENT", "GET_WEB_VIEW_CLIENT");
        new AbstractC3306m1.Ctry("GET_WEB_CHROME_CLIENT", "GET_WEB_CHROME_CLIENT");
        new AbstractC3306m1.Cgoto("GET_WEB_VIEW_RENDERER", "GET_WEB_VIEW_RENDERER");
        new AbstractC3306m1.Cgoto("WEB_VIEW_RENDERER_TERMINATE", "WEB_VIEW_RENDERER_TERMINATE");
        new AbstractC3306m1.Celse();
        new YE.Cif();
        new YE.Cdo();
        new AbstractC3306m1.Cgoto("WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE", "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE");
        new Cdo();
        new AbstractC3306m1.Cnew("PROXY_OVERRIDE", "PROXY_OVERRIDE:3");
        f4808if = new AbstractC3306m1.Cnew("MULTI_PROCESS", "MULTI_PROCESS_QUERY");
        new AbstractC3306m1.Cgoto("FORCE_DARK", "FORCE_DARK");
        new AbstractC3306m1.Cnew("FORCE_DARK_STRATEGY", "FORCE_DARK_BEHAVIOR");
        f4807for = new AbstractC3306m1.Cnew("WEB_MESSAGE_LISTENER", "WEB_MESSAGE_LISTENER");
        new AbstractC3306m1.Cnew("DOCUMENT_START_SCRIPT", "DOCUMENT_START_SCRIPT:1");
        new AbstractC3306m1.Cnew("PROXY_OVERRIDE_REVERSE_BYPASS", "PROXY_OVERRIDE_REVERSE_BYPASS");
        new AbstractC3306m1.Cnew("GET_VARIATIONS_HEADER", "GET_VARIATIONS_HEADER");
        new AbstractC3306m1.Cnew("ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY", "ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY");
        new AbstractC3306m1.Cnew("GET_COOKIE_INFO", "GET_COOKIE_INFO");
        new AbstractC3306m1.Cnew("REQUESTED_WITH_HEADER_ALLOW_LIST", "REQUESTED_WITH_HEADER_ALLOW_LIST");
        new AbstractC3306m1.Cnew("USER_AGENT_METADATA", "USER_AGENT_METADATA");
        new Cif();
        new AbstractC3306m1.Cnew("ATTRIBUTION_REGISTRATION_BEHAVIOR", "ATTRIBUTION_BEHAVIOR");
        new AbstractC3306m1.Cnew("WEBVIEW_MEDIA_INTEGRITY_API_STATUS", "WEBVIEW_INTEGRITY_API_STATUS");
        f4809new = new AbstractC3306m1.Cnew("MUTE_AUDIO", "MUTE_AUDIO");
    }
}
