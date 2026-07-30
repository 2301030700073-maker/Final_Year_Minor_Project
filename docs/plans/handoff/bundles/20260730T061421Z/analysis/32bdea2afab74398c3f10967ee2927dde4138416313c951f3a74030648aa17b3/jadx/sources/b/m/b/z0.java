package b.m.b;

import androidx.recyclerview.widget.StaggeredGridLayoutManager;

/* loaded from: classes.dex */
public class z0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ StaggeredGridLayoutManager f1229a;

    public z0(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.f1229a = staggeredGridLayoutManager;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1229a.b();
    }
}
