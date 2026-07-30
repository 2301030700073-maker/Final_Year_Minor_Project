package com.android.launcher3.graphics;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.View;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.Launcher;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.nio.ByteBuffer;
import java.util.Objects;

/* loaded from: classes.dex */
public class DragPreviewProvider {
    public final int blurSizeOutline;
    public Bitmap generatedDragOutline;
    public OutlineGeneratorCallback mOutlineGeneratorCallback;
    public final Rect mTempRect;
    public final View mView;
    public final int previewPadding;

    public class OutlineGeneratorCallback implements Runnable {
        public final Context mContext;
        public final boolean mIsIcon;
        public final Bitmap mPreviewSnapshot;

        public OutlineGeneratorCallback(Bitmap bitmap) {
            this.mPreviewSnapshot = bitmap;
            this.mContext = DragPreviewProvider.this.mView.getContext();
            this.mIsIcon = DragPreviewProvider.this.mView instanceof BubbleTextView;
        }

        @Override // java.lang.Runnable
        public void run() {
            Bitmap convertPreviewToAlphaBitmap = DragPreviewProvider.this.convertPreviewToAlphaBitmap(this.mPreviewSnapshot);
            if (this.mIsIcon) {
                int i = Launcher.getLauncher(this.mContext).getDeviceProfile().iconSizePx;
                convertPreviewToAlphaBitmap = Bitmap.createScaledBitmap(convertPreviewToAlphaBitmap, i, i, false);
            }
            int height = convertPreviewToAlphaBitmap.getHeight() * convertPreviewToAlphaBitmap.getWidth();
            byte[] bArr = new byte[height];
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            wrap.rewind();
            convertPreviewToAlphaBitmap.copyPixelsToBuffer(wrap);
            for (int i2 = 0; i2 < height; i2++) {
                if ((bArr[i2] & 255) < 188) {
                    bArr[i2] = 0;
                }
            }
            wrap.rewind();
            convertPreviewToAlphaBitmap.copyPixelsFromBuffer(wrap);
            Paint paint = new Paint(3);
            Canvas canvas = new Canvas();
            paint.setMaskFilter(new BlurMaskFilter(DragPreviewProvider.this.blurSizeOutline, BlurMaskFilter.Blur.OUTER));
            Bitmap extractAlpha = convertPreviewToAlphaBitmap.extractAlpha(paint, new int[2]);
            paint.setMaskFilter(new BlurMaskFilter(this.mContext.getResources().getDimension(R.dimen.blur_size_thin_outline), BlurMaskFilter.Blur.OUTER));
            Bitmap extractAlpha2 = convertPreviewToAlphaBitmap.extractAlpha(paint, new int[2]);
            canvas.setBitmap(convertPreviewToAlphaBitmap);
            canvas.drawColor(-16777216, PorterDuff.Mode.SRC_OUT);
            paint.setMaskFilter(new BlurMaskFilter(DragPreviewProvider.this.blurSizeOutline, BlurMaskFilter.Blur.NORMAL));
            Bitmap extractAlpha3 = convertPreviewToAlphaBitmap.extractAlpha(paint, new int[2]);
            paint.setMaskFilter(null);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            canvas.setBitmap(extractAlpha3);
            canvas.drawBitmap(convertPreviewToAlphaBitmap, -r5[0], -r5[1], paint);
            canvas.drawRect(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, -r5[0], extractAlpha3.getHeight(), paint);
            canvas.drawRect(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, extractAlpha3.getWidth(), -r5[1], paint);
            paint.setXfermode(null);
            canvas.setBitmap(convertPreviewToAlphaBitmap);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            canvas.drawBitmap(extractAlpha3, r5[0], r5[1], paint);
            canvas.drawBitmap(extractAlpha, r6[0], r6[1], paint);
            canvas.drawBitmap(extractAlpha2, r14[0], r14[1], paint);
            canvas.setBitmap(null);
            extractAlpha2.recycle();
            extractAlpha.recycle();
            extractAlpha3.recycle();
            DragPreviewProvider.this.generatedDragOutline = convertPreviewToAlphaBitmap;
        }
    }

    public DragPreviewProvider(View view) {
        Context context = view.getContext();
        this.mTempRect = new Rect();
        this.mView = view;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.blur_size_medium_outline);
        this.blurSizeOutline = dimensionPixelSize;
        this.previewPadding = dimensionPixelSize;
    }

    public static Rect getDrawableBounds(Drawable drawable) {
        Rect rect = new Rect();
        drawable.copyBounds(rect);
        if (rect.width() == 0 || rect.height() == 0) {
            rect.set(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        } else {
            rect.offsetTo(0, 0);
        }
        return rect;
    }

    public Bitmap convertPreviewToAlphaBitmap(Bitmap bitmap) {
        return bitmap.copy(Bitmap.Config.ALPHA_8, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Bitmap createDragBitmap() {
        int width;
        int height;
        float scaleX = this.mView.getScaleX();
        View view = this.mView;
        if (view instanceof DraggableView) {
            ((DraggableView) view).getSourceVisualDragBounds(this.mTempRect);
            width = this.mTempRect.width();
            height = this.mTempRect.height();
        } else {
            width = view.getWidth();
            height = this.mView.getHeight();
        }
        int i = this.blurSizeOutline;
        int i2 = width + i;
        int i3 = height + i;
        GraphicsUtils.noteNewBitmapCreated();
        Picture picture = new Picture();
        Canvas beginRecording = picture.beginRecording(i2, i3);
        Objects.requireNonNull(this);
        int save = beginRecording.save();
        beginRecording.scale(scaleX, scaleX);
        KeyEvent.Callback callback = this.mView;
        if (callback instanceof DraggableView) {
            DraggableView draggableView = (DraggableView) callback;
            SafeCloseable prepareDrawDragView = draggableView.prepareDrawDragView();
            try {
                draggableView.getSourceVisualDragBounds(this.mTempRect);
                beginRecording.translate((this.blurSizeOutline / 2) - this.mTempRect.left, (this.blurSizeOutline / 2) - this.mTempRect.top);
                this.mView.draw(beginRecording);
                if (prepareDrawDragView != null) {
                    prepareDrawDragView.close();
                }
            } catch (Throwable th) {
                if (prepareDrawDragView != null) {
                    try {
                        prepareDrawDragView.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        beginRecording.restoreToCount(save);
        picture.endRecording();
        return Bitmap.createBitmap(picture);
    }

    public float getScaleAndPosition(Bitmap bitmap, int[] iArr) {
        float locationInDragLayer = Launcher.getLauncher(this.mView.getContext()).mDragLayer.getLocationInDragLayer(this.mView, iArr);
        View view = this.mView;
        if (view instanceof LauncherAppWidgetHostView) {
            locationInDragLayer /= ((LauncherAppWidgetHostView) view).mScaleToFit;
        }
        iArr[0] = Math.round(iArr[0] - ((bitmap.getWidth() - (this.mView.getScaleX() * (this.mView.getWidth() * locationInDragLayer))) / 2.0f));
        iArr[1] = Math.round((iArr[1] - (((1.0f - locationInDragLayer) * bitmap.getHeight()) / 2.0f)) - (this.previewPadding / 2));
        return locationInDragLayer;
    }
}
