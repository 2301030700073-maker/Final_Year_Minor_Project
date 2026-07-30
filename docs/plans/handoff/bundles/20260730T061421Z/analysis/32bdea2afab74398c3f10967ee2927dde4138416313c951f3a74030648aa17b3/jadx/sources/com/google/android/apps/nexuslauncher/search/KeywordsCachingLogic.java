package com.google.android.apps.nexuslauncher.search;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.LocaleList;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import c.b.a.b.b.n.k;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.LauncherActivityCachingLogic;
import com.android.systemui.shared.R;
import java.util.HashSet;

/* loaded from: classes.dex */
public class KeywordsCachingLogic extends LauncherActivityCachingLogic {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3326a;

    /* renamed from: b, reason: collision with root package name */
    public final PackageManager f3327b;

    /* renamed from: c, reason: collision with root package name */
    public k f3328c;

    public KeywordsCachingLogic(Context context) {
        this.f3326a = context;
        this.f3327b = context.getPackageManager();
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public String getKeywords(Object obj, LocaleList localeList) {
        LauncherActivityInfo launcherActivityInfo = (LauncherActivityInfo) obj;
        if (!FeatureFlags.APP_SEARCH_IMPROVEMENTS.get()) {
            return null;
        }
        HashSet hashSet = new HashSet();
        String packageName = launcherActivityInfo.getComponentName().getPackageName();
        k kVar = new k(this.f3326a, "keywords_v", 1, R.raw.keywords);
        this.f3328c = kVar;
        kVar.d(5000);
        byte[] b2 = this.f3328c.b(packageName.getBytes());
        String str = b2 == null ? null : new String(b2);
        if (str != null) {
            hashSet.add(str);
        }
        Configuration configuration = new Configuration(this.f3326a.getResources().getConfiguration());
        DisplayMetrics displayMetrics = this.f3326a.getResources().getDisplayMetrics();
        try {
            ApplicationInfo applicationInfo = launcherActivityInfo.getApplicationInfo();
            if (applicationInfo.labelRes != 0) {
                Resources resourcesForApplication = this.f3327b.getResourcesForApplication(packageName);
                for (int i = 0; i < localeList.size(); i++) {
                    configuration.setLocale(localeList.get(i));
                    resourcesForApplication.updateConfiguration(configuration, displayMetrics);
                    hashSet.add(resourcesForApplication.getString(applicationInfo.labelRes));
                }
            }
        } catch (PackageManager.NameNotFoundException | Resources.NotFoundException e) {
            Log.d("KeywordsCachingLogic", "Failed to load package or load title string", e);
        }
        hashSet.remove(launcherActivityInfo.getLabel().toString());
        if (hashSet.isEmpty()) {
            return null;
        }
        return TextUtils.join("\n", hashSet);
    }
}
