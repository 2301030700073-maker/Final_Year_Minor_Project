package b.i.b;

import android.graphics.Rect;
import android.transition.Transition;

/* loaded from: classes.dex */
public class r0 extends Transition.EpicenterCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Rect f943a;

    public r0(w0 w0Var, Rect rect) {
        this.f943a = rect;
    }

    @Override // android.transition.Transition.EpicenterCallback
    public Rect onGetEpicenter(Transition transition) {
        return this.f943a;
    }
}
