package c.b.a.c.a.a.a.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: c, reason: collision with root package name */
    public static final Lock f2846c = new ReentrantLock();

    /* renamed from: d, reason: collision with root package name */
    public static a f2847d;

    /* renamed from: a, reason: collision with root package name */
    public final Lock f2848a = new ReentrantLock();

    /* renamed from: b, reason: collision with root package name */
    public final SharedPreferences f2849b;

    public a(Context context) {
        this.f2849b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public static a b(Context context) {
        c.b.a.c.b.a.R(context);
        f2846c.lock();
        try {
            if (f2847d == null) {
                f2847d = new a(context.getApplicationContext());
            }
            return f2847d;
        } finally {
            f2846c.unlock();
        }
    }

    public final GoogleSignInAccount a() {
        String c2 = c("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(c2)) {
            return null;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(c2).length() + 20);
        sb.append("googleSignInAccount");
        sb.append(":");
        sb.append(c2);
        String c3 = c(sb.toString());
        if (c3 == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.h(c3);
        } catch (JSONException unused) {
            return null;
        }
    }

    public final String c(String str) {
        this.f2848a.lock();
        try {
            return this.f2849b.getString(str, null);
        } finally {
            this.f2848a.unlock();
        }
    }
}
