package b.i.b;

import android.graphics.Rect;
import android.view.View;

/* loaded from: classes.dex */
public class n0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f924a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f925b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f926c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ b.d.g f927d;
    public final /* synthetic */ View e;
    public final /* synthetic */ A0 f;
    public final /* synthetic */ Rect g;

    public n0(r rVar, r rVar2, boolean z, b.d.g gVar, View view, A0 a0, Rect rect) {
        this.f924a = rVar;
        this.f925b = rVar2;
        this.f926c = z;
        this.f927d = gVar;
        this.e = view;
        this.f = a0;
        this.g = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        q0.c(this.f924a, this.f925b, this.f926c, this.f927d, false);
        View view = this.e;
        if (view != null) {
            this.f.f(view, this.g);
        }
    }
}
