package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.core.content.res.CamUtils;
import androidx.core.view.MenuHostHelper;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Locale;
import okhttp3.ConnectionSpec;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AppCompatTextHelper {
    public boolean mAsyncFontPending;
    public final AppCompatTextViewAutoSizeHelper mAutoSizeTextHelper;
    public ConnectionSpec.Builder mDrawableBottomTint;
    public ConnectionSpec.Builder mDrawableEndTint;
    public ConnectionSpec.Builder mDrawableLeftTint;
    public ConnectionSpec.Builder mDrawableRightTint;
    public ConnectionSpec.Builder mDrawableStartTint;
    public ConnectionSpec.Builder mDrawableTint;
    public ConnectionSpec.Builder mDrawableTopTint;
    public Typeface mFontTypeface;
    public final TextView mView;
    public int mStyle = 0;
    public int mFontWeight = -1;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Api21Impl {
        public static Locale forLanguageTag(String str) {
            return Locale.forLanguageTag(str);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Api24Impl {
        public static LocaleList forLanguageTags(String str) {
            return LocaleList.forLanguageTags(str);
        }

        public static void setTextLocales(TextView textView, LocaleList localeList) {
            textView.setTextLocales(localeList);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Api26Impl {
        public static int getAutoSizeStepGranularity(TextView textView) {
            return textView.getAutoSizeStepGranularity();
        }

        public static void setAutoSizeTextTypeUniformWithConfiguration(TextView textView, int i, int i2, int i3, int i4) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
        }

        public static void setAutoSizeTextTypeUniformWithPresetSizes(TextView textView, int[] iArr, int i) {
            textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
        }

        public static boolean setFontVariationSettings(TextView textView, String str) {
            return textView.setFontVariationSettings(str);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Api28Impl {
        public static Typeface create(Typeface typeface, int i, boolean z) {
            return Typeface.create(typeface, i, z);
        }
    }

    public AppCompatTextHelper(TextView textView) {
        this.mView = textView;
        this.mAutoSizeTextHelper = new AppCompatTextViewAutoSizeHelper(textView);
    }

    public static ConnectionSpec.Builder createTintInfo(Context context, AppCompatDrawableManager appCompatDrawableManager, int i) {
        ColorStateList tintList;
        synchronized (appCompatDrawableManager) {
            tintList = appCompatDrawableManager.mResourceManager.getTintList(context, i);
        }
        if (tintList == null) {
            return null;
        }
        ConnectionSpec.Builder builder = new ConnectionSpec.Builder();
        builder.supportsTlsExtensions = true;
        builder.cipherSuites = tintList;
        return builder;
    }

    public final void applyCompoundDrawableTint(Drawable drawable, ConnectionSpec.Builder builder) {
        if (drawable == null || builder == null) {
            return;
        }
        AppCompatDrawableManager.tintDrawable(drawable, builder, this.mView.getDrawableState());
    }

    public final void applyCompoundDrawablesTints() {
        ConnectionSpec.Builder builder = this.mDrawableLeftTint;
        TextView textView = this.mView;
        if (builder != null || this.mDrawableTopTint != null || this.mDrawableRightTint != null || this.mDrawableBottomTint != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            applyCompoundDrawableTint(compoundDrawables[0], this.mDrawableLeftTint);
            applyCompoundDrawableTint(compoundDrawables[1], this.mDrawableTopTint);
            applyCompoundDrawableTint(compoundDrawables[2], this.mDrawableRightTint);
            applyCompoundDrawableTint(compoundDrawables[3], this.mDrawableBottomTint);
        }
        if (this.mDrawableStartTint == null && this.mDrawableEndTint == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        applyCompoundDrawableTint(compoundDrawablesRelative[0], this.mDrawableStartTint);
        applyCompoundDrawableTint(compoundDrawablesRelative[2], this.mDrawableEndTint);
    }

    public final ColorStateList getCompoundDrawableTintList() {
        ConnectionSpec.Builder builder = this.mDrawableTint;
        if (builder != null) {
            return (ColorStateList) builder.cipherSuites;
        }
        return null;
    }

    public final PorterDuff.Mode getCompoundDrawableTintMode() {
        ConnectionSpec.Builder builder = this.mDrawableTint;
        if (builder != null) {
            return (PorterDuff.Mode) builder.tlsVersions;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:183:0x03d8  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x03e4  */
    /* JADX WARN: Removed duplicated region for block: B:198:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void loadFromAttributes(android.util.AttributeSet r26, int r27) {
        /*
            Method dump skipped, instructions count: 1033
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatTextHelper.loadFromAttributes(android.util.AttributeSet, int):void");
    }

    public final void onSetTextAppearance(Context context, int i) {
        String string;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, R$styleable.TextAppearance);
        MenuHostHelper menuHostHelper = new MenuHostHelper(context, obtainStyledAttributes);
        boolean hasValue = obtainStyledAttributes.hasValue(14);
        TextView textView = this.mView;
        if (hasValue) {
            textView.setAllCaps(obtainStyledAttributes.getBoolean(14, false));
        }
        if (obtainStyledAttributes.hasValue(0) && obtainStyledAttributes.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        updateTypefaceAndStyle(context, menuHostHelper);
        if (Build.VERSION.SDK_INT >= 26 && obtainStyledAttributes.hasValue(13) && (string = obtainStyledAttributes.getString(13)) != null) {
            Api26Impl.setFontVariationSettings(textView, string);
        }
        menuHostHelper.recycle();
        Typeface typeface = this.mFontTypeface;
        if (typeface != null) {
            textView.setTypeface(typeface, this.mStyle);
        }
    }

    public final void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        AppCompatTextViewAutoSizeHelper appCompatTextViewAutoSizeHelper = this.mAutoSizeTextHelper;
        if (appCompatTextViewAutoSizeHelper.supportsAutoSizeText()) {
            DisplayMetrics displayMetrics = appCompatTextViewAutoSizeHelper.mContext.getResources().getDisplayMetrics();
            appCompatTextViewAutoSizeHelper.validateAndSetAutoSizeTextTypeUniformConfiguration(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (appCompatTextViewAutoSizeHelper.setupAutoSizeText()) {
                appCompatTextViewAutoSizeHelper.autoSizeText();
            }
        }
    }

    public final void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        AppCompatTextViewAutoSizeHelper appCompatTextViewAutoSizeHelper = this.mAutoSizeTextHelper;
        if (appCompatTextViewAutoSizeHelper.supportsAutoSizeText()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = appCompatTextViewAutoSizeHelper.mContext.getResources().getDisplayMetrics();
                    for (int i2 = 0; i2 < length; i2++) {
                        iArr2[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                    }
                }
                appCompatTextViewAutoSizeHelper.mAutoSizeTextSizesInPx = AppCompatTextViewAutoSizeHelper.cleanupAutoSizePresetSizes(iArr2);
                if (!appCompatTextViewAutoSizeHelper.setupAutoSizeUniformPresetSizesConfiguration()) {
                    DBUtil$$ExternalSyntheticBUOutline0.m$1(Arrays.toString(iArr), "None of the preset sizes is valid: ");
                    return;
                }
            } else {
                appCompatTextViewAutoSizeHelper.mHasPresetAutoSizeValues = false;
            }
            if (appCompatTextViewAutoSizeHelper.setupAutoSizeText()) {
                appCompatTextViewAutoSizeHelper.autoSizeText();
            }
        }
    }

    public final void setAutoSizeTextTypeWithDefaults(int i) {
        AppCompatTextViewAutoSizeHelper appCompatTextViewAutoSizeHelper = this.mAutoSizeTextHelper;
        if (appCompatTextViewAutoSizeHelper.supportsAutoSizeText()) {
            if (i == 0) {
                appCompatTextViewAutoSizeHelper.mAutoSizeTextType = 0;
                appCompatTextViewAutoSizeHelper.mAutoSizeMinTextSizeInPx = -1.0f;
                appCompatTextViewAutoSizeHelper.mAutoSizeMaxTextSizeInPx = -1.0f;
                appCompatTextViewAutoSizeHelper.mAutoSizeStepGranularityInPx = -1.0f;
                appCompatTextViewAutoSizeHelper.mAutoSizeTextSizesInPx = new int[0];
                appCompatTextViewAutoSizeHelper.mNeedsAutoSizeText = false;
                return;
            }
            if (i != 1) {
                UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Unknown auto-size text type: ", i));
                return;
            }
            DisplayMetrics displayMetrics = appCompatTextViewAutoSizeHelper.mContext.getResources().getDisplayMetrics();
            appCompatTextViewAutoSizeHelper.validateAndSetAutoSizeTextTypeUniformConfiguration(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (appCompatTextViewAutoSizeHelper.setupAutoSizeText()) {
                appCompatTextViewAutoSizeHelper.autoSizeText();
            }
        }
    }

    public final void setCompoundDrawableTintList(ColorStateList colorStateList) {
        if (this.mDrawableTint == null) {
            this.mDrawableTint = new ConnectionSpec.Builder();
        }
        ConnectionSpec.Builder builder = this.mDrawableTint;
        builder.cipherSuites = colorStateList;
        builder.supportsTlsExtensions = colorStateList != null;
        this.mDrawableLeftTint = builder;
        this.mDrawableTopTint = builder;
        this.mDrawableRightTint = builder;
        this.mDrawableBottomTint = builder;
        this.mDrawableStartTint = builder;
        this.mDrawableEndTint = builder;
    }

    public final void setCompoundDrawableTintMode(PorterDuff.Mode mode) {
        if (this.mDrawableTint == null) {
            this.mDrawableTint = new ConnectionSpec.Builder();
        }
        ConnectionSpec.Builder builder = this.mDrawableTint;
        builder.tlsVersions = mode;
        builder.tls = mode != null;
        this.mDrawableLeftTint = builder;
        this.mDrawableTopTint = builder;
        this.mDrawableRightTint = builder;
        this.mDrawableBottomTint = builder;
        this.mDrawableStartTint = builder;
        this.mDrawableEndTint = builder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [androidx.appcompat.widget.AppCompatTextHelper$1] */
    public final void updateTypefaceAndStyle(Context context, MenuHostHelper menuHostHelper) {
        String string;
        int i = this.mStyle;
        TypedArray typedArray = (TypedArray) menuHostHelper.mMenuProviders;
        this.mStyle = typedArray.getInt(2, i);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            int i3 = typedArray.getInt(11, -1);
            this.mFontWeight = i3;
            if (i3 != -1) {
                this.mStyle &= 2;
            }
        }
        if (!typedArray.hasValue(10) && !typedArray.hasValue(12)) {
            if (typedArray.hasValue(1)) {
                this.mAsyncFontPending = false;
                int i4 = typedArray.getInt(1, 1);
                if (i4 == 1) {
                    this.mFontTypeface = Typeface.SANS_SERIF;
                    return;
                } else if (i4 == 2) {
                    this.mFontTypeface = Typeface.SERIF;
                    return;
                } else {
                    if (i4 != 3) {
                        return;
                    }
                    this.mFontTypeface = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.mFontTypeface = null;
        int i5 = typedArray.hasValue(12) ? 12 : 10;
        final int i6 = this.mFontWeight;
        final int i7 = this.mStyle;
        if (!context.isRestricted()) {
            final WeakReference weakReference = new WeakReference(this.mView);
            try {
                Typeface font = menuHostHelper.getFont(i5, this.mStyle, new CamUtils() { // from class: androidx.appcompat.widget.AppCompatTextHelper.1
                    @Override // androidx.core.content.res.CamUtils
                    public final void onFontRetrieved(Typeface typeface) {
                        int i8;
                        if (Build.VERSION.SDK_INT >= 28 && (i8 = i6) != -1) {
                            typeface = Api28Impl.create(typeface, i8, (i7 & 2) != 0);
                        }
                        AppCompatTextHelper appCompatTextHelper = AppCompatTextHelper.this;
                        if (appCompatTextHelper.mAsyncFontPending) {
                            appCompatTextHelper.mFontTypeface = typeface;
                            TextView textView = (TextView) weakReference.get();
                            if (textView != null) {
                                boolean isAttachedToWindow = textView.isAttachedToWindow();
                                int i9 = appCompatTextHelper.mStyle;
                                if (isAttachedToWindow) {
                                    textView.post(new ItemTouchHelper.AnonymousClass4(textView, typeface, i9));
                                } else {
                                    textView.setTypeface(typeface, i9);
                                }
                            }
                        }
                    }

                    @Override // androidx.core.content.res.CamUtils
                    public final void onFontRetrievalFailed(int i8) {
                    }
                });
                if (font != null) {
                    if (i2 < 28 || this.mFontWeight == -1) {
                        this.mFontTypeface = font;
                    } else {
                        this.mFontTypeface = Api28Impl.create(Typeface.create(font, 0), this.mFontWeight, (this.mStyle & 2) != 0);
                    }
                }
                this.mAsyncFontPending = this.mFontTypeface == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.mFontTypeface != null || (string = typedArray.getString(i5)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.mFontWeight == -1) {
            this.mFontTypeface = Typeface.create(string, this.mStyle);
        } else {
            this.mFontTypeface = Api28Impl.create(Typeface.create(string, 0), this.mFontWeight, (this.mStyle & 2) != 0);
        }
    }
}
