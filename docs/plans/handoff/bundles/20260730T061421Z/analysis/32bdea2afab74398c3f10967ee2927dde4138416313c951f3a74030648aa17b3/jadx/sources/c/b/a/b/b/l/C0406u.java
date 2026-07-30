package c.b.a.b.b.l;

import android.view.WindowId;

/* renamed from: c.b.a.b.b.l.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0406u extends WindowId.FocusObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ A f2692a;

    public C0406u(A a2) {
        this.f2692a = a2;
    }

    @Override // android.view.WindowId.FocusObserver
    public void onFocusGained(WindowId windowId) {
        this.f2692a.p();
        onFocusLost(windowId);
    }

    @Override // android.view.WindowId.FocusObserver
    public void onFocusLost(WindowId windowId) {
        try {
            windowId.unregisterFocusObserver(this.f2692a.C);
        } catch (IllegalStateException unused) {
        }
    }
}
