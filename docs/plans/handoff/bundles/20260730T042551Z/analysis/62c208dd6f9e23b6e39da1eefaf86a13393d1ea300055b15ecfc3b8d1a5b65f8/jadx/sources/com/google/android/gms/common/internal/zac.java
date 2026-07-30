package com.google.android.gms.common.internal;

import android.R;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import defpackage.C0131Bq;
import defpackage.C0197Eq;
import defpackage.C2680eE;
import defpackage.Q9;
import java.util.Locale;

/* loaded from: classes.dex */
public final class zac {
    private static final C2680eE zaa = new C2680eE();
    private static Locale zab;

    public static String zaa(Context context) {
        String packageName = context.getPackageName();
        try {
            return Wrappers.packageManager(context).getApplicationLabel(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    public static String zab(Context context, int i) {
        Resources resources = context.getResources();
        return i != 1 ? i != 2 ? i != 3 ? resources.getString(R.string.ok) : resources.getString(com.joeykrim.rootcheck.R.string.common_google_play_services_enable_button) : resources.getString(com.joeykrim.rootcheck.R.string.common_google_play_services_update_button) : resources.getString(com.joeykrim.rootcheck.R.string.common_google_play_services_install_button);
    }

    public static String zac(Context context, int i) {
        Resources resources = context.getResources();
        String zaa2 = zaa(context);
        if (i == 1) {
            return resources.getString(com.joeykrim.rootcheck.R.string.common_google_play_services_install_text, zaa2);
        }
        if (i == 2) {
            return DeviceProperties.isWearableWithoutPlayStore(context) ? resources.getString(com.joeykrim.rootcheck.R.string.common_google_play_services_wear_update_text) : resources.getString(com.joeykrim.rootcheck.R.string.common_google_play_services_update_text, zaa2);
        }
        if (i == 3) {
            return resources.getString(com.joeykrim.rootcheck.R.string.common_google_play_services_enable_text, zaa2);
        }
        if (i == 5) {
            return zag(context, "common_google_play_services_invalid_account_text", zaa2);
        }
        if (i == 7) {
            return zag(context, "common_google_play_services_network_error_text", zaa2);
        }
        if (i == 9) {
            return resources.getString(com.joeykrim.rootcheck.R.string.common_google_play_services_unsupported_text, zaa2);
        }
        if (i == 20) {
            return zag(context, "common_google_play_services_restricted_profile_text", zaa2);
        }
        switch (i) {
            case 16:
                return zag(context, "common_google_play_services_api_unavailable_text", zaa2);
            case 17:
                return zag(context, "common_google_play_services_sign_in_failed_text", zaa2);
            case 18:
                return resources.getString(com.joeykrim.rootcheck.R.string.common_google_play_services_updating_text, zaa2);
            default:
                return resources.getString(com.google.android.gms.common.R.string.common_google_play_services_unknown_issue, zaa2);
        }
    }

    public static String zad(Context context, int i) {
        return (i == 6 || i == 19) ? zag(context, "common_google_play_services_resolution_required_text", zaa(context)) : zac(context, i);
    }

    public static String zae(Context context, int i) {
        String zah = i == 6 ? zah(context, "common_google_play_services_resolution_required_title") : zaf(context, i);
        return zah == null ? context.getResources().getString(com.joeykrim.rootcheck.R.string.common_google_play_services_notification_ticker) : zah;
    }

    public static String zaf(Context context, int i) {
        Resources resources = context.getResources();
        if (i == 1) {
            return resources.getString(com.joeykrim.rootcheck.R.string.common_google_play_services_install_title);
        }
        if (i == 2) {
            return resources.getString(com.joeykrim.rootcheck.R.string.common_google_play_services_update_title);
        }
        if (i == 3) {
            return resources.getString(com.joeykrim.rootcheck.R.string.common_google_play_services_enable_title);
        }
        if (i == 5) {
            return zah(context, "common_google_play_services_invalid_account_title");
        }
        if (i == 7) {
            return zah(context, "common_google_play_services_network_error_title");
        }
        if (i == 17) {
            return zah(context, "common_google_play_services_sign_in_failed_title");
        }
        if (i != 20) {
            return null;
        }
        return zah(context, "common_google_play_services_restricted_profile_title");
    }

    private static String zag(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String zah = zah(context, str);
        if (zah == null) {
            zah = resources.getString(com.google.android.gms.common.R.string.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, zah, str2);
    }

    private static String zah(Context context, String str) {
        C2680eE c2680eE = zaa;
        synchronized (c2680eE) {
            try {
                Configuration configuration = context.getResources().getConfiguration();
                Locale m228for = (Build.VERSION.SDK_INT >= 24 ? new C0131Bq(new C0197Eq(Q9.m1832do(configuration))) : C0131Bq.m226do(configuration.locale)).m228for(0);
                if (!m228for.equals(zab)) {
                    c2680eE.clear();
                    zab = m228for;
                }
                String str2 = (String) c2680eE.getOrDefault(str, null);
                if (str2 != null) {
                    return str2;
                }
                Resources remoteResource = GooglePlayServicesUtil.getRemoteResource(context);
                if (remoteResource == null) {
                    return null;
                }
                int identifier = remoteResource.getIdentifier(str, "string", "com.google.android.gms");
                if (identifier == 0) {
                    return null;
                }
                String string = remoteResource.getString(identifier);
                if (TextUtils.isEmpty(string)) {
                    return null;
                }
                c2680eE.put(str, string);
                return string;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
