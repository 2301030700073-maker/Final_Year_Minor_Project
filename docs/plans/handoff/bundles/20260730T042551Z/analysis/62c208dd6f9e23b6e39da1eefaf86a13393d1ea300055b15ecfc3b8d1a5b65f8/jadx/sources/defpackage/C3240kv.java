package defpackage;

import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import java.util.Arrays;
import java.util.MissingFormatArgumentException;
import org.json.JSONArray;
import org.json.JSONException;

/* renamed from: kv, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3240kv {

    /* renamed from: do, reason: not valid java name */
    public final Bundle f14061do;

    public C3240kv(Bundle bundle) {
        this.f14061do = new Bundle(bundle);
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m7288case(Bundle bundle) {
        return AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(bundle.getString("gcm.n.e")) || AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(bundle.getString("gcm.n.e".replace("gcm.n.", "gcm.notification.")));
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m7289goto(String str) {
        if (str.startsWith("gcm.n.")) {
            str.substring(6);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m7290do(String str) {
        String m7295try = m7295try(str);
        return AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(m7295try) || Boolean.parseBoolean(m7295try);
    }

    /* renamed from: else, reason: not valid java name */
    public final Bundle m7291else() {
        Bundle bundle = this.f14061do;
        Bundle bundle2 = new Bundle(bundle);
        for (String str : bundle.keySet()) {
            if (!(str.startsWith("google.c.a.") || str.equals("from"))) {
                bundle2.remove(str);
            }
        }
        return bundle2;
    }

    /* renamed from: for, reason: not valid java name */
    public final JSONArray m7292for(String str) {
        String m7295try = m7295try(str);
        if (TextUtils.isEmpty(m7295try)) {
            return null;
        }
        try {
            return new JSONArray(m7295try);
        } catch (JSONException unused) {
            m7289goto(str);
            return null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final Integer m7293if(String str) {
        String m7295try = m7295try(str);
        if (TextUtils.isEmpty(m7295try)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(m7295try));
        } catch (NumberFormatException unused) {
            m7289goto(str);
            return null;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final String m7294new(Resources resources, String str, String str2) {
        String[] strArr;
        String m7295try = m7295try(str2);
        if (!TextUtils.isEmpty(m7295try)) {
            return m7295try;
        }
        String m7295try2 = m7295try(str2.concat("_loc_key"));
        if (TextUtils.isEmpty(m7295try2)) {
            return null;
        }
        int identifier = resources.getIdentifier(m7295try2, "string", str);
        if (identifier == 0) {
            m7289goto(str2.concat("_loc_key"));
            return null;
        }
        JSONArray m7292for = m7292for(str2.concat("_loc_args"));
        if (m7292for == null) {
            strArr = null;
        } else {
            int length = m7292for.length();
            strArr = new String[length];
            for (int i = 0; i < length; i++) {
                strArr[i] = m7292for.optString(i);
            }
        }
        if (strArr == null) {
            return resources.getString(identifier);
        }
        try {
            return resources.getString(identifier, strArr);
        } catch (MissingFormatArgumentException unused) {
            m7289goto(str2);
            Arrays.toString(strArr);
            return null;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final String m7295try(String str) {
        Bundle bundle = this.f14061do;
        if (!bundle.containsKey(str) && str.startsWith("gcm.n.")) {
            String replace = !str.startsWith("gcm.n.") ? str : str.replace("gcm.n.", "gcm.notification.");
            if (bundle.containsKey(replace)) {
                str = replace;
            }
        }
        return bundle.getString(str);
    }
}
