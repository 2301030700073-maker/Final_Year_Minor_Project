package com.google.android.play.core.integrity;

import android.content.Context;

/* compiled from: com.google.android.play:integrity@@1.3.0 */
/* loaded from: classes4.dex */
final class z {

    /* renamed from: a, reason: collision with root package name */
    private static s f347a;

    static synchronized s a(Context context) {
        s sVar;
        synchronized (z.class) {
            if (f347a == null) {
                q qVar = new q(null);
                qVar.a(com.google.android.play.integrity.internal.ag.a(context));
                f347a = qVar.b();
            }
            sVar = f347a;
        }
        return sVar;
    }
}
