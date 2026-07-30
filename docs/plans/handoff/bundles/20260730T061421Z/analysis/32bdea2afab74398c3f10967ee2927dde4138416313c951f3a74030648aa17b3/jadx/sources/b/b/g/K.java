package b.b.g;

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
import android.util.AttributeSet;
import android.widget.ProgressBar;

/* loaded from: classes.dex */
public class K {

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f459c = {R.attr.indeterminateDrawable, R.attr.progressDrawable};

    /* renamed from: a, reason: collision with root package name */
    public final ProgressBar f460a;

    /* renamed from: b, reason: collision with root package name */
    public Bitmap f461b;

    public K(ProgressBar progressBar) {
        this.f460a = progressBar;
    }

    public void a(AttributeSet attributeSet, int i) {
        a1 o = a1.o(this.f460a.getContext(), attributeSet, f459c, i, 0);
        Drawable f = o.f(0);
        if (f != null) {
            ProgressBar progressBar = this.f460a;
            if (f instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable = (AnimationDrawable) f;
                int numberOfFrames = animationDrawable.getNumberOfFrames();
                AnimationDrawable animationDrawable2 = new AnimationDrawable();
                animationDrawable2.setOneShot(animationDrawable.isOneShot());
                for (int i2 = 0; i2 < numberOfFrames; i2++) {
                    Drawable b2 = b(animationDrawable.getFrame(i2), true);
                    b2.setLevel(10000);
                    animationDrawable2.addFrame(b2, animationDrawable.getDuration(i2));
                }
                animationDrawable2.setLevel(10000);
                f = animationDrawable2;
            }
            progressBar.setIndeterminateDrawable(f);
        }
        Drawable f2 = o.f(1);
        if (f2 != null) {
            this.f460a.setProgressDrawable(b(f2, false));
        }
        o.f513b.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Drawable b(Drawable drawable, boolean z) {
        if (drawable instanceof b.e.d.f.a) {
            b.e.d.f.a aVar = (b.e.d.f.a) drawable;
            Drawable a2 = aVar.a();
            if (a2 != null) {
                aVar.b(b(a2, z));
            }
        } else {
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int i = 0; i < numberOfLayers; i++) {
                    int id = layerDrawable.getId(i);
                    drawableArr[i] = b(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
                }
                LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
                for (int i2 = 0; i2 < numberOfLayers; i2++) {
                    layerDrawable2.setId(i2, layerDrawable.getId(i2));
                }
                return layerDrawable2;
            }
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                Bitmap bitmap = bitmapDrawable.getBitmap();
                if (this.f461b == null) {
                    this.f461b = bitmap;
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
