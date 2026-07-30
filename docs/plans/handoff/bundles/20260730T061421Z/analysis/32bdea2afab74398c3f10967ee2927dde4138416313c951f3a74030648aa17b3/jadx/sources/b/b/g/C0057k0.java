package b.b.g;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;

/* renamed from: b.b.g.k0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0057k0 extends b.b.d.a.a {

    /* renamed from: b, reason: collision with root package name */
    public boolean f550b;

    public C0057k0(Drawable drawable) {
        super(drawable);
        this.f550b = true;
    }

    @Override // b.b.d.a.a, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f550b) {
            this.f326a.draw(canvas);
        }
    }

    @Override // b.b.d.a.a, android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        if (this.f550b) {
            this.f326a.setHotspot(f, f2);
        }
    }

    @Override // b.b.d.a.a, android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        if (this.f550b) {
            this.f326a.setHotspotBounds(i, i2, i3, i4);
        }
    }

    @Override // b.b.d.a.a, android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        if (this.f550b) {
            return this.f326a.setState(iArr);
        }
        return false;
    }

    @Override // b.b.d.a.a, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        if (this.f550b) {
            return super.setVisible(z, z2);
        }
        return false;
    }
}
