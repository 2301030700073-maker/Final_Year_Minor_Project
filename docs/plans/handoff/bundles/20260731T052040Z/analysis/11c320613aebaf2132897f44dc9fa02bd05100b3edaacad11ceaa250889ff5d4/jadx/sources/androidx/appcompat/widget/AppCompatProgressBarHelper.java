package androidx.appcompat.widget;

import android.R;
import android.content.res.TypedArray;
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
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AbsSeekBar;
import android.widget.EditText;
import androidx.appcompat.R$styleable;
import androidx.cardview.widget.CardView;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.viewsintegration.EmojiInputConnection;
import androidx.emoji2.viewsintegration.EmojiKeyListener;
import androidx.emoji2.viewsintegration.EmojiTextWatcher;
import coil3.memory.MemoryCacheService;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.ranges.RangesKt;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class AppCompatProgressBarHelper {
    public static final int[] TINT_ATTRS = {R.attr.indeterminateDrawable, R.attr.progressDrawable};
    public final /* synthetic */ int $r8$classId = 2;
    public Object mSampleTile;
    public View mView;

    public AppCompatProgressBarHelper(EditText editText) {
        this.mView = editText;
        MemoryCacheService memoryCacheService = new MemoryCacheService();
        memoryCacheService.imageLoader = new CardView.AnonymousClass1(editText);
        this.mSampleTile = memoryCacheService;
    }

    public KeyListener getKeyListener(KeyListener keyListener) {
        if (keyListener instanceof NumberKeyListener) {
            return keyListener;
        }
        ((CardView.AnonymousClass1) ((MemoryCacheService) this.mSampleTile).imageLoader).getClass();
        if (keyListener instanceof EmojiKeyListener) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        return keyListener instanceof NumberKeyListener ? keyListener : new EmojiKeyListener(keyListener);
    }

    public void loadFromAttributes(AttributeSet attributeSet, int i) {
        switch (this.$r8$classId) {
            case 0:
                AbsSeekBar absSeekBar = (AbsSeekBar) this.mView;
                ProcessFinisher obtainStyledAttributes = ProcessFinisher.obtainStyledAttributes(absSeekBar.getContext(), attributeSet, TINT_ATTRS, i);
                Drawable drawableIfKnown = obtainStyledAttributes.getDrawableIfKnown(0);
                if (drawableIfKnown != null) {
                    if (drawableIfKnown instanceof AnimationDrawable) {
                        AnimationDrawable animationDrawable = (AnimationDrawable) drawableIfKnown;
                        int numberOfFrames = animationDrawable.getNumberOfFrames();
                        AnimationDrawable animationDrawable2 = new AnimationDrawable();
                        animationDrawable2.setOneShot(animationDrawable.isOneShot());
                        for (int i2 = 0; i2 < numberOfFrames; i2++) {
                            Drawable tileify = tileify(animationDrawable.getFrame(i2), true);
                            tileify.setLevel(10000);
                            animationDrawable2.addFrame(tileify, animationDrawable.getDuration(i2));
                        }
                        animationDrawable2.setLevel(10000);
                        drawableIfKnown = animationDrawable2;
                    }
                    absSeekBar.setIndeterminateDrawable(drawableIfKnown);
                }
                Drawable drawableIfKnown2 = obtainStyledAttributes.getDrawableIfKnown(1);
                if (drawableIfKnown2 != null) {
                    absSeekBar.setProgressDrawable(tileify(drawableIfKnown2, false));
                }
                obtainStyledAttributes.recycle();
                return;
            default:
                TypedArray obtainStyledAttributes2 = ((EditText) this.mView).getContext().obtainStyledAttributes(attributeSet, R$styleable.AppCompatTextView, i, 0);
                try {
                    boolean z = obtainStyledAttributes2.hasValue(14) ? obtainStyledAttributes2.getBoolean(14, true) : true;
                    obtainStyledAttributes2.recycle();
                    setEnabled(z);
                    return;
                } catch (Throwable th) {
                    obtainStyledAttributes2.recycle();
                    throw th;
                }
        }
    }

    public EmojiInputConnection onCreateInputConnection(InputConnection inputConnection, EditorInfo editorInfo) {
        InputConnection inputConnection2;
        MemoryCacheService memoryCacheService = (MemoryCacheService) this.mSampleTile;
        if (inputConnection == null) {
            memoryCacheService.getClass();
            inputConnection2 = null;
        } else {
            CardView.AnonymousClass1 anonymousClass1 = (CardView.AnonymousClass1) memoryCacheService.imageLoader;
            anonymousClass1.getClass();
            if (!(inputConnection instanceof EmojiInputConnection)) {
                inputConnection = new EmojiInputConnection((EditText) anonymousClass1.mCardBackground, inputConnection, editorInfo);
            }
            inputConnection2 = inputConnection;
        }
        return (EmojiInputConnection) inputConnection2;
    }

    public void setEnabled(boolean z) {
        EmojiTextWatcher emojiTextWatcher = (EmojiTextWatcher) ((CardView.AnonymousClass1) ((MemoryCacheService) this.mSampleTile).imageLoader).this$0;
        if (emojiTextWatcher.mEnabled != z) {
            if (emojiTextWatcher.mInitCallback != null) {
                EmojiCompat emojiCompat = EmojiCompat.get();
                EmojiTextWatcher.InitCallbackImpl initCallbackImpl = emojiTextWatcher.mInitCallback;
                emojiCompat.getClass();
                RangesKt.checkNotNull(initCallbackImpl, "initCallback cannot be null");
                ReentrantReadWriteLock reentrantReadWriteLock = emojiCompat.mInitLock;
                reentrantReadWriteLock.writeLock().lock();
                try {
                    emojiCompat.mInitCallbacks.remove(initCallbackImpl);
                } finally {
                    reentrantReadWriteLock.writeLock().unlock();
                }
            }
            emojiTextWatcher.mEnabled = z;
            if (z) {
                EmojiTextWatcher.processTextOnEnablingEvent(emojiTextWatcher.mEditText, EmojiCompat.get().getLoadState());
            }
        }
    }

    public Drawable tileify(Drawable drawable, boolean z) {
        if (!(drawable instanceof LayerDrawable)) {
            if (!(drawable instanceof BitmapDrawable)) {
                return drawable;
            }
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (((Bitmap) this.mSampleTile) == null) {
                this.mSampleTile = bitmap;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
            shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
            shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
            return z ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
        }
        LayerDrawable layerDrawable = (LayerDrawable) drawable;
        int numberOfLayers = layerDrawable.getNumberOfLayers();
        Drawable[] drawableArr = new Drawable[numberOfLayers];
        for (int i = 0; i < numberOfLayers; i++) {
            int id = layerDrawable.getId(i);
            drawableArr[i] = tileify(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
        }
        LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
        for (int i2 = 0; i2 < numberOfLayers; i2++) {
            layerDrawable2.setId(i2, layerDrawable.getId(i2));
            layerDrawable2.setLayerGravity(i2, layerDrawable.getLayerGravity(i2));
            layerDrawable2.setLayerWidth(i2, layerDrawable.getLayerWidth(i2));
            layerDrawable2.setLayerHeight(i2, layerDrawable.getLayerHeight(i2));
            layerDrawable2.setLayerInsetLeft(i2, layerDrawable.getLayerInsetLeft(i2));
            layerDrawable2.setLayerInsetRight(i2, layerDrawable.getLayerInsetRight(i2));
            layerDrawable2.setLayerInsetTop(i2, layerDrawable.getLayerInsetTop(i2));
            layerDrawable2.setLayerInsetBottom(i2, layerDrawable.getLayerInsetBottom(i2));
            layerDrawable2.setLayerInsetStart(i2, layerDrawable.getLayerInsetStart(i2));
            layerDrawable2.setLayerInsetEnd(i2, layerDrawable.getLayerInsetEnd(i2));
        }
        return layerDrawable2;
    }

    public AppCompatProgressBarHelper(AbsSeekBar absSeekBar) {
        this.mView = absSeekBar;
    }

    public /* synthetic */ AppCompatProgressBarHelper() {
    }
}
