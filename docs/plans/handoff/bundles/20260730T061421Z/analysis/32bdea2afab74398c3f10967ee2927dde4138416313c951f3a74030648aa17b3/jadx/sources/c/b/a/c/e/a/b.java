package c.b.a.c.e.a;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class b implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f3002a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f3003b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Integer f3004c;

    public b(SharedPreferences sharedPreferences, String str, Integer num) {
        this.f3002a = sharedPreferences;
        this.f3003b = str;
        this.f3004c = num;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        return Integer.valueOf(this.f3002a.getInt(this.f3003b, this.f3004c.intValue()));
    }
}
