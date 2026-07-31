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
import com.grack.nanojson.JsonParser;
import okhttp3.ConnectionSpec;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class AppCompatImageView extends ImageView {
    public final RulerTrackingMap mBackgroundTintHelper;
    public boolean mHasLevel;
    public final JsonParser mImageHelper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TintContextWrapper.wrap(context);
        this.mHasLevel = false;
        ThemeUtils.checkAppCompatTheme(this, getContext());
        RulerTrackingMap rulerTrackingMap = new RulerTrackingMap(this);
        this.mBackgroundTintHelper = rulerTrackingMap;
        rulerTrackingMap.loadFromAttributes(attributeSet, i);
        JsonParser jsonParser = new JsonParser(this);
        this.mImageHelper = jsonParser;
        jsonParser.loadFromAttributes(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            rulerTrackingMap.applySupportBackgroundTint();
        }
        JsonParser jsonParser = this.mImageHelper;
        if (jsonParser != null) {
            jsonParser.applySupportImageTint();
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
        JsonParser jsonParser = this.mImageHelper;
        if (jsonParser == null || (builder = (ConnectionSpec.Builder) jsonParser.tokener) == null) {
            return null;
        }
        return (ColorStateList) builder.cipherSuites;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        ConnectionSpec.Builder builder;
        JsonParser jsonParser = this.mImageHelper;
        if (jsonParser == null || (builder = (ConnectionSpec.Builder) jsonParser.tokener) == null) {
            return null;
        }
        return (PorterDuff.Mode) builder.tlsVersions;
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return !(((ImageView) this.mImageHelper.value).getBackground() instanceof RippleDrawable) && super.hasOverlappingRendering();
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
        JsonParser jsonParser = this.mImageHelper;
        if (jsonParser != null) {
            jsonParser.applySupportImageTint();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        JsonParser jsonParser = this.mImageHelper;
        if (jsonParser != null && drawable != null && !this.mHasLevel) {
            jsonParser.token = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (jsonParser != null) {
            jsonParser.applySupportImageTint();
            if (this.mHasLevel) {
                return;
            }
            ImageView imageView = (ImageView) jsonParser.value;
            if (imageView.getDrawable() != null) {
                imageView.getDrawable().setLevel(jsonParser.token);
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
        JsonParser jsonParser = this.mImageHelper;
        if (jsonParser != null) {
            jsonParser.setImageResource(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        JsonParser jsonParser = this.mImageHelper;
        if (jsonParser != null) {
            jsonParser.applySupportImageTint();
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
        JsonParser jsonParser = this.mImageHelper;
        if (jsonParser != null) {
            if (((ConnectionSpec.Builder) jsonParser.tokener) == null) {
                jsonParser.tokener = new ConnectionSpec.Builder();
            }
            ConnectionSpec.Builder builder = (ConnectionSpec.Builder) jsonParser.tokener;
            builder.cipherSuites = colorStateList;
            builder.supportsTlsExtensions = true;
            jsonParser.applySupportImageTint();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        JsonParser jsonParser = this.mImageHelper;
        if (jsonParser != null) {
            if (((ConnectionSpec.Builder) jsonParser.tokener) == null) {
                jsonParser.tokener = new ConnectionSpec.Builder();
            }
            ConnectionSpec.Builder builder = (ConnectionSpec.Builder) jsonParser.tokener;
            builder.tlsVersions = mode;
            builder.tls = true;
            jsonParser.applySupportImageTint();
        }
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppCompatImageView(Context context) {
        this(context, null);
    }
}
