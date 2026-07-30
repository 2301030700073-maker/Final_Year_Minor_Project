package b.i.b;

import android.view.View;
import android.view.Window;
import b.j.AbstractC0137g;

/* renamed from: b.i.b.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0123s extends D implements b.j.I, b.a.k, b.a.l.h, InterfaceC0101c0 {
    public final /* synthetic */ ActivityC0124t e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0123s(ActivityC0124t activityC0124t) {
        super(activityC0124t);
        this.e = activityC0124t;
    }

    @Override // b.i.b.InterfaceC0101c0
    public void a(X x, r rVar) {
        this.e.onAttachFragment(rVar);
    }

    @Override // b.i.b.A
    public View b(int i) {
        return this.e.findViewById(i);
    }

    @Override // b.i.b.A
    public boolean c() {
        Window window = this.e.getWindow();
        return (window == null || window.peekDecorView() == null) ? false : true;
    }

    @Override // b.a.l.h
    public b.a.l.g getActivityResultRegistry() {
        return this.e.getActivityResultRegistry();
    }

    @Override // b.j.j
    public AbstractC0137g getLifecycle() {
        return this.e.mFragmentLifecycleRegistry;
    }

    @Override // b.a.k
    public b.a.j getOnBackPressedDispatcher() {
        return this.e.getOnBackPressedDispatcher();
    }

    @Override // b.j.I
    public b.j.H getViewModelStore() {
        return this.e.getViewModelStore();
    }
}
