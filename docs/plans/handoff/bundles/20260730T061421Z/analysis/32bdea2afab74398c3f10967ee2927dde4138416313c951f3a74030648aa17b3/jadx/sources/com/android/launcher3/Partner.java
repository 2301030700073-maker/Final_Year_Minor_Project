package com.android.launcher3;

import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.util.Pair;
import com.android.launcher3.util.PackageManagerHelper;

/* loaded from: classes.dex */
public class Partner {
    public final String mPackageName;
    public final Resources mResources;

    public Partner(String str, Resources resources) {
        this.mPackageName = str;
        this.mResources = resources;
    }

    public static synchronized Partner get(PackageManager packageManager) {
        Partner partner;
        synchronized (Partner.class) {
            Pair findSystemApk = PackageManagerHelper.findSystemApk("com.android.launcher3.action.PARTNER_CUSTOMIZATION", packageManager);
            partner = findSystemApk != null ? new Partner((String) findSystemApk.first, (Resources) findSystemApk.second) : null;
        }
        return partner;
    }
}
