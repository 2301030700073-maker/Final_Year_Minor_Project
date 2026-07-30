package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageButton;
import android.widget.ImageView;
import com.joeykrim.rootcheck.R;
import defpackage.C0742bH;
import defpackage.C3793uH;
import defpackage.C3836v1;
import defpackage.N1;

/* loaded from: classes.dex */
public class AppCompatImageButton extends ImageButton {

    /* renamed from: do, reason: not valid java name */
    public final N1 f5699do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3836v1 f5700do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f5701do;

    public AppCompatImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.imageButtonStyle);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C3836v1 c3836v1 = this.f5700do;
        if (c3836v1 != null) {
            c3836v1.m8414do();
        }
        N1 n1 = this.f5699do;
        if (n1 != null) {
            n1.m1483do();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return ((this.f5699do.f2283do.getBackground() instanceof RippleDrawable) ^ true) && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C3836v1 c3836v1 = this.f5700do;
        if (c3836v1 != null) {
            c3836v1.m8421try();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C3836v1 c3836v1 = this.f5700do;
        if (c3836v1 != null) {
            c3836v1.m8413case(i);
        }
    }

    @Override // android.widget.ImageView
    public final void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        N1 n1 = this.f5699do;
        if (n1 != null) {
            n1.m1483do();
        }
    }

    @Override // android.widget.ImageView
    public final void setImageDrawable(Drawable drawable) {
        N1 n1 = this.f5699do;
        if (n1 != null && drawable != null && !this.f5701do) {
            n1.f2282do = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (n1 != null) {
            n1.m1483do();
            if (this.f5701do) {
                return;
            }
            ImageView imageView = n1.f2283do;
            if (imageView.getDrawable() != null) {
                imageView.getDrawable().setLevel(n1.f2282do);
            }
        }
    }

    @Override // android.widget.ImageView
    public final void setImageLevel(int i) {
        super.setImageLevel(i);
        this.f5701do = true;
    }

    @Override // android.widget.ImageView
    public final void setImageResource(int i) {
        this.f5699do.m1484for(i);
    }

    @Override // android.widget.ImageView
    public final void setImageURI(Uri uri) {
        super.setImageURI(uri);
        N1 n1 = this.f5699do;
        if (n1 != null) {
            n1.m1483do();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C3793uH.m8378do(context);
        this.f5701do = false;
        C0742bH.m4822do(getContext(), this);
        C3836v1 c3836v1 = new C3836v1(this);
        this.f5700do = c3836v1;
        c3836v1.m8419new(attributeSet, i);
        N1 n1 = new N1(this);
        this.f5699do = n1;
        n1.m1485if(attributeSet, i);
    }
}
