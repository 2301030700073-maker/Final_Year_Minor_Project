package com.braze.support;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import com.braze.support.BrazeLogger;
import com.reactnativecommunity.netinfo.BroadcastReceiverConnectivityReceiver;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final c f241a = new c();

    public static final String a(String str) {
        return com.braze.b.a("Unexpected system broadcast received [", str, AbstractJsonLexerKt.END_LIST);
    }

    public static final com.braze.enums.f a(Intent intent, ConnectivityManager connectivityManager) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(connectivityManager, "connectivityManager");
        final String action = intent.getAction();
        if (Intrinsics.areEqual(BroadcastReceiverConnectivityReceiver.CONNECTIVITY_ACTION, action)) {
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                boolean booleanExtra = intent.getBooleanExtra("noConnectivity", false);
                if (activeNetworkInfo != null && !booleanExtra) {
                    int type = activeNetworkInfo.getType();
                    if (type != 0) {
                        if (type == 1 || type == 6) {
                            return com.braze.enums.f.d;
                        }
                        if (type != 9) {
                            return com.braze.enums.f.f42a;
                        }
                        return com.braze.enums.f.c;
                    }
                    int subtype = activeNetworkInfo.getSubtype();
                    if (subtype == 3) {
                        return com.braze.enums.f.c;
                    }
                    if (subtype != 13 && subtype != 20) {
                        return com.braze.enums.f.b;
                    }
                    return com.braze.enums.f.d;
                }
                return com.braze.enums.f.f42a;
            } catch (SecurityException e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) f241a, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.support.c$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return c.a();
                    }
                }, 4, (Object) null);
                return com.braze.enums.f.f42a;
            }
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) f241a, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.support.c$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return c.a(action);
            }
        }, 6, (Object) null);
        return com.braze.enums.f.f42a;
    }

    public static final String a() {
        return "Failed to get active network information. Ensure the permission android.permission.ACCESS_NETWORK_STATE is defined in your AndroidManifest.xml";
    }

    public static final com.braze.enums.f a(NetworkCapabilities networkCapabilities) {
        if (networkCapabilities == null) {
            return com.braze.enums.f.f42a;
        }
        int min = Math.min(networkCapabilities.getLinkDownstreamBandwidthKbps(), networkCapabilities.getLinkUpstreamBandwidthKbps());
        if (min > 14000) {
            return com.braze.enums.f.d;
        }
        if (min > 4000) {
            return com.braze.enums.f.c;
        }
        return com.braze.enums.f.b;
    }
}
