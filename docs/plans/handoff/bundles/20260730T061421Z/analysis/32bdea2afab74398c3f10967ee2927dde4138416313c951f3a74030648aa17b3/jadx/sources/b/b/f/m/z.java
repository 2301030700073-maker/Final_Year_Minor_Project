package b.b.f.m;

import android.widget.PopupWindow;

/* loaded from: classes.dex */
public class z implements PopupWindow.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ A f422a;

    public z(A a2) {
        this.f422a = a2;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.f422a.c();
    }
}
