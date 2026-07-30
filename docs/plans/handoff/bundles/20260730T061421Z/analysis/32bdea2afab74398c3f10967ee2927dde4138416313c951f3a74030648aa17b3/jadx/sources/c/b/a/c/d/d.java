package c.b.a.c.d;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;

/* loaded from: classes.dex */
public final class d extends e {
    public static Resources d(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }
}
