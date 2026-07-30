package c.b.a.d.a.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
public class e extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j f3086a;

    public e(j jVar) {
        this.f3086a = jVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        intent.getData();
        this.f3086a.g.b();
        this.f3086a.h.b();
        this.f3086a.g(context);
        j jVar = this.f3086a;
        if ((jVar.k & 2) != 0) {
            jVar.f();
        }
    }
}
