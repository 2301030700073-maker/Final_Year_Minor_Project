package b.b.g;

import android.database.DataSetObserver;

/* renamed from: b.b.g.u0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0076u0 extends DataSetObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0084y0 f585a;

    public C0076u0(C0084y0 c0084y0) {
        this.f585a = c0084y0;
    }

    @Override // android.database.DataSetObserver
    public void onChanged() {
        if (this.f585a.b()) {
            this.f585a.f();
        }
    }

    @Override // android.database.DataSetObserver
    public void onInvalidated() {
        this.f585a.dismiss();
    }
}
