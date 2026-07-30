package defpackage;

import android.content.SharedPreferences;

/* loaded from: classes.dex */
public final class Ox {

    /* renamed from: do, reason: not valid java name */
    public final SharedPreferences f2693do;

    public Ox() {
        SharedPreferences sharedPreferences = C3756th.m8299do().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0);
        C0173Do.m399new(sharedPreferences, "FacebookSdk.getApplicationContext()\n            .getSharedPreferences(SHARED_PREFERENCES_NAME, Context.MODE_PRIVATE)");
        this.f2693do = sharedPreferences;
    }
}
