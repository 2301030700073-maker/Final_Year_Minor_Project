package b.b.g;

import android.widget.AbsListView;

/* renamed from: b.b.g.v0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0078v0 implements AbsListView.OnScrollListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0084y0 f587a;

    public C0078v0(C0084y0 c0084y0) {
        this.f587a = c0084y0;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (i == 1) {
            if ((this.f587a.B.getInputMethodMode() == 2) || this.f587a.B.getContentView() == null) {
                return;
            }
            C0084y0 c0084y0 = this.f587a;
            c0084y0.x.removeCallbacks(c0084y0.t);
            this.f587a.t.run();
        }
    }
}
