package b.i.b;

import android.transition.Transition;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class t0 implements Transition.TransitionListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f946a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f947b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f948c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ArrayList f949d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ ArrayList f;
    public final /* synthetic */ w0 g;

    public t0(w0 w0Var, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
        this.g = w0Var;
        this.f946a = obj;
        this.f947b = arrayList;
        this.f948c = obj2;
        this.f949d = arrayList2;
        this.e = obj3;
        this.f = arrayList3;
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionStart(Transition transition) {
        Object obj = this.f946a;
        if (obj != null) {
            this.g.k(obj, this.f947b, null);
        }
        Object obj2 = this.f948c;
        if (obj2 != null) {
            this.g.k(obj2, this.f949d, null);
        }
        Object obj3 = this.e;
        if (obj3 != null) {
            this.g.k(obj3, this.f, null);
        }
    }
}
