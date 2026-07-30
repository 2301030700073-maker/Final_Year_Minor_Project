package b.i.b;

import android.graphics.Rect;
import android.view.View;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class o0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ A0 f932a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b.d.g f933b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f934c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ p0 f935d;
    public final /* synthetic */ ArrayList e;
    public final /* synthetic */ View f;
    public final /* synthetic */ r g;
    public final /* synthetic */ r h;
    public final /* synthetic */ boolean i;
    public final /* synthetic */ ArrayList j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Rect l;

    public o0(A0 a0, b.d.g gVar, Object obj, p0 p0Var, ArrayList arrayList, View view, r rVar, r rVar2, boolean z, ArrayList arrayList2, Object obj2, Rect rect) {
        this.f932a = a0;
        this.f933b = gVar;
        this.f934c = obj;
        this.f935d = p0Var;
        this.e = arrayList;
        this.f = view;
        this.g = rVar;
        this.h = rVar2;
        this.i = z;
        this.j = arrayList2;
        this.k = obj2;
        this.l = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        b.d.g e = q0.e(this.f932a, this.f933b, this.f934c, this.f935d);
        if (e != null) {
            this.e.addAll(e.values());
            this.e.add(this.f);
        }
        q0.c(this.g, this.h, this.i, e, false);
        Object obj = this.f934c;
        if (obj != null) {
            this.f932a.r(obj, this.j, this.e);
            View k = q0.k(e, this.f935d, this.k, this.i);
            if (k != null) {
                this.f932a.f(k, this.l);
            }
        }
    }
}
