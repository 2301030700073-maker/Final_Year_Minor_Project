package com.google.android.play.core.integrity;

import android.content.Context;

/* compiled from: com.google.android.play:integrity@@1.3.0 */
/* loaded from: classes4.dex */
final class ax {

    /* renamed from: a, reason: collision with root package name */
    private static aw f314a;

    static synchronized aw a(Context context) {
        aw awVar;
        synchronized (ax.class) {
            if (f314a == null) {
                u uVar = new u(null);
                uVar.a(com.google.android.play.integrity.internal.ag.a(context));
                f314a = uVar.b();
            }
            awVar = f314a;
        }
        return awVar;
    }
}
