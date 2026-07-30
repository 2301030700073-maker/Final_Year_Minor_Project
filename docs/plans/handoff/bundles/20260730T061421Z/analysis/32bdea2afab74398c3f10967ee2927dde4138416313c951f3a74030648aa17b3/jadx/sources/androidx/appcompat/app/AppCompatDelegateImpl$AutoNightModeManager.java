package androidx.appcompat.app;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import b.b.c.D;
import b.b.c.J;

/* loaded from: classes.dex */
public abstract class AppCompatDelegateImpl$AutoNightModeManager {

    /* renamed from: a, reason: collision with root package name */
    public BroadcastReceiver f27a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ J f28b;

    public AppCompatDelegateImpl$AutoNightModeManager(J j) {
        this.f28b = j;
    }

    public void a() {
        BroadcastReceiver broadcastReceiver = this.f27a;
        if (broadcastReceiver != null) {
            try {
                this.f28b.f259d.unregisterReceiver(broadcastReceiver);
            } catch (IllegalArgumentException unused) {
            }
            this.f27a = null;
        }
    }

    public abstract IntentFilter b();

    public abstract int c();

    public abstract void d();

    public void e() {
        a();
        IntentFilter b2 = b();
        if (b2 == null || b2.countActions() == 0) {
            return;
        }
        if (this.f27a == null) {
            this.f27a = new D(this);
        }
        this.f28b.f259d.registerReceiver(this.f27a, b2);
    }
}
