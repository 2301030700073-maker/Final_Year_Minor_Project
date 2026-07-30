package c.b.a.b.b.l;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
public class M extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ P f2634a;

    public M(P p) {
        this.f2634a = p;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        P p = this.f2634a;
        if (p.p(p.f.getString("pixel_2017_qsb_hint_text", ""))) {
            this.f2634a.f2639d.sendEmptyMessage(201);
        }
    }
}
