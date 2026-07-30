package c.b.a.b.b.f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/* loaded from: classes.dex */
public class d extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f2542a;

    public d(f fVar) {
        this.f2542a = fVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (f.v) {
            StringBuilder f = c.a.c.a.a.f("Received: ");
            f.append(intent.getAction());
            Log.d("DoodleView", f.toString());
        }
        f fVar = this.f2542a;
        fVar.s = false;
        fVar.f();
    }
}
