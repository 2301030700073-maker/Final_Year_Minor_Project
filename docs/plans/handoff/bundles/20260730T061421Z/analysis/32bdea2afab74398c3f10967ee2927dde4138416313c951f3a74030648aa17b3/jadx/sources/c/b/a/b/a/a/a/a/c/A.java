package c.b.a.b.a.a.a.a.c;

import android.os.SystemClock;
import c.b.a.b.a.a.a.a.a.a.C0357b;
import c.b.a.b.a.a.a.a.a.a.C0360e;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$ActionFeedback$ActionInteraction;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$SelectionFeedback$SelectionType;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class A implements InterfaceC0370i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ B f2369a;

    public A(B b2) {
        this.f2369a = b2;
    }

    @Override // c.b.a.b.a.a.a.a.c.InterfaceC0370i
    public void a(c.b.a.b.a.a.a.a.a.a.s sVar, c.b.a.b.a.a.a.a.a.a.x xVar) {
        B b2 = this.f2369a;
        if (C0371j.a(sVar, xVar, b2.f2372c, b2.e)) {
            List list = xVar.f2360b;
            c.b.a.b.a.a.a.a.c.y0.d.a(list);
            ArrayList arrayList = new ArrayList(list.size());
            int i = 0;
            while (true) {
                List list2 = xVar.f2360b;
                c.b.a.b.a.a.a.a.c.y0.d.a(list2);
                if (i >= list2.size()) {
                    break;
                }
                List list3 = xVar.f2360b;
                c.b.a.b.a.a.a.a.c.y0.d.a(list3);
                c.b.a.b.a.a.a.a.a.a.s sVar2 = ((c.b.a.b.a.a.a.a.a.a.t) list3.get(i)).f2349c;
                c.b.a.b.a.a.a.a.c.y0.d.a(sVar2);
                arrayList.add(sVar2);
                i++;
            }
            B b3 = this.f2369a;
            d0 d0Var = b3.f2372c;
            C0357b c0357b = b3.e.j;
            c.b.a.b.a.a.a.a.c.y0.d.a(c0357b);
            String str = c0357b.f2299a;
            c.b.a.b.a.a.a.a.c.y0.d.a(str);
            B b4 = this.f2369a;
            c.b.a.b.a.a.a.a.b.a aVar = b4.h;
            String str2 = b4.f;
            ArrayList arrayList2 = new ArrayList();
            C0368g c0368g = this.f2369a.e;
            c.b.a.b.a.a.a.a.a.a.p pVar = c0368g.m;
            c.b.a.b.a.a.a.a.a.a.m j = C0374m.j(xVar);
            c.b.a.b.a.a.a.a.a.a.i iVar = new c.b.a.b.a.a.a.a.a.a.i();
            arrayList2.add(iVar);
            if (pVar != null) {
                iVar.f2317c = pVar;
            }
            iVar.f2316b = SystemClock.elapsedRealtime();
            C0360e c0360e = new C0360e();
            iVar.f2315a = c0360e;
            c0360e.f2307a = c0368g.n() ? FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE : FeedbackParcelables$SelectionFeedback$SelectionType.TEXT;
            c0360e.f2308b = xVar;
            c0360e.f2309c = arrayList;
            c0360e.f2310d = sVar;
            c0360e.e = FeedbackParcelables$ActionFeedback$ActionInteraction.ACTION_SHOWN;
            c0360e.f = xVar.m;
            c0360e.g = j;
            c.b.a.b.a.a.a.a.a.a.j jVar = new c.b.a.b.a.a.a.a.a.a.j();
            jVar.f2319b = 0;
            jVar.f2320c = str2;
            jVar.f2318a = arrayList2;
            d0Var.k(str, aVar, jVar);
        }
    }

    @Override // c.b.a.b.a.a.a.a.c.InterfaceC0370i
    public void b(c.b.a.b.a.a.a.a.a.a.s sVar, c.b.a.b.a.a.a.a.a.a.x xVar) {
        B b2 = this.f2369a;
        if (!C0371j.a(sVar, xVar, b2.f2372c, b2.e) || xVar.f2360b == null) {
            return;
        }
        List list = xVar.f2360b;
        c.b.a.b.a.a.a.a.c.y0.d.a(list);
        ArrayList arrayList = new ArrayList(list.size());
        int i = 0;
        while (true) {
            List list2 = xVar.f2360b;
            c.b.a.b.a.a.a.a.c.y0.d.a(list2);
            if (i >= list2.size()) {
                break;
            }
            List list3 = xVar.f2360b;
            c.b.a.b.a.a.a.a.c.y0.d.a(list3);
            c.b.a.b.a.a.a.a.a.a.s sVar2 = ((c.b.a.b.a.a.a.a.a.a.t) list3.get(i)).f2349c;
            c.b.a.b.a.a.a.a.c.y0.d.a(sVar2);
            arrayList.add(sVar2);
            i++;
        }
        B b3 = this.f2369a;
        d0 d0Var = b3.f2372c;
        C0357b c0357b = b3.e.j;
        c.b.a.b.a.a.a.a.c.y0.d.a(c0357b);
        String str = c0357b.f2299a;
        c.b.a.b.a.a.a.a.c.y0.d.a(str);
        B b4 = this.f2369a;
        c.b.a.b.a.a.a.a.b.a aVar = b4.h;
        String str2 = b4.f;
        ArrayList arrayList2 = new ArrayList();
        C0368g c0368g = this.f2369a.e;
        c.b.a.b.a.a.a.a.a.a.p pVar = c0368g.m;
        c.b.a.b.a.a.a.a.a.a.m j = C0374m.j(xVar);
        c.b.a.b.a.a.a.a.a.a.i iVar = new c.b.a.b.a.a.a.a.a.a.i();
        arrayList2.add(iVar);
        if (pVar != null) {
            iVar.f2317c = pVar;
        }
        iVar.f2316b = SystemClock.elapsedRealtime();
        C0360e c0360e = new C0360e();
        iVar.f2315a = c0360e;
        c0360e.f2307a = c0368g.n() ? FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE : FeedbackParcelables$SelectionFeedback$SelectionType.TEXT;
        c0360e.f2308b = xVar;
        c0360e.f2309c = arrayList;
        c0360e.f2310d = sVar;
        c0360e.e = FeedbackParcelables$ActionFeedback$ActionInteraction.ACTION_INVOKED;
        c0360e.f = xVar.m;
        c0360e.g = j;
        c.b.a.b.a.a.a.a.a.a.j jVar = new c.b.a.b.a.a.a.a.a.a.j();
        jVar.f2319b = 0;
        jVar.f2320c = str2;
        jVar.f2318a = arrayList2;
        d0Var.k(str, aVar, jVar);
    }

    @Override // c.b.a.b.a.a.a.a.c.InterfaceC0370i
    public void c(c.b.a.b.a.a.a.a.a.a.s sVar, c.b.a.b.a.a.a.a.a.a.x xVar) {
        B b2 = this.f2369a;
        if (!C0371j.a(sVar, xVar, b2.f2372c, b2.e) || this.f2369a.e.f2461c.isEmpty()) {
            return;
        }
        List list = xVar.f2360b;
        c.b.a.b.a.a.a.a.c.y0.d.a(list);
        ArrayList arrayList = new ArrayList(list.size());
        int i = 0;
        while (true) {
            List list2 = xVar.f2360b;
            c.b.a.b.a.a.a.a.c.y0.d.a(list2);
            if (i >= list2.size()) {
                break;
            }
            List list3 = xVar.f2360b;
            c.b.a.b.a.a.a.a.c.y0.d.a(list3);
            c.b.a.b.a.a.a.a.a.a.s sVar2 = ((c.b.a.b.a.a.a.a.a.a.t) list3.get(i)).f2349c;
            c.b.a.b.a.a.a.a.c.y0.d.a(sVar2);
            arrayList.add(sVar2);
            i++;
        }
        this.f2369a.i.a();
        B b3 = this.f2369a;
        d0 d0Var = b3.f2372c;
        C0357b c0357b = b3.e.j;
        c.b.a.b.a.a.a.a.c.y0.d.a(c0357b);
        String str = c0357b.f2299a;
        c.b.a.b.a.a.a.a.c.y0.d.a(str);
        B b4 = this.f2369a;
        c.b.a.b.a.a.a.a.b.a aVar = b4.h;
        String str2 = b4.f;
        ArrayList arrayList2 = new ArrayList();
        C0368g c0368g = this.f2369a.e;
        c.b.a.b.a.a.a.a.a.a.p pVar = c0368g.m;
        c.b.a.b.a.a.a.a.a.a.m j = C0374m.j((c.b.a.b.a.a.a.a.a.a.x) c0368g.f2461c.get(0));
        c.b.a.b.a.a.a.a.a.a.i iVar = new c.b.a.b.a.a.a.a.a.a.i();
        arrayList2.add(iVar);
        if (pVar != null) {
            iVar.f2317c = pVar;
        }
        iVar.f2316b = SystemClock.elapsedRealtime();
        C0360e c0360e = new C0360e();
        iVar.f2315a = c0360e;
        c0360e.f2307a = c0368g.n() ? FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE : FeedbackParcelables$SelectionFeedback$SelectionType.TEXT;
        c0360e.f2308b = xVar;
        c0360e.f2309c = arrayList;
        c0360e.f2310d = sVar;
        c0360e.e = FeedbackParcelables$ActionFeedback$ActionInteraction.ACTION_DISMISSED;
        c0360e.f = xVar.m;
        c0360e.g = j;
        c.b.a.b.a.a.a.a.a.a.j jVar = new c.b.a.b.a.a.a.a.a.a.j();
        jVar.f2319b = 0;
        jVar.f2320c = str2;
        jVar.f2318a = arrayList2;
        d0Var.k(str, aVar, jVar);
    }
}
