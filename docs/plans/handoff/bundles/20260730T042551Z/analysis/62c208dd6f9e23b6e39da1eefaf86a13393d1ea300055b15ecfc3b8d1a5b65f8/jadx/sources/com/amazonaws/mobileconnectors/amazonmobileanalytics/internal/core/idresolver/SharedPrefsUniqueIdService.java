package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.idresolver;

import android.content.Context;

/* loaded from: classes.dex */
public class SharedPrefsUniqueIdService {

    /* renamed from: do, reason: not valid java name */
    public final Context f8818do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f8819do;

    public SharedPrefsUniqueIdService(Context context) {
        this.f8819do = null;
        this.f8818do = null;
        this.f8819do = "0de7788050864972a25d2d9c40c503e0";
        this.f8818do = context;
    }

    /* renamed from: do, reason: not valid java name */
    public final Id m5071do() {
        Context context;
        Id id = Id.f8816do;
        String str = this.f8819do;
        if (str == null || (context = this.f8818do) == null) {
            synchronized (Id.class) {
            }
            return id;
        }
        String string = context.getSharedPreferences(str, 0).getString("UniqueId", null);
        if (string != null) {
            return new Id(string);
        }
        Id.m5070do();
        return id;
    }
}
