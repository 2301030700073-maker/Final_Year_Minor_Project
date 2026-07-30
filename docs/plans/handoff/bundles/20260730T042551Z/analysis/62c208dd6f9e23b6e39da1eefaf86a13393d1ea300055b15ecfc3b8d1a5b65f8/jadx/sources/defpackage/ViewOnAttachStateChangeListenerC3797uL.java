package defpackage;

import android.view.View;
import defpackage.QK;
import java.util.WeakHashMap;

/* renamed from: uL, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ViewOnAttachStateChangeListenerC3797uL implements View.OnAttachStateChangeListener {
    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        view.removeOnAttachStateChangeListener(this);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        QK.Cfor.m1903for(view);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
