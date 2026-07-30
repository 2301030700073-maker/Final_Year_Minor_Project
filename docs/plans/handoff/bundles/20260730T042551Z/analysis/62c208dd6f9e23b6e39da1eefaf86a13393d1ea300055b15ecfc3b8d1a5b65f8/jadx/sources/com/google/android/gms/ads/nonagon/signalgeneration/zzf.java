package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Base64;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzbcl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzf {

    /* renamed from: do, reason: not valid java name */
    public final Context f10063do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ApplicationInfo f10064do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final VersionInfoParcel f10065do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List f10066do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final JSONObject f10068do = new JSONObject();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicBoolean f10067do = new AtomicBoolean(false);

    public zzf(Context context, List list, VersionInfoParcel versionInfoParcel) {
        this.f10063do = context;
        this.f10064do = context.getApplicationInfo();
        this.f10066do = list;
        this.f10065do = versionInfoParcel;
    }

    public final JSONObject zza() {
        if (!this.f10067do.get()) {
            zzb();
        }
        return this.f10068do;
    }

    public final void zzb() {
        ApplicationInfo applicationInfo = this.f10064do;
        if (this.f10067do.getAndSet(true)) {
            return;
        }
        PackageInfo packageInfo = null;
        if (applicationInfo != null) {
            try {
                packageInfo = Wrappers.packageManager(this.f10063do).getPackageInfo(applicationInfo.packageName, 0);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        JSONObject jSONObject = this.f10068do;
        if (packageInfo != null) {
            try {
                jSONObject.put("vc", packageInfo.versionCode);
                jSONObject.put("vnm", packageInfo.versionName);
            } catch (JSONException e) {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "PawAppSignalGenerator.initialize");
                return;
            }
        }
        if (applicationInfo != null) {
            jSONObject.put("pn", applicationInfo.packageName);
        }
        List list = this.f10066do;
        ArrayList arrayList = new ArrayList();
        for (String str : ((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjG)).split(",", -1)) {
            if (list.contains(str)) {
                arrayList.add(str);
            }
        }
        jSONObject.put("eid", arrayList);
        jSONObject.put("js", this.f10065do.afmaVersion);
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj != null) {
                jSONObject.put(next, Base64.encodeToString(obj.toString().getBytes(), 2));
            }
        }
    }
}
