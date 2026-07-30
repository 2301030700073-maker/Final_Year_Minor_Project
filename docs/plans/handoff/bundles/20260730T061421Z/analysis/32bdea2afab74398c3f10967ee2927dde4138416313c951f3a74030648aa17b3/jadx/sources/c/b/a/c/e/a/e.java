package c.b.a.c.e.a;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public static SharedPreferences f3011a;

    public static SharedPreferences a(Context context) {
        SharedPreferences sharedPreferences;
        synchronized (SharedPreferences.class) {
            if (f3011a == null) {
                f3011a = (SharedPreferences) c.b.a.c.b.a.T(new f(context));
            }
            sharedPreferences = f3011a;
        }
        return sharedPreferences;
    }
}
