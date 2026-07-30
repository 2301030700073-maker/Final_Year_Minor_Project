package b.b.f.m;

import android.os.SystemClock;
import android.view.MenuItem;
import b.b.g.InterfaceC0086z0;

/* renamed from: b.b.f.m.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0030g implements InterfaceC0086z0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewOnKeyListenerC0032i f383a;

    public C0030g(ViewOnKeyListenerC0032i viewOnKeyListenerC0032i) {
        this.f383a = viewOnKeyListenerC0032i;
    }

    @Override // b.b.g.InterfaceC0086z0
    public void e(o oVar, MenuItem menuItem) {
        this.f383a.g.removeCallbacksAndMessages(null);
        int size = this.f383a.i.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (oVar == ((C0031h) this.f383a.i.get(i)).f385b) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        int i2 = i + 1;
        this.f383a.g.postAtTime(new RunnableC0029f(this, i2 < this.f383a.i.size() ? (C0031h) this.f383a.i.get(i2) : null, menuItem, oVar), oVar, SystemClock.uptimeMillis() + 200);
    }

    @Override // b.b.g.InterfaceC0086z0
    public void h(o oVar, MenuItem menuItem) {
        this.f383a.g.removeCallbacksAndMessages(oVar);
    }
}
