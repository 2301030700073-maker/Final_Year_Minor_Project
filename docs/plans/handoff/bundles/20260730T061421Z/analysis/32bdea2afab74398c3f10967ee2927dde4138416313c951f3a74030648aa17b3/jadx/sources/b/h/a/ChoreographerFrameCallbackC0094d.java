package b.h.a;

import android.view.Choreographer;

/* renamed from: b.h.a.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class ChoreographerFrameCallbackC0094d implements Choreographer.FrameCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0095e f811a;

    public ChoreographerFrameCallbackC0094d(C0095e c0095e) {
        this.f811a = c0095e;
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j) {
        this.f811a.f810a.a();
    }
}
