package com.android.launcher3.icons;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Picture;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.os.UserHandle;
import android.util.SparseArray;
import com.android.launcher3.icons.BitmapInfo;
import com.android.quickstep.fallback.RecentsState;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public class BaseIconFactory implements AutoCloseable {
    public final Canvas mCanvas;
    public final ColorExtractor mColorExtractor;
    public final Context mContext;
    public boolean mDisableColorExtractor;
    public final int mFillResIconDpi;
    public final int mIconBitmapSize;
    public IconNormalizer mNormalizer;
    public final PackageManager mPm;
    public ShadowGenerator mShadowGenerator;
    public final boolean mShapeDetection;
    public Drawable mWrapperIcon;
    public final Rect mOldBounds = new Rect();
    public boolean mBadgeOnLeft = false;
    public int mWrapperBackgroundColor = -1;

    public class FixedSizeBitmapDrawable extends BitmapDrawable {
        public FixedSizeBitmapDrawable(Bitmap bitmap) {
            super((Resources) null, bitmap);
        }

        @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return getBitmap().getWidth();
        }

        @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return getBitmap().getWidth();
        }
    }

    public BaseIconFactory(Context context, int i, int i2, boolean z) {
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext;
        this.mShapeDetection = z;
        this.mFillResIconDpi = i;
        this.mIconBitmapSize = i2;
        this.mPm = applicationContext.getPackageManager();
        this.mColorExtractor = new ColorExtractor();
        Canvas canvas = new Canvas();
        this.mCanvas = canvas;
        canvas.setDrawFilter(new PaintFlagsDrawFilter(4, 2));
        clear();
    }

    public static int getBadgeSizeForIconSize(int i) {
        return (int) (i * 0.444f);
    }

    public static Drawable getFullResDefaultActivityIcon(int i) {
        return Resources.getSystem().getDrawableForDensity(R.drawable.sym_def_app_icon, i);
    }

    public BitmapInfo badgeBitmap(Bitmap bitmap, BitmapInfo bitmapInfo) {
        int i = this.mIconBitmapSize;
        GraphicsUtils.noteNewBitmapCreated();
        Picture picture = new Picture();
        Canvas beginRecording = picture.beginRecording(i, i);
        getShadowGenerator().recreateIcon(bitmap, beginRecording);
        FixedSizeBitmapDrawable fixedSizeBitmapDrawable = new FixedSizeBitmapDrawable(bitmapInfo.icon);
        int badgeSizeForIconSize = getBadgeSizeForIconSize(this.mIconBitmapSize);
        int i2 = this.mIconBitmapSize;
        int i3 = i2 - badgeSizeForIconSize;
        fixedSizeBitmapDrawable.setBounds(i3, i3, i2, i2);
        fixedSizeBitmapDrawable.draw(beginRecording);
        picture.endRecording();
        return new BitmapInfo(Bitmap.createBitmap(picture), bitmapInfo.color);
    }

    public void clear() {
        this.mWrapperBackgroundColor = -1;
        this.mDisableColorExtractor = false;
        this.mBadgeOnLeft = false;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        clear();
    }

    public BitmapInfo createBadgedIconBitmap(Drawable drawable, UserHandle userHandle, int i) {
        return createBadgedIconBitmap(drawable, userHandle, i, false);
    }

    public BitmapInfo createIconBitmap(Intent.ShortcutIconResource shortcutIconResource) {
        try {
            Resources resourcesForApplication = this.mPm.getResourcesForApplication(shortcutIconResource.packageName);
            if (resourcesForApplication != null) {
                return createBadgedIconBitmap(resourcesForApplication.getDrawableForDensity(resourcesForApplication.getIdentifier(shortcutIconResource.resourceName, null, null), this.mFillResIconDpi), Process.myUserHandle(), false, false, (float[]) null);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public Bitmap createScaledBitmapWithoutShadow(Drawable drawable, int i) {
        RectF rectF = new RectF();
        float[] fArr = new float[1];
        Drawable normalizeAndWrapToAdaptiveIcon = normalizeAndWrapToAdaptiveIcon(drawable, true, rectF, fArr);
        float f = fArr[0];
        float min = Math.min(Math.min(rectF.left, rectF.right), rectF.top);
        float f2 = min < 0.010416667f ? 0.48958334f / (0.5f - min) : 1.0f;
        float f3 = rectF.bottom;
        if (f3 < 0.03125f) {
            f2 = Math.min(f2, 0.46875f / (0.5f - f3));
        }
        return createIconBitmap(normalizeAndWrapToAdaptiveIcon, Math.min(f, f2));
    }

    public final int extractColor(Bitmap bitmap) {
        int i;
        char c2;
        int i2 = 0;
        if (this.mDisableColorExtractor) {
            return 0;
        }
        ColorExtractor colorExtractor = this.mColorExtractor;
        Objects.requireNonNull(colorExtractor);
        int height = bitmap.getHeight();
        int width = bitmap.getWidth();
        char c3 = 20;
        int sqrt = (int) Math.sqrt((height * width) / 20);
        if (sqrt < 1) {
            sqrt = 1;
        }
        float[] fArr = colorExtractor.mTmpHsv;
        Arrays.fill(fArr, RecentsState.NO_OFFSET);
        float[] fArr2 = colorExtractor.mTmpHueScoreHistogram;
        Arrays.fill(fArr2, RecentsState.NO_OFFSET);
        int i3 = -1;
        int[] iArr = colorExtractor.mTmpPixels;
        Arrays.fill(iArr, 0);
        int i4 = 0;
        int i5 = 0;
        float f = -1.0f;
        while (true) {
            i = -16777216;
            if (i4 >= height) {
                break;
            }
            int i6 = i2;
            while (i6 < width) {
                int pixel = bitmap.getPixel(i6, i4);
                if (((pixel >> 24) & 255) >= 128) {
                    int i7 = pixel | (-16777216);
                    Color.colorToHSV(i7, fArr);
                    int i8 = (int) fArr[i2];
                    if (i8 >= 0 && i8 < fArr2.length) {
                        c2 = 20;
                        if (i5 < 20) {
                            iArr[i5] = i7;
                            i5++;
                        }
                        fArr2[i8] = fArr2[i8] + (fArr[1] * fArr[2]);
                        if (fArr2[i8] > f) {
                            f = fArr2[i8];
                            i3 = i8;
                        }
                        i6 += sqrt;
                        c3 = c2;
                        i2 = 0;
                    }
                }
                c2 = 20;
                i6 += sqrt;
                c3 = c2;
                i2 = 0;
            }
            i4 += sqrt;
            i2 = 0;
        }
        SparseArray sparseArray = colorExtractor.mTmpRgbScores;
        sparseArray.clear();
        float f2 = -1.0f;
        for (int i9 = 0; i9 < i5; i9++) {
            int i10 = iArr[i9];
            Color.colorToHSV(i10, fArr);
            if (((int) fArr[0]) == i3) {
                float f3 = fArr[1];
                float f4 = fArr[2];
                int i11 = ((int) (100.0f * f3)) + ((int) (10000.0f * f4));
                float f5 = f3 * f4;
                Float f6 = (Float) sparseArray.get(i11);
                if (f6 != null) {
                    f5 += f6.floatValue();
                }
                sparseArray.put(i11, Float.valueOf(f5));
                if (f5 > f2) {
                    i = i10;
                    f2 = f5;
                }
            }
        }
        return i;
    }

    public IconNormalizer getNormalizer() {
        if (this.mNormalizer == null) {
            this.mNormalizer = new IconNormalizer(this.mContext, this.mIconBitmapSize, this.mShapeDetection);
        }
        return this.mNormalizer;
    }

    public ShadowGenerator getShadowGenerator() {
        if (this.mShadowGenerator == null) {
            this.mShadowGenerator = new ShadowGenerator(this.mIconBitmapSize);
        }
        return this.mShadowGenerator;
    }

    public final Drawable normalizeAndWrapToAdaptiveIcon(Drawable drawable, boolean z, RectF rectF, float[] fArr) {
        float scale;
        if (drawable == null) {
            return null;
        }
        if (z) {
            if (this.mWrapperIcon == null) {
                this.mWrapperIcon = this.mContext.getDrawable(com.android.systemui.shared.R.drawable.adaptive_icon_drawable_wrapper).mutate();
            }
            AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable) this.mWrapperIcon;
            adaptiveIconDrawable.setBounds(0, 0, 1, 1);
            boolean[] zArr = new boolean[1];
            scale = getNormalizer().getScale(drawable, rectF, adaptiveIconDrawable.getIconMask(), zArr);
            if (!(drawable instanceof AdaptiveIconDrawable) && !zArr[0]) {
                FixedScaleDrawable fixedScaleDrawable = (FixedScaleDrawable) adaptiveIconDrawable.getForeground();
                fixedScaleDrawable.setDrawable(drawable);
                float intrinsicHeight = fixedScaleDrawable.getIntrinsicHeight();
                float intrinsicWidth = fixedScaleDrawable.getIntrinsicWidth();
                float f = scale * 0.46669f;
                fixedScaleDrawable.mScaleX = f;
                fixedScaleDrawable.mScaleY = f;
                if (intrinsicHeight > intrinsicWidth && intrinsicWidth > RecentsState.NO_OFFSET) {
                    fixedScaleDrawable.mScaleX = (intrinsicWidth / intrinsicHeight) * f;
                } else if (intrinsicWidth > intrinsicHeight && intrinsicHeight > RecentsState.NO_OFFSET) {
                    fixedScaleDrawable.mScaleY = (intrinsicHeight / intrinsicWidth) * fixedScaleDrawable.mScaleY;
                }
                scale = getNormalizer().getScale(adaptiveIconDrawable, rectF, null, null);
                ((ColorDrawable) adaptiveIconDrawable.getBackground()).setColor(this.mWrapperBackgroundColor);
                drawable = adaptiveIconDrawable;
            }
        } else {
            scale = getNormalizer().getScale(drawable, rectF, null, null);
        }
        fArr[0] = scale;
        return drawable;
    }

    public BitmapInfo createBadgedIconBitmap(Drawable drawable, UserHandle userHandle, int i, boolean z) {
        return createBadgedIconBitmap(drawable, userHandle, true, z, (float[]) null);
    }

    public BitmapInfo createBadgedIconBitmap(Drawable drawable, UserHandle userHandle, int i, boolean z, float[] fArr) {
        return createBadgedIconBitmap(drawable, userHandle, true, z, fArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BitmapInfo createBadgedIconBitmap(Drawable drawable, UserHandle userHandle, boolean z, boolean z2, float[] fArr) {
        if (fArr == null) {
            fArr = new float[1];
        }
        Drawable normalizeAndWrapToAdaptiveIcon = normalizeAndWrapToAdaptiveIcon(drawable, z, null, fArr);
        Bitmap createIconBitmap = createIconBitmap(normalizeAndWrapToAdaptiveIcon, fArr[0]);
        if (normalizeAndWrapToAdaptiveIcon instanceof AdaptiveIconDrawable) {
            this.mCanvas.setBitmap(createIconBitmap);
            getShadowGenerator().recreateIcon(Bitmap.createBitmap(createIconBitmap), this.mCanvas);
            this.mCanvas.setBitmap(null);
        }
        if (z2) {
            Drawable drawable2 = this.mContext.getDrawable(com.android.systemui.shared.R.drawable.ic_instant_app_badge);
            this.mCanvas.setBitmap(createIconBitmap);
            Canvas canvas = this.mCanvas;
            int badgeSizeForIconSize = getBadgeSizeForIconSize(this.mIconBitmapSize);
            int i = this.mIconBitmapSize;
            int i2 = i - badgeSizeForIconSize;
            drawable2.setBounds(i2, i2, i, i);
            drawable2.draw(canvas);
            this.mCanvas.setBitmap(null);
        }
        if (userHandle != null) {
            Drawable userBadgedIcon = this.mPm.getUserBadgedIcon(new FixedSizeBitmapDrawable(createIconBitmap), userHandle);
            if (userBadgedIcon instanceof BitmapDrawable) {
                createIconBitmap = ((BitmapDrawable) userBadgedIcon).getBitmap();
            } else {
                createIconBitmap = createIconBitmap(userBadgedIcon, 1.0f);
            }
        }
        int extractColor = extractColor(createIconBitmap);
        if (normalizeAndWrapToAdaptiveIcon instanceof BitmapInfo.Extender) {
            return ((BitmapInfo.Extender) normalizeAndWrapToAdaptiveIcon).getExtendedInfo(createIconBitmap, extractColor, this);
        }
        return new BitmapInfo(createIconBitmap, extractColor);
    }

    public BitmapInfo createIconBitmap(Bitmap bitmap) {
        if (this.mIconBitmapSize != bitmap.getWidth() || this.mIconBitmapSize != bitmap.getHeight()) {
            bitmap = createIconBitmap(new BitmapDrawable(this.mContext.getResources(), bitmap), 1.0f);
        }
        return new BitmapInfo(bitmap, extractColor(bitmap));
    }

    public final Bitmap createIconBitmap(Drawable drawable, float f) {
        int i;
        int i2;
        int i3 = this.mIconBitmapSize;
        Bitmap createBitmap = Bitmap.createBitmap(i3, i3, Bitmap.Config.ARGB_8888);
        if (drawable != null) {
            this.mCanvas.setBitmap(createBitmap);
            this.mOldBounds.set(drawable.getBounds());
            if (drawable instanceof AdaptiveIconDrawable) {
                int max = Math.max((int) Math.ceil(0.010416667f * r3), Math.round(((1.0f - f) * i3) / 2.0f));
                int i4 = i3 - max;
                drawable.setBounds(max, max, i4, i4);
                drawable.draw(this.mCanvas);
            } else {
                if (drawable instanceof BitmapDrawable) {
                    BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                    Bitmap bitmap = bitmapDrawable.getBitmap();
                    if (createBitmap != null && bitmap.getDensity() == 0) {
                        bitmapDrawable.setTargetDensity(this.mContext.getResources().getDisplayMetrics());
                    }
                }
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                    float f2 = intrinsicWidth / intrinsicHeight;
                    if (intrinsicWidth > intrinsicHeight) {
                        i2 = (int) (i3 / f2);
                        i = i3;
                    } else if (intrinsicHeight > intrinsicWidth) {
                        i = (int) (i3 * f2);
                        i2 = i3;
                    }
                    int i5 = (i3 - i) / 2;
                    int i6 = (i3 - i2) / 2;
                    drawable.setBounds(i5, i6, i + i5, i2 + i6);
                    this.mCanvas.save();
                    float f3 = i3 / 2;
                    this.mCanvas.scale(f, f, f3, f3);
                    drawable.draw(this.mCanvas);
                    this.mCanvas.restore();
                }
                i = i3;
                i2 = i;
                int i52 = (i3 - i) / 2;
                int i62 = (i3 - i2) / 2;
                drawable.setBounds(i52, i62, i + i52, i2 + i62);
                this.mCanvas.save();
                float f32 = i3 / 2;
                this.mCanvas.scale(f, f, f32, f32);
                drawable.draw(this.mCanvas);
                this.mCanvas.restore();
            }
            drawable.setBounds(this.mOldBounds);
            this.mCanvas.setBitmap(null);
        }
        return createBitmap;
    }
}
