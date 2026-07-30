package c.b.a.c.f;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Binder;
import android.os.Process;
import android.os.UserManager;
import android.util.Log;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class p {
    public static final Object g = new Object();

    @SuppressLint({"StaticFieldLeak"})
    public static Context h = null;
    public static boolean i = false;
    public static volatile Boolean j;
    public static volatile Boolean k;

    /* renamed from: a, reason: collision with root package name */
    public final w f3050a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3051b;

    /* renamed from: c, reason: collision with root package name */
    public final String f3052c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f3053d;
    public volatile C0440n e = null;
    public volatile SharedPreferences f = null;

    public p(w wVar, String str, Object obj, t tVar) {
        if (wVar.f3059a == null && wVar.f3060b == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        if (wVar.f3059a != null && wVar.f3060b != null) {
            throw new IllegalArgumentException("Must pass one of SharedPreferences file name or ContentProvider URI");
        }
        this.f3050a = wVar;
        String valueOf = String.valueOf(wVar.f3061c);
        String valueOf2 = String.valueOf(str);
        this.f3052c = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        String valueOf3 = String.valueOf(wVar.f3062d);
        String valueOf4 = String.valueOf(str);
        this.f3051b = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
        this.f3053d = obj;
    }

    public static p a(w wVar, String str) {
        return new u(wVar, str, null);
    }

    public static Object c(v vVar) {
        try {
            return vVar.a();
        } catch (SecurityException unused) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return vVar.a();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    public static boolean e(final String str) {
        if (h()) {
            return ((Boolean) c(new v(str) { // from class: c.b.a.c.f.s

                /* renamed from: a, reason: collision with root package name */
                public final String f3057a;

                /* renamed from: b, reason: collision with root package name */
                public final boolean f3058b = false;

                {
                    this.f3057a = str;
                }

                @Override // c.b.a.c.f.v
                public final Object a() {
                    return Boolean.valueOf(C0438l.g(p.h.getContentResolver(), this.f3057a, false));
                }
            })).booleanValue();
        }
        return false;
    }

    public static boolean h() {
        if (j == null) {
            Context context = h;
            if (context == null) {
                return false;
            }
            j = Boolean.valueOf(b.e.b.d.e(context, "com.google.android.providers.gsf.permission.READ_GSERVICES", Binder.getCallingPid(), Binder.getCallingUid(), Binder.getCallingPid() == Process.myPid() ? context.getPackageName() : null) == 0);
        }
        return j.booleanValue();
    }

    public abstract Object b(SharedPreferences sharedPreferences);

    public abstract Object d(String str);

    @TargetApi(24)
    public final Object f() {
        boolean z;
        if (e("gms:phenotype:phenotype_flag:debug_bypass_phenotype")) {
            String valueOf = String.valueOf(this.f3051b);
            Log.w("PhenotypeFlag", valueOf.length() != 0 ? "Bypass reading Phenotype values for flag: ".concat(valueOf) : new String("Bypass reading Phenotype values for flag: "));
        } else {
            w wVar = this.f3050a;
            if (wVar.f3060b != null) {
                if (this.e == null) {
                    ContentResolver contentResolver = h.getContentResolver();
                    Uri uri = this.f3050a.f3060b;
                    C0440n c0440n = (C0440n) C0440n.f.get(uri);
                    if (c0440n == null) {
                        c0440n = new C0440n(contentResolver, uri);
                        C0440n c0440n2 = (C0440n) C0440n.f.putIfAbsent(uri, c0440n);
                        if (c0440n2 == null) {
                            c0440n.f3045a.registerContentObserver(c0440n.f3046b, false, c0440n.f3047c);
                        } else {
                            c0440n = c0440n2;
                        }
                    }
                    this.e = c0440n;
                }
                final C0440n c0440n3 = this.e;
                String str = (String) c(new v(this, c0440n3) { // from class: c.b.a.c.f.q

                    /* renamed from: a, reason: collision with root package name */
                    public final p f3054a;

                    /* renamed from: b, reason: collision with root package name */
                    public final C0440n f3055b;

                    {
                        this.f3054a = this;
                        this.f3055b = c0440n3;
                    }

                    @Override // c.b.a.c.f.v
                    public final Object a() {
                        p pVar = this.f3054a;
                        C0440n c0440n4 = this.f3055b;
                        Objects.requireNonNull(c0440n4);
                        Map a2 = p.e("gms:phenotype:phenotype_flag:debug_disable_caching") ? c0440n4.a() : c0440n4.e;
                        if (a2 == null) {
                            synchronized (c0440n4.f3048d) {
                                a2 = c0440n4.e;
                                if (a2 == null) {
                                    a2 = c0440n4.a();
                                    c0440n4.e = a2;
                                }
                            }
                        }
                        if (a2 == null) {
                            a2 = Collections.emptyMap();
                        }
                        return (String) a2.get(pVar.f3051b);
                    }
                });
                if (str != null) {
                    return d(str);
                }
            } else if (wVar.f3059a != null) {
                if (h.isDeviceProtectedStorage()) {
                    z = true;
                } else {
                    if (k == null || !k.booleanValue()) {
                        k = Boolean.valueOf(((UserManager) h.getSystemService(UserManager.class)).isUserUnlocked());
                    }
                    z = k.booleanValue();
                }
                if (!z) {
                    return null;
                }
                if (this.f == null) {
                    this.f = h.getSharedPreferences(this.f3050a.f3059a, 0);
                }
                SharedPreferences sharedPreferences = this.f;
                if (sharedPreferences.contains(this.f3051b)) {
                    return b(sharedPreferences);
                }
            }
        }
        return null;
    }

    public final Object g() {
        String str;
        if (this.f3050a.e || !h() || (str = (String) c(new v(this) { // from class: c.b.a.c.f.r

            /* renamed from: a, reason: collision with root package name */
            public final p f3056a;

            {
                this.f3056a = this;
            }

            @Override // c.b.a.c.f.v
            public final Object a() {
                p pVar = this.f3056a;
                Objects.requireNonNull(pVar);
                return C0438l.c(p.h.getContentResolver(), pVar.f3052c);
            }
        })) == null) {
            return null;
        }
        return d(str);
    }
}
