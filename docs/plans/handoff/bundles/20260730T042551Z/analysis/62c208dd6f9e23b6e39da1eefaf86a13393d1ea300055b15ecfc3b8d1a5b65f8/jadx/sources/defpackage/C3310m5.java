package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.facebook.internal.AnalyticsEvents;

/* renamed from: m5, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3310m5 extends T5<Boolean> {
    static {
        AbstractC0614Xq.m2870try("BatteryNotLowTracker");
    }

    public C3310m5(Context context, IG ig) {
        super(context, ig);
    }

    @Override // defpackage.T5
    /* renamed from: case */
    public final IntentFilter mo2215case() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_OKAY");
        intentFilter.addAction("android.intent.action.BATTERY_LOW");
        return intentFilter;
    }

    @Override // defpackage.AbstractC0137Ca
    /* renamed from: do */
    public final Object mo272do() {
        Intent registerReceiver = ((AbstractC0137Ca) this).f390do.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver != null) {
            return Boolean.valueOf(registerReceiver.getIntExtra(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_STATUS, -1) == 1 || ((float) registerReceiver.getIntExtra("level", -1)) / ((float) registerReceiver.getIntExtra("scale", -1)) > 0.15f);
        }
        AbstractC0614Xq.m2869for().mo2873if(new Throwable[0]);
        return null;
    }

    @Override // defpackage.T5
    /* renamed from: else */
    public final void mo2216else(Intent intent) {
        if (intent.getAction() == null) {
            return;
        }
        AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
        String.format("Received %s", intent.getAction());
        m2869for.mo2872do(new Throwable[0]);
        String action = intent.getAction();
        action.getClass();
        if (action.equals("android.intent.action.BATTERY_OKAY")) {
            m273for(Boolean.TRUE);
        } else if (action.equals("android.intent.action.BATTERY_LOW")) {
            m273for(Boolean.FALSE);
        }
    }
}
