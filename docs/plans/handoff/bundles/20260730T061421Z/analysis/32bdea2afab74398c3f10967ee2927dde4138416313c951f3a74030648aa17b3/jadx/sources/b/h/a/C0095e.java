package b.h.a;

import android.view.Choreographer;

/* renamed from: b.h.a.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0095e extends AbstractC0093c {

    /* renamed from: b, reason: collision with root package name */
    public final Choreographer f812b;

    /* renamed from: c, reason: collision with root package name */
    public final Choreographer.FrameCallback f813c;

    public C0095e(C0091a c0091a) {
        super(c0091a);
        this.f812b = Choreographer.getInstance();
        this.f813c = new ChoreographerFrameCallbackC0094d(this);
    }

    @Override // b.h.a.AbstractC0093c
    public void a() {
        this.f812b.postFrameCallback(this.f813c);
    }
}
