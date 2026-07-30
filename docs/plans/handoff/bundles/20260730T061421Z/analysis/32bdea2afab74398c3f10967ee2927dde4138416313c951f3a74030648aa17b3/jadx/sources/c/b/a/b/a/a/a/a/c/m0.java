package c.b.a.b.a.a.a.a.c;

import android.content.ComponentName;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Handler;
import android.os.SystemClock;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.text.TextUtils;
import android.util.Log;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import c.b.a.b.a.a.a.a.a.a.C0357b;
import com.android.systemui.shared.R;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.EntitiesData;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$SelectionFeedback$SelectionInteraction;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$SelectionFeedback$SelectionType;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$TaskSnapshotFeedback$TaskSnapshotInteraction;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* loaded from: classes.dex */
public class m0 implements InterfaceC0370i {
    public final r A;

    /* renamed from: a, reason: collision with root package name */
    public final Context f2485a;

    /* renamed from: b, reason: collision with root package name */
    public final FrameLayout f2486b;

    /* renamed from: c, reason: collision with root package name */
    public final FrameLayout f2487c;

    /* renamed from: d, reason: collision with root package name */
    public final FrameLayout f2488d;
    public final FrameLayout e;
    public final FrameLayout f;
    public final Handler g;
    public final d0 h;
    public final String i;
    public final c.b.a.b.a.a.a.a.b.a j;
    public final InterfaceC0383w k;

    @Nullable
    public final C0364c l;
    public final c.b.a.b.b.m.n m;
    public final Context o;
    public int p;
    public final boolean q;
    public l0 r;
    public C0368g s;
    public C0380t t;
    public boolean v;

    @Nullable
    public List x;

    @Nullable
    public c.b.a.b.b.m.t y;
    public float z;
    public final RectF n = new RectF();
    public String u = "null_session_id";
    public boolean w = false;

    public m0(Context context, Context context2, FrameLayout frameLayout, d0 d0Var, Handler handler, c.b.a.b.b.m.n nVar, l0 l0Var, c.b.a.b.a.a.a.a.b.a aVar, InterfaceC0383w interfaceC0383w, r rVar) {
        this.p = -1;
        this.f2485a = context;
        this.o = context2;
        this.f2486b = frameLayout;
        this.f2487c = (FrameLayout) frameLayout.findViewById(R.id.selection_container);
        this.f2488d = (FrameLayout) frameLayout.findViewById(R.id.selection_override_container);
        this.e = (FrameLayout) frameLayout.findViewById(R.id.gleam_container);
        this.f = (FrameLayout) frameLayout.findViewById(R.id.debug_container);
        this.g = handler;
        this.h = d0Var;
        this.m = nVar;
        this.j = aVar;
        this.k = interfaceC0383w;
        this.A = rVar;
        this.r = l0Var;
        this.s = C0368g.g(l0Var.f2479a, d0Var, new C0371j(this.f2485a, this.o, this, nVar, aVar), -1);
        Resources resources = frameLayout.getResources();
        RectF rectF = new RectF();
        rectF.inset(-resources.getDimension(R.dimen.long_press_detection_size_x), -resources.getDimension(R.dimen.long_press_detection_size_y));
        Locale locale = resources.getConfiguration().getLocales().get(0);
        this.n.set(rectF);
        this.q = TextUtils.getLayoutDirectionFromLocale(locale) == 1;
        this.p = (int) resources.getDimension(R.dimen.focus_rect_expand_size);
        if (C0372k.f2475a) {
            this.l = new C0364c(context, this.f);
        } else {
            this.l = null;
        }
        this.i = c.b.a.b.a.a.a.a.c.y0.d.b("session_overview");
    }

    @Override // c.b.a.b.a.a.a.a.c.InterfaceC0370i
    public void a(c.b.a.b.a.a.a.a.a.a.s sVar, c.b.a.b.a.a.a.a.a.a.x xVar) {
    }

    @Override // c.b.a.b.a.a.a.a.c.InterfaceC0370i
    public void b(c.b.a.b.a.a.a.a.a.a.s sVar, c.b.a.b.a.a.a.a.a.a.x xVar) {
        d();
    }

    @Override // c.b.a.b.a.a.a.a.c.InterfaceC0370i
    public void c(c.b.a.b.a.a.a.a.a.a.s sVar, c.b.a.b.a.a.a.a.a.a.x xVar) {
    }

