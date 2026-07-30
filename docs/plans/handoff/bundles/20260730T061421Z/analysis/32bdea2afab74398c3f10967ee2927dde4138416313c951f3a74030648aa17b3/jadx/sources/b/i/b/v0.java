package b.i.b;

import android.graphics.Rect;
import android.transition.Transition;

/* loaded from: classes.dex */
public class v0 extends Transition.EpicenterCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Rect f953a;

    public v0(w0 w0Var, Rect rect) {
        this.f953a = rect;
    }

    @Override // android.transition.Transition.EpicenterCallback
    public Rect onGetEpicenter(Transition transition) {
        Rect rect = this.f953a;
        if (rect == null || rect.isEmpty()) {
            return null;
        }
        return this.f953a;
    }
}
