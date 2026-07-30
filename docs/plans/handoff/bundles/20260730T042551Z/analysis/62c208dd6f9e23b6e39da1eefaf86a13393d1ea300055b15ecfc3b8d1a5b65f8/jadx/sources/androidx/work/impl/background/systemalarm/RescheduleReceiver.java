package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import defpackage.AbstractC0614Xq;
import defpackage.GM;

/* loaded from: classes.dex */
public class RescheduleReceiver extends BroadcastReceiver {
    static {
        AbstractC0614Xq.m2870try("RescheduleReceiver");
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
        String.format("Received intent %s", intent);
        m2869for.mo2872do(new Throwable[0]);
        if (Build.VERSION.SDK_INT < 23) {
            int i = Cdo.f8165for;
            Intent intent2 = new Intent(context, (Class<?>) SystemAlarmService.class);
            intent2.setAction("ACTION_RESCHEDULE");
            context.startService(intent2);
            return;
        }
        try {
            GM m731try = GM.m731try(context);
            BroadcastReceiver.PendingResult goAsync = goAsync();
            m731try.getClass();
            synchronized (GM.f1171do) {
                m731try.f1175do = goAsync;
                if (m731try.f1181do) {
                    goAsync.finish();
                    m731try.f1175do = null;
                }
            }
        } catch (IllegalStateException e) {
            AbstractC0614Xq.m2869for().mo2873if(e);
        }
    }
}
