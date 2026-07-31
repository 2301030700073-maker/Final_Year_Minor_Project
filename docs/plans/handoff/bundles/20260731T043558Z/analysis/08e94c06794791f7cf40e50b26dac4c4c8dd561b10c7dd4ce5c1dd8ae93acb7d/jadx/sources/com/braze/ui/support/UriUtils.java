package com.braze.ui.support;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import com.braze.IBrazeDeeplinkHandler;
import com.braze.support.BrazeLogger;
import com.braze.ui.BrazeDeeplinkHandler;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: UriUtils.kt */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\u0016\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0003*\u00020\u0004\u001a\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u001a\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"TAG", "", "getQueryParameters", "", "Landroid/net/Uri;", "getMainActivityIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", "extras", "Landroid/os/Bundle;", "isActivityRegisteredInManifest", "", "className", "android-sdk-ui_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class UriUtils {
    private static final String TAG = BrazeLogger.INSTANCE.getBrazeLogTag("UriUtils");

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006d A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v12, types: [T, android.net.Uri] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.util.Map<java.lang.String, java.lang.String> getQueryParameters(android.net.Uri r10) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            kotlin.jvm.internal.Ref$ObjectRef r0 = new kotlin.jvm.internal.Ref$ObjectRef
            r0.<init>()
            r0.element = r10
            T r10 = r0.element
            android.net.Uri r10 = (android.net.Uri) r10
            java.lang.String r10 = r10.getEncodedQuery()
            if (r10 != 0) goto L2e
            com.braze.support.BrazeLogger r1 = com.braze.support.BrazeLogger.INSTANCE
            java.lang.String r2 = com.braze.ui.support.UriUtils.TAG
            com.braze.support.BrazeLogger$Priority r3 = com.braze.support.BrazeLogger.Priority.V
            com.braze.ui.support.UriUtils$$ExternalSyntheticLambda1 r6 = new com.braze.ui.support.UriUtils$$ExternalSyntheticLambda1
            r6.<init>()
            r7 = 12
            r8 = 0
            r4 = 0
            r5 = 0
            com.braze.support.BrazeLogger.brazelog$default(r1, r2, r3, r4, r5, r6, r7, r8)
            java.util.Map r10 = kotlin.collections.MapsKt.emptyMap()
            return r10
        L2e:
            java.util.LinkedHashMap r1 = new java.util.LinkedHashMap
            r1.<init>()
            java.util.Map r1 = (java.util.Map) r1
            T r2 = r0.element     // Catch: java.lang.Exception -> Lb8
            android.net.Uri r2 = (android.net.Uri) r2     // Catch: java.lang.Exception -> Lb8
            boolean r2 = r2.isOpaque()     // Catch: java.lang.Exception -> Lb8
            if (r2 == 0) goto L53
            java.lang.String r2 = "://"
            android.net.Uri r2 = android.net.Uri.parse(r2)     // Catch: java.lang.Exception -> Lb8
            android.net.Uri$Builder r2 = r2.buildUpon()     // Catch: java.lang.Exception -> Lb8
            android.net.Uri$Builder r10 = r2.encodedQuery(r10)     // Catch: java.lang.Exception -> Lb8
            android.net.Uri r10 = r10.build()     // Catch: java.lang.Exception -> Lb8
            r0.element = r10     // Catch: java.lang.Exception -> Lb8
        L53:
            T r10 = r0.element     // Catch: java.lang.Exception -> Lb8
            android.net.Uri r10 = (android.net.Uri) r10     // Catch: java.lang.Exception -> Lb8
            java.util.Set r10 = r10.getQueryParameterNames()     // Catch: java.lang.Exception -> Lb8
            java.lang.String r2 = "getQueryParameterNames(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r2)     // Catch: java.lang.Exception -> Lb8
            java.lang.Iterable r10 = (java.lang.Iterable) r10     // Catch: java.lang.Exception -> Lb8
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Exception -> Lb8
            r2.<init>()     // Catch: java.lang.Exception -> Lb8
            java.util.Collection r2 = (java.util.Collection) r2     // Catch: java.lang.Exception -> Lb8
            java.util.Iterator r10 = r10.iterator()     // Catch: java.lang.Exception -> Lb8
        L6d:
            boolean r3 = r10.hasNext()     // Catch: java.lang.Exception -> Lb8
            if (r3 == 0) goto L8e
            java.lang.Object r3 = r10.next()     // Catch: java.lang.Exception -> Lb8
            r4 = r3
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Exception -> Lb8
            java.lang.CharSequence r4 = (java.lang.CharSequence) r4     // Catch: java.lang.Exception -> Lb8
            if (r4 == 0) goto L87
            int r4 = r4.length()     // Catch: java.lang.Exception -> Lb8
            if (r4 != 0) goto L85
            goto L87
        L85:
            r4 = 0
            goto L88
        L87:
            r4 = 1
        L88:
            if (r4 != 0) goto L6d
            r2.add(r3)     // Catch: java.lang.Exception -> Lb8
            goto L6d
        L8e:
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.Exception -> Lb8
            java.util.Iterator r10 = r2.iterator()     // Catch: java.lang.Exception -> Lb8
        L94:
            boolean r2 = r10.hasNext()     // Catch: java.lang.Exception -> Lb8
            if (r2 == 0) goto Lce
            java.lang.Object r2 = r10.next()     // Catch: java.lang.Exception -> Lb8
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Exception -> Lb8
            T r3 = r0.element     // Catch: java.lang.Exception -> Lb8
            android.net.Uri r3 = (android.net.Uri) r3     // Catch: java.lang.Exception -> Lb8
            java.lang.String r3 = r3.getQueryParameter(r2)     // Catch: java.lang.Exception -> Lb8
            r4 = r3
            java.lang.CharSequence r4 = (java.lang.CharSequence) r4     // Catch: java.lang.Exception -> Lb8
            if (r4 == 0) goto L94
            int r4 = r4.length()     // Catch: java.lang.Exception -> Lb8
            if (r4 != 0) goto Lb4
            goto L94
        Lb4:
            r1.put(r2, r3)     // Catch: java.lang.Exception -> Lb8
            goto L94
        Lb8:
            r10 = move-exception
            com.braze.support.BrazeLogger r2 = com.braze.support.BrazeLogger.INSTANCE
            java.lang.String r3 = com.braze.ui.support.UriUtils.TAG
            com.braze.support.BrazeLogger$Priority r4 = com.braze.support.BrazeLogger.Priority.E
            r5 = r10
            java.lang.Throwable r5 = (java.lang.Throwable) r5
            com.braze.ui.support.UriUtils$$ExternalSyntheticLambda2 r7 = new com.braze.ui.support.UriUtils$$ExternalSyntheticLambda2
            r7.<init>()
            r8 = 8
            r9 = 0
            r6 = 0
            com.braze.support.BrazeLogger.brazelog$default(r2, r3, r4, r5, r6, r7, r8, r9)
        Lce:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.braze.ui.support.UriUtils.getQueryParameters(android.net.Uri):java.util.Map");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getQueryParameters$lambda$0(Ref.ObjectRef objectRef) {
        return "Encoded query is null for Uri: " + objectRef.element + " Returning empty map for query parameters";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getQueryParameters$lambda$2(Ref.ObjectRef objectRef) {
        return "Failed to map the query parameters of Uri: " + objectRef.element;
    }

    public static /* synthetic */ Intent getMainActivityIntent$default(Context context, Bundle bundle, int i, Object obj) {
        if ((i & 2) != 0) {
            bundle = null;
        }
        return getMainActivityIntent(context, bundle);
    }

    public static final Intent getMainActivityIntent(Context context, Bundle bundle) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        if (launchIntentForPackage != null) {
            launchIntentForPackage.setFlags(BrazeDeeplinkHandler.INSTANCE.getInstance().getIntentFlags(IBrazeDeeplinkHandler.IntentFlagPurpose.URI_UTILS_GET_MAIN_ACTIVITY_INTENT));
        }
        if (bundle != null && launchIntentForPackage != null) {
            launchIntentForPackage.putExtras(bundle);
        }
        return launchIntentForPackage;
    }

    public static final boolean isActivityRegisteredInManifest(Context context, final String className) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(className, "className");
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                context.getPackageManager().getActivityInfo(new ComponentName(context, className), PackageManager.ComponentInfoFlags.of(0L));
            } else {
                context.getPackageManager().getActivityInfo(new ComponentName(context, className), 0);
            }
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, TAG, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.ui.support.UriUtils$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String isActivityRegisteredInManifest$lambda$3;
                    isActivityRegisteredInManifest$lambda$3 = UriUtils.isActivityRegisteredInManifest$lambda$3(className);
                    return isActivityRegisteredInManifest$lambda$3;
                }
            }, 8, (Object) null);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isActivityRegisteredInManifest$lambda$3(String str) {
        return "Could not find activity info for class with name: " + str;
    }
}
