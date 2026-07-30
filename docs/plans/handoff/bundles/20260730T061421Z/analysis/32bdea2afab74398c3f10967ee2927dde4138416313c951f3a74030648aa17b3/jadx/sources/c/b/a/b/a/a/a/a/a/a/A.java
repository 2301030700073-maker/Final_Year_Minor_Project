package c.b.a.b.a.a.a.a.a.a;

import android.os.Bundle;
import android.support.annotation.Nullable;

/* loaded from: classes.dex */
public final class A {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public String f2274a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public String f2275b;

    public A(Bundle bundle) {
        if (bundle.containsKey("name")) {
            this.f2274a = bundle.getString("name");
        }
        if (bundle.containsKey("value")) {
            this.f2275b = bundle.getString("value");
        }
    }

    public A() {
    }
}
