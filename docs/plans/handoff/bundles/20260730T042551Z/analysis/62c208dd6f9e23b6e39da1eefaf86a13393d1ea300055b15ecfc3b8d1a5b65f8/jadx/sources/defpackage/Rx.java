package defpackage;

import android.content.Intent;
import android.net.Uri;
import com.facebook.Profile;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.Utility;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class Rx {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f3242do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static volatile Rx f3243do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ox f3244do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Profile f3245do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C4119zq f3246do;

    /* renamed from: Rx$do, reason: invalid class name */
    public static final class Cdo {
        /* renamed from: do, reason: not valid java name */
        public final synchronized Rx m2077do() {
            Rx rx;
            try {
                if (Rx.f3243do == null) {
                    C4119zq m8809do = C4119zq.m8809do(C3756th.m8299do());
                    C0173Do.m399new(m8809do, "getInstance(applicationContext)");
                    Rx.f3243do = new Rx(m8809do, new Ox());
                }
                rx = Rx.f3243do;
                if (rx == null) {
                    C0173Do.m400this("instance");
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
            return rx;
        }
    }

    public Rx(C4119zq c4119zq, Ox ox) {
        this.f3246do = c4119zq;
        this.f3244do = ox;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2076do(Profile profile, boolean z) {
        Profile profile2 = this.f3245do;
        this.f3245do = profile;
        if (z) {
            Ox ox = this.f3244do;
            if (profile != null) {
                ox.getClass();
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", profile.f9290break);
                    jSONObject.put("first_name", profile.f9291catch);
                    jSONObject.put("middle_name", profile.f9292class);
                    jSONObject.put("last_name", profile.f9293const);
                    jSONObject.put(FacebookRequestErrorClassification.KEY_NAME, profile.f9295final);
                    Uri uri = profile.f9294do;
                    if (uri != null) {
                        jSONObject.put("link_uri", uri.toString());
                    }
                    Uri uri2 = profile.f9296if;
                    if (uri2 != null) {
                        jSONObject.put("picture_uri", uri2.toString());
                    }
                } catch (JSONException unused) {
                    jSONObject = null;
                }
                if (jSONObject != null) {
                    ox.f2693do.edit().putString("com.facebook.ProfileManager.CachedProfile", jSONObject.toString()).apply();
                }
            } else {
                ox.f2693do.edit().remove("com.facebook.ProfileManager.CachedProfile").apply();
            }
        }
        if (Utility.areObjectsEqual(profile2, profile)) {
            return;
        }
        Intent intent = new Intent("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_PROFILE", profile2);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_PROFILE", profile);
        this.f3246do.m8810for(intent);
    }
}
