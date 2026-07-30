package defpackage;

import android.view.ViewTreeObserver;
import com.google.android.material.floatingactionbutton.Cnew;

/* renamed from: Vi, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ViewTreeObserverOnPreDrawListenerC0562Vi implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Cnew f4177do;

    public ViewTreeObserverOnPreDrawListenerC0562Vi(Cnew cnew) {
        this.f4177do = cnew;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        Cnew cnew = this.f4177do;
        float rotation = cnew.f11110do.getRotation();
        if (cnew.f11123new == rotation) {
            return true;
        }
        cnew.f11123new = rotation;
        cnew.mo2754final();
        return true;
    }
}
