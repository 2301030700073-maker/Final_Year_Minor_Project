package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.ConstraintProxy;
import defpackage.AbstractC0614Xq;
import defpackage.C3418nw;
import defpackage.GM;
import defpackage.HM;

/* loaded from: classes.dex */
public class ConstraintProxyUpdateReceiver extends BroadcastReceiver {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int f8159do = 0;

    /* renamed from: androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ BroadcastReceiver.PendingResult f8160do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ Context f8161do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ Intent f8162do;

        public Cdo(Intent intent, Context context, BroadcastReceiver.PendingResult pendingResult) {
            this.f8162do = intent;
            this.f8161do = context;
            this.f8160do = pendingResult;
        }

        @Override // java.lang.Runnable
        public final void run() {
            BroadcastReceiver.PendingResult pendingResult = this.f8160do;
            Context context = this.f8161do;
            Intent intent = this.f8162do;
            try {
                boolean booleanExtra = intent.getBooleanExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra2 = intent.getBooleanExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", false);
                boolean booleanExtra3 = intent.getBooleanExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra4 = intent.getBooleanExtra("KEY_NETWORK_STATE_PROXY_ENABLED", false);
                AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
                int i = ConstraintProxyUpdateReceiver.f8159do;
                String.format("Updating proxies: BatteryNotLowProxy enabled (%s), BatteryChargingProxy enabled (%s), StorageNotLowProxy (%s), NetworkStateProxy enabled (%s)", Boolean.valueOf(booleanExtra), Boolean.valueOf(booleanExtra2), Boolean.valueOf(booleanExtra3), Boolean.valueOf(booleanExtra4));
                m2869for.mo2872do(new Throwable[0]);
                C3418nw.m7624do(context, ConstraintProxy.BatteryNotLowProxy.class, booleanExtra);
                C3418nw.m7624do(context, ConstraintProxy.BatteryChargingProxy.class, booleanExtra2);
                C3418nw.m7624do(context, ConstraintProxy.StorageNotLowProxy.class, booleanExtra3);
                C3418nw.m7624do(context, ConstraintProxy.NetworkStateProxy.class, booleanExtra4);
            } finally {
                pendingResult.finish();
            }
        }
    }

    static {
        AbstractC0614Xq.m2870try("ConstrntProxyUpdtRecvr");
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action = intent != null ? intent.getAction() : null;
        if ("androidx.work.impl.background.systemalarm.UpdateProxies".equals(action)) {
            ((HM) GM.m731try(context).f1173do).m852do(new Cdo(intent, context, goAsync()));
            return;
        }
        AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
        String.format("Ignoring unknown action %s", action);
        m2869for.mo2872do(new Throwable[0]);
    }
}
