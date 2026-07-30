package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import java.util.ArrayList;

/* renamed from: vc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C3869vc {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC0325Km f16096do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ComponentName f16097do;

    public C3869vc(InterfaceC0325Km interfaceC0325Km, ComponentName componentName) {
        this.f16096do = interfaceC0325Km;
        this.f16097do = componentName;
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m8476do(Context context, String str, AbstractServiceConnectionC4046yc abstractServiceConnectionC4046yc) {
        abstractServiceConnectionC4046yc.setApplicationContext(context.getApplicationContext());
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, abstractServiceConnectionC4046yc, 33);
    }

    /* renamed from: if, reason: not valid java name */
    public static String m8477if(Context context) {
        PackageManager packageManager = context.getPackageManager();
        ArrayList<String> arrayList = new ArrayList();
        ResolveInfo resolveActivity = packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://")), 0);
        if (resolveActivity != null) {
            String str = resolveActivity.activityInfo.packageName;
            ArrayList arrayList2 = new ArrayList(arrayList.size() + 1);
            arrayList2.add(str);
            arrayList = arrayList2;
        }
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        for (String str2 : arrayList) {
            intent.setPackage(str2);
            if (packageManager.resolveService(intent, 0) != null) {
                return str2;
            }
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public final C4105zc m8478for(C3692sc c3692sc) {
        BinderC3810uc binderC3810uc = new BinderC3810uc(c3692sc);
        InterfaceC0325Km interfaceC0325Km = this.f16096do;
        try {
            if (interfaceC0325Km.mo1207goto(binderC3810uc)) {
                return new C4105zc(interfaceC0325Km, binderC3810uc, this.f16097do);
            }
        } catch (RemoteException unused) {
        }
        return null;
    }
}
