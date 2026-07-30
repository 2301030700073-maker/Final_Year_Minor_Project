package c.b.a.b.b.l;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;

/* renamed from: c.b.a.b.b.l.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0408w extends RippleDrawable {
    public C0408w(ColorStateList colorStateList, Drawable drawable, Drawable drawable2) {
        super(colorStateList, null, drawable2);
    }

    @Override // android.graphics.drawable.LayerDrawable
    public void setLayerInset(int i, int i2, int i3, int i4, int i5) {
        super.setLayerInset(i, i2, i3, i4, i5);
        onBoundsChange(getBounds());
    }
}
