package defpackage;

import android.graphics.Rect;
import android.transition.Transition;

/* renamed from: Jj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0300Jj extends Transition.EpicenterCallback {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Rect f1673do;

    public C0300Jj(Rect rect) {
        this.f1673do = rect;
    }

    @Override // android.transition.Transition.EpicenterCallback
    public final Rect onGetEpicenter(Transition transition) {
        return this.f1673do;
    }
}
