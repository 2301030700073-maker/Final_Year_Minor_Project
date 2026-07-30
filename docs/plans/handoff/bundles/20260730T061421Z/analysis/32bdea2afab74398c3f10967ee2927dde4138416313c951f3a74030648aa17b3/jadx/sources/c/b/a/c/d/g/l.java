package c.b.a.c.d.g;

import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import c.b.a.c.d.g.u.C0416g;
import c.b.a.c.d.g.u.E;
import c.b.a.c.d.g.u.F;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2883a;

    /* renamed from: b, reason: collision with root package name */
    public final j f2884b;

    /* renamed from: c, reason: collision with root package name */
    public final c f2885c;

    /* renamed from: d, reason: collision with root package name */
    public final F f2886d;
    public final Looper e;
    public final int f;
    public final o g;
    public final C0416g h;

    @Deprecated
    public l(Context context, j jVar, c cVar, E e) {
        c.b.a.c.b.a.S(e, "StatusExceptionMapper must not be null.");
        k kVar = new k(e, null, Looper.getMainLooper());
        c.b.a.c.b.a.S(context, "Null context is not permitted.");
        c.b.a.c.b.a.S(jVar, "Api must not be null.");
        c.b.a.c.b.a.S(kVar, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.f2883a = context.getApplicationContext();
        this.f2884b = jVar;
        this.f2885c = null;
        this.e = kVar.f2882b;
        this.f2886d = new F(jVar, null);
        this.g = new c.b.a.c.d.g.u.p(this);
        C0416g a2 = C0416g.a(this.f2883a);
        this.h = a2;
        this.f = a2.g.getAndIncrement();
        Handler handler = this.h.m;
        handler.sendMessage(handler.obtainMessage(7, this));
    }

    public final c.b.a.c.d.j.j a() {
        GoogleSignInAccount e;
        GoogleSignInAccount e2;
        c.b.a.c.d.j.j jVar = new c.b.a.c.d.j.j();
        c cVar = this.f2885c;
        Account account = null;
        if (!(cVar instanceof b) || (e2 = ((b) cVar).e()) == null) {
            c cVar2 = this.f2885c;
            if (cVar2 instanceof a) {
                account = ((a) cVar2).getAccount();
            }
        } else if (e2.f3341d != null) {
            account = new Account(e2.f3341d, "com.google");
        }
        jVar.f2961a = account;
        c cVar3 = this.f2885c;
        Set emptySet = (!(cVar3 instanceof b) || (e = ((b) cVar3).e()) == null) ? Collections.emptySet() : e.i();
        if (jVar.f2962b == null) {
            jVar.f2962b = new b.d.i(0);
        }
        jVar.f2962b.addAll(emptySet);
        jVar.f2964d = this.f2883a.getClass().getName();
        jVar.f2963c = this.f2883a.getPackageName();
        return jVar;
    }
}
