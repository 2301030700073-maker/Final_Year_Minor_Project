package com.android.launcher3.dragndrop;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.Picture;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.android.launcher3.Launcher;
import com.android.launcher3.dragndrop.FolderAdaptiveIcon;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.folder.PreviewBackground;
import com.android.launcher3.graphics.ShiftedBitmapDrawable;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.util.Executors;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.recents.ISystemUiProxy;
import java.util.concurrent.Callable;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public class FolderAdaptiveIcon extends AdaptiveIconDrawable {
    public static final Rect sTmpRect = new Rect();
    public final Drawable mBadge;
    public final Drawable.ConstantState mConstantState;
    public final Path mMask;

    public class MyConstantState extends Drawable.ConstantState {
        public final Drawable.ConstantState mBadge;
        public final Drawable.ConstantState mBg;
        public final Drawable.ConstantState mFg;
        public final Path mMask;

        public MyConstantState(Drawable.ConstantState constantState, Drawable.ConstantState constantState2, Drawable.ConstantState constantState3, Path path) {
            this.mBg = constantState;
            this.mFg = constantState2;
            this.mBadge = constantState3;
            this.mMask = path;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mBadge.getChangingConfigurations() & this.mBg.getChangingConfigurations() & this.mFg.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new FolderAdaptiveIcon(this.mBg.newDrawable(), this.mFg.newDrawable(), this.mBadge.newDrawable(), this.mMask);
        }
    }

    public FolderAdaptiveIcon(Drawable drawable, Drawable drawable2, Drawable drawable3, Path path) {
        super(drawable, drawable2);
        this.mBadge = drawable3;
        this.mMask = path;
        this.mConstantState = new MyConstantState(drawable.getConstantState(), drawable2.getConstantState(), drawable3.getConstantState(), path);
    }

    public static /* synthetic */ void a(float f, float f2, PreviewBackground previewBackground, FolderIcon folderIcon, Canvas canvas) {
        canvas.save();
        canvas.translate(f, f2);
        previewBackground.drawShadow(canvas);
        previewBackground.drawBackgroundStroke(canvas);
        folderIcon.drawDot(canvas);
        canvas.restore();
    }

    public static void b(float f, float f2, FolderIcon folderIcon, Canvas canvas) {
        canvas.save();
        canvas.translate(f, f2);
        folderIcon.mPreviewItemManager.draw(canvas);
        canvas.restore();
    }

    public static FolderAdaptiveIcon c(Launcher launcher, int i, Point point) {
        FolderIcon folderIcon = (FolderIcon) launcher.mWorkspace.getHomescreenIconByItemId(i);
        if (folderIcon == null) {
            return null;
        }
        folderIcon.getPreviewBounds(sTmpRect);
        PreviewBackground previewBackground = folderIcon.mBackground;
        int width = sTmpRect.width();
        int i2 = point.x;
        int i3 = (i2 - width) / 2;
        Rect rect = sTmpRect;
        float f = (-rect.left) + i3;
        float f2 = (-rect.top) + i3;
        int i4 = point.y;
        GraphicsUtils.noteNewBitmapCreated();
        Picture picture = new Picture();
        a(f, f2, previewBackground, folderIcon, picture.beginRecording(i2, i4));
        picture.endRecording();
        Bitmap createBitmap = Bitmap.createBitmap(picture);
        Path path = new Path();
        Matrix matrix = new Matrix();
        matrix.setTranslate(f, f2);
        previewBackground.getClipPath().transform(matrix, path);
        int i5 = point.x;
        int i6 = point.y;
        GraphicsUtils.a();
        Picture picture2 = new Picture();
        b(f, f2, folderIcon, picture2.beginRecording(i5, i6));
        picture2.endRecording();
        Bitmap createBitmap2 = Bitmap.createBitmap(picture2);
        return new FolderAdaptiveIcon(new ColorDrawable(previewBackground.getBgColor()), new ShiftedBitmapDrawable(createBitmap2, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET), new ShiftedBitmapDrawable(createBitmap, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET), path);
    }

    public static FolderAdaptiveIcon createFolderAdaptiveIcon(final Launcher launcher, final int i, final Point point) {
        try {
            return (FolderAdaptiveIcon) Executors.MAIN_EXECUTOR.submit(new Callable() { // from class: c.a.a.H0.i
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return FolderAdaptiveIcon.c(Launcher.this, i, point);
                }
            }).get();
        } catch (Exception e) {
            Log.e("FolderAdaptiveIcon", "Unable to create folder icon", e);
            return null;
        }
    }

    @Override // android.graphics.drawable.AdaptiveIconDrawable, android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.mConstantState;
    }

    @Override // android.graphics.drawable.AdaptiveIconDrawable
    public Path getIconMask() {
        return this.mMask;
    }
}
