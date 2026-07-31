package org.openintents.openpgp.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class OpenPgpProviderUtil {
    public static final ArrayList DISALLOWED_PROVIDERS;

    static {
        ArrayList arrayList = new ArrayList();
        DISALLOWED_PROVIDERS = arrayList;
        arrayList.add("org.thialfihar.android.apg");
    }

    public static String getOpenPgpProviderName(PackageManager packageManager, String str) {
        Intent intent = new Intent("org.openintents.openpgp.IOpenPgpService2");
        intent.setPackage(str);
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices == null) {
            return null;
        }
        Iterator<ResolveInfo> it = queryIntentServices.iterator();
        while (it.hasNext()) {
            ServiceInfo serviceInfo = it.next().serviceInfo;
            if (serviceInfo != null) {
                return String.valueOf(serviceInfo.loadLabel(packageManager));
            }
        }
        return null;
    }

    public static ArrayList getOpenPgpProviderPackages(Context context) {
        ArrayList arrayList = new ArrayList();
        List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(new Intent("org.openintents.openpgp.IOpenPgpService2"), 0);
        if (queryIntentServices != null) {
            Iterator<ResolveInfo> it = queryIntentServices.iterator();
            while (it.hasNext()) {
                ServiceInfo serviceInfo = it.next().serviceInfo;
                if (serviceInfo != null) {
                    arrayList.add(serviceInfo.packageName);
                }
            }
        }
        return arrayList;
    }
}
