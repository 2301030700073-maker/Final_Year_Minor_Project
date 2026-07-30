package defpackage;

import android.R;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ProgressBar;

/* loaded from: classes.dex */
public class O1 {

    /* renamed from: do, reason: not valid java name */
    public static final int[] f2468do = {R.attr.indeterminateDrawable, R.attr.progressDrawable};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Bitmap f2469do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ProgressBar f2470do;

    public O1(ProgressBar progressBar) {
        this.f2470do = progressBar;
    }

    /* renamed from: do, reason: not valid java name */
    public void mo1577do(AttributeSet attributeSet, int i) {
        ProgressBar progressBar = this.f2470do;
        C3970xH m8626const = C3970xH.m8626const(progressBar.getContext(), attributeSet, f2468do, i);
        Drawable m8628case = m8626const.m8628case(0);
        if (m8628case != null) {
            if (m8628case instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable = (AnimationDrawable) m8628case;
                int numberOfFrames = animationDrawable.getNumberOfFrames();
                AnimationDrawable animationDrawable2 = new AnimationDrawable();
                animationDrawable2.setOneShot(animationDrawable.isOneShot());
                for (int i2 = 0; i2 < numberOfFrames; i2++) {
                    Drawable m1578if = m1578if(animationDrawable.getFrame(i2), true);
                    m1578if.setLevel(10000);
                    animationDrawable2.addFrame(m1578if, animationDrawable.getDuration(i2));
                }
                animationDrawable2.setLevel(10000);
                m8628case = animationDrawable2;
            }
            progressBar.setIndeterminateDrawable(m8628case);
        }
        Drawable m8628case2 = m8626const.m8628case(1);
        if (m8628case2 != null) {
            progressBar.setProgressDrawable(m1578if(m8628case2, false));
        }
        m8626const.m8633final();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: if, reason: not valid java name */
    public final Drawable m1578if(Drawable drawable, boolean z) {
        int layerGravity;
        int layerWidth;
        int layerHeight;
        int layerInsetLeft;
        int layerInsetRight;
        int layerInsetTop;
        int layerInsetBottom;
        int layerInsetStart;
        int layerInsetEnd;
        if (drawable instanceof InterfaceC2807gN) {
            InterfaceC2807gN interfaceC2807gN = (InterfaceC2807gN) drawable;
            Drawable mo6730do = interfaceC2807gN.mo6730do();
            if (mo6730do != null) {
                interfaceC2807gN.mo6731if(m1578if(mo6730do, z));
            }
        } else {
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int i = 0; i < numberOfLayers; i++) {
                    int id = layerDrawable.getId(i);
                    drawableArr[i] = m1578if(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
                }
                LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
                for (int i2 = 0; i2 < numberOfLayers; i2++) {
                    layerDrawable2.setId(i2, layerDrawable.getId(i2));
                    if (Build.VERSION.SDK_INT >= 23) {
                        layerGravity = layerDrawable.getLayerGravity(i2);
                        layerDrawable2.setLayerGravity(i2, layerGravity);
                        layerWidth = layerDrawable.getLayerWidth(i2);
                        layerDrawable2.setLayerWidth(i2, layerWidth);
                        layerHeight = layerDrawable.getLayerHeight(i2);
                        layerDrawable2.setLayerHeight(i2, layerHeight);
                        layerInsetLeft = layerDrawable.getLayerInsetLeft(i2);
                        layerDrawable2.setLayerInsetLeft(i2, layerInsetLeft);
                        layerInsetRight = layerDrawable.getLayerInsetRight(i2);
                        layerDrawable2.setLayerInsetRight(i2, layerInsetRight);
                        layerInsetTop = layerDrawable.getLayerInsetTop(i2);
                        layerDrawable2.setLayerInsetTop(i2, layerInsetTop);
                        layerInsetBottom = layerDrawable.getLayerInsetBottom(i2);
                        layerDrawable2.setLayerInsetBottom(i2, layerInsetBottom);
                        layerInsetStart = layerDrawable.getLayerInsetStart(i2);
                        layerDrawable2.setLayerInsetStart(i2, layerInsetStart);
                        layerInsetEnd = layerDrawable.getLayerInsetEnd(i2);
                        layerDrawable2.setLayerInsetEnd(i2, layerInsetEnd);
                    }
                }
                return layerDrawable2;
            }
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                Bitmap bitmap = bitmapDrawable.getBitmap();
                if (this.f2469do == null) {
                    this.f2469do = bitmap;
                }
                ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
                shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                return z ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
            }
        }
        return drawable;
    }
}
