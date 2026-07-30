package c.b.a.c.f;

import android.database.ContentObserver;

/* loaded from: classes.dex */
public final class o extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0440n f3049a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(C0440n c0440n) {
        super(null);
        this.f3049a = c0440n;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        C0440n c0440n = this.f3049a;
        synchronized (c0440n.f3048d) {
            c0440n.e = null;
        }
    }
}
