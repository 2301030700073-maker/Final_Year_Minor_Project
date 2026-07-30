package b.e.i;

import android.os.Build;
import android.view.View;

/* loaded from: classes.dex */
public abstract class p {

    /* renamed from: a, reason: collision with root package name */
    public final int f772a;

    /* renamed from: b, reason: collision with root package name */
    public final Class f773b;

    /* renamed from: c, reason: collision with root package name */
    public final int f774c;

    public p(int i, Class cls, int i2) {
        this.f772a = i;
        this.f773b = cls;
        this.f774c = i2;
    }

    public abstract Object a(View view);

    public Object b(View view) {
        if (Build.VERSION.SDK_INT >= this.f774c) {
            return a(view);
        }
        Object tag = view.getTag(this.f772a);
        if (this.f773b.isInstance(tag)) {
            return tag;
        }
        return null;
    }

    public p(int i, Class cls, int i2, int i3) {
        this.f772a = i;
        this.f773b = cls;
        this.f774c = i3;
    }
}
