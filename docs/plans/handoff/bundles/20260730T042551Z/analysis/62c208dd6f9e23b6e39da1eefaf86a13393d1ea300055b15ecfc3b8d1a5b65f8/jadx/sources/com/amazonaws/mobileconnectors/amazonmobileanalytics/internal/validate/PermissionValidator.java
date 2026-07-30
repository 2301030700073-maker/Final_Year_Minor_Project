package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.validate;

import android.content.Context;
import defpackage.Cpublic;

/* loaded from: classes.dex */
public class PermissionValidator {

    /* renamed from: do, reason: not valid java name */
    public final String f8954do;

    public PermissionValidator(String str) {
        this.f8954do = str;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5116do(Context context) {
        String str = this.f8954do;
        if (!(context.checkCallingOrSelfPermission(str) == 0)) {
            throw new RuntimeException(Cpublic.m7816case(str, " permission is not granted."));
        }
    }
}
