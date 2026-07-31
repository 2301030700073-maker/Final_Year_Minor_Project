package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.R$styleable;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.ViewCompat;
import java.util.WeakHashMap;
import okhttp3.ConnectionSpec;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AppCompatBackgroundHelper {
    public ConnectionSpec.Builder mBackgroundTint;
    public ConnectionSpec.Builder mInternalBackgroundTint;
    public ConnectionSpec.Builder mTmpInfo;
    public final View mView;
    public int mBackgroundResId = -1;
    public final AppCompatDrawableManager mDrawableManager = AppCompatDrawableManager.get();

    public AppCompatBackgroundHelper(View view) {
        this.mView = view;
    }

    public final void applySupportBackgroundTint() {
        View view = this.mView;
        Drawable background = view.getBackground();
        if (background != null) {
            if (this.mInternalBackgroundTint != null) {
                if (this.mTmpInfo == null) {
                    this.mTmpInfo = new ConnectionSpec.Builder();
                }
                ConnectionSpec.Builder builder = this.mTmpInfo;
                builder.cipherSuites = null;
                builder.supportsTlsExtensions = false;
                builder.tlsVersions = null;
                builder.tls = false;
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                ColorStateList backgroundTintList = view.getBackgroundTintList();
                if (backgroundTintList != null) {
                    builder.supportsTlsExtensions = true;
                    builder.cipherSuites = backgroundTintList;
                }
                PorterDuff.Mode backgroundTintMode = view.getBackgroundTintMode();
                if (backgroundTintMode != null) {
                    builder.tls = true;
                    builder.tlsVersions = backgroundTintMode;
                }
                if (builder.supportsTlsExtensions || builder.tls) {
                    AppCompatDrawableManager.tintDrawable(background, builder, view.getDrawableState());
                    return;
                }
            }
            ConnectionSpec.Builder builder2 = this.mBackgroundTint;
            if (builder2 != null) {
                AppCompatDrawableManager.tintDrawable(background, builder2, view.getDrawableState());
                return;
            }
            ConnectionSpec.Builder builder3 = this.mInternalBackgroundTint;
            if (builder3 != null) {
                AppCompatDrawableManager.tintDrawable(background, builder3, view.getDrawableState());
            }
        }
    }

    public final ColorStateList getSupportBackgroundTintList() {
        ConnectionSpec.Builder builder = this.mBackgroundTint;
        if (builder != null) {
            return (ColorStateList) builder.cipherSuites;
        }
        return null;
    }

    public final PorterDuff.Mode getSupportBackgroundTintMode() {
        ConnectionSpec.Builder builder = this.mBackgroundTint;
        if (builder != null) {
            return (PorterDuff.Mode) builder.tlsVersions;
        }
        return null;
    }

    public final void loadFromAttributes(AttributeSet attributeSet, int i) {
        ColorStateList tintList;
        View view = this.mView;
        Context context = view.getContext();
        int[] iArr = R$styleable.ViewBackgroundHelper;
        MenuHostHelper obtainStyledAttributes = MenuHostHelper.obtainStyledAttributes(context, attributeSet, iArr, i);
        TypedArray typedArray = (TypedArray) obtainStyledAttributes.mMenuProviders;
        View view2 = this.mView;
        ViewCompat.saveAttributeDataForStyleable(view2, view2.getContext(), iArr, attributeSet, (TypedArray) obtainStyledAttributes.mMenuProviders, i, 0);
        try {
            if (typedArray.hasValue(0)) {
                this.mBackgroundResId = typedArray.getResourceId(0, -1);
                AppCompatDrawableManager appCompatDrawableManager = this.mDrawableManager;
                Context context2 = view.getContext();
                int i2 = this.mBackgroundResId;
                synchronized (appCompatDrawableManager) {
                    tintList = appCompatDrawableManager.mResourceManager.getTintList(context2, i2);
                }
                if (tintList != null) {
                    setInternalBackgroundTint(tintList);
                }
            }
            if (typedArray.hasValue(1)) {
                view.setBackgroundTintList(obtainStyledAttributes.getColorStateList(1));
            }
            if (typedArray.hasValue(2)) {
                view.setBackgroundTintMode(DrawableUtils.parseTintMode(typedArray.getInt(2, -1), null));
            }
            obtainStyledAttributes.recycle();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void onSetBackgroundDrawable() {
        this.mBackgroundResId = -1;
        setInternalBackgroundTint(null);
        applySupportBackgroundTint();
    }

    public final void onSetBackgroundResource(int i) {
        ColorStateList colorStateList;
        this.mBackgroundResId = i;
        AppCompatDrawableManager appCompatDrawableManager = this.mDrawableManager;
        if (appCompatDrawableManager != null) {
            Context context = this.mView.getContext();
            synchronized (appCompatDrawableManager) {
                colorStateList = appCompatDrawableManager.mResourceManager.getTintList(context, i);
            }
        } else {
            colorStateList = null;
        }
        setInternalBackgroundTint(colorStateList);
        applySupportBackgroundTint();
    }

    public final void setInternalBackgroundTint(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.mInternalBackgroundTint == null) {
                this.mInternalBackgroundTint = new ConnectionSpec.Builder();
            }
            ConnectionSpec.Builder builder = this.mInternalBackgroundTint;
            builder.cipherSuites = colorStateList;
            builder.supportsTlsExtensions = true;
        } else {
            this.mInternalBackgroundTint = null;
        }
        applySupportBackgroundTint();
    }

    public final void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.mBackgroundTint == null) {
            this.mBackgroundTint = new ConnectionSpec.Builder();
        }
        ConnectionSpec.Builder builder = this.mBackgroundTint;
        builder.cipherSuites = colorStateList;
        builder.supportsTlsExtensions = true;
        applySupportBackgroundTint();
    }

    public final void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.mBackgroundTint == null) {
            this.mBackgroundTint = new ConnectionSpec.Builder();
        }
        ConnectionSpec.Builder builder = this.mBackgroundTint;
        builder.tlsVersions = mode;
        builder.tls = true;
        applySupportBackgroundTint();
    }
}
