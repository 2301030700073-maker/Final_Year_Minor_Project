package c.b.a.c.e.a;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class a implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f2999a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f3000b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Boolean f3001c;

    public a(SharedPreferences sharedPreferences, String str, Boolean bool) {
        this.f2999a = sharedPreferences;
        this.f3000b = str;
        this.f3001c = bool;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        return Boolean.valueOf(this.f2999a.getBoolean(this.f3000b, this.f3001c.booleanValue()));
    }
}
