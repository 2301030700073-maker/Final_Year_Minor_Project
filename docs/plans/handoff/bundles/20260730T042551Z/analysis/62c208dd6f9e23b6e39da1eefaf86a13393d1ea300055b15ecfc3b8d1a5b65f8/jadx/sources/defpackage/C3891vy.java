package defpackage;

import android.content.Context;
import android.content.SharedPreferences;

/* renamed from: vy, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3891vy {
    /* renamed from: do, reason: not valid java name */
    public static SharedPreferences m8491do(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return context.getSharedPreferences("com.google.firebase.messaging", 0);
    }
}
