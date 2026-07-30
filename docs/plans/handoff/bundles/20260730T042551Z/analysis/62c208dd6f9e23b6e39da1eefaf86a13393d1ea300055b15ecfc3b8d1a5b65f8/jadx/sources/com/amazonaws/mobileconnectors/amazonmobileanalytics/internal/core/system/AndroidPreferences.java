package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public class AndroidPreferences {

    /* renamed from: do, reason: not valid java name */
    public final SharedPreferences f8832do;

    public AndroidPreferences(Context context, String str) {
        this.f8832do = context.getSharedPreferences(str, 0);
    }
}
