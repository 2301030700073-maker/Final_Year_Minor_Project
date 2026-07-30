package c.b.a.b.a.a.a.a.c;

import android.graphics.RectF;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.GuardedBy;
import android.support.annotation.Nullable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import c.b.a.b.a.a.a.a.a.a.C0357b;
import c.b.a.b.a.a.a.a.a.a.C0358c;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.EntitiesData;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class x0 {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f2518a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f2519b;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    public final C0368g f2520c;

    @Nullable
    public final RectF f;
    public final n0 g;
    public final c.b.a.b.a.a.a.a.b.a h;

    @Nullable
    public SpannableString j;

    /* renamed from: d, reason: collision with root package name */
    public final List f2521d = new ArrayList();
    public final StringBuilder e = new StringBuilder();
    public int i = -1;
    public int k = -1;
    public int l = -1;

    @GuardedBy("this")
    public int m = -1;

    public x0(c.b.a.b.a.a.a.a.b.a aVar, TextView textView, C0368g c0368g, n0 n0Var, Handler handler) {
        this.h = aVar;
        this.f2518a = textView;
        this.f2520c = c0368g;
        this.g = n0Var;
        this.f2519b = handler;
        this.f = c0368g.n;
    }

    public final boolean a() {
        Log.i("AiAiSuggestUi", "-- Finished selection.");
        return false;
    }

    @Nullable
    public final synchronized c.b.a.b.a.a.a.a.a.a.x b(int i, int i2) {
        StringBuilder sb = new StringBuilder(45);
        sb.append("-- Selection changed: ");
        sb.append(i);
        sb.append(",");
        sb.append(i2);
        Log.i("AiAiSuggestUi", sb.toString());
        if (i >= 0 && i2 >= i && this.f2520c != null) {
            C0368g c0368g = this.f2520c;
            c.b.a.b.a.a.a.a.c.y0.d.a(c0368g);
            final C0368g c0368g2 = c0368g;
            c0368g2.h().f2296b = new ArrayList();
            List list = c0368g2.h().f2296b;
            c.b.a.b.a.a.a.a.c.y0.d.a(list);
            list.add(new C0358c());
            int i3 = (i2 - i) + 1;
            ArrayList arrayList = new ArrayList(i3);
            for (int i4 = 0; i4 < i3; i4++) {
                arrayList.add(Integer.valueOf(i + i4));
            }
            List list2 = c0368g2.h().f2296b;
            c.b.a.b.a.a.a.a.c.y0.d.a(list2);
            ((C0358c) list2.get(0)).f2303a = arrayList;
            final ArrayList arrayList2 = new ArrayList(1);
            int p = c0368g2.p();
            this.m = p;
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            try {
                d0 d0Var = c0368g2.f2459a;
                C0357b c0357b = c0368g2.j;
                c.b.a.b.a.a.a.a.c.y0.d.a(c0357b);
                d0Var.f(c0357b, this.h, c0368g2.m, new c0(c0368g2, arrayList2, countDownLatch) { // from class: c.b.a.b.a.a.a.a.c.t0

                    /* renamed from: a, reason: collision with root package name */
                    public final C0368g f2501a;

                    /* renamed from: b, reason: collision with root package name */
                    public final List f2502b;

                    /* renamed from: c, reason: collision with root package name */
                    public final CountDownLatch f2503c;

                    {
                        this.f2501a = c0368g2;
                        this.f2502b = arrayList2;
                        this.f2503c = countDownLatch;
                    }

                    @Override // c.b.a.b.a.a.a.a.c.c0
                    public void a(C0357b c0357b2, EntitiesData entitiesData) {
                        C0368g c0368g3 = this.f2501a;
                        List list3 = this.f2502b;
                        CountDownLatch countDownLatch2 = this.f2503c;
                        Objects.requireNonNull(c0368g3);
                        if (entitiesData != null && entitiesData.f3236a != null) {
                            c.b.a.b.a.a.a.a.c.y0.d.a(entitiesData);
                            c0368g3.i = entitiesData.f3236a.f2355a;
                        }
                        if (entitiesData.f3236a.f2356b) {
                            list3.add(entitiesData);
                            c.b.a.b.a.a.a.a.c.y0.c.b("-Obtained new entities");
                        } else {
                            c.b.a.b.a.a.a.a.c.y0.c.c("Unable to obtain new entities");
                        }
                        countDownLatch2.countDown();
                    }
                }, false);
                countDownLatch.await(3000L, TimeUnit.MILLISECONDS);
                if (arrayList2.size() == 1) {
                    C0357b c0357b2 = c0368g2.j;
                    c.b.a.b.a.a.a.a.c.y0.d.a(c0357b2);
                    if (c0368g2.a(p, c0357b2, (EntitiesData) arrayList2.get(0), c0368g2.f)) {
                        return e(0);
                    }
                }
                int size = arrayList2.size();
                StringBuilder sb2 = new StringBuilder(94);
                sb2.append("Unable to query any entities; indices: ");
                sb2.append(i);
                sb2.append(",");
                sb2.append(i2);
                sb2.append("; # of new entities: ");
                sb2.append(size);
                c.b.a.b.a.a.a.a.c.y0.c.c(sb2.toString());
            } catch (InterruptedException e) {
                Log.e("AiAiSuggestUi", "Unable to query new entities", e);
            }
            return null;
        }
        return null;
    }

    @Nullable
    public final synchronized c.b.a.b.a.a.a.a.a.a.x c(CharSequence charSequence, int i, int i2) {
        if (!this.f2520c.l(this.m)) {
            return null;
        }
        int indexOf = this.e.indexOf(charSequence.toString());
        int i3 = i + indexOf;
        int i4 = i2 + indexOf;
        StringBuilder sb = new StringBuilder(42);
        sb.append("Selection changed: ");
        sb.append(i3);
        sb.append(",");
        sb.append(i4);
        c.b.a.b.a.a.a.a.c.y0.c.b(sb.toString());
        if (i3 != this.k || i4 != this.l) {
            int i5 = ((C0362a) this.f2521d.get(this.f2521d.size() - 1)).f2431b;
            int i6 = 0;
            for (int i7 = 0; i7 < this.f2521d.size(); i7++) {
                C0362a c0362a = (C0362a) this.f2521d.get(i7);
                if (c0362a.f2431b >= 0) {
                    if (c0362a.f2432c <= i3) {
                        i6 = c0362a.f2431b;
                    }
                    if (c0362a.f2433d - 1 <= i4 + 1) {
                        i5 = c0362a.f2431b;
                    }
                }
            }
            c.b.a.b.a.a.a.a.a.a.x b2 = b(i6, i5);
            if (b2 != null) {
                if (!this.f2520c.f2461c.isEmpty()) {
                    n0 n0Var = this.g;
                    c.b.a.b.a.a.a.a.c.y0.d.a(n0Var);
                    n0Var.a(this, b2.n, i3, i4, ((c.b.a.b.a.a.a.a.a.a.x) this.f2520c.f2461c.get(0)).n, this.k, this.l);
                }
                this.k = i3;
                this.l = i4;
                this.f2519b.post(new s0(this, b2));
                this.f2520c.f2460b.l(b2);
                return b2;
            }
        }
        return e(0);
    }

    public final void d(final int i, final int i2) {
        if (i2 <= i || TextUtils.isEmpty(this.e)) {
            return;
        }
        StringBuilder sb = new StringBuilder(34);
        sb.append("Selecting: ");
        sb.append(i);
        sb.append(",");
        sb.append(i2);
        Log.i("AiAiSuggestUi", sb.toString());
        this.f2518a.post(new Runnable(this, i, i2) { // from class: c.b.a.b.a.a.a.a.c.u0

            /* renamed from: a, reason: collision with root package name */
            public final x0 f2507a;

            /* renamed from: b, reason: collision with root package name */
            public final int f2508b;

            /* renamed from: c, reason: collision with root package name */
            public final int f2509c;

            {
                this.f2507a = this;
                this.f2508b = i;
                this.f2509c = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                x0 x0Var = this.f2507a;
                int i3 = this.f2508b;
                int i4 = this.f2509c;
                Objects.requireNonNull(x0Var);
                Bundle bundle = new Bundle();
                bundle.putInt("ACTION_ARGUMENT_SELECTION_START_INT", i3);
                bundle.putInt("ACTION_ARGUMENT_SELECTION_END_INT", i4);
                x0Var.f2518a.performAccessibilityAction(131072, bundle);
            }
        });
    }

    @Nullable
    public final synchronized c.b.a.b.a.a.a.a.a.a.x e(int i) {
        c.b.a.b.a.a.a.a.a.a.x i2 = this.f2520c.i(i);
        if (i2 == null) {
            return null;
        }
        String valueOf = String.valueOf(i2.e);
        c.b.a.b.a.a.a.a.c.y0.c.b(valueOf.length() != 0 ? "-- Selected entity: ".concat(valueOf) : new String("-- Selected entity: "));
        return i2;
    }

    public final void f() {
        this.f2518a.setOnLongClickListener(new View.OnLongClickListener(this) { // from class: c.b.a.b.a.a.a.a.c.o0

            /* renamed from: a, reason: collision with root package name */
            public final x0 f2491a;

            {
                this.f2491a = this;
            }

            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                this.f2491a.a();
                return false;
            }
        });
        this.f2518a.setOnGenericMotionListener(new View.OnGenericMotionListener(this) { // from class: c.b.a.b.a.a.a.a.c.p0

            /* renamed from: a, reason: collision with root package name */
            public final x0 f2492a;

            {
                this.f2492a = this;
            }

            @Override // android.view.View.OnGenericMotionListener
            public boolean onGenericMotion(View view, MotionEvent motionEvent) {
                this.f2492a.a();
                return false;
            }
        });
        this.f2518a.setOnTouchListener(new View.OnTouchListener(this) { // from class: c.b.a.b.a.a.a.a.c.q0

            /* renamed from: a, reason: collision with root package name */
            public final x0 f2493a;

            {
                this.f2493a = this;
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                this.f2493a.a();
                return false;
            }
        });
        this.f2518a.setOnClickListener(new View.OnClickListener(this) { // from class: c.b.a.b.a.a.a.a.c.r0

            /* renamed from: a, reason: collision with root package name */
            public final x0 f2494a;

            {
                this.f2494a = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.f2494a.a();
            }
        });
    }
}
