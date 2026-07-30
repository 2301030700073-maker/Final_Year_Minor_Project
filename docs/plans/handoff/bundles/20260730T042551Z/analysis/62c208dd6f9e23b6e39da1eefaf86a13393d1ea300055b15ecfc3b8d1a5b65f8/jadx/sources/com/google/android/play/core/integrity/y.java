package com.google.android.play.core.integrity;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import defpackage.C2690eO;
import defpackage.FG;
import defpackage.LG;

/* loaded from: classes3.dex */
abstract class y {
    private final String b;
    private final long c;
    private boolean e;
    private final C2690eO a = new C2690eO("IntegrityDialogWrapper");
    private final Object d = new Object();

    public y(String str, long j) {
        this.b = str;
        this.c = j;
    }

    public final FG a(Activity activity, int i) {
        synchronized (this.d) {
            if (this.e) {
                return LG.m1320try(0);
            }
            this.e = true;
            C2690eO c2690eO = this.a;
            Object[] objArr = {Integer.valueOf(i)};
            if (Log.isLoggable("PlayCore", 3)) {
                C2690eO.m6560new(c2690eO.f12673do, "checkAndShowDialog(%s)", objArr);
            } else {
                c2690eO.getClass();
            }
            Bundle bundle = new Bundle();
            bundle.putInt("dialog.intent.type", i);
            bundle.putString("package.name", this.b);
            bundle.putInt("playcore.integrity.version.major", 1);
            bundle.putInt("playcore.integrity.version.minor", 4);
            bundle.putInt("playcore.integrity.version.patch", 0);
            bundle.putLong("request.token.sid", this.c);
            return b(activity, bundle);
        }
    }

    public abstract FG b(Activity activity, Bundle bundle);
}
