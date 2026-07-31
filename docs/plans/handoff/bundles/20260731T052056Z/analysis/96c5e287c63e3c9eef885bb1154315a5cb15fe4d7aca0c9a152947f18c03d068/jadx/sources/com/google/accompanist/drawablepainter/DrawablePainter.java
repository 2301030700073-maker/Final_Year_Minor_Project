package com.google.accompanist.drawablepainter;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.Lazy;
import kotlin.SynchronizedLazyImpl;
import kotlin.UnsignedKt;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DrawablePainter extends Painter implements RememberObserver {
    public final SynchronizedLazyImpl callback$delegate;
    public final ParcelableSnapshotMutableState drawInvalidateTick$delegate;
    public final Drawable drawable;
    public final ParcelableSnapshotMutableState drawableIntrinsicSize$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public DrawablePainter(Drawable drawable) {
        long j;
        drawable.getClass();
        this.drawable = drawable;
        this.drawInvalidateTick$delegate = Updater.mutableStateOf$default(0);
        Lazy lazy = DrawablePainterKt.MAIN_HANDLER$delegate;
        if (drawable.getIntrinsicWidth() < 0 || drawable.getIntrinsicHeight() < 0) {
            j = 9205357640488583168L;
        } else {
            float intrinsicWidth = drawable.getIntrinsicWidth();
            float intrinsicHeight = drawable.getIntrinsicHeight();
            j = (Float.floatToRawIntBits(intrinsicHeight) & 4294967295L) | (Float.floatToRawIntBits(intrinsicWidth) << 32);
        }
        this.drawableIntrinsicSize$delegate = Updater.mutableStateOf$default(new Size(j));
        this.callback$delegate = new SynchronizedLazyImpl(new Worker$$ExternalSyntheticLambda0(18, this));
        if (drawable.getIntrinsicWidth() < 0 || drawable.getIntrinsicHeight() < 0) {
            return;
        }
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyAlpha(float f) {
        this.drawable.setAlpha(RegexKt.coerceIn(UnsignedKt.roundToInt(f * 255.0f), 0, 255));
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyColorFilter(BlendModeColorFilter blendModeColorFilter) {
        this.drawable.setColorFilter(blendModeColorFilter != null ? blendModeColorFilter.nativeColorFilter : null);
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void applyLayoutDirection(LayoutDirection layoutDirection) {
        layoutDirection.getClass();
        int i = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
        int i2 = 1;
        if (i == 1) {
            i2 = 0;
        } else if (i != 2) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return;
        }
        this.drawable.setLayoutDirection(i2);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public final long mo493getIntrinsicSizeNHjbRc() {
        return ((Size) this.drawableIntrinsicSize$delegate.getValue()).packedValue;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onAbandoned() {
        onForgotten();
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void onDraw(DrawScope drawScope) {
        Canvas canvas = drawScope.getDrawContext().getCanvas();
        ((Number) this.drawInvalidateTick$delegate.getValue()).intValue();
        try {
            canvas.save();
            int i = Build.VERSION.SDK_INT;
            Drawable drawable = this.drawable;
            if (i < 28 || i >= 31 || !(drawable instanceof AnimatedImageDrawable)) {
                drawable.setBounds(0, 0, UnsignedKt.roundToInt(Size.m397getWidthimpl(drawScope.mo476getSizeNHjbRc())), UnsignedKt.roundToInt(Size.m395getHeightimpl(drawScope.mo476getSizeNHjbRc())));
            } else {
                canvas.scale(Size.m397getWidthimpl(drawScope.mo476getSizeNHjbRc()) / Size.m397getWidthimpl(mo493getIntrinsicSizeNHjbRc()), Size.m395getHeightimpl(drawScope.mo476getSizeNHjbRc()) / Size.m395getHeightimpl(mo493getIntrinsicSizeNHjbRc()));
            }
            android.graphics.Canvas canvas2 = AndroidCanvas_androidKt.EmptyCanvas;
            drawable.draw(((AndroidCanvas) canvas).internalCanvas);
            canvas.restore();
        } catch (Throwable th) {
            canvas.restore();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.RememberObserver
    public final void onForgotten() {
        Drawable drawable = this.drawable;
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).stop();
        }
        drawable.setVisible(false, false);
        drawable.setCallback(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.RememberObserver
    public final void onRemembered() {
        Drawable.Callback callback = (Drawable.Callback) this.callback$delegate.getValue();
        Drawable drawable = this.drawable;
        drawable.setCallback(callback);
        drawable.setVisible(true, true);
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).start();
        }
    }
}
