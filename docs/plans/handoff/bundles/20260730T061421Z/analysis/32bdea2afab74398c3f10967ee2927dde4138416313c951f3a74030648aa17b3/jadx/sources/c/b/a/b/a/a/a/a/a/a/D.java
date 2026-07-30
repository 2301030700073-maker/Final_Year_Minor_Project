package c.b.a.b.a.a.a.a.a.a;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class D {

    /* renamed from: a, reason: collision with root package name */
    public float f2284a;

    /* renamed from: b, reason: collision with root package name */
    public float f2285b;

    /* renamed from: c, reason: collision with root package name */
    public float f2286c;

    /* renamed from: d, reason: collision with root package name */
    public float f2287d;

    public D(Bundle bundle) {
        if (bundle.containsKey("left")) {
            this.f2284a = bundle.getFloat("left");
        }
        if (bundle.containsKey("top")) {
            this.f2285b = bundle.getFloat("top");
        }
        if (bundle.containsKey("width")) {
            this.f2286c = bundle.getFloat("width");
        }
        if (bundle.containsKey("height")) {
            this.f2287d = bundle.getFloat("height");
        }
    }

    public Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putFloat("left", this.f2284a);
        bundle.putFloat("top", this.f2285b);
        bundle.putFloat("width", this.f2286c);
        bundle.putFloat("height", this.f2287d);
        return bundle;
    }

    public D() {
    }
}
