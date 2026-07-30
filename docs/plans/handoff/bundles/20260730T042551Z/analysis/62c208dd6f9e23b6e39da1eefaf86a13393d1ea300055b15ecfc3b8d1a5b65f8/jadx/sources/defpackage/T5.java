package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* loaded from: classes.dex */
public abstract class T5<T> extends AbstractC0137Ca<T> {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f3597do;

    /* renamed from: T5$do, reason: invalid class name */
    public class Cdo extends BroadcastReceiver {
        public Cdo() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent != null) {
                T5.this.mo2216else(intent);
            }
        }
    }

    static {
        AbstractC0614Xq.m2870try("BrdcstRcvrCnstrntTrckr");
    }

    public T5(Context context, IG ig) {
        super(context, ig);
        this.f3597do = new Cdo();
    }

    /* renamed from: case, reason: not valid java name */
    public abstract IntentFilter mo2215case();

    /* renamed from: else, reason: not valid java name */
    public abstract void mo2216else(Intent intent);

    @Override // defpackage.AbstractC0137Ca
    /* renamed from: new */
    public final void mo275new() {
        AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
        String.format("%s: registering receiver", getClass().getSimpleName());
        m2869for.mo2872do(new Throwable[0]);
        ((AbstractC0137Ca) this).f390do.registerReceiver(this.f3597do, mo2215case());
    }

    @Override // defpackage.AbstractC0137Ca
    /* renamed from: try */
    public final void mo276try() {
        AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
        String.format("%s: unregistering receiver", getClass().getSimpleName());
        m2869for.mo2872do(new Throwable[0]);
        ((AbstractC0137Ca) this).f390do.unregisterReceiver(this.f3597do);
    }
}
