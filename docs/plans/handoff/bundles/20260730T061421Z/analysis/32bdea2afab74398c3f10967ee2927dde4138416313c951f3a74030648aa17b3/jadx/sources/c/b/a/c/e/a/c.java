package c.b.a.c.e.a;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class c implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f3005a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f3006b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Long f3007c;

    public c(SharedPreferences sharedPreferences, String str, Long l) {
        this.f3005a = sharedPreferences;
        this.f3006b = str;
        this.f3007c = l;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        return Long.valueOf(this.f3005a.getLong(this.f3006b, this.f3007c.longValue()));
    }
}