    public void d() {
        Log.i("AiAiSuggestUi", "Clearing suggestions.");
        this.x = null;
        this.s.c();
        this.v = false;
        this.h.m(true);
        this.f2487c.removeAllViews();
        this.f.removeAllViews();
        C0371j c0371j = this.s.f2460b;
        c.b.a.b.b.m.t tVar = c0371j.i;
        if (tVar != null) {
            ActionMode actionMode = tVar.g;
            if (actionMode != null) {
                actionMode.finish();
                tVar.g = null;
            }
            tVar.e();
            c.b.a.b.a.a.a.a.a.a.x xVar = c0371j.h;
            if (xVar != null) {
                c.b.a.b.a.a.a.a.c.y0.d.a(xVar);
                if (xVar.f2360b != null) {
                    c.b.a.b.a.a.a.a.a.a.x xVar2 = c0371j.h;
                    c.b.a.b.a.a.a.a.c.y0.d.a(xVar2);
                    List<c.b.a.b.a.a.a.a.a.a.t> list = xVar2.f2360b;
                    c.b.a.b.a.a.a.a.c.y0.d.a(list);
                    for (c.b.a.b.a.a.a.a.a.a.t tVar2 : list) {
                        if (tVar2 != null) {
                            InterfaceC0370i interfaceC0370i = c0371j.f2471b;
                            c.b.a.b.a.a.a.a.a.a.s sVar = tVar2.f2349c;
                            c.b.a.b.a.a.a.a.c.y0.d.a(sVar);
                            c.b.a.b.a.a.a.a.a.a.x xVar3 = c0371j.h;
                            c.b.a.b.a.a.a.a.c.y0.d.a(xVar3);
                            interfaceC0370i.c(sVar, xVar3);
                        }
                    }
                }
            }
        }
        this.f2488d.setOnTouchListener(null);
        this.f2488d.setOnLongClickListener(null);
        this.f2488d.setVisibility(8);
        this.h.i().a("");
    }

    public void e() {
        Log.i("AiAiSuggestUi", "Complete suggest interaction");
        this.h.m(false);
        this.v = true;
        String b2 = c.b.a.b.a.a.a.a.c.y0.d.b("interaction_");
        this.u = b2;
        onLongPressedTaskSnapshotSession(b2);
        h();
    }

    public PointF f(PointF pointF) {
        d0 d0Var = this.h;
        Objects.requireNonNull(d0Var);
        float f = pointF.x;
        PointF pointF2 = d0Var.g;
        pointF.x = f / pointF2.x;
        pointF.y /= pointF2.y;
        RectF rectF = d0Var.f;
        pointF.offset(-rectF.left, -rectF.top);
        return pointF;
    }

