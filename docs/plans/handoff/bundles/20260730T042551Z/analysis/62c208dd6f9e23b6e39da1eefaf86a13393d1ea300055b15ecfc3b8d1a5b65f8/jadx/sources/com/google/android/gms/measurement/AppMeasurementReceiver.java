package com.google.android.gms.measurement;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.SparseArray;
import androidx.legacy.content.WakefulBroadcastReceiver;
import defpackage.C3156jS;
import defpackage.GS;
import defpackage.TS;

/* loaded from: classes3.dex */
public final class AppMeasurementReceiver extends WakefulBroadcastReceiver implements GS.Cdo {

    /* renamed from: do, reason: not valid java name */
    public GS f10287do;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.f10287do == null) {
            this.f10287do = new GS(this);
        }
        GS gs = this.f10287do;
        gs.getClass();
        C3156jS c3156jS = TS.m2246if(context, null, null).f3695do;
        TS.m2247this(c3156jS);
        if (intent == null) {
            c3156jS.f13722new.m7369if("Receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        c3156jS.f13723this.m7368for("Local receiver got", action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
                c3156jS.f13722new.m7369if("Install Referrer Broadcasts are deprecated");
                return;
            }
            return;
        }
        Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
        className.setAction("com.google.android.gms.measurement.UPLOAD");
        c3156jS.f13723this.m7369if("Starting wakeful intent.");
        ((AppMeasurementReceiver) gs.f1186do).getClass();
        SparseArray<PowerManager.WakeLock> sparseArray = WakefulBroadcastReceiver.f7057do;
        synchronized (sparseArray) {
            int i = WakefulBroadcastReceiver.f7058for;
            int i2 = i + 1;
            WakefulBroadcastReceiver.f7058for = i2;
            if (i2 <= 0) {
                WakefulBroadcastReceiver.f7058for = 1;
            }
            className.putExtra("androidx.contentpager.content.wakelockid", i);
            ComponentName startService = context.startService(className);
            if (startService == null) {
                return;
            }
            PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "androidx.core:wake:" + startService.flattenToShortString());
            newWakeLock.setReferenceCounted(false);
            newWakeLock.acquire(60000L);
            sparseArray.put(i, newWakeLock);
        }
    }
}
