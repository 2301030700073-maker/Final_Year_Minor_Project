package c.b.a.b.b.k;

import android.animation.ObjectAnimator;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseArray;
import c.b.a.b.a.a.a.a.a.a.C0356a;
import c.b.a.b.a.a.a.a.a.a.C0357b;
import c.b.a.b.a.a.a.a.a.a.C0358c;
import c.b.a.b.a.a.a.a.a.a.p;
import c.b.a.b.a.a.a.a.c.b0;
import c.b.a.b.a.a.a.a.c.d0;
import c.b.a.b.a.a.a.a.c.m0;
import c.b.a.b.b.m.m;
import com.android.launcher3.logging.StatsLogManager;
import com.android.quickstep.ImageActionsApi;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.ImageActionUtils;
import com.android.systemui.shared.R;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$OverviewFeedback$OverviewInteraction;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$SelectionFeedback$SelectionInteraction;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$SelectionFeedback$SelectionType;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$ContentType;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class g implements h {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f2609a;

    public g(i iVar) {
        this.f2609a = iVar;
    }

    @Override // c.b.a.b.b.k.h
    public void a() {
        b bVar = this.f2609a.e;
        if (bVar.f2597b) {
            ImageActionsApi imageActionsApi = bVar.f2596a;
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            intent.setType("vnd.android.cursor.dir/email");
            intent.setPackage("com.google.android.gm");
            intent.putExtra("android.intent.extra.EMAIL", new String[]{"overview-select-feedback@google.com"});
            intent.putExtra("android.intent.extra.SUBJECT", "Overview Selection Mode Feedback");
            intent.putExtra("android.intent.extra.TEXT", "Dogfood Feedback - Enter your feedback into this email. The task snapshot you were looking at has been attached to this email.");
            intent.addFlags(268435456);
            imageActionsApi.shareWithExplicitIntent(null, intent);
        }
    }

    @Override // c.b.a.b.b.k.h
    public void b() {
        i iVar = this.f2609a;
        if (!iVar.j) {
            iVar.o.c();
            return;
        }
        iVar.g.logActionOnControl(0, 26);
        this.f2609a.m.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_ACTIONS_SELECT);
        i iVar2 = this.f2609a;
        iVar2.n = true;
        iVar2.h.f2722a.setModalStateEnabled(true);
        final m0 m0Var = iVar2.f2611b.e;
        if (m0Var != null) {
            final int p = m0Var.s.p();
            p g = m0Var.g(SuggestParcelables$InteractionType.SELECT_MODE, null);
            d0 d0Var = m0Var.h;
            String str = m0Var.i;
            c.b.a.b.a.a.a.a.b.a aVar = m0Var.j;
            String str2 = m0Var.r.f2479a;
            ArrayList arrayList = new ArrayList();
            c.b.a.b.a.a.a.a.a.a.i iVar3 = new c.b.a.b.a.a.a.a.a.a.i();
            arrayList.add(iVar3);
            iVar3.f2316b = SystemClock.elapsedRealtime();
            c.b.a.b.a.a.a.a.a.a.k kVar = new c.b.a.b.a.a.a.a.a.a.k();
            iVar3.f2315a = kVar;
            kVar.f2321a = FeedbackParcelables$OverviewFeedback$OverviewInteraction.OVERVIEW_SCREEN_STARTED;
            kVar.f2322b = 2;
            c.b.a.b.a.a.a.a.a.a.j jVar = new c.b.a.b.a.a.a.a.a.a.j();
            jVar.f2319b = 0;
            jVar.f2320c = str2;
            c.b.a.b.a.a.a.a.c.y0.d.a(arrayList);
            jVar.f2318a = arrayList;
            d0Var.k(str, aVar, jVar);
            m0Var.d();
            Log.i("AiAiSuggestUi", "Showing automatic suggestions");
            m0Var.h.m(false);
            m0Var.h.g(g, m0Var.j, new b0(m0Var, p) { // from class: c.b.a.b.a.a.a.a.c.f0

                /* renamed from: a, reason: collision with root package name */
                public final m0 f2457a;

                /* renamed from: b, reason: collision with root package name */
                public final int f2458b;

                {
                    this.f2457a = m0Var;
                    this.f2458b = p;
                }

                @Override // c.b.a.b.a.a.a.a.c.b0
                public void a(C0357b c0357b) {
                    String str3;
                    C0356a c0356a;
                    c.b.a.b.b.m.t tVar;
                    C0357b c0357b2 = c0357b;
                    final m0 m0Var2 = this.f2457a;
                    if (m0Var2.s.g == this.f2458b) {
                        if (!B.a(c0357b)) {
                            c.b.a.b.a.a.a.a.c.y0.c.c("Unable to obtain any contents");
                            return;
                        }
                        C0380t c0380t = new C0380t(m0Var2.f2485a);
                        m0Var2.t = c0380t;
                        c0380t.setAlpha(0.2f);
                        m0Var2.e.addView(m0Var2.t, -1, -1);
                        final C0380t c0380t2 = m0Var2.t;
                        c0380t2.i = m0Var2.z;
                        r rVar = m0Var2.A;
                        c0380t2.j = rVar;
                        rVar.a(c0380t2);
                        c0380t2.j.e(new InterfaceC0379s(c0380t2) { // from class: c.b.a.b.a.a.a.a.c.o

                            /* renamed from: a, reason: collision with root package name */
                            public final C0380t f2490a;

                            {
                                this.f2490a = c0380t2;
                            }

                            @Override // c.b.a.b.a.a.a.a.c.InterfaceC0379s
                            public void a(float f, float f2) {
                                this.f2490a.a(f, f2);
                            }
                        });
                        m0Var2.t.e.add(new InterfaceC0379s(m0Var2) { // from class: c.b.a.b.a.a.a.a.c.g0

                            /* renamed from: a, reason: collision with root package name */
                            public final m0 f2463a;

                            {
                                this.f2463a = m0Var2;
                            }

                            @Override // c.b.a.b.a.a.a.a.c.InterfaceC0379s
                            public void a(float f, float f2) {
                                m0 m0Var3 = this.f2463a;
                                Objects.requireNonNull(m0Var3);
                                PointF pointF = new PointF();
                                pointF.set(f, f2);
                                m0Var3.f(pointF);
                                m0Var3.l(pointF);
                                m0Var3.e();
                                m0Var3.k.a();
                            }
                        });
                        List list = c0357b2.f2301c;
                        c.b.a.b.a.a.a.a.c.y0.d.a(list);
                        Iterator it = list.iterator();
                        int i = 0;
                        while (it.hasNext()) {
                            C0356a c0356a2 = (C0356a) it.next();
                            C0380t c0380t3 = m0Var2.t;
                            c.b.a.b.b.m.t tVar2 = m0Var2.y;
                            d0 d0Var2 = m0Var2.h;
                            int i2 = (int) c0357b2.f2300b;
                            String str4 = c0357b2.f2299a;
                            c.b.a.b.a.a.a.a.c.y0.d.a(str4);
                            c.b.a.b.a.a.a.a.b.a aVar2 = m0Var2.j;
                            SparseArray sparseArray = new SparseArray();
                            Resources resources = c0380t3.getResources();
                            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.selection_padding);
                            int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.selection_padding);
                            String string = resources.getString(R.string.image_content_description);
                            FeedbackParcelables$SelectionFeedback$SelectionType feedbackParcelables$SelectionFeedback$SelectionType = FeedbackParcelables$SelectionFeedback$SelectionType.TEXT;
                            Iterator it2 = it;
                            List list2 = c0356a2.f2296b;
                            c.b.a.b.a.a.a.a.c.y0.d.a(list2);
                            Iterator it3 = list2.iterator();
                            while (it3.hasNext()) {
                                C0358c c0358c = (C0358c) it3.next();
                                Iterator it4 = it3;
                                SuggestParcelables$InteractionType suggestParcelables$InteractionType = c0358c.f;
                                m0 m0Var3 = m0Var2;
                                if (suggestParcelables$InteractionType == SuggestParcelables$InteractionType.GLEAM || suggestParcelables$InteractionType == SuggestParcelables$InteractionType.GLEAM_CHIP || suggestParcelables$InteractionType == SuggestParcelables$InteractionType.SELECT_MODE) {
                                    sparseArray.clear();
                                    List list3 = c0358c.f2303a;
                                    c.b.a.b.a.a.a.a.c.y0.d.a(list3);
                                    if (!list3.isEmpty()) {
                                        i++;
                                        if (tVar2 == null) {
                                            c.b.a.b.a.a.a.a.c.y0.c.b("GleamListener is null");
                                        } else if (tVar2.t) {
                                            tVar2.a();
                                        }
                                    }
                                    Iterator it5 = list3.iterator();
                                    while (true) {
                                        String str5 = "";
                                        if (!it5.hasNext()) {
                                            break;
                                        }
                                        int intValue = ((Integer) it5.next()).intValue();
                                        Iterator it6 = it5;
                                        RectF rectF = new RectF();
                                        int i3 = i;
                                        List list4 = c0356a2.f2295a;
                                        c.b.a.b.a.a.a.a.c.y0.d.a(list4);
                                        c.b.a.b.a.a.a.a.a.a.u uVar = (c.b.a.b.a.a.a.a.a.a.u) list4.get(intValue);
                                        c.b.a.b.a.a.a.a.a.a.D d2 = uVar.f2351a;
                                        if (d2 == null) {
                                            str3 = string;
                                            c0356a = c0356a2;
                                            tVar = tVar2;
                                        } else {
                                            str3 = string;
                                            float f = d2.f2284a;
                                            c0356a = c0356a2;
                                            float f2 = d2.f2285b;
                                            tVar = tVar2;
                                            rectF.set(f, f2, d2.f2286c + f, d2.f2287d + f2);
                                        }
                                        d0Var2.c(rectF);
                                        if (uVar.f2353c == SuggestParcelables$ContentType.CONTENT_TYPE_IMAGE) {
                                            str5 = str3;
                                        } else {
                                            String str6 = uVar.f2352b;
                                            if (str6 != null) {
                                                str5 = str6;
                                            }
                                        }
                                        c.b.a.b.a.a.a.a.c.y0.d.a(str5);
                                        r rVar2 = c0380t3.j;
                                        if (rVar2 != null) {
                                            rVar2.c(rectF, str5);
                                        }
                                        RectF rectF2 = (RectF) sparseArray.get(uVar.f2354d);
                                        if (rectF2 == null) {
                                            sparseArray.put(uVar.f2354d, new RectF(rectF));
                                        } else {
                                            rectF2.union(rectF);
                                        }
                                        it5 = it6;
                                        i = i3;
                                        string = str3;
                                        c0356a2 = c0356a;
                                        tVar2 = tVar;
                                    }
                                    int i4 = i;
                                    String str7 = string;
                                    C0356a c0356a3 = c0356a2;
                                    c.b.a.b.b.m.t tVar3 = tVar2;
                                    int i5 = 0;
                                    while (i5 < sparseArray.size()) {
                                        RectF rectF3 = new RectF((RectF) sparseArray.valueAt(i5));
                                        rectF3.inset(-dimensionPixelSize, -dimensionPixelSize2);
                                        c0380t3.f2500d.add(rectF3);
                                        c0380t3.invalidate();
                                        ArrayList arrayList2 = new ArrayList();
                                        int i6 = feedbackParcelables$SelectionFeedback$SelectionType.value;
                                        FeedbackParcelables$SelectionFeedback$SelectionType feedbackParcelables$SelectionFeedback$SelectionType2 = null;
                                        c.b.a.b.a.a.a.a.a.a.i iVar4 = new c.b.a.b.a.a.a.a.a.a.i();
                                        arrayList2.add(iVar4);
                                        SparseArray sparseArray2 = sparseArray;
                                        FeedbackParcelables$SelectionFeedback$SelectionType feedbackParcelables$SelectionFeedback$SelectionType3 = feedbackParcelables$SelectionFeedback$SelectionType;
                                        iVar4.f2316b = SystemClock.elapsedRealtime();
                                        c.b.a.b.a.a.a.a.a.a.n nVar = new c.b.a.b.a.a.a.a.a.a.n();
                                        C0374m.c(null, nVar);
                                        iVar4.f2315a = nVar;
                                        if (i6 == 0) {
                                            feedbackParcelables$SelectionFeedback$SelectionType2 = FeedbackParcelables$SelectionFeedback$SelectionType.SELECTION_TYPE_UNKNOWN;
                                        } else if (i6 == 1) {
                                            feedbackParcelables$SelectionFeedback$SelectionType2 = feedbackParcelables$SelectionFeedback$SelectionType3;
                                        } else if (i6 == 2) {
                                            feedbackParcelables$SelectionFeedback$SelectionType2 = FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE;
                                        }
                                        nVar.f2327a = feedbackParcelables$SelectionFeedback$SelectionType2;
                                        nVar.f2330d = FeedbackParcelables$SelectionFeedback$SelectionInteraction.SELECTION_SUGGESTED;
                                        nVar.e = 5;
                                        c.b.a.b.a.a.a.a.a.a.j jVar2 = new c.b.a.b.a.a.a.a.a.a.j();
                                        jVar2.f2319b = i2;
                                        jVar2.f2320c = "";
                                        c.b.a.b.a.a.a.a.c.y0.d.a(arrayList2);
                                        jVar2.f2318a = arrayList2;
                                        d0Var2.k(str4, aVar2, jVar2);
                                        i5++;
                                        sparseArray = sparseArray2;
                                        feedbackParcelables$SelectionFeedback$SelectionType = feedbackParcelables$SelectionFeedback$SelectionType3;
                                    }
                                    it3 = it4;
                                    m0Var2 = m0Var3;
                                    i = i4;
                                    string = str7;
                                    c0356a2 = c0356a3;
                                    tVar2 = tVar3;
                                } else {
                                    it3 = it4;
                                    m0Var2 = m0Var3;
                                }
                            }
                            m0 m0Var4 = m0Var2;
                            if (c0380t3.isAttachedToWindow()) {
                                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(c0380t3, C0380t.o, RecentsState.NO_OFFSET, 1.0f);
                                ofFloat.setDuration(667L);
                                ofFloat.setInterpolator(C0380t.p);
                                ofFloat.start();
                            }
                            c0357b2 = c0357b;
                            it = it2;
                            m0Var2 = m0Var4;
                        }
                        StringBuilder sb = new StringBuilder(45);
                        sb.append("Total of ");
                        sb.append(i);
                        sb.append(" gleams selections found.");
                        Log.i("AiAiSuggestUi", sb.toString());
                    }
                }
            });
        }
        iVar2.o.b(iVar2.n);
        iVar2.o.a(iVar2.e.f2597b);
    }

    @Override // c.b.a.b.b.k.h
    public void c() {
        this.f2609a.g.logActionOnControl(0, 27);
        this.f2609a.m.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_SELECT_MODE_CLOSE);
        i iVar = this.f2609a;
        iVar.a();
        m mVar = iVar.h;
        mVar.f2722a.setModalStateEnabled(iVar.n);
    }

    @Override // com.android.quickstep.TaskOverlayFactory.OverlayUICallbacks
    public void onScreenshot() {
        i iVar = this.f2609a;
        if (!iVar.j) {
            iVar.o.c();
            return;
        }
        iVar.g.logActionOnControl(0, 25);
        this.f2609a.m.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_ACTIONS_SCREENSHOT);
        i iVar2 = this.f2609a;
        j jVar = iVar2.f2613d;
        ImageActionUtils.saveScreenshot(jVar.f2614a, (Bitmap) iVar2.f.get(), this.f2609a.o.f2730b.getTaskSnapshotBounds(), this.f2609a.o.f2730b.getTaskSnapshotInsets(), this.f2609a.f2610a);
    }

    @Override // com.android.quickstep.TaskOverlayFactory.OverlayUICallbacks
    public void onShare() {
        i iVar = this.f2609a;
        if (!iVar.j) {
            iVar.o.c();
            return;
        }
        iVar.g.logActionOnControl(0, 24);
        this.f2609a.m.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_ACTIONS_SHARE);
        this.f2609a.f2612c.startShareActivity();
    }
}
