package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.compose.ui.node.RulerTrackingMap;
import okhttp3.ConnectionSpec;
import okhttp3.internal.http.StatusLine;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class AppCompatImageView extends ImageView {
    public final RulerTrackingMap mBackgroundTintHelper;
    public boolean mHasLevel;
    public final StatusLine mImageHelper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TintContextWrapper.wrap(context);
        this.mHasLevel = false;
        ThemeUtils.checkAppCompatTheme(getContext(), this);
        RulerTrackingMap rulerTrackingMap = new RulerTrackingMap(this);
        this.mBackgroundTintHelper = rulerTrackingMap;
        rulerTrackingMap.loadFromAttributes(attributeSet, i);
        StatusLine statusLine = new StatusLine(this);
        this.mImageHelper = statusLine;
        statusLine.loadFromAttributes(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            rulerTrackingMap.applySupportBackgroundTint();
        }
        StatusLine statusLine = this.mImageHelper;
        if (statusLine != null) {
            statusLine.applySupportImageTint();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            return rulerTrackingMap.getSupportBackgroundTintList();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            return rulerTrackingMap.getSupportBackgroundTintMode();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        ConnectionSpec.Builder builder;
        StatusLine statusLine = this.mImageHelper;
        if (statusLine == null || (builder = (ConnectionSpec.Builder) statusLine.message) == null) {
            return null;
        }
        return (ColorStateList) builder.cipherSuites;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        ConnectionSpec.Builder builder;
        StatusLine statusLine = this.mImageHelper;
        if (statusLine == null || (builder = (ConnectionSpec.Builder) statusLine.message) == null) {
            return null;
        }
        return (PorterDuff.Mode) builder.tlsVersions;
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return !(((ImageView) this.mImageHelper.protocol).getBackground() instanceof RippleDrawable) && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            rulerTrackingMap.onSetBackgroundDrawable();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            rulerTrackingMap.onSetBackgroundResource(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        StatusLine statusLine = this.mImageHelper;
        if (statusLine != null) {
            statusLine.applySupportImageTint();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        StatusLine statusLine = this.mImageHelper;
        if (statusLine != null && drawable != null && !this.mHasLevel) {
            statusLine.code = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (statusLine != null) {
            statusLine.applySupportImageTint();
            if (this.mHasLevel) {
                return;
            }
            ImageView imageView = (ImageView) statusLine.protocol;
            if (imageView.getDrawable() != null) {
                imageView.getDrawable().setLevel(statusLine.code);
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i) {
        super.setImageLevel(i);
        this.mHasLevel = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        StatusLine statusLine = this.mImageHelper;
        if (statusLine != null) {
            statusLine.setImageResource(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        StatusLine statusLine = this.mImageHelper;
        if (statusLine != null) {
            statusLine.applySupportImageTint();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            rulerTrackingMap.setSupportBackgroundTintList(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            rulerTrackingMap.setSupportBackgroundTintMode(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        StatusLine statusLine = this.mImageHelper;
        if (statusLine != null) {
            ConnectionSpec.Builder builder = (ConnectionSpec.Builder) statusLine.message;
            if (builder == null) {
                builder = new ConnectionSpec.Builder();
                statusLine.message = builder;
            }
            builder.cipherSuites = colorStateList;
            builder.supportsTlsExtensions = true;
            statusLine.applySupportImageTint();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        StatusLine statusLine = this.mImageHelper;
        if (statusLine != null) {
            ConnectionSpec.Builder builder = (ConnectionSpec.Builder) statusLine.message;
            if (builder == null) {
                builder = new ConnectionSpec.Builder();
                statusLine.message = builder;
            }
            builder.tlsVersions = mode;
            builder.tls = true;
            statusLine.applySupportImageTint();
        }
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