    public final c.b.a.b.a.a.a.a.a.a.p g(SuggestParcelables$InteractionType suggestParcelables$InteractionType, @Nullable RectF rectF) {
        c.b.a.b.a.a.a.a.a.a.p pVar = new c.b.a.b.a.a.a.a.a.a.p();
        if (rectF != null) {
            pVar.h = SuggestParcelables$InteractionType.LONG_PRESS;
            c.b.a.b.a.a.a.a.a.a.D d2 = new c.b.a.b.a.a.a.a.a.a.D();
            d2.f2284a = rectF.left;
            d2.f2285b = rectF.top;
            d2.f2286c = rectF.width();
            d2.f2287d = rectF.height();
            pVar.f2335a = d2;
        } else {
            pVar.h = suggestParcelables$InteractionType;
        }
        List list = this.x;
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            List<MotionEvent> list2 = this.x;
            c.b.a.b.a.a.a.a.c.y0.d.a(list2);
            for (MotionEvent motionEvent : list2) {
                d0 d0Var = this.h;
                Objects.requireNonNull(d0Var);
                c.b.a.b.a.a.a.a.a.a.q qVar = new c.b.a.b.a.a.a.a.a.a.q();
                qVar.f2339a = motionEvent.getAction();
                qVar.f2340b = motionEvent.getActionButton();
                qVar.f2341c = motionEvent.getActionIndex();
                qVar.f2342d = motionEvent.getActionMasked();
                qVar.e = motionEvent.getButtonState();
                qVar.f = motionEvent.getDeviceId();
                qVar.g = motionEvent.getDownTime();
                qVar.w = motionEvent.getEventTime();
                qVar.h = motionEvent.getEdgeFlags();
                qVar.i = motionEvent.getFlags();
                qVar.j = motionEvent.getOrientation();
                qVar.k = motionEvent.getRawX();
                qVar.l = motionEvent.getRawY();
                qVar.m = motionEvent.getSource();
                qVar.n = motionEvent.getToolMajor();
                qVar.o = motionEvent.getToolMinor();
                qVar.p = motionEvent.getX();
                qVar.q = motionEvent.getY();
                qVar.r = motionEvent.getXPrecision();
                qVar.s = motionEvent.getYPrecision();
                qVar.t = new c.b.a.b.a.a.a.a.a.a.D();
                c.b.a.b.a.a.a.a.a.a.D d3 = new c.b.a.b.a.a.a.a.a.a.D();
                RectF rectF2 = d0Var.f;
                d3.f2284a = rectF2.left;
                d3.f2285b = rectF2.top;
                d3.f2286c = rectF2.width();
                d3.f2287d = d0Var.f.height();
                qVar.t = d3;
                PointF pointF = d0Var.g;
                qVar.u = pointF.x;
                qVar.v = pointF.y;
                arrayList.add(qVar);
            }
            pVar.g = arrayList;
        }
        pVar.f2338d = this.q;
        pVar.i = this.r.f2481c;
        pVar.e = this.w;
        pVar.f = 1;
        int i = this.p;
        if (i > 0) {
            pVar.f2336b = true;
            pVar.f2337c = i;
        }
        return pVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0336 A[Catch: all -> 0x054d, TryCatch #0 {, blocks: (B:91:0x02a4, B:93:0x02a8, B:95:0x02b0, B:97:0x02b4, B:98:0x02c3, B:100:0x02d5, B:102:0x02e4, B:104:0x02ef, B:105:0x0306, B:107:0x030c, B:121:0x0326, B:122:0x032d, B:124:0x0336, B:126:0x0349, B:127:0x0353, B:129:0x0362, B:134:0x0373, B:135:0x0381, B:137:0x0398, B:138:0x03d3, B:140:0x040e, B:142:0x0412, B:144:0x0418, B:146:0x0488, B:154:0x0492, B:156:0x049c, B:159:0x04a6, B:160:0x04e3, B:162:0x04e9, B:166:0x0510, B:170:0x0514), top: B:90:0x02a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0398 A[Catch: all -> 0x054d, TryCatch #0 {, blocks: (B:91:0x02a4, B:93:0x02a8, B:95:0x02b0, B:97:0x02b4, B:98:0x02c3, B:100:0x02d5, B:102:0x02e4, B:104:0x02ef, B:105:0x0306, B:107:0x030c, B:121:0x0326, B:122:0x032d, B:124:0x0336, B:126:0x0349, B:127:0x0353, B:129:0x0362, B:134:0x0373, B:135:0x0381, B:137:0x0398, B:138:0x03d3, B:140:0x040e, B:142:0x0412, B:144:0x0418, B:146:0x0488, B:154:0x0492, B:156:0x049c, B:159:0x04a6, B:160:0x04e3, B:162:0x04e9, B:166:0x0510, B:170:0x0514), top: B:90:0x02a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x040e A[Catch: all -> 0x054d, TryCatch #0 {, blocks: (B:91:0x02a4, B:93:0x02a8, B:95:0x02b0, B:97:0x02b4, B:98:0x02c3, B:100:0x02d5, B:102:0x02e4, B:104:0x02ef, B:105:0x0306, B:107:0x030c, B:121:0x0326, B:122:0x032d, B:124:0x0336, B:126:0x0349, B:127:0x0353, B:129:0x0362, B:134:0x0373, B:135:0x0381, B:137:0x0398, B:138:0x03d3, B:140:0x040e, B:142:0x0412, B:144:0x0418, B:146:0x0488, B:154:0x0492, B:156:0x049c, B:159:0x04a6, B:160:0x04e3, B:162:0x04e9, B:166:0x0510, B:170:0x0514), top: B:90:0x02a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0412 A[Catch: all -> 0x054d, TryCatch #0 {, blocks: (B:91:0x02a4, B:93:0x02a8, B:95:0x02b0, B:97:0x02b4, B:98:0x02c3, B:100:0x02d5, B:102:0x02e4, B:104:0x02ef, B:105:0x0306, B:107:0x030c, B:121:0x0326, B:122:0x032d, B:124:0x0336, B:126:0x0349, B:127:0x0353, B:129:0x0362, B:134:0x0373, B:135:0x0381, B:137:0x0398, B:138:0x03d3, B:140:0x040e, B:142:0x0412, B:144:0x0418, B:146:0x0488, B:154:0x0492, B:156:0x049c, B:159:0x04a6, B:160:0x04e3, B:162:0x04e9, B:166:0x0510, B:170:0x0514), top: B:90:0x02a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0418 A[Catch: all -> 0x054d, TryCatch #0 {, blocks: (B:91:0x02a4, B:93:0x02a8, B:95:0x02b0, B:97:0x02b4, B:98:0x02c3, B:100:0x02d5, B:102:0x02e4, B:104:0x02ef, B:105:0x0306, B:107:0x030c, B:121:0x0326, B:122:0x032d, B:124:0x0336, B:126:0x0349, B:127:0x0353, B:129:0x0362, B:134:0x0373, B:135:0x0381, B:137:0x0398, B:138:0x03d3, B:140:0x040e, B:142:0x0412, B:144:0x0418, B:146:0x0488, B:154:0x0492, B:156:0x049c, B:159:0x04a6, B:160:0x04e3, B:162:0x04e9, B:166:0x0510, B:170:0x0514), top: B:90:0x02a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0487  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0492 A[EDGE_INSN: B:153:0x0492->B:154:0x0492 BREAK  A[LOOP:7: B:122:0x032d->B:146:0x0488], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x049c A[Catch: all -> 0x054d, TRY_LEAVE, TryCatch #0 {, blocks: (B:91:0x02a4, B:93:0x02a8, B:95:0x02b0, B:97:0x02b4, B:98:0x02c3, B:100:0x02d5, B:102:0x02e4, B:104:0x02ef, B:105:0x0306, B:107:0x030c, B:121:0x0326, B:122:0x032d, B:124:0x0336, B:126:0x0349, B:127:0x0353, B:129:0x0362, B:134:0x0373, B:135:0x0381, B:137:0x0398, B:138:0x03d3, B:140:0x040e, B:142:0x0412, B:144:0x0418, B:146:0x0488, B:154:0x0492, B:156:0x049c, B:159:0x04a6, B:160:0x04e3, B:162:0x04e9, B:166:0x0510, B:170:0x0514), top: B:90:0x02a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x04a6 A[Catch: all -> 0x054d, TRY_ENTER, TryCatch #0 {, blocks: (B:91:0x02a4, B:93:0x02a8, B:95:0x02b0, B:97:0x02b4, B:98:0x02c3, B:100:0x02d5, B:102:0x02e4, B:104:0x02ef, B:105:0x0306, B:107:0x030c, B:121:0x0326, B:122:0x032d, B:124:0x0336, B:126:0x0349, B:127:0x0353, B:129:0x0362, B:134:0x0373, B:135:0x0381, B:137:0x0398, B:138:0x03d3, B:140:0x040e, B:142:0x0412, B:144:0x0418, B:146:0x0488, B:154:0x0492, B:156:0x049c, B:159:0x04a6, B:160:0x04e3, B:162:0x04e9, B:166:0x0510, B:170:0x0514), top: B:90:0x02a4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h() {
        /*
            Method dump skipped, instructions count: 1637
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.b.a.a.a.a.c.m0.h():void");
    }

    public final void i(C0368g c0368g, int i, int i2, int i3, int i4, int i5, int i6) {
        if (c0368g.j == null || c0368g.f2461c.isEmpty()) {
            return;
        }
        if (i2 == i5 && i3 == i6) {
            return;
        }
        d0 d0Var = this.h;
        C0357b c0357b = this.s.j;
        c.b.a.b.a.a.a.a.c.y0.d.a(c0357b);
        String str = c0357b.f2299a;
        c.b.a.b.a.a.a.a.c.y0.d.a(str);
        c.b.a.b.a.a.a.a.b.a aVar = this.j;
        String str2 = this.r.f2479a;
        ArrayList arrayList = new ArrayList();
        c.b.a.b.a.a.a.a.a.a.p pVar = c0368g.m;
        c.b.a.b.a.a.a.a.a.a.x xVar = (c.b.a.b.a.a.a.a.a.a.x) c0368g.f2461c.get(0);
        boolean z = ((c.b.a.b.a.a.a.a.a.a.x) c0368g.f2461c.get(0)).l;
        c.b.a.b.a.a.a.a.a.a.m mVar = new c.b.a.b.a.a.a.a.a.a.m();
        mVar.f2324b = i4 == 1 && !z;
        mVar.f2323a = i == 1 && z;
        mVar.f2325c = true;
        mVar.f2326d = i2;
        mVar.e = i3;
        mVar.f = i5;
        mVar.g = i6;
        c.b.a.b.a.a.a.a.a.a.i iVar = new c.b.a.b.a.a.a.a.a.a.i();
        arrayList.add(iVar);
        if (pVar != null) {
            iVar.f2317c = pVar;
        }
        iVar.f2316b = SystemClock.elapsedRealtime();
        c.b.a.b.a.a.a.a.a.a.n nVar = new c.b.a.b.a.a.a.a.a.a.n();
        C0374m.c(xVar, nVar);
        iVar.f2315a = nVar;
        nVar.f2327a = c0368g.n() ? FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE : FeedbackParcelables$SelectionFeedback$SelectionType.TEXT;
        nVar.f2328b = xVar;
        nVar.f2329c = mVar;
        nVar.f2330d = FeedbackParcelables$SelectionFeedback$SelectionInteraction.SELECTION_ADJUSTED;
        nVar.e = xVar.m;
        c.b.a.b.a.a.a.a.a.a.j jVar = new c.b.a.b.a.a.a.a.a.a.j();
        jVar.f2319b = 0;
        jVar.f2320c = str2;
        c.b.a.b.a.a.a.a.c.y0.d.a(arrayList);
        jVar.f2318a = arrayList;
        d0Var.k(str, aVar, jVar);
    }

    public void j(c.b.a.b.b.m.t tVar) {
        this.y = tVar;
    }

    public void k(c.b.a.b.b.m.t tVar) {
        this.s.f2460b.o(tVar);
    }

    public void l(PointF pointF) {
        String valueOf = String.valueOf(pointF);
        StringBuilder sb = new StringBuilder(valueOf.length() + 28);
        sb.append("Start suggest interaction @ ");
        sb.append(valueOf);
        Log.i("AiAiSuggestUi", sb.toString());
        d();
        final int p = this.s.p();
        RectF rectF = new RectF(this.n);
        rectF.offset(pointF.x, pointF.y);
        final c.b.a.b.a.a.a.a.a.a.p g = g(SuggestParcelables$InteractionType.SELECT_MODE, rectF);
        String valueOf2 = String.valueOf(rectF);
        StringBuilder sb2 = new StringBuilder(valueOf2.length() + 19);
        sb2.append("Contents new rect: ");
        sb2.append(valueOf2);
        c.b.a.b.a.a.a.a.c.y0.c.e(sb2.toString());
        this.h.m(false);
        this.h.g(g, this.j, new b0(this, p, g) { // from class: c.b.a.b.a.a.a.a.c.e0

            /* renamed from: a, reason: collision with root package name */
            public final m0 f2450a;

            /* renamed from: b, reason: collision with root package name */
            public final int f2451b;

            /* renamed from: c, reason: collision with root package name */
            public final c.b.a.b.a.a.a.a.a.a.p f2452c;

            {
                this.f2450a = this;
                this.f2451b = p;
                this.f2452c = g;
            }

            @Override // c.b.a.b.a.a.a.a.c.b0
            public void a(C0357b c0357b) {
                final m0 m0Var = this.f2450a;
                final int i = this.f2451b;
                c.b.a.b.a.a.a.a.a.a.p pVar = this.f2452c;
                if (m0Var.s.g == i) {
                    m0Var.s.m = pVar;
                    m0Var.h.e(c0357b, m0Var.j, pVar, new c0(m0Var, i) { // from class: c.b.a.b.a.a.a.a.c.k0

                        /* renamed from: a, reason: collision with root package name */
                        public final m0 f2476a;

                        /* renamed from: b, reason: collision with root package name */
                        public final int f2477b;

                        {
                            this.f2476a = m0Var;
                            this.f2477b = i;
                        }

                        @Override // c.b.a.b.a.a.a.a.c.c0
                        public void a(C0357b c0357b2, EntitiesData entitiesData) {
                            m0 m0Var2 = this.f2476a;
                            int i2 = this.f2477b;
                            C0368g c0368g = m0Var2.s;
                            if (c0368g.a(i2, c0357b2, entitiesData, c0368g.f)) {
                                m0Var2.h();
                            }
                        }
                    });
                    if (c0357b == null || pVar == null) {
                        return;
                    }
                    d0 d0Var = m0Var.h;
                    c.b.a.b.a.a.a.a.c.y0.d.a(c0357b);
                    String str = c0357b.f2299a;
                    c.b.a.b.a.a.a.a.c.y0.d.a(str);
                    c.b.a.b.a.a.a.a.b.a aVar = m0Var.j;
                    String str2 = m0Var.r.f2479a;
                    ArrayList arrayList = new ArrayList();
                    C0368g c0368g = m0Var.s;
                    c.b.a.b.a.a.a.a.a.a.i iVar = new c.b.a.b.a.a.a.a.a.a.i();
                    arrayList.add(iVar);
                    iVar.f2317c = pVar;
                    iVar.f2316b = SystemClock.elapsedRealtime();
                    c.b.a.b.a.a.a.a.a.a.n nVar = new c.b.a.b.a.a.a.a.a.a.n();
                    C0374m.c(null, nVar);
                    iVar.f2315a = nVar;
                    nVar.f2327a = c0368g.n() ? FeedbackParcelables$SelectionFeedback$SelectionType.IMAGE : FeedbackParcelables$SelectionFeedback$SelectionType.TEXT;
                    nVar.f2330d = FeedbackParcelables$SelectionFeedback$SelectionInteraction.SELECTION_INITIATED;
                    c.b.a.b.a.a.a.a.a.a.j jVar = new c.b.a.b.a.a.a.a.a.a.j();
                    jVar.f2319b = 0;
                    jVar.f2320c = str2;
                    c.b.a.b.a.a.a.a.c.y0.d.a(arrayList);
                    jVar.f2318a = arrayList;
                    d0Var.k(str, aVar, jVar);
                }
            }
        });
    }

    @VisibleForTesting(otherwise = 2)
    public void onLongPressedTaskSnapshotSession(String str) {
        l0 l0Var = this.r;
        c.b.a.b.a.a.a.a.c.y0.c.b(String.format("SuggestView Long Pressed - OverviewSessionId : %s, TaskSnapshotSessionId : %s, InteractionSessionId  : %s", l0Var.f2479a, l0Var.f2480b, str));
        d0 d0Var = this.h;
        String str2 = this.r.f2479a;
        c.b.a.b.a.a.a.a.b.a aVar = this.j;
        ArrayList arrayList = new ArrayList();
        l0 l0Var2 = this.r;
        String str3 = l0Var2.f2479a;
        String str4 = l0Var2.f2480b;
        ComponentName h = this.h.h();
        c.b.a.b.a.a.a.a.a.a.i iVar = new c.b.a.b.a.a.a.a.a.a.i();
        arrayList.add(iVar);
        iVar.f2316b = SystemClock.elapsedRealtime();
        c.b.a.b.a.a.a.a.a.a.o oVar = new c.b.a.b.a.a.a.a.a.a.o();
        oVar.f2332b = str3;
        oVar.f2333c = str4;
        iVar.f2315a = oVar;
        oVar.f2331a = FeedbackParcelables$TaskSnapshotFeedback$TaskSnapshotInteraction.TASK_SNAPSHOT_LONG_PRESSED;
        oVar.f2334d = h == null ? "" : h.toShortString();
        oVar.e = str;
        c.b.a.b.a.a.a.a.a.a.j jVar = new c.b.a.b.a.a.a.a.a.a.j();
        jVar.f2319b = 0;
        jVar.f2320c = str2;
        c.b.a.b.a.a.a.a.c.y0.d.a(arrayList);
        jVar.f2318a = arrayList;
        d0Var.k(str2, aVar, jVar);
    }
}
