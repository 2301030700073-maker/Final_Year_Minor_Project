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
import de.cketti.changelog.XmlParser;
import okhttp3.ConnectionSpec;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class AppCompatImageView extends ImageView {
    public final AppCompatBackgroundHelper mBackgroundTintHelper;
    public boolean mHasLevel;
    public final XmlParser mImageHelper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TintContextWrapper.wrap(context);
        this.mHasLevel = false;
        ThemeUtils.checkAppCompatTheme(getContext(), this);
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this);
        this.mBackgroundTintHelper = appCompatBackgroundHelper;
        appCompatBackgroundHelper.loadFromAttributes(attributeSet, i);
        XmlParser xmlParser = new XmlParser(this);
        this.mImageHelper = xmlParser;
        xmlParser.loadFromAttributes(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.applySupportBackgroundTint();
        }
        XmlParser xmlParser = this.mImageHelper;
        if (xmlParser != null) {
            xmlParser.applySupportImageTint();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.getSupportBackgroundTintList();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.getSupportBackgroundTintMode();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        ConnectionSpec.Builder builder;
        XmlParser xmlParser = this.mImageHelper;
        if (xmlParser == null || (builder = (ConnectionSpec.Builder) xmlParser.result) == null) {
            return null;
        }
        return (ColorStateList) builder.cipherSuites;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        ConnectionSpec.Builder builder;
        XmlParser xmlParser = this.mImageHelper;
        if (xmlParser == null || (builder = (ConnectionSpec.Builder) xmlParser.result) == null) {
            return null;
        }
        return (PorterDuff.Mode) builder.tlsVersions;
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return !(((ImageView) this.mImageHelper.xmlPullParser).getBackground() instanceof RippleDrawable) && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.onSetBackgroundDrawable();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.onSetBackgroundResource(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        XmlParser xmlParser = this.mImageHelper;
        if (xmlParser != null) {
            xmlParser.applySupportImageTint();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        XmlParser xmlParser = this.mImageHelper;
        if (xmlParser != null && drawable != null && !this.mHasLevel) {
            xmlParser.lastVersionCode = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (xmlParser != null) {
            xmlParser.applySupportImageTint();
            if (this.mHasLevel) {
                return;
            }
            ImageView imageView = (ImageView) xmlParser.xmlPullParser;
            if (imageView.getDrawable() != null) {
                imageView.getDrawable().setLevel(xmlParser.lastVersionCode);
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
        XmlParser xmlParser = this.mImageHelper;
        if (xmlParser != null) {
            xmlParser.setImageResource(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        XmlParser xmlParser = this.mImageHelper;
        if (xmlParser != null) {
            xmlParser.applySupportImageTint();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setSupportBackgroundTintList(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setSupportBackgroundTintMode(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        XmlParser xmlParser = this.mImageHelper;
        if (xmlParser != null) {
            if (((ConnectionSpec.Builder) xmlParser.result) == null) {
                xmlParser.result = new ConnectionSpec.Builder();
            }
            ConnectionSpec.Builder builder = (ConnectionSpec.Builder) xmlParser.result;
            builder.cipherSuites = colorStateList;
            builder.supportsTlsExtensions = true;
            xmlParser.applySupportImageTint();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        XmlParser xmlParser = this.mImageHelper;
        if (xmlParser != null) {
            if (((ConnectionSpec.Builder) xmlParser.result) == null) {
                xmlParser.result = new ConnectionSpec.Builder();
            }
            ConnectionSpec.Builder builder = (ConnectionSpec.Builder) xmlParser.result;
            builder.tlsVersions = mode;
            builder.tls = true;
            xmlParser.applySupportImageTint();
        }
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppCompatImageView(Context context) {
        this(context, null);
    }
}
