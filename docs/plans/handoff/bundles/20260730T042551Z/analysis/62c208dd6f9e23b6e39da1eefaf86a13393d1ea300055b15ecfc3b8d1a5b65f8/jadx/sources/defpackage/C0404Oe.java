package defpackage;

import android.graphics.drawable.Drawable;
import android.util.Property;
import java.util.WeakHashMap;

/* renamed from: Oe, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0404Oe extends Property<Drawable, Integer> {

    /* renamed from: do, reason: not valid java name */
    public static final C0404Oe f2658do = new C0404Oe();

    public C0404Oe() {
        super(Integer.class, "drawableAlphaCompat");
        new WeakHashMap();
    }

    @Override // android.util.Property
    public final Integer get(Drawable drawable) {
        return Integer.valueOf(drawable.getAlpha());
    }

    @Override // android.util.Property
    public final void set(Drawable drawable, Integer num) {
        drawable.setAlpha(num.intValue());
    }
}
