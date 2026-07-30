package c.b.a.c.e.a;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class d implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f3008a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f3009b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f3010c;

    public d(SharedPreferences sharedPreferences, String str, String str2) {
        this.f3008a = sharedPreferences;
        this.f3009b = str;
        this.f3010c = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        return this.f3008a.getString(this.f3009b, this.f3010c);
    }
}
