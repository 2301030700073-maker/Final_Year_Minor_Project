package b.b.g;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;

/* loaded from: classes.dex */
public class H extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    public final C0081x f451a;

    /* renamed from: b, reason: collision with root package name */
    public final G f452b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public H(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        X0.a(context);
        V0.a(this, getContext());
        C0081x c0081x = new C0081x(this);
        this.f451a = c0081x;
        c0081x.b(attributeSet, i);
        G g = new G(this);
        this.f452b = g;
        g.b(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0081x c0081x = this.f451a;
        if (c0081x != null) {
            c0081x.a();
        }
        G g = this.f452b;
        if (g != null) {
            g.a();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return ((this.f452b.f449a.getBackground() instanceof RippleDrawable) ^ true) && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0081x c0081x = this.f451a;
        if (c0081x != null) {
            c0081x.c();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0081x c0081x = this.f451a;
        if (c0081x != null) {
            c0081x.d(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        G g = this.f452b;
        if (g != null) {
            g.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        G g = this.f452b;
        if (g != null) {
            g.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        G g = this.f452b;
        if (g != null) {
            g.c(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        G g = this.f452b;
        if (g != null) {
            g.a();
        }
    }
}
