package defpackage;

import android.content.SharedPreferences;

/* renamed from: private, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cprivate {

    /* renamed from: do, reason: not valid java name */
    public final SharedPreferences f14995do;

    /* renamed from: private$do, reason: invalid class name */
    public static final class Cdo {
    }

    public Cprivate() {
        SharedPreferences sharedPreferences = C3756th.m8299do().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0);
        C0173Do.m399new(sharedPreferences, "FacebookSdk.getApplicationContext()\n              .getSharedPreferences(\n                  AccessTokenManager.SHARED_PREFERENCES_NAME, Context.MODE_PRIVATE)");
        new Cdo();
        this.f14995do = sharedPreferences;
    }
}
