package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* renamed from: sF, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3673sF extends T5<Boolean> {
    static {
        AbstractC0614Xq.m2870try("StorageNotLowTracker");
    }

    public C3673sF(Context context, IG ig) {
        super(context, ig);
    }

    @Override // defpackage.T5
    /* renamed from: case */
    public final IntentFilter mo2215case() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
        return intentFilter;
    }

    @Override // defpackage.AbstractC0137Ca
    /* renamed from: do */
    public final Object mo272do() {
        Intent registerReceiver = ((AbstractC0137Ca) this).f390do.registerReceiver(null, mo2215case());
        if (registerReceiver == null || registerReceiver.getAction() == null) {
            return Boolean.TRUE;
        }
        String action = registerReceiver.getAction();
        action.getClass();
        if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
            return Boolean.FALSE;
        }
        if (action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
            return Boolean.TRUE;
        }
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
        if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
            m273for(Boolean.FALSE);
        } else if (action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
            m273for(Boolean.TRUE);
        }
    }
}
