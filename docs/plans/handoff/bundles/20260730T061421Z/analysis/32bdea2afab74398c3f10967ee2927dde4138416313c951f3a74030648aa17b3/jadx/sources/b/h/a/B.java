package b.h.a;

import android.util.FloatProperty;

/* loaded from: classes.dex */
public class B extends C {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FloatProperty f804a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public B(String str, FloatProperty floatProperty) {
        super(str);
        this.f804a = floatProperty;
    }

    @Override // b.h.a.C
    public float getValue(Object obj) {
        return ((Float) this.f804a.get(obj)).floatValue();
    }

    @Override // b.h.a.C
    public void setValue(Object obj, float f) {
        this.f804a.setValue(obj, f);
    }
}
