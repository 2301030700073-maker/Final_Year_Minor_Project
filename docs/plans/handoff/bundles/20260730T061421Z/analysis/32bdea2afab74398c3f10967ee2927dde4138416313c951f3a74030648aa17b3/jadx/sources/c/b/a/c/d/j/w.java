package c.b.a.c.d.j;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import c.b.a.c.f.C0430d;
import c.b.a.c.f.C0431e;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    public static final b.d.n f2981a = new b.d.n();

    public static String a(Context context) {
        return context.getResources().getString(R.string.common_google_play_services_notification_channel_name);
    }

    public static String b(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(R.string.common_google_play_services_install_title);
            case 2:
                return resources.getString(R.string.common_google_play_services_update_title);
            case 3:
                return resources.getString(R.string.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return c(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return c(context, "common_google_play_services_network_error_title");
            case 8:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                return null;
            case 9:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                return null;
            case 10:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                return null;
            case 11:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                return null;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                StringBuilder sb = new StringBuilder(33);
                sb.append("Unexpected error code ");
                sb.append(i);
                Log.e("GoogleApiAvailability", sb.toString());
                return null;
            case 16:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                return null;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return c(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return c(context, "common_google_play_services_restricted_profile_title");
        }
    }

    public static String c(Context context, String str) {
        b.d.n nVar = f2981a;
        synchronized (nVar) {
            String str2 = (String) nVar.getOrDefault(str, null);
            if (str2 != null) {
                return str2;
            }
            Resources d2 = c.b.a.c.d.d.d(context);
            if (d2 == null) {
                return null;
            }
            int identifier = d2.getIdentifier(str, "string", "com.google.android.gms");
            if (identifier == 0) {
                String valueOf = String.valueOf(str);
                Log.w("GoogleApiAvailability", valueOf.length() != 0 ? "Missing resource: ".concat(valueOf) : new String("Missing resource: "));
                return null;
            }
            String string = d2.getString(identifier);
            if (!TextUtils.isEmpty(string)) {
                nVar.put(str, string);
                return string;
            }
            String valueOf2 = String.valueOf(str);
            Log.w("GoogleApiAvailability", valueOf2.length() != 0 ? "Got empty resource: ".concat(valueOf2) : new String("Got empty resource: "));
            return null;
        }
    }

    public static String d(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String c2 = c(context, str);
        if (c2 == null) {
            c2 = resources.getString(R.string.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, c2, str2);
    }

    public static String e(Context context) {
        String packageName = context.getPackageName();
        try {
            C0430d a2 = C0431e.a(context);
            return a2.f3038a.getPackageManager().getApplicationLabel(a2.f3038a.getPackageManager().getApplicationInfo(packageName, 0)).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    public static String f(Context context, int i) {
        Resources resources = context.getResources();
        String e = e(context);
        if (i == 1) {
            return resources.getString(R.string.common_google_play_services_install_text, e);
        }
        if (i == 2) {
            return c.b.a.c.b.a.E0(context) ? resources.getString(R.string.common_google_play_services_wear_update_text) : resources.getString(R.string.common_google_play_services_update_text, e);
        }
        if (i == 3) {
            return resources.getString(R.string.common_google_play_services_enable_text, e);
        }
        if (i == 5) {
            return d(context, "common_google_play_services_invalid_account_text", e);
        }
        if (i == 7) {
            return d(context, "common_google_play_services_network_error_text", e);
        }
        if (i == 9) {
            return resources.getString(R.string.common_google_play_services_unsupported_text, e);
        }
        if (i == 20) {
            return d(context, "common_google_play_services_restricted_profile_text", e);
        }
        switch (i) {
            case 16:
                return d(context, "common_google_play_services_api_unavailable_text", e);
            case 17:
                return d(context, "common_google_play_services_sign_in_failed_text", e);
            case 18:
                return resources.getString(R.string.common_google_play_services_updating_text, e);
            default:
                return resources.getString(R.string.common_google_play_services_unknown_issue, e);
        }
    }
}
