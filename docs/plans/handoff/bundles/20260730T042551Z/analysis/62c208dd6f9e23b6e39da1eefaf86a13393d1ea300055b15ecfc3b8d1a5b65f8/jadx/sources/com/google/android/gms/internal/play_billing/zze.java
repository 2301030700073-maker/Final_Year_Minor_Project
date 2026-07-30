package com.google.android.gms.internal.play_billing;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.android.billingclient.api.Cdo;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.wearable.WearableStatusCodes;
import defpackage.C3821un;
import defpackage.C4009xy;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;

/* loaded from: classes3.dex */
public final class zze {
    public static final int zza = Runtime.getRuntime().availableProcessors();

    public static int zza(Intent intent, String str) {
        if (intent != null) {
            return zzp(intent.getExtras(), "ProxyBillingActivity");
        }
        zzl("ProxyBillingActivity", "Got null intent!");
        return 0;
    }

    public static int zzb(Bundle bundle, String str) {
        if (bundle == null) {
            zzl(str, "Unexpected null bundle received!");
            return 6;
        }
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            zzk(str, "getResponseCodeFromBundle() got null response code, assuming OK");
            return 0;
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        zzl(str, "Unexpected type for bundle response code: ".concat(obj.getClass().getName()));
        return 6;
    }

    public static Bundle zzc(Bundle bundle, String str, long j) {
        bundle.putString("playBillingLibraryVersion", str);
        bundle.putLong("billingClientSessionId", j);
        return bundle;
    }

    public static Bundle zzd(boolean z, boolean z2, boolean z3, boolean z4, String str, long j) {
        Bundle bundle = new Bundle();
        zzc(bundle, str, j);
        if (z && z3) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        if (z2 && z4) {
            bundle.putBoolean("enablePendingPurchaseForSubscriptions", true);
        }
        return bundle;
    }

    public static Bundle zze(String str, long j) {
        Bundle bundle = new Bundle();
        zzc(bundle, str, j);
        return bundle;
    }

    public static Cdo zzf(Intent intent, String str) {
        if (intent != null) {
            Cdo.C0052do m5219do = Cdo.m5219do();
            m5219do.f9108do = zzb(intent.getExtras(), str);
            m5219do.f9109do = zzh(intent.getExtras(), str);
            return m5219do.m5220do();
        }
        zzl("BillingHelper", "Got null intent!");
        Cdo.C0052do m5219do2 = Cdo.m5219do();
        m5219do2.f9108do = 6;
        m5219do2.f9109do = "An internal error occurred.";
        return m5219do2.m5220do();
    }

    public static C3821un zzg(Bundle bundle, String str) {
        if (bundle == null) {
            return new C3821un();
        }
        zzp(bundle, "BillingClient");
        bundle.getString("IN_APP_MESSAGE_PURCHASE_TOKEN");
        return new C3821un();
    }

    public static String zzh(Bundle bundle, String str) {
        if (bundle == null) {
            zzl(str, "Unexpected null bundle received!");
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        Object obj = bundle.get("DEBUG_MESSAGE");
        if (obj == null) {
            zzk(str, "getDebugMessageFromBundle() got null response code, assuming OK");
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        zzl(str, "Unexpected type for debug message: ".concat(obj.getClass().getName()));
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public static String zzi(int i) {
        return zzd.zza(i).toString();
    }

    public static List zzj(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        ArrayList arrayList = new ArrayList();
        if (stringArrayList == null || stringArrayList2 == null) {
            C4009xy zzq = zzq(bundle.getString("INAPP_PURCHASE_DATA"), bundle.getString("INAPP_DATA_SIGNATURE"));
            if (zzq == null) {
                zzk("BillingHelper", "Couldn't find single purchase data as well.");
                return null;
            }
            arrayList.add(zzq);
        } else {
            zzk("BillingHelper", "Found purchase list of " + stringArrayList.size() + " items");
            for (int i = 0; i < stringArrayList.size() && i < stringArrayList2.size(); i++) {
                C4009xy zzq2 = zzq(stringArrayList.get(i), stringArrayList2.get(i));
                if (zzq2 != null) {
                    arrayList.add(zzq2);
                }
            }
        }
        return arrayList;
    }

    public static void zzk(String str, String str2) {
        if (!Log.isLoggable(str, 2) || str2.isEmpty()) {
            return;
        }
        int i = 40000;
        while (!str2.isEmpty() && i > 0) {
            int min = Math.min(str2.length(), Math.min(WearableStatusCodes.TARGET_NODE_NOT_CONNECTED, i));
            str2.substring(0, min);
            str2 = str2.substring(min);
            i -= min;
        }
    }

    public static void zzl(String str, String str2) {
    }

    public static void zzm(String str, String str2, Throwable th) {
    }

    public static Bundle zzn(Cdo cdo, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("RESPONSE_CODE", cdo.f9106do);
        bundle.putString("DEBUG_MESSAGE", cdo.f9107do);
        bundle.putInt("LOG_REASON", i - 1);
        return bundle;
    }

    public static Bundle zzo(Cdo cdo, int i, String str) {
        Bundle zzn = zzn(cdo, 5);
        if (str != null) {
            zzn.putString("ADDITIONAL_LOG_DETAILS", str);
        }
        return zzn;
    }

    private static int zzp(Bundle bundle, String str) {
        if (bundle != null) {
            return bundle.getInt("IN_APP_MESSAGE_RESPONSE_CODE", 0);
        }
        zzl(str, "Unexpected null bundle received!");
        return 0;
    }

    private static C4009xy zzq(String str, String str2) {
        if (str == null || str2 == null) {
            zzk("BillingHelper", "Received a null purchase data.");
            return null;
        }
        try {
            return new C4009xy(str, str2);
        } catch (JSONException e) {
            zzl("BillingHelper", "Got JSONException while parsing purchase data: ".concat(e.toString()));
            return null;
        }
    }
}
