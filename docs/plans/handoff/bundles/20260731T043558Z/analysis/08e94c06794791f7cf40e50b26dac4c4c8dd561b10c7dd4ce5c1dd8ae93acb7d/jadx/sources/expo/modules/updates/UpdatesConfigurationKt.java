package expo.modules.updates;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* compiled from: UpdatesConfiguration.kt */
@Metadata(d1 = {"\u0000.\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a(\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0082\b¢\u0006\u0002\u0010\u0006\u001a4\u0010\u0007\u001a\u0004\u0018\u0001H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0005H\u0082\b¢\u0006\u0002\u0010\t\u001a\u0012\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0005H\u0002\u001a\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fH\u0000\u001a\u001a\u0010\u0010\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0012\u001a\u00020\u000fH\u0002¨\u0006\u0013"}, d2 = {"getMetadataValue", "T", "", "Landroid/content/Context;", SDKConstants.PARAM_KEY, "", "(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;", "readValueCheckingType", "", "(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;", "getDefaultPortForScheme", "", "scheme", "getNormalizedUrlOrigin", "url", "Landroid/net/Uri;", "maybeGetDefaultScopeKey", UpdatesConfiguration.UPDATES_CONFIGURATION_SCOPE_KEY_KEY, UpdatesConfiguration.UPDATES_CONFIGURATION_UPDATE_URL_KEY, "expo-updates_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class UpdatesConfigurationKt {
    private static final /* synthetic */ <T> T getMetadataValue(Context context, String str) {
        Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        if (!bundle.containsKey(str)) {
            return null;
        }
        Intrinsics.reifiedOperationMarker(4, "T");
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Object.class);
        if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(String.class))) {
            CharSequence string = bundle.getString(str);
            Intrinsics.reifiedOperationMarker(1, "T?");
            return (T) string;
        }
        if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Boolean.TYPE))) {
            Object valueOf = Boolean.valueOf(bundle.getBoolean(str));
            Intrinsics.reifiedOperationMarker(1, "T?");
            return (T) valueOf;
        }
        if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Integer.TYPE))) {
            Object valueOf2 = Integer.valueOf(bundle.getInt(str));
            Intrinsics.reifiedOperationMarker(1, "T?");
            return (T) valueOf2;
        }
        T t = (T) bundle.get(str);
        Intrinsics.reifiedOperationMarker(1, "T?");
        return t;
    }

    private static final /* synthetic */ <T> T readValueCheckingType(Map<String, ? extends Object> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        T t = (T) map.get(str);
        Intrinsics.reifiedOperationMarker(3, "T");
        if (t instanceof Object) {
            return t;
        }
        Intrinsics.checkNotNull(t);
        throw new AssertionError("UpdatesConfiguration failed to initialize: bad value of type " + t.getClass().getSimpleName() + " provided for key " + str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:10:0x003c A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0025 A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final int getDefaultPortForScheme(java.lang.String r1) {
        /*
            if (r1 == 0) goto L3f
            int r0 = r1.hashCode()
            switch(r0) {
                case 3804: goto L34;
                case 101730: goto L28;
                case 118039: goto L1c;
                case 3213448: goto L13;
                case 99617003: goto La;
                default: goto L9;
            }
        L9:
            goto L3f
        La:
            java.lang.String r0 = "https"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L25
            goto L3f
        L13:
            java.lang.String r0 = "http"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L3c
            goto L3f
        L1c:
            java.lang.String r0 = "wss"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L25
            goto L3f
        L25:
            r1 = 443(0x1bb, float:6.21E-43)
            goto L40
        L28:
            java.lang.String r0 = "ftp"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L31
            goto L3f
        L31:
            r1 = 21
            goto L40
        L34:
            java.lang.String r0 = "ws"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L3f
        L3c:
            r1 = 80
            goto L40
        L3f:
            r1 = -1
        L40:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: expo.modules.updates.UpdatesConfigurationKt.getDefaultPortForScheme(java.lang.String):int");
    }

    public static final String getNormalizedUrlOrigin(Uri url) {
        Intrinsics.checkNotNullParameter(url, "url");
        String scheme = url.getScheme();
        int port = url.getPort();
        if (port == getDefaultPortForScheme(scheme)) {
            port = -1;
        }
        String host = url.getHost();
        return (port > -1 ? new StringBuilder().append(scheme).append("://").append(host).append(":").append(port) : new StringBuilder().append(scheme).append("://").append(host)).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String maybeGetDefaultScopeKey(String str, Uri uri) {
        return str == null ? getNormalizedUrlOrigin(uri) : str;
    }
}
