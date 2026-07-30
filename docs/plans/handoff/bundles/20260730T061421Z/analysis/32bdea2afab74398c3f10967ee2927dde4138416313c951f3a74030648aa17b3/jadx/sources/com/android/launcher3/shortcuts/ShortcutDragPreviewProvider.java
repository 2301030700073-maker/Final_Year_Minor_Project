package com.android.launcher3.shortcuts;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.graphics.DragPreviewProvider;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class ShortcutDragPreviewProvider extends DragPreviewProvider {
    public final Point mPositionShift;

    public ShortcutDragPreviewProvider(View view, Point point) {
        super(view);
        this.mPositionShift = point;
    }

    @Override // com.android.launcher3.graphics.DragPreviewProvider
    public Bitmap createDragBitmap() {
        if (!FeatureFlags.ENABLE_DEEP_SHORTCUT_ICON_CACHE.get()) {
            Drawable background = this.mView.getBackground();
            Rect drawableBounds = DragPreviewProvider.getDrawableBounds(background);
            int i = Launcher.getLauncher(this.mView.getContext()).getDeviceProfile().iconSizePx;
            int i2 = this.blurSizeOutline + i;
            Bitmap createBitmap = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            float f = this.blurSizeOutline / 2;
            canvas.translate(f, f);
            float f2 = i;
            canvas.scale(f2 / drawableBounds.width(), f2 / drawableBounds.height(), RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
            canvas.translate(drawableBounds.left, drawableBounds.top);
            background.draw(canvas);
            return createBitmap;
        }
        int i3 = Launcher.getLauncher(this.mView.getContext()).getDeviceProfile().iconSizePx;
        int i4 = this.blurSizeOutline;
        GraphicsUtils.noteNewBitmapCreated();
        Picture picture = new Picture();
        Canvas beginRecording = picture.beginRecording(i3 + i4, i4 + i3);
        float f3 = i3;
        Drawable background2 = this.mView.getBackground();
        Rect drawableBounds2 = DragPreviewProvider.getDrawableBounds(background2);
        float f4 = this.blurSizeOutline / 2;
        beginRecording.translate(f4, f4);
        beginRecording.scale(f3 / drawableBounds2.width(), f3 / drawableBounds2.height(), RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
        beginRecording.translate(drawableBounds2.left, drawableBounds2.top);
        background2.draw(beginRecording);
        picture.endRecording();
        return Bitmap.createBitmap(picture);
    }

    @Override // com.android.launcher3.graphics.DragPreviewProvider
    public float getScaleAndPosition(Bitmap bitmap, int[] iArr) {
        Launcher launcher = Launcher.getLauncher(this.mView.getContext());
        int width = DragPreviewProvider.getDrawableBounds(this.mView.getBackground()).width();
        float locationInDragLayer = launcher.mDragLayer.getLocationInDragLayer(this.mView, iArr);
        int paddingStart = this.mView.getPaddingStart();
        if (Utilities.isRtl(this.mView.getResources())) {
            paddingStart = (this.mView.getWidth() - width) - paddingStart;
        }
        float f = width * locationInDragLayer;
        iArr[0] = Math.round(((f - bitmap.getWidth()) / 2.0f) + (paddingStart * locationInDragLayer) + this.mPositionShift.x) + iArr[0];
        iArr[1] = Math.round((((locationInDragLayer * this.mView.getHeight()) - bitmap.getHeight()) / 2.0f) + this.mPositionShift.y) + iArr[1];
        return f / launcher.getDeviceProfile().iconSizePx;
    }
}
