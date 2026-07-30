package c.b.a.b.a.a.a.a.c;

import android.app.contentsuggestions.ContentSuggestionsManager;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import c.b.a.b.a.a.a.a.a.a.C0357b;
import com.android.systemui.shared.R;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.EntitiesData;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$SelectionFeedback$SelectionType;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$TaskSnapshotFeedback$TaskSnapshotInteraction;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class P {
    public static O h = K.f2393a;

    /* renamed from: a, reason: collision with root package name */
    public final Context f2399a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f2400b;

    /* renamed from: c, reason: collision with root package name */
    public final N f2401c;
    public final Context e;

    @Nullable
    public B f;
    public String g = "null_session_id";

    /* renamed from: d, reason: collision with root package name */
    public final c.b.a.b.a.a.a.a.b.a f2402d = new c.b.a.b.a.a.a.a.b.a(4);

    public P(Context context, Context context2, Executor executor, Handler handler) {
        this.e = context;
        this.f2399a = context2;
        this.f2400b = handler;
        this.f2401c = c(context, executor, handler);
    }

    public static String a(ComponentName componentName, int i, long j) {
        return c.b.a.b.a.a.a.a.c.y0.d.c("task_snapshot_", String.format("%s_%s_%s", componentName.toShortString(), Integer.valueOf(i), Long.valueOf(j)));
    }

    public static final /* synthetic */ N c(Context context, Executor executor, Handler handler) {
        return new N((ContentSuggestionsManager) context.getSystemService(ContentSuggestionsManager.class), executor, handler);
    }

    public final void b(boolean z, RectF rectF, PointF pointF, long j, Bitmap bitmap, int i, Bundle bundle, ComponentName componentName, c.b.a.b.b.h.a aVar, c.b.a.b.b.m.n nVar) {
        final c.b.a.b.a.a.a.a.a.a.p pVar = new c.b.a.b.a.a.a.a.a.a.p();
        pVar.h = SuggestParcelables$InteractionType.GLEAM_CHIP;
        pVar.f = 1;
        pVar.i = z;
        B b2 = this.f;
        Context context = this.f2399a;
        Context context2 = this.e;
        N n = this.f2401c;
        Handler handler = this.f2400b;
        c.b.a.b.a.a.a.a.b.a aVar2 = this.f2402d;
        if (b2 != null) {
            C0368g c0368g = b2.e;
            if (c0368g != null) {
                c0368g.c();
            }
            d0 d0Var = b2.f2372c;
            if (d0Var != null) {
                d0Var.m(true);
            }
        }
        final B b3 = new B(context, context2, d0.d(n, rectF, pointF, j, bitmap, i, bundle, componentName != null ? componentName : new ComponentName("", ""), new C0367f(null)), aVar, nVar, handler, "null_session_id", pVar, aVar2);
        Objects.requireNonNull(aVar);
        if (!b3.k) {
            b3.k = true;
            b3.f2370a.postDelayed(new Runnable(b3, pVar) { // from class: c.b.a.b.a.a.a.a.c.x

                /* renamed from: a, reason: collision with root package name */
                public final B f2516a;

                /* renamed from: b, reason: collision with root package name */
                public final c.b.a.b.a.a.a.a.a.a.p f2517b;

                {
                    this.f2516a = b3;
                    this.f2517b = pVar;
                }

                @Override // java.lang.Runnable
                public void run() {
                    final B b4 = this.f2516a;
                    c.b.a.b.a.a.a.a.a.a.p pVar2 = this.f2517b;
                    c.b.a.b.b.h.a aVar3 = b4.f2373d;
                    final int p = b4.e.p();
                    C0368g c0368g2 = b4.e;
                    if (c0368g2 != null) {
                        c0368g2.c();
                    }
                    d0 d0Var2 = b4.f2372c;
                    if (d0Var2 != null) {
                        d0Var2.m(true);
                    }
                    E e = b4.i;
                    if (e != null) {
                        e.a();
                    }
                    b4.i = new E(b4.f2371b, aVar3, b4.e);
                    b4.f2372c.m(false);
                    b4.f2372c.g(pVar2, b4.h, new b0(b4, p) { // from class: c.b.a.b.a.a.a.a.c.y

                        /* renamed from: a, reason: collision with root package name */
                        public final B f2522a;

                        /* renamed from: b, reason: collision with root package name */
                        public final int f2523b;

                        {
                            this.f2522a = b4;
                            this.f2523b = p;
                        }

                        @Override // c.b.a.b.a.a.a.a.c.b0
                        public void a(final C0357b c0357b) {
                            final B b5 = this.f2522a;
                            final int i2 = this.f2523b;
                            if (!(b5.e.g == i2)) {
                                b5.k = false;
                                return;
                            }
                            if (!B.a(c0357b)) {
                                c.b.a.b.a.a.a.a.c.y0.c.c("Unable to obtain any contents");
                                b5.k = false;
                                return;
                            }
                            b5.e.h = c.b.a.b.a.a.a.a.c.y0.d.b("interaction_");
                            d0 d0Var3 = b5.f2372c;
                            c.b.a.b.a.a.a.a.b.a aVar4 = b5.h;
                            c.b.a.b.a.a.a.a.a.a.p pVar3 = b5.e.m;
                            c.b.a.b.a.a.a.a.c.y0.d.a(pVar3);
                            d0Var3.e(c0357b, aVar4, pVar3, new c0(b5, i2, c0357b) { // from class: c.b.a.b.a.a.a.a.c.z

                                /* renamed from: a, reason: collision with root package name */
                                public final B f2527a;

                                /* renamed from: b, reason: collision with root package name */
                                public final int f2528b;

                                /* renamed from: c, reason: collision with root package name */
                                public final C0357b f2529c;

                                {
                                    this.f2527a = b5;
                                    this.f2528b = i2;
                                    this.f2529c = c0357b;
                                }

                                @Override // c.b.a.b.a.a.a.a.c.c0
                                public void a(C0357b c0357b2, EntitiesData entitiesData) {
                                    B b6 = this.f2527a;
                                    int i3 = this.f2528b;
                                    C0357b c0357b3 = this.f2529c;
                                    b6.k = false;
                                    if (b6.i != null) {
                                        C0368g c0368g3 = b6.e;
                                        if (!c0368g3.a(i3, c0357b3, entitiesData, c0368g3.f)) {
                                            c.b.a.b.a.a.a.a.c.y0.c.c("Unable to apply entities for proactive hints.");
                                            return;
                                        }
                                        C0368g c0368g4 = b6.e;
                                        C0371j c0371j = c0368g4.f2460b;
                                        c0371j.h = null;
                                        c0371j.j = c0368g4;
                                        c0371j.j(SuggestParcelables$InteractionType.CHIP);
                                        E e2 = b6.i;
                                        Objects.requireNonNull(e2);
                                        new Handler().post(new Runnable(e2, entitiesData) { // from class: c.b.a.b.a.a.a.a.c.C

                                            /* renamed from: a, reason: collision with root package name */
                                            public final E f2374a;

                                            /* renamed from: b, reason: collision with root package name */
                                            public final EntitiesData f2375b;

                                            {
                                                this.f2374a = e2;
                                                this.f2375b = entitiesData;
                                            }

                                            @Override // java.lang.Runnable
                                            public void run() {
                                                String str;
                                                final E e3 = this.f2374a;
                                                EntitiesData entitiesData2 = this.f2375b;
                                                SuggestParcelables$InteractionType suggestParcelables$InteractionType = SuggestParcelables$InteractionType.CHIP;
                                                e3.a();
                                                e3.f2378a.setVisibility(0);
                                                List<c.b.a.b.a.a.a.a.a.a.x> list = entitiesData2.f3236a.f2357c;
                                                c.b.a.b.a.a.a.a.c.y0.d.a(list);
                                                for (final c.b.a.b.a.a.a.a.a.a.x xVar : list) {
                                                    SuggestParcelables$InteractionType suggestParcelables$InteractionType2 = xVar.r;
                                                    if (suggestParcelables$InteractionType2 == suggestParcelables$InteractionType || suggestParcelables$InteractionType2 == SuggestParcelables$InteractionType.GLEAM_CHIP) {
                                                        LinearLayout linearLayout = e3.f2378a;
                                                        List list2 = xVar.f2360b;
                                                        if (list2 != null) {
                                                            c.b.a.b.a.a.a.a.c.y0.d.a(list2);
                                                            if (!list2.isEmpty()) {
                                                                List list3 = xVar.f2360b;
                                                                c.b.a.b.a.a.a.a.c.y0.d.a(list3);
                                                                c.b.a.b.a.a.a.a.a.a.s sVar = ((c.b.a.b.a.a.a.a.a.a.t) list3.get(0)).f2349c;
                                                                c.b.a.b.a.a.a.a.c.y0.d.a(sVar);
                                                                ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(linearLayout.getContext()).inflate(R.layout.chip_view, (ViewGroup) linearLayout, false);
                                                                TextView textView = (TextView) viewGroup.findViewById(R.id.chip_label);
                                                                String str2 = sVar.f2344b;
                                                                c.b.a.b.a.a.a.a.c.y0.d.a(str2);
                                                                String str3 = sVar.e;
                                                                c.b.a.b.a.a.a.a.c.y0.d.a(str3);
                                                                String str4 = xVar.e;
                                                                c.b.a.b.a.a.a.a.c.y0.d.a(str4);
                                                                String[] strArr = {str2, str3, str4};
                                                                int i4 = 0;
                                                                while (true) {
                                                                    if (i4 >= 3) {
                                                                        str = "";
                                                                        break;
                                                                    }
                                                                    str = strArr[i4];
                                                                    if (!TextUtils.isEmpty(str)) {
                                                                        break;
                                                                    } else {
                                                                        i4++;
                                                                    }
                                                                }
                                                                textView.setText(str);
                                                                ImageView imageView = (ImageView) viewGroup.findViewById(R.id.chip_icon);
                                                                String str5 = sVar.f2343a;
                                                                c.b.a.b.a.a.a.a.c.y0.d.a(str5);
                                                                Bitmap bitmap2 = (Bitmap) entitiesData2.f3237b.get(str5);
                                                                if (bitmap2 == null) {
                                                                    imageView.setVisibility(8);
                                                                } else {
                                                                    imageView.setImageBitmap(bitmap2);
                                                                }
                                                                viewGroup.setOnClickListener(new View.OnClickListener(e3, xVar) { // from class: c.b.a.b.a.a.a.a.c.D

                                                                    /* renamed from: a, reason: collision with root package name */
                                                                    public final E f2376a;

                                                                    /* renamed from: b, reason: collision with root package name */
                                                                    public final c.b.a.b.a.a.a.a.a.a.x f2377b;

                                                                    {
                                                                        this.f2376a = e3;
                                                                        this.f2377b = xVar;
                                                                    }

                                                                    @Override // android.view.View.OnClickListener
                                                                    public void onClick(View view) {
                                                                        E e4 = this.f2376a;
                                                                        c.b.a.b.a.a.a.a.a.a.x xVar2 = this.f2377b;
                                                                        Objects.requireNonNull(e4);
                                                                        try {
                                                                            C0368g c0368g5 = e4.f2381d;
                                                                            Objects.requireNonNull(c0368g5);
                                                                            c0368g5.f = xVar2.j;
                                                                            C0371j c0371j2 = e4.f2380c;
                                                                            C0368g c0368g6 = e4.f2381d;
                                                                            c0371j2.h = xVar2;
                                                                            c0371j2.j = c0368g6;
                                                                            C0371j c0371j3 = e4.f2380c;
                                                                            SuggestParcelables$InteractionType suggestParcelables$InteractionType3 = SuggestParcelables$InteractionType.CHIP;
                                                                            List list4 = xVar2.f2360b;
                                                                            c.b.a.b.a.a.a.a.c.y0.d.a(list4);
                                                                            c0371j3.f(suggestParcelables$InteractionType3, (c.b.a.b.a.a.a.a.a.a.t) list4.get(0));
                                                                            e4.a();
                                                                            e4.f2378a.setVisibility(8);
                                                                            List list5 = xVar2.f2360b;
                                                                            c.b.a.b.a.a.a.a.c.y0.d.a(list5);
                                                                            String valueOf = String.valueOf(list5.get(0));
                                                                            StringBuilder sb = new StringBuilder(valueOf.length() + 17);
                                                                            sb.append("Invoking action: ");
                                                                            sb.append(valueOf);
                                                                            c.b.a.b.a.a.a.a.c.y0.c.e(sb.toString());
                                                                            C0371j c0371j4 = e4.f2380c;
                                                                            List list6 = xVar2.f2360b;
                                                                            c.b.a.b.a.a.a.a.c.y0.d.a(list6);
                                                                            c0371j4.d((c.b.a.b.a.a.a.a.a.a.t) list6.get(0));
                                                                        } catch (Exception e5) {
                                                                            Log.e("AiAiSuggestUi", "Error handling action", e5);
                                                                        }
                                                                    }
                                                                });
                                                                linearLayout.addView(viewGroup);
                                                            }
                                                        }
                                                        String valueOf = String.valueOf(xVar.e);
                                                        c.b.a.b.a.a.a.a.c.y0.c.e(valueOf.length() != 0 ? "Proactive hint: ".concat(valueOf) : new String("Proactive hint: "));
                                                        C0368g c0368g5 = e3.f2381d;
                                                        Objects.requireNonNull(c0368g5);
                                                        c0368g5.f = xVar.j;
                                                        C0371j c0371j2 = e3.f2380c;
                                                        C0368g c0368g6 = c0371j2.j;
                                                        if (c0368g6 == null) {
                                                            c.b.a.b.a.a.a.a.c.y0.c.b("onSuggestViewActionMenuShown logging failed, entitiesModel is null.");
                                                        } else {
                                                            c.b.a.b.a.a.a.a.c.y0.d.a(c0368g6);
                                                            c.b.a.b.a.a.a.a.c.y0.c.b(String.format((c0368g6.n() ? "IMAGE" : "TEXT").concat(" Action Menu Shown - OverviewSessionId : %s, TaskSnapshotSessionId : %s, interactionSessionId  : %s, selectionSessionId : %s"), c0368g6.e, c0368g6.k(), c0368g6.h, c0368g6.i));
                                                            String str6 = c0368g6.e;
                                                            C0374m c0374m = new C0374m(str6);
                                                            c0374m.b(c0368g6.e, c0368g6.k(), c0368g6.h, c0368g6.i, c0368g6.n() ? FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE : FeedbackParcelables$SelectionFeedback$SelectionType.TEXT, xVar, suggestParcelables$InteractionType);
                                                            c0371j2.n(str6, c0374m.e());
                                                        }
                                                    }
                                                }
                                                c.b.a.b.b.h.a aVar5 = e3.f2379b;
                                                if (aVar5.f2572b) {
                                                    return;
                                                }
                                                aVar5.f2571a.accept(e3);
                                            }
                                        });
                                        Log.i("AiAiSuggestUi", "Showing chips view");
                                    }
                                }
                            });
                            c.b.a.b.a.a.a.a.c.y0.c.b(String.format("Proactive Hints Displayed - OverviewSessionId : %s, TaskSnapshotSessionId : %s, Primary ComponentName %s.", b5.f, b5.g, b5.f2372c.h()));
                            d0 d0Var4 = b5.f2372c;
                            String str = b5.f;
                            c.b.a.b.a.a.a.a.b.a aVar5 = b5.h;
                            ArrayList arrayList = new ArrayList();
                            String str2 = b5.f;
                            String str3 = b5.g;
                            ComponentName h2 = b5.f2372c.h();
                            c.b.a.b.a.a.a.a.a.a.i iVar = new c.b.a.b.a.a.a.a.a.a.i();
                            arrayList.add(iVar);
                            iVar.f2316b = SystemClock.elapsedRealtime();
                            c.b.a.b.a.a.a.a.a.a.o oVar = new c.b.a.b.a.a.a.a.a.a.o();
                            oVar.f2332b = str2;
                            oVar.f2333c = str3;
                            iVar.f2315a = oVar;
                            oVar.f2331a = FeedbackParcelables$TaskSnapshotFeedback$TaskSnapshotInteraction.TASK_SNAPSHOT_PROACTIVE_HINTS_DISPLAYED;
                            oVar.f2334d = h2 == null ? "" : h2.toShortString();
                            c.b.a.b.a.a.a.a.a.a.j jVar = new c.b.a.b.a.a.a.a.a.a.j();
                            jVar.f2319b = 0;
                            jVar.f2320c = str;
                            c.b.a.b.a.a.a.a.c.y0.d.a(arrayList);
                            jVar.f2318a = arrayList;
                            d0Var4.k(str, aVar5, jVar);
                        }
                    });
                }
            }, 10L);
        }
        this.f = b3;
    }

    public void d(final RectF rectF, final PointF pointF, final long j, @Nullable Bitmap bitmap, final int i, Bundle bundle, @Nullable final ComponentName componentName, final c.b.a.b.b.h.a aVar, final c.b.a.b.b.m.n nVar, final boolean z) {
        N n = this.f2401c;
        final Bitmap bitmap2 = null;
        final Bundle bundle2 = null;
        n.f2397b.execute(new Runnable(this, z, rectF, pointF, j, bitmap2, i, bundle2, componentName, aVar, nVar) { // from class: c.b.a.b.a.a.a.a.c.G

            /* renamed from: a, reason: collision with root package name */
            public final P f2383a;

            /* renamed from: b, reason: collision with root package name */
            public final boolean f2384b;

            /* renamed from: c, reason: collision with root package name */
            public final RectF f2385c;

            /* renamed from: d, reason: collision with root package name */
            public final PointF f2386d;
            public final long e;
            public final Bitmap f;
            public final int g;
            public final Bundle h;
            public final ComponentName i;
            public final c.b.a.b.b.h.a j;
            public final c.b.a.b.b.m.n k;

            {
                this.f2383a = this;
                this.f2384b = z;
                this.f2385c = rectF;
                this.f2386d = pointF;
                this.e = j;
                this.f = bitmap2;
                this.g = i;
                this.h = bundle2;
                this.i = componentName;
                this.j = aVar;
                this.k = nVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f2383a.b(this.f2384b, this.f2385c, this.f2386d, this.e, this.f, this.g, this.h, this.i, this.j, this.k);
            }
        });
    }

    public void e(FrameLayout frameLayout, RectF rectF, PointF pointF, long j, @Nullable Bitmap bitmap, int i, Bundle bundle, @Nullable ComponentName componentName, @Nullable Q q, c.b.a.b.b.m.n nVar, InterfaceC0383w interfaceC0383w, r rVar, boolean z) {
        d0 d2 = d0.d(this.f2401c, rectF, pointF, j, null, i, null, componentName != null ? componentName : new ComponentName("", ""), q != null ? q : C0367f.f2453d);
        m0 m0Var = new m0(this.f2399a, this.e, frameLayout, d2, this.f2400b, nVar, new l0("null_session_id", d2.j(), z), this.f2402d, interfaceC0383w, rVar);
        m0Var.h.i().e(m0Var);
    }

    @VisibleForTesting
    public void reportMetricsToService(final String str, final c.b.a.b.a.a.a.a.a.a.j jVar, @Nullable final Q q) {
        List list = jVar.f2318a;
        c.b.a.b.a.a.a.a.c.y0.d.a(list);
        if (list.isEmpty()) {
            return;
        }
        N n = this.f2401c;
        n.f2397b.execute(new Runnable(this, jVar, str, q) { // from class: c.b.a.b.a.a.a.a.c.H

            /* renamed from: a, reason: collision with root package name */
            public final P f2387a;

            /* renamed from: b, reason: collision with root package name */
            public final c.b.a.b.a.a.a.a.a.a.j f2388b;

            /* renamed from: c, reason: collision with root package name */
            public final String f2389c;

            /* renamed from: d, reason: collision with root package name */
            public final Q f2390d;

            {
                this.f2387a = this;
                this.f2388b = jVar;
                this.f2389c = str;
                this.f2390d = q;
            }

            @Override // java.lang.Runnable
            public void run() {
                P p = this.f2387a;
                c.b.a.b.a.a.a.a.a.a.j jVar2 = this.f2388b;
                String str2 = this.f2389c;
                Q q2 = this.f2390d;
                Objects.requireNonNull(p);
                try {
                    Bundle b2 = p.f2402d.b(jVar2);
                    N n2 = p.f2401c;
                    Objects.requireNonNull(n2);
                    try {
                        n2.f2396a.notifyInteraction(str2, b2);
                    } catch (Throwable th) {
                        Log.e("AiAiSuggestUi", "Failed to notifyInteraction", th);
                    }
                    if (q2 != null) {
                        synchronized (p) {
                            q2.b(str2, jVar2);
                        }
                    }
                } catch (Throwable th2) {
                    Log.e("AiAiSuggestUi", "Failed to call service - report metrics/feedback.", th2);
                }
            }
        });
    }
}
