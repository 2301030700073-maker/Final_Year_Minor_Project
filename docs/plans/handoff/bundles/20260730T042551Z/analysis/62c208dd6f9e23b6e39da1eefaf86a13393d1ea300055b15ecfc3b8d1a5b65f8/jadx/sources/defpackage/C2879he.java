package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.ExecutorService;

/* renamed from: he, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2879he {

    /* renamed from: do, reason: not valid java name */
    public static final Q0 f13338do = Q0.m1818new();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static C2879he f13339do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile SharedPreferences f13340do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ExecutorService f13341do;

    public C2879he(ExecutorService executorService) {
        this.f13341do = executorService;
    }

    /* renamed from: do, reason: not valid java name */
    public static Context m6821do() {
        try {
            C0706ai.m3146for();
            C0706ai m3146for = C0706ai.m3146for();
            m3146for.m3147do();
            return m3146for.f4985do;
        } catch (IllegalStateException unused) {
            return null;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final void m6822case(String str, boolean z) {
        if (this.f13340do == null) {
            m6824if(m6821do());
            if (this.f13340do == null) {
                return;
            }
        }
        this.f13340do.edit().putBoolean(str, z).apply();
    }

    /* renamed from: for, reason: not valid java name */
    public final void m6823for(long j, String str) {
        if (this.f13340do == null) {
            m6824if(m6821do());
            if (this.f13340do == null) {
                return;
            }
        }
        this.f13340do.edit().putLong(str, j).apply();
    }

    /* renamed from: if, reason: not valid java name */
    public final synchronized void m6824if(Context context) {
        if (this.f13340do == null && context != null) {
            this.f13341do.execute(new RunnableC3998xn(4, this, context));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m6825new(String str, double d) {
        if (this.f13340do == null) {
            m6824if(m6821do());
            if (this.f13340do == null) {
                return;
            }
        }
        this.f13340do.edit().putLong(str, Double.doubleToRawLongBits(d)).apply();
    }

    /* renamed from: try, reason: not valid java name */
    public final void m6826try(String str, String str2) {
        if (this.f13340do == null) {
            m6824if(m6821do());
            if (this.f13340do == null) {
                return;
            }
        }
        if (str2 == null) {
            this.f13340do.edit().remove(str).apply();
        } else {
            this.f13340do.edit().putString(str, str2).apply();
        }
    }
}
