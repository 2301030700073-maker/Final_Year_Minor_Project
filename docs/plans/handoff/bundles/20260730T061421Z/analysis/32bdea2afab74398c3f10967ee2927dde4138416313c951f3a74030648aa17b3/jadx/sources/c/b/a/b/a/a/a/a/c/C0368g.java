package c.b.a.b.a.a.a.a.c;

import android.graphics.Rect;
import android.graphics.RectF;
import android.support.annotation.Nullable;
import android.util.SparseArray;
import c.b.a.b.a.a.a.a.a.a.C0356a;
import c.b.a.b.a.a.a.a.a.a.C0357b;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.EntitiesData;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$ContentType;
import java.util.ArrayList;
import java.util.List;

/* renamed from: c.b.a.b.a.a.a.a.c.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0368g {

    /* renamed from: a, reason: collision with root package name */
    public final d0 f2459a;

    /* renamed from: b, reason: collision with root package name */
    public final C0371j f2460b;
    public final String e;
    public int f;
    public int g;
    public String i;

    @Nullable
    public C0357b j;

    @Nullable
    public c.b.a.b.a.a.a.a.a.a.w k;

    @Nullable
    public EntitiesData l;

    @Nullable
    public c.b.a.b.a.a.a.a.a.a.p m;

    /* renamed from: c, reason: collision with root package name */
    public final List f2461c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final SparseArray f2462d = new SparseArray();
    public String h = "null_session_id";

    @Nullable
    public RectF n = null;

    public C0368g(String str, @Nullable C0357b c0357b, @Nullable EntitiesData entitiesData, d0 d0Var, C0371j c0371j, int i) {
        this.i = "null_session_id";
        this.e = str;
        this.j = c0357b;
        this.l = entitiesData;
        if (entitiesData != null) {
            this.k = entitiesData.f3236a;
        }
        this.f2459a = d0Var;
        this.f2460b = c0371j;
        this.f = i;
        c.b.a.b.a.a.a.a.a.a.w wVar = this.k;
        if (wVar != null) {
            String str2 = wVar.f2355a;
            c.b.a.b.a.a.a.a.c.y0.d.a(str2);
            this.i = str2;
        }
    }

    public static C0368g g(String str, d0 d0Var, C0371j c0371j, int i) {
        C0368g c0368g = new C0368g(str, null, null, d0Var, c0371j, i);
        if (i >= 0) {
            c0368g.b();
        }
        return c0368g;
    }

    public boolean a(int i, C0357b c0357b, EntitiesData entitiesData, int i2) {
        if (!(this.g == i)) {
            StringBuilder sb = new StringBuilder(47);
            sb.append("--Error: token expired; new token = ");
            sb.append(i);
            c.b.a.b.a.a.a.a.c.y0.c.c(sb.toString());
            return false;
        }
        c();
        this.j = c0357b;
        if (entitiesData != null && entitiesData.f3236a != null) {
            c.b.a.b.a.a.a.a.c.y0.d.a(entitiesData);
            this.i = entitiesData.f3236a.f2355a;
        }
        this.l = entitiesData;
        this.k = entitiesData.f3236a;
        this.f = i2;
        b();
        return true;
    }

    public final C0368g b() {
        if (this.f >= 0 && this.k != null && this.j != null) {
            List<c.b.a.b.a.a.a.a.a.a.u> list = h().f2295a;
            RectF rectF = new RectF();
            c.b.a.b.a.a.a.a.c.y0.d.a(list);
            for (c.b.a.b.a.a.a.a.a.a.u uVar : list) {
                f(uVar, rectF);
                RectF rectF2 = (RectF) this.f2462d.get(uVar.f2354d);
                if (rectF2 == null) {
                    this.f2462d.put(uVar.f2354d, new RectF(rectF));
                } else {
                    rectF2.union(rectF);
                }
                RectF rectF3 = this.n;
                if (rectF3 == null) {
                    this.n = new RectF(rectF);
                } else {
                    rectF3.union(rectF);
                }
            }
            c.b.a.b.a.a.a.a.a.a.w wVar = this.k;
            c.b.a.b.a.a.a.a.c.y0.d.a(wVar);
            List<c.b.a.b.a.a.a.a.a.a.x> list2 = wVar.f2357c;
            c.b.a.b.a.a.a.a.c.y0.d.a(list2);
            for (c.b.a.b.a.a.a.a.a.a.x xVar : list2) {
                if (xVar.j == this.f) {
                    this.f2461c.add(xVar);
                }
            }
        }
        return this;
    }

    public void c() {
        this.j = null;
        this.k = null;
        this.n = null;
        this.f2461c.clear();
        this.f2462d.clear();
    }

    public List d() {
        C0357b c0357b = this.j;
        c.b.a.b.a.a.a.a.c.y0.d.a(c0357b);
        List list = c0357b.f2301c;
        c.b.a.b.a.a.a.a.c.y0.d.a(list);
        return list;
    }

    public void e(c.b.a.b.a.a.a.a.a.a.u uVar, RectF rectF) {
        c.b.a.b.a.a.a.a.a.a.D d2 = uVar.f2351a;
        c.b.a.b.a.a.a.a.c.y0.d.a(d2);
        float f = d2.f2284a;
        c.b.a.b.a.a.a.a.a.a.D d3 = uVar.f2351a;
        c.b.a.b.a.a.a.a.c.y0.d.a(d3);
        float f2 = d3.f2285b;
        c.b.a.b.a.a.a.a.a.a.D d4 = uVar.f2351a;
        c.b.a.b.a.a.a.a.c.y0.d.a(d4);
        float f3 = d4.f2286c;
        c.b.a.b.a.a.a.a.a.a.D d5 = uVar.f2351a;
        c.b.a.b.a.a.a.a.c.y0.d.a(d5);
        float f4 = f3 + d5.f2284a;
        c.b.a.b.a.a.a.a.a.a.D d6 = uVar.f2351a;
        c.b.a.b.a.a.a.a.c.y0.d.a(d6);
        float f5 = d6.f2287d;
        c.b.a.b.a.a.a.a.a.a.D d7 = uVar.f2351a;
        c.b.a.b.a.a.a.a.c.y0.d.a(d7);
        rectF.set(f, f2, f4, f5 + d7.f2285b);
    }

    public void f(c.b.a.b.a.a.a.a.a.a.u uVar, RectF rectF) {
        e(uVar, rectF);
        this.f2459a.c(rectF);
    }

    public C0356a h() {
        return (C0356a) d().get(this.f);
    }

    @Nullable
    public c.b.a.b.a.a.a.a.a.a.x i(int i) {
        boolean z;
        c.b.a.b.a.a.a.a.a.a.w wVar;
        if (m()) {
            return null;
        }
        if (this.f >= 0 && h().f2296b != null) {
            List list = h().f2296b;
            c.b.a.b.a.a.a.a.c.y0.d.a(list);
            if (!list.isEmpty()) {
                z = false;
                if (z && h().f2296b != null) {
                    List list2 = h().f2296b;
                    c.b.a.b.a.a.a.a.c.y0.d.a(list2);
                    if (i >= list2.size() || (wVar = this.k) == null || wVar.f2357c == null) {
                        return null;
                    }
                    c.b.a.b.a.a.a.a.c.y0.d.a(wVar);
                    List<c.b.a.b.a.a.a.a.a.a.x> list3 = wVar.f2357c;
                    c.b.a.b.a.a.a.a.c.y0.d.a(list3);
                    for (c.b.a.b.a.a.a.a.a.a.x xVar : list3) {
                        if (xVar.j == this.f && xVar.k == i) {
                            return xVar;
                        }
                    }
                    return null;
                }
            }
        }
        z = true;
        return z ? null : null;
    }

    public Rect j() {
        List list = h().f2295a;
        c.b.a.b.a.a.a.a.c.y0.d.a(list);
        c.b.a.b.a.a.a.a.c.y0.d.a((c.b.a.b.a.a.a.a.a.a.u) list.get(0));
        List list2 = h().f2295a;
        c.b.a.b.a.a.a.a.c.y0.d.a(list2);
        c.b.a.b.a.a.a.a.a.a.D d2 = ((c.b.a.b.a.a.a.a.a.a.u) list2.get(0)).f2351a;
        Rect rect = new Rect();
        c.b.a.b.a.a.a.a.c.y0.d.a(d2);
        c.b.a.b.a.a.a.a.a.a.D d3 = d2;
        float f = d3.f2284a;
        float f2 = d3.f2285b;
        rect.set((int) f, (int) f2, (int) (f + d3.f2286c), (int) (f2 + d3.f2287d));
        return rect;
    }

    public String k() {
        return this.f2459a.j();
    }

    public boolean l(int i) {
        return this.g == i;
    }

    public boolean m() {
        List list;
        C0357b c0357b = this.j;
        if (c0357b != null && this.k != null && (list = c0357b.f2301c) != null) {
            c.b.a.b.a.a.a.a.c.y0.d.a(list);
            if (!list.isEmpty()) {
                return false;
            }
        }
        return true;
    }

    public boolean n() {
        if (this.f >= 0 && h().f2295a != null) {
            int i = 0;
            while (true) {
                List list = h().f2295a;
                c.b.a.b.a.a.a.a.c.y0.d.a(list);
                if (i >= list.size()) {
                    break;
                }
                List list2 = h().f2295a;
                c.b.a.b.a.a.a.a.c.y0.d.a(list2);
                if (((c.b.a.b.a.a.a.a.a.a.u) list2.get(i)).f2353c == SuggestParcelables$ContentType.CONTENT_TYPE_IMAGE) {
                    return true;
                }
                i++;
            }
        }
        return false;
    }

    public RectF o(int i) {
        RectF rectF = (RectF) this.f2462d.get(i);
        c.b.a.b.a.a.a.a.c.y0.d.a(rectF);
        return rectF;
    }

    public int p() {
        int i = this.g + 1;
        this.g = i;
        return i;
    }
}
