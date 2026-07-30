package c.b.a.b.b.h;

import android.annotation.TargetApi;
import c.b.a.b.a.a.a.a.a.a.C0357b;
import c.b.a.b.a.a.a.a.a.a.j;
import c.b.a.b.a.a.a.a.a.a.w;
import c.b.a.b.a.a.a.a.c.Q;
import c.b.a.b.a.a.a.a.c.m0;
import com.android.systemui.shared.recents.ISystemUiProxy;
import java.util.function.Consumer;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public class b implements Q {

    /* renamed from: a, reason: collision with root package name */
    public final Consumer f2573a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f2574b = false;

    public b(Consumer consumer) {
        this.f2573a = consumer;
    }

    @Override // c.b.a.b.a.a.a.a.c.Q
    public void a(String str) {
    }

    @Override // c.b.a.b.a.a.a.a.c.Q
    public void b(String str, j jVar) {
    }

    @Override // c.b.a.b.a.a.a.a.c.Q
    public void c(Throwable th) {
    }

    @Override // c.b.a.b.a.a.a.a.c.Q
    public void d(w wVar) {
    }

    @Override // c.b.a.b.a.a.a.a.c.Q
    public void e(m0 m0Var) {
        if (this.f2574b) {
            return;
        }
        this.f2573a.accept(m0Var);
    }

    @Override // c.b.a.b.a.a.a.a.c.Q
    public void f(C0357b c0357b) {
    }
}
