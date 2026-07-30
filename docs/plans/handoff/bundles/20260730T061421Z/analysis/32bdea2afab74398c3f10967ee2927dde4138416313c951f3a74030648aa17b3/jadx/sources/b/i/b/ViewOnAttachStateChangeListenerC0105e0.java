package b.i.b;

import android.view.View;

/* renamed from: b.i.b.e0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class ViewOnAttachStateChangeListenerC0105e0 implements View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f891a;

    public ViewOnAttachStateChangeListenerC0105e0(C0107f0 c0107f0, View view) {
        this.f891a = view;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f891a.removeOnAttachStateChangeListener(this);
        b.e.i.q.B(this.f891a);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
    }
}
