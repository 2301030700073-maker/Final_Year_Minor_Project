package expo.modules.updates;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import expo.modules.manifests.core.JSONObjectExtensionKt;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* compiled from: UpdatesConfigurationOverride.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\r\u001a\u00020\u000eH\u0002J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u0015\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J)\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0014\b\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0006HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0019"}, d2 = {"Lexpo/modules/updates/UpdatesConfigurationOverride;", "", UpdatesConfiguration.UPDATES_CONFIGURATION_UPDATE_URL_KEY, "Landroid/net/Uri;", UpdatesConfiguration.UPDATES_CONFIGURATION_REQUEST_HEADERS_KEY, "", "", "<init>", "(Landroid/net/Uri;Ljava/util/Map;)V", "getUpdateUrl", "()Landroid/net/Uri;", "getRequestHeaders", "()Ljava/util/Map;", "toJSONObject", "Lorg/json/JSONObject;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "Companion", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final /* data */ class UpdatesConfigurationOverride {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String UPDATES_PREFS_FILE = "dev.expo.updates.prefs";
    private static final String UPDATES_PREFS_KEY_UPDATES_CONFIGURATION_OVERRIDE = "updatesConfigOverride";
    private final Map<String, String> requestHeaders;
    private final Uri updateUrl;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UpdatesConfigurationOverride copy$default(UpdatesConfigurationOverride updatesConfigurationOverride, Uri uri, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            uri = updatesConfigurationOverride.updateUrl;
        }
        if ((i & 2) != 0) {
            map = updatesConfigurationOverride.requestHeaders;
        }
        return updatesConfigurationOverride.copy(uri, map);
    }

    /* renamed from: component1, reason: from getter */
    public final Uri getUpdateUrl() {
        return this.updateUrl;
    }

    public final Map<String, String> component2() {
        return this.requestHeaders;
    }

    public final UpdatesConfigurationOverride copy(Uri updateUrl, Map<String, String> requestHeaders) {
        Intrinsics.checkNotNullParameter(updateUrl, "updateUrl");
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        return new UpdatesConfigurationOverride(updateUrl, requestHeaders);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UpdatesConfigurationOverride)) {
            return false;
        }
        UpdatesConfigurationOverride updatesConfigurationOverride = (UpdatesConfigurationOverride) other;
        return Intrinsics.areEqual(this.updateUrl, updatesConfigurationOverride.updateUrl) && Intrinsics.areEqual(this.requestHeaders, updatesConfigurationOverride.requestHeaders);
    }

    public int hashCode() {
        return (this.updateUrl.hashCode() * 31) + this.requestHeaders.hashCode();
    }

    public String toString() {
        return "UpdatesConfigurationOverride(updateUrl=" + this.updateUrl + ", requestHeaders=" + this.requestHeaders + ")";
    }

    public UpdatesConfigurationOverride(Uri updateUrl, Map<String, String> requestHeaders) {
        Intrinsics.checkNotNullParameter(updateUrl, "updateUrl");
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        this.updateUrl = updateUrl;
        this.requestHeaders = requestHeaders;
    }

    public final Uri getUpdateUrl() {
        return this.updateUrl;
    }

    public final Map<String, String> getRequestHeaders() {
        return this.requestHeaders;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final JSONObject toJSONObject() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(UpdatesConfiguration.UPDATES_CONFIGURATION_UPDATE_URL_KEY, this.updateUrl.toString());
        jSONObject.put(UpdatesConfiguration.UPDATES_CONFIGURATION_REQUEST_HEADERS_KEY, new JSONObject(this.requestHeaders));
        return jSONObject;
    }

    /* compiled from: UpdatesConfigurationOverride.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nH\u0000¢\u0006\u0002\b\u000bJ\u001f\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000e\u001a\u0004\u0018\u00010\bH\u0000¢\u0006\u0002\b\u000fJ\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lexpo/modules/updates/UpdatesConfigurationOverride$Companion;", "", "<init>", "()V", "UPDATES_PREFS_FILE", "", "UPDATES_PREFS_KEY_UPDATES_CONFIGURATION_OVERRIDE", "load", "Lexpo/modules/updates/UpdatesConfigurationOverride;", "context", "Landroid/content/Context;", "load$expo_updates_release", "save", "", "configOverride", "save$expo_updates_release", "fromJSONObject", "json", "Lorg/json/JSONObject;", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final UpdatesConfigurationOverride load$expo_updates_release(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            SharedPreferences sharedPreferences = context.getSharedPreferences(UpdatesConfigurationOverride.UPDATES_PREFS_FILE, 0);
            String string = sharedPreferences != null ? sharedPreferences.getString(UpdatesConfigurationOverride.UPDATES_PREFS_KEY_UPDATES_CONFIGURATION_OVERRIDE, null) : null;
            if (string != null) {
                return UpdatesConfigurationOverride.INSTANCE.fromJSONObject(new JSONObject(string));
            }
            return null;
        }

        public final void save$expo_updates_release(Context context, UpdatesConfigurationOverride configOverride) {
            Intrinsics.checkNotNullParameter(context, "context");
            SharedPreferences.Editor edit = context.getSharedPreferences(UpdatesConfigurationOverride.UPDATES_PREFS_FILE, 0).edit();
            if (configOverride != null) {
                edit.putString(UpdatesConfigurationOverride.UPDATES_PREFS_KEY_UPDATES_CONFIGURATION_OVERRIDE, configOverride.toJSONObject().toString());
            } else {
                edit.remove(UpdatesConfigurationOverride.UPDATES_PREFS_KEY_UPDATES_CONFIGURATION_OVERRIDE);
            }
            edit.apply();
        }

        private final UpdatesConfigurationOverride fromJSONObject(JSONObject json) {
            JSONObject jSONObject = json.getJSONObject(UpdatesConfiguration.UPDATES_CONFIGURATION_REQUEST_HEADERS_KEY);
            Intrinsics.checkNotNullExpressionValue(jSONObject, "getJSONObject(...)");
            Map<String, Object> map = JSONObjectExtensionKt.toMap(jSONObject);
            LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(map.size()));
            Iterator<T> it = map.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                linkedHashMap.put(entry.getKey(), entry.getValue().toString());
            }
            Uri parse = Uri.parse(json.getString(UpdatesConfiguration.UPDATES_CONFIGURATION_UPDATE_URL_KEY));
            Intrinsics.checkNotNullExpressionValue(parse, "parse(...)");
            return new UpdatesConfigurationOverride(parse, linkedHashMap);
        }
    }
}
