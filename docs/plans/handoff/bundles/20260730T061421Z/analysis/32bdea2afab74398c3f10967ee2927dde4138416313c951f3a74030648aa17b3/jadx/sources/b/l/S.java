package b.l;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.preference.PreferenceScreen;

/* loaded from: classes.dex */
public class S {

    /* renamed from: a, reason: collision with root package name */
    public Context f1038a;

    /* renamed from: d, reason: collision with root package name */
    public SharedPreferences.Editor f1041d;
    public boolean e;
    public String f;
    public PreferenceScreen h;
    public Q i;
    public O j;
    public P k;

    /* renamed from: b, reason: collision with root package name */
    public long f1039b = 0;
    public int g = 0;

    /* renamed from: c, reason: collision with root package name */
    public SharedPreferences f1040c = null;

    public S(Context context) {
        this.f1038a = context;
        this.f = context.getPackageName() + "_preferences";
    }

    public SharedPreferences.Editor a() {
        if (!this.e) {
            return b().edit();
        }
        if (this.f1041d == null) {
            this.f1041d = b().edit();
        }
        return this.f1041d;
    }

    public SharedPreferences b() {
        if (this.f1040c == null) {
            this.f1040c = this.f1038a.getSharedPreferences(this.f, 0);
        }
        return this.f1040c;
    }
}
