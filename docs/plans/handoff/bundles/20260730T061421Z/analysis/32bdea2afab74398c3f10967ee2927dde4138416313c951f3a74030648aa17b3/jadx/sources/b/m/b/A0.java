package b.m.b;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.Arrays;

/* loaded from: classes.dex */
public class A0 {

    /* renamed from: a, reason: collision with root package name */
    public int f1080a;

    /* renamed from: b, reason: collision with root package name */
    public int f1081b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1082c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1083d;
    public boolean e;
    public int[] f;
    public final /* synthetic */ StaggeredGridLayoutManager g;

    public A0(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.g = staggeredGridLayoutManager;
        b();
    }

    public void a() {
        this.f1081b = this.f1082c ? this.g.f195c.g() : this.g.f195c.k();
    }

    public void b() {
        this.f1080a = -1;
        this.f1081b = RecyclerView.UNDEFINED_DURATION;
        this.f1082c = false;
        this.f1083d = false;
        this.e = false;
        int[] iArr = this.f;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
    }
}
