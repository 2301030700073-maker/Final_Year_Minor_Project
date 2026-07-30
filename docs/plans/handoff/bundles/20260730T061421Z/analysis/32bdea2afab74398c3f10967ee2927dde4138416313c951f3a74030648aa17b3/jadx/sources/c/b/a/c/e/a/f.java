package c.b.a.c.e.a;

import android.content.Context;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class f implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f3012a;

    public f(Context context) {
        this.f3012a = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        return this.f3012a.getSharedPreferences("google_sdk_flags", 0);
    }
}
