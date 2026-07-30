package c.b.a.b.a.a.a.a.c;

import android.os.SystemClock;
import android.support.annotation.Nullable;
import c.b.a.b.a.a.a.a.a.a.C0360e;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$ActionFeedback$ActionInteraction;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$SelectionFeedback$SelectionType;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

/* renamed from: c.b.a.b.a.a.a.a.c.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0374m {

    /* renamed from: a, reason: collision with root package name */
    public final List f2482a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final int f2483b = 0;

    /* renamed from: c, reason: collision with root package name */
    public final String f2484c;

    public C0374m(String str) {
        this.f2484c = str;
    }

    public static void c(@Nullable c.b.a.b.a.a.a.a.a.a.x xVar, c.b.a.b.a.a.a.a.a.a.n nVar) {
        List list;
        if (xVar == null || !xVar.f2361c || (list = xVar.f2362d) == null) {
            return;
        }
        c.b.a.b.a.a.a.a.c.y0.d.a(list);
        if (list.isEmpty() || list.size() <= 0 || list.get(0) == null) {
            return;
        }
        c.b.a.b.a.a.a.a.a.a.y yVar = (c.b.a.b.a.a.a.a.a.a.y) list.get(0);
        c.b.a.b.a.a.a.a.c.y0.d.a(yVar);
        String str = yVar.f2364b;
        if (str != null) {
            nVar.l = str;
        }
    }

    public static c.b.a.b.a.a.a.a.a.a.g f(c.b.a.b.a.a.a.a.a.a.t tVar, int i) {
        c.b.a.b.a.a.a.a.a.a.g gVar = new c.b.a.b.a.a.a.a.a.a.g();
        gVar.f2311a = tVar.f2347a;
        gVar.f2312b = tVar.f2348b;
        gVar.f2313c = i;
        gVar.f2314d = tVar.e ? FeedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode.ON_OVERFLOW_MENU : FeedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode.ON_PRIMARY_MENU;
        c.b.a.b.a.a.a.a.a.a.s sVar = tVar.f2349c;
        c.b.a.b.a.a.a.a.c.y0.d.a(sVar);
        gVar.e = sVar.g;
        return gVar;
    }

    public static List g(c.b.a.b.a.a.a.a.a.a.x xVar) {
        int i = 0;
        if (xVar.f2360b == null) {
            return new ArrayList(0);
        }
        List list = xVar.f2360b;
        c.b.a.b.a.a.a.a.c.y0.d.a(list);
        ArrayList arrayList = new ArrayList(list.size());
        while (true) {
            List list2 = xVar.f2360b;
            c.b.a.b.a.a.a.a.c.y0.d.a(list2);
            if (i >= list2.size()) {
                return arrayList;
            }
            List list3 = xVar.f2360b;
            c.b.a.b.a.a.a.a.c.y0.d.a(list3);
            arrayList.add(f((c.b.a.b.a.a.a.a.a.a.t) list3.get(i), i));
            i++;
        }
    }

    public static List h(c.b.a.b.a.a.a.a.a.a.x xVar) {
        if (xVar.f2360b == null) {
            return new ArrayList(0);
        }
        List list = xVar.f2360b;
        c.b.a.b.a.a.a.a.c.y0.d.a(list);
        final ArrayList arrayList = new ArrayList(list.size());
        List list2 = xVar.f2360b;
        c.b.a.b.a.a.a.a.c.y0.d.a(list2);
        list2.forEach(new Consumer(arrayList) { // from class: c.b.a.b.a.a.a.a.c.l

            /* renamed from: a, reason: collision with root package name */
            public final List f2478a;

            {
                this.f2478a = arrayList;
            }

            @Override // java.util.function.Consumer
            public void accept(Object obj) {
                List list3 = this.f2478a;
                c.b.a.b.a.a.a.a.a.a.s sVar = ((c.b.a.b.a.a.a.a.a.a.t) obj).f2349c;
                c.b.a.b.a.a.a.a.c.y0.d.a(sVar);
                list3.add(sVar);
            }
        });
        return arrayList;
    }

    public static String i(c.b.a.b.a.a.a.a.a.a.x xVar, FeedbackParcelables$SelectionFeedback$SelectionType feedbackParcelables$SelectionFeedback$SelectionType) {
        String str = xVar.h;
        if (str == null) {
            return "UNKNOWN_VERTICAL_TYPE";
        }
        c.b.a.b.a.a.a.a.c.y0.d.a(str);
        if (str.equals("UNKNOWN_VERTICAL_TYPE") && feedbackParcelables$SelectionFeedback$SelectionType == FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE) {
            return "IMAGE";
        }
        String str2 = xVar.h;
        c.b.a.b.a.a.a.a.c.y0.d.a(str2);
        return str2;
    }

    public static c.b.a.b.a.a.a.a.a.a.m j(c.b.a.b.a.a.a.a.a.a.x xVar) {
        c.b.a.b.a.a.a.a.a.a.m mVar = new c.b.a.b.a.a.a.a.a.a.m();
        mVar.f2324b = xVar.n == 1 && !xVar.l;
        mVar.f2323a = xVar.n == 1 && xVar.l;
        mVar.f2325c = false;
        if (xVar.l) {
            mVar.f2326d = xVar.o;
            mVar.e = xVar.p;
        } else {
            mVar.f = xVar.o;
            mVar.g = xVar.p;
        }
        return mVar;
    }

    public final C0360e a(String str, String str2, String str3, String str4) {
        c.b.a.b.a.a.a.a.a.a.i d2 = d();
        d2.f2316b = SystemClock.elapsedRealtime();
        C0360e c0360e = new C0360e();
        c0360e.h = str;
        c0360e.i = str2;
        c0360e.j = str3;
        c0360e.k = str4;
        d2.f2315a = c0360e;
        return c0360e;
    }

    public C0374m b(String str, String str2, String str3, String str4, FeedbackParcelables$SelectionFeedback$SelectionType feedbackParcelables$SelectionFeedback$SelectionType, @Nullable c.b.a.b.a.a.a.a.a.a.x xVar, SuggestParcelables$InteractionType suggestParcelables$InteractionType) {
        C0360e a2 = a(str, str2, str3, str4);
        a2.e = FeedbackParcelables$ActionFeedback$ActionInteraction.ACTION_MENU_SHOWN;
        a2.f2307a = feedbackParcelables$SelectionFeedback$SelectionType;
        if (xVar != null) {
            c.b.a.b.a.a.a.a.c.y0.d.a(xVar);
            a2.f2308b = xVar;
            a2.l = i(xVar, feedbackParcelables$SelectionFeedback$SelectionType);
            a2.f2309c = h(xVar);
            a2.m = g(xVar);
        }
        a2.o = suggestParcelables$InteractionType;
        return this;
    }

    public final c.b.a.b.a.a.a.a.a.a.i d() {
        c.b.a.b.a.a.a.a.a.a.i iVar = new c.b.a.b.a.a.a.a.a.a.i();
        this.f2482a.add(iVar);
        return iVar;
    }

    public c.b.a.b.a.a.a.a.a.a.j e() {
        c.b.a.b.a.a.a.a.a.a.j jVar = new c.b.a.b.a.a.a.a.a.a.j();
        jVar.f2319b = this.f2483b;
        jVar.f2320c = this.f2484c;
        List list = this.f2482a;
        c.b.a.b.a.a.a.a.c.y0.d.a(list);
        jVar.f2318a = list;
        return jVar;
    }
}
