package c.b.a.b.b.p;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Message;

/* loaded from: classes.dex */
public class j extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f2810a;

    public j(k kVar) {
        this.f2810a = kVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Message.obtain(this.f2810a.f2811a, 4).sendToTarget();
    }
}
