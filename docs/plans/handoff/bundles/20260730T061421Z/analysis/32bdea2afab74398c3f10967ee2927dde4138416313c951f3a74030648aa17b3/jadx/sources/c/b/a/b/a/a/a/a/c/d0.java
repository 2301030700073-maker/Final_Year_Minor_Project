package c.b.a.b.a.a.a.a.c;

import android.content.ComponentName;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Bundle;
import android.support.annotation.AnyThread;
import android.support.annotation.GuardedBy;
import android.support.annotation.Nullable;
import android.util.Log;
import c.b.a.b.a.a.a.a.a.a.C0357b;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.EntitiesData;
import com.google.android.apps.miphone.aiai.matchmaker.overview.ui.CanceledException;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class d0 {

    /* renamed from: a, reason: collision with root package name */
    public final long f2444a;

    /* renamed from: b, reason: collision with root package name */
    public final String f2445b;

    /* renamed from: c, reason: collision with root package name */
    public final String f2446c;

    /* renamed from: d, reason: collision with root package name */
    public final ComponentName f2447d;
    public final N e;
    public final RectF f;
    public final PointF g;

    @Nullable
    public final Bitmap h;

    @GuardedBy("this")
    public final Q j;
    public final int k;

    @GuardedBy("this")
    public boolean l;
    public Bundle m;

    @GuardedBy("this")
    public final RectF i = new RectF(-1.0f, -1.0f, -1.0f, -1.0f);
    public String n = "";

    @AnyThread
    public d0(N n, RectF rectF, PointF pointF, long j, @Nullable Bitmap bitmap, int i, Bundle bundle, ComponentName componentName, Q q) {
        this.e = n;
        this.f = new RectF(rectF);
        this.g = new PointF(pointF.x, pointF.y);
        this.f2444a = j;
        this.h = bitmap;
        this.k = i;
        this.m = bundle;
        this.f2445b = componentName.getPackageName();
        this.f2446c = componentName.getClassName();
        this.j = q;
        this.f2447d = componentName;
    }

    public static void a(final d0 d0Var, final C0357b c0357b, final EntitiesData entitiesData, final c0 c0Var, boolean z) {
        synchronized (d0Var) {
            if (d0Var.l) {
                d0Var.l(new CanceledException("Entity extraction cancelled"));
                return;
            }
            c.b.a.b.a.a.a.a.c.y0.c.e(c.b.a.b.a.a.a.a.c.y0.c.d(entitiesData));
            final c.b.a.b.a.a.a.a.a.a.w wVar = entitiesData.f3236a == null ? new c.b.a.b.a.a.a.a.a.a.w() : entitiesData.f3236a;
            if (z) {
                d0Var.e.f2398c.post(new Runnable(d0Var, wVar, c0Var, c0357b, entitiesData) { // from class: c.b.a.b.a.a.a.a.c.W

                    /* renamed from: a, reason: collision with root package name */
                    public final d0 f2419a;

                    /* renamed from: b, reason: collision with root package name */
                    public final c.b.a.b.a.a.a.a.a.a.w f2420b;

                    /* renamed from: c, reason: collision with root package name */
                    public final c0 f2421c;

                    /* renamed from: d, reason: collision with root package name */
                    public final C0357b f2422d;
                    public final EntitiesData e;

                    {
                        this.f2419a = d0Var;
                        this.f2420b = wVar;
                        this.f2421c = c0Var;
                        this.f2422d = c0357b;
                        this.e = entitiesData;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        d0 d0Var2 = this.f2419a;
                        c.b.a.b.a.a.a.a.a.a.w wVar2 = this.f2420b;
                        c0 c0Var2 = this.f2421c;
                        C0357b c0357b2 = this.f2422d;
                        EntitiesData entitiesData2 = this.e;
                        synchronized (d0Var2) {
                            d0Var2.j.d(wVar2);
                            c0Var2.a(c0357b2, entitiesData2);
                        }
                    }
                });
            } else {
                d0Var.e.f2398c.post(new Runnable(d0Var, wVar) { // from class: c.b.a.b.a.a.a.a.c.X

                    /* renamed from: a, reason: collision with root package name */
                    public final d0 f2423a;

                    /* renamed from: b, reason: collision with root package name */
                    public final c.b.a.b.a.a.a.a.a.a.w f2424b;

                    {
                        this.f2423a = d0Var;
                        this.f2424b = wVar;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        d0 d0Var2 = this.f2423a;
                        c.b.a.b.a.a.a.a.a.a.w wVar2 = this.f2424b;
                        synchronized (d0Var2) {
                            d0Var2.j.d(wVar2);
                        }
                    }
                });
                c0Var.a(c0357b, entitiesData);
            }
        }
    }

    public static void b(final d0 d0Var, final C0357b c0357b, final b0 b0Var) {
        synchronized (d0Var) {
            if (d0Var.l) {
                d0Var.l(new CanceledException("Content extraction cancelled."));
                return;
            }
            String valueOf = String.valueOf(c.b.a.b.a.a.a.a.c.y0.c.a(c0357b));
            c.b.a.b.a.a.a.a.c.y0.c.b(valueOf.length() != 0 ? "Fetched contents\n\n".concat(valueOf) : new String("Fetched contents\n\n"));
            d0Var.e.f2398c.post(new Runnable(d0Var, c0357b, b0Var, c0357b) { // from class: c.b.a.b.a.a.a.a.c.V

                /* renamed from: a, reason: collision with root package name */
                public final d0 f2415a;

                /* renamed from: b, reason: collision with root package name */
                public final C0357b f2416b;

                /* renamed from: c, reason: collision with root package name */
                public final b0 f2417c;

                /* renamed from: d, reason: collision with root package name */
                public final C0357b f2418d;

                {
                    this.f2415a = d0Var;
                    this.f2416b = c0357b;
                    this.f2417c = b0Var;
                    this.f2418d = c0357b;
                }

                @Override // java.lang.Runnable
                public void run() {
                    d0 d0Var2 = this.f2415a;
                    C0357b c0357b2 = this.f2416b;
                    b0 b0Var2 = this.f2417c;
                    C0357b c0357b3 = this.f2418d;
                    synchronized (d0Var2) {
                        d0Var2.j.f(c0357b2);
                        b0Var2.a(c0357b3);
                    }
                }
            });
        }
    }

    public static d0 d(N n, RectF rectF, PointF pointF, long j, @Nullable Bitmap bitmap, int i, Bundle bundle, ComponentName componentName, Q q) {
        return new d0(n, rectF, pointF, j, bitmap, i, bundle, componentName, q);
    }

    @AnyThread
    public RectF c(RectF rectF) {
        float width = rectF.width() * this.g.x;
        float height = rectF.height();
        PointF pointF = this.g;
        float f = pointF.y;
        RectF rectF2 = this.f;
        float f2 = (rectF2.left + rectF.left) * pointF.x;
        rectF.left = f2;
        float f3 = (rectF2.top + rectF.top) * f;
        rectF.top = f3;
        rectF.right = f2 + width;
        rectF.bottom = f3 + (height * f);
        return rectF;
    }

    @AnyThread
    public synchronized void e(C0357b c0357b, c.b.a.b.a.a.a.a.b.a aVar, c.b.a.b.a.a.a.a.a.a.p pVar, c0 c0Var) {
        f(c0357b, aVar, pVar, c0Var, true);
    }

    @AnyThread
    public synchronized void f(final C0357b c0357b, final c.b.a.b.a.a.a.a.b.a aVar, @Nullable final c.b.a.b.a.a.a.a.a.a.p pVar, final c0 c0Var, final boolean z) {
        Log.i("AiAiSuggestUi", "Extracting entities.");
        if (this.l) {
            l(new CanceledException("Entity extraction cancelled."));
            return;
        }
        N n = this.e;
        n.f2397b.execute(new Runnable(this, aVar, pVar, c0357b, c0Var, z) { // from class: c.b.a.b.a.a.a.a.c.T

            /* renamed from: a, reason: collision with root package name */
            public final d0 f2407a;

            /* renamed from: b, reason: collision with root package name */
            public final c.b.a.b.a.a.a.a.b.a f2408b;

            /* renamed from: c, reason: collision with root package name */
            public final c.b.a.b.a.a.a.a.a.a.p f2409c;

            /* renamed from: d, reason: collision with root package name */
            public final C0357b f2410d;
            public final c0 e;
            public final boolean f;

            {
                this.f2407a = this;
                this.f2408b = aVar;
                this.f2409c = pVar;
                this.f2410d = c0357b;
                this.e = c0Var;
                this.f = z;
            }

            @Override // java.lang.Runnable
            public void run() {
                d0 d0Var = this.f2407a;
                c.b.a.b.a.a.a.a.b.a aVar2 = this.f2408b;
                c.b.a.b.a.a.a.a.a.a.p pVar2 = this.f2409c;
                C0357b c0357b2 = this.f2410d;
                c0 c0Var2 = this.e;
                boolean z2 = this.f;
                synchronized (d0Var) {
                    try {
                        d0Var.e.a(aVar2.a(d0Var.f2445b, d0Var.f2446c, d0Var.k, d0Var.f2444a, d0Var.m, pVar2, c0357b2), new a0(d0Var, c0357b2, aVar2, c0Var2, z2));
                    } finally {
                    }
                }
            }
        });
    }

    @AnyThread
    public synchronized void g(final c.b.a.b.a.a.a.a.a.a.p pVar, final c.b.a.b.a.a.a.a.b.a aVar, final b0 b0Var) {
        boolean z = pVar.i;
        StringBuilder sb = new StringBuilder(40);
        sb.append("Fetching contents, isPrimaryTask = ");
        sb.append(z);
        Log.i("AiAiSuggestUi", sb.toString());
        String valueOf = String.valueOf(this.i);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 19);
        sb2.append("Contents new rect: ");
        sb2.append(valueOf);
        c.b.a.b.a.a.a.a.c.y0.c.e(sb2.toString());
        N n = this.e;
        n.f2397b.execute(new Runnable(this, aVar, pVar, b0Var) { // from class: c.b.a.b.a.a.a.a.c.S

            /* renamed from: a, reason: collision with root package name */
            public final d0 f2403a;

            /* renamed from: b, reason: collision with root package name */
            public final c.b.a.b.a.a.a.a.b.a f2404b;

            /* renamed from: c, reason: collision with root package name */
            public final c.b.a.b.a.a.a.a.a.a.p f2405c;

            /* renamed from: d, reason: collision with root package name */
            public final b0 f2406d;

            {
                this.f2403a = this;
                this.f2404b = aVar;
                this.f2405c = pVar;
                this.f2406d = b0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                d0 d0Var = this.f2403a;
                c.b.a.b.a.a.a.a.b.a aVar2 = this.f2404b;
                c.b.a.b.a.a.a.a.a.a.p pVar2 = this.f2405c;
                b0 b0Var2 = this.f2406d;
                synchronized (d0Var) {
                    try {
                        N n2 = d0Var.e;
                        int i = d0Var.k;
                        boolean z2 = pVar2.i;
                        String str = d0Var.f2445b;
                        String str2 = d0Var.f2446c;
                        long j = d0Var.f2444a;
                        Objects.requireNonNull(aVar2);
                        Bundle bundle = new Bundle();
                        bundle.putInt("CONTEXT_IMAGE_BUNDLE_VERSION_KEY", 1);
                        bundle.putBoolean("CONTEXT_IMAGE_PRIMARY_TASK_KEY", z2);
                        bundle.putString("CONTEXT_IMAGE_PACKAGE_NAME_KEY", str);
                        bundle.putString("CONTEXT_IMAGE_ACTIVITY_NAME_KEY", str2);
                        bundle.putLong("CONTEXT_IMAGE_CAPTURE_TIME_MS_KEY", j);
                        Objects.requireNonNull(n2);
                        bundle.putLong("CAPTURE_TIME_MS", System.currentTimeMillis());
                        try {
                            n2.f2396a.provideContextImage(i, bundle);
                        } catch (Throwable th) {
                            Log.e("AiAiSuggestUi", "Failed to provideContextImage", th);
                        }
                        d0Var.e.b(d0Var.k, aVar2.c(d0Var.f2445b, d0Var.f2446c, d0Var.k, d0Var.f2444a, pVar2, d0Var.m, new c.b.a.b.a.a.a.a.a.a.r()), new Z(d0Var, aVar2, b0Var2));
                    } finally {
                    }
                }
            }
        });
    }

    public synchronized ComponentName h() {
        return this.f2447d;
    }

    @AnyThread
    public synchronized Q i() {
        return this.j;
    }

    public String j() {
        String str = this.n;
        if (str == null || str.isEmpty()) {
            this.n = P.a(this.f2447d, this.k, this.f2444a);
        }
        return this.n;
    }

    @AnyThread
    public synchronized void k(final String str, final c.b.a.b.a.a.a.a.b.a aVar, final c.b.a.b.a.a.a.a.a.a.j jVar) {
        if (jVar.f2318a != null) {
            List list = jVar.f2318a;
            c.b.a.b.a.a.a.a.c.y0.d.a(list);
            if (!list.isEmpty()) {
                N n = this.e;
                n.f2397b.execute(new Runnable(this, aVar, jVar, str) { // from class: c.b.a.b.a.a.a.a.c.U

                    /* renamed from: a, reason: collision with root package name */
                    public final d0 f2411a;

                    /* renamed from: b, reason: collision with root package name */
                    public final c.b.a.b.a.a.a.a.b.a f2412b;

                    /* renamed from: c, reason: collision with root package name */
                    public final c.b.a.b.a.a.a.a.a.a.j f2413c;

                    /* renamed from: d, reason: collision with root package name */
                    public final String f2414d;

                    {
                        this.f2411a = this;
                        this.f2412b = aVar;
                        this.f2413c = jVar;
                        this.f2414d = str;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        d0 d0Var = this.f2411a;
                        c.b.a.b.a.a.a.a.b.a aVar2 = this.f2412b;
                        c.b.a.b.a.a.a.a.a.a.j jVar2 = this.f2413c;
                        String str2 = this.f2414d;
                        Objects.requireNonNull(d0Var);
                        try {
                            Bundle b2 = aVar2.b(jVar2);
                            N n2 = d0Var.e;
                            Objects.requireNonNull(n2);
                            try {
                                n2.f2396a.notifyInteraction(str2, b2);
                            } catch (Throwable th) {
                                Log.e("AiAiSuggestUi", "Failed to notifyInteraction", th);
                            }
                            synchronized (d0Var) {
                                d0Var.j.b(str2, jVar2);
                            }
                        } catch (Throwable th2) {
                            Log.e("AiAiSuggestUi", "Failed to call service - report metrics/feedback.", th2);
                        }
                    }
                });
            }
        }
    }

    @AnyThread
    public final void l(final Throwable th) {
        Log.i("AiAiSuggestUi", "Canceling suggestion interaction.");
        N n = this.e;
        n.f2398c.post(new Runnable(this, th) { // from class: c.b.a.b.a.a.a.a.c.Y

            /* renamed from: a, reason: collision with root package name */
            public final d0 f2425a;

            /* renamed from: b, reason: collision with root package name */
            public final Throwable f2426b;

            {
                this.f2425a = this;
                this.f2426b = th;
            }

            @Override // java.lang.Runnable
            public void run() {
                d0 d0Var = this.f2425a;
                Throwable th2 = this.f2426b;
                synchronized (d0Var) {
                    d0Var.j.c(th2);
                }
            }
        });
    }

    @AnyThread
    public synchronized void m(boolean z) {
        this.l = z;
        if (z) {
            this.i.set(-1.0f, -1.0f, -1.0f, -1.0f);
        }
    }
}
