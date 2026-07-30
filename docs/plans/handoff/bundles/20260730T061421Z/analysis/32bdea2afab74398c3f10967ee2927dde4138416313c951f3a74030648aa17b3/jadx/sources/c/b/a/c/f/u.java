package c.b.a.c.f;

import android.content.SharedPreferences;
import android.util.Log;

/* loaded from: classes.dex */
public final class u extends p {
    public u(w wVar, String str, String str2) {
        super(wVar, str, str2, null);
    }

    @Override // c.b.a.c.f.p
    public final Object b(SharedPreferences sharedPreferences) {
        try {
            return sharedPreferences.getString(this.f3051b, null);
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(this.f3051b);
            Log.e("PhenotypeFlag", valueOf.length() != 0 ? "Invalid string value in SharedPreferences for ".concat(valueOf) : new String("Invalid string value in SharedPreferences for "), e);
            return null;
        }
    }

    @Override // c.b.a.c.f.p
    public final /* synthetic */ Object d(String str) {
        return str;
    }
}
