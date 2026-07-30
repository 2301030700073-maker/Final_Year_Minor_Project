package com.google.android.apps.nexuslauncher.smartspace;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.SystemClock;
import android.util.Log;
import c.a.c.a.a;
import c.b.a.b.b.p.f;
import c.b.a.b.b.p.k;
import c.b.a.b.b.p.o.h;
import c.b.a.b.b.p.o.i;
import c.b.b.a1.e;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;

/* loaded from: classes.dex */
public class SmartspaceBroadcastReceiver extends BroadcastReceiver {
    public final void a(h hVar, Context context, Intent intent, boolean z) {
        SmartspaceController$Store smartspaceController$Store = SmartspaceController$Store.CURRENT;
        PackageInfo packageInfo = null;
        if (hVar.f2840a) {
            ((k) k.j.b(context)).h(null, smartspaceController$Store);
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        try {
            packageInfo = context.getPackageManager().getPackageInfo("com.google.android.googlequicksearchbox", 0);
        } catch (PackageManager.NameNotFoundException unused) {
        }
        f fVar = new f(hVar, intent, z, uptimeMillis, packageInfo);
        k kVar = (k) k.j.b(context);
        if (fVar.f2802d) {
            kVar.h(fVar, smartspaceController$Store);
        } else {
            kVar.h(fVar, SmartspaceController$Store.WEATHER);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        byte[] byteArrayExtra = intent.getByteArrayExtra("com.google.android.apps.nexuslauncher.extra.SMARTSPACE_CARD");
        if (byteArrayExtra == null) {
            StringBuilder f = a.f("receiving update with no proto: ");
            f.append(intent.getExtras());
            Log.e("SmartspaceReceiver", f.toString());
            return;
        }
        i iVar = new i();
        try {
            e.mergeFrom(iVar, byteArrayExtra);
            for (h hVar : iVar.f2844a) {
                boolean z = true;
                boolean z2 = hVar.f2841b == 1;
                if (hVar.f2841b != 2) {
                    z = false;
                }
                if (!z2 && !z) {
                    Log.w("SmartspaceReceiver", "unrecognized card priority");
                }
                a(hVar, context, intent, z2);
            }
        } catch (InvalidProtocolBufferNanoException e) {
            Log.e("SmartspaceReceiver", "proto", e);
        }
    }
}
