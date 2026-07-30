package b.b.c;

import android.view.KeyEvent;

/* loaded from: classes.dex */
public class K implements b.e.i.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ L f260a;

    public K(L l) {
        this.f260a = l;
    }

    @Override // b.e.i.e
    public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return this.f260a.e(keyEvent);
    }
}
