package c.b.a.b.b.k;

import android.content.SharedPreferences;
import c.b.a.b.a.a.a.a.c.m0;
import c.b.a.b.b.m.m;
import c.b.a.b.b.m.s;
import c.b.a.b.b.m.t;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.logging.UserEventDispatcher;
import com.android.quickstep.ImageActionsApi;
import com.android.systemui.shared.recents.model.Task;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    public final Task.TaskKey f2610a;

    /* renamed from: b, reason: collision with root package name */
    public final t f2611b;

    /* renamed from: c, reason: collision with root package name */
    public final ImageActionsApi f2612c;

    /* renamed from: d, reason: collision with root package name */
    public final j f2613d;
    public final b e;
    public final Supplier f;
    public final UserEventDispatcher g;
    public final m h;
    public final boolean i;
    public final boolean j;
    public final SharedPreferences k;
    public final boolean l;
    public final StatsLogManager m;
    public s o;
    public boolean n = false;
    public h p = new g(this);

    public i(Task.TaskKey taskKey, t tVar, ImageActionsApi imageActionsApi, j jVar, b bVar, Supplier supplier, UserEventDispatcher userEventDispatcher, m mVar, boolean z, boolean z2, SharedPreferences sharedPreferences, boolean z3, StatsLogManager statsLogManager) {
        this.f2610a = taskKey;
        this.f2611b = tVar;
        this.f2612c = imageActionsApi;
        this.f2613d = jVar;
        this.f = supplier;
        this.e = bVar;
        this.g = userEventDispatcher;
        this.h = mVar;
        this.i = z;
        this.j = z2;
        this.k = sharedPreferences;
        this.l = z3;
        this.m = statsLogManager;
    }

    public void a() {
        this.n = false;
        this.o.b(false);
        this.o.a(false);
        t tVar = this.f2611b;
        m0 m0Var = tVar.e;
        if (m0Var != null) {
            m0Var.d();
            tVar.e.e.removeAllViews();
        }
    }
}
