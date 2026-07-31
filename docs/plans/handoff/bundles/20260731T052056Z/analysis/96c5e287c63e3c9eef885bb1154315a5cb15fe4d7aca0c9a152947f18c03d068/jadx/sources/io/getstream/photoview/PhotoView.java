package io.getstream.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.work.OperationKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000e\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0015\u001a\u00020\n2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001d\u001a\u00020\n2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010!\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b!\u0010\"J\u0015\u0010#\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b#\u0010\"J\u0015\u0010&\u001a\u00020\n2\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b&\u0010'J\u0017\u0010*\u001a\u00020\n2\b\u0010)\u001a\u0004\u0018\u00010(¢\u0006\u0004\b*\u0010+J\u0017\u0010-\u001a\u00020\n2\b\u0010)\u001a\u0004\u0018\u00010,¢\u0006\u0004\b-\u0010.J\u0017\u00100\u001a\u00020\n2\b\u0010)\u001a\u0004\u0018\u00010/¢\u0006\u0004\b0\u00101J\u0017\u00103\u001a\u00020\n2\b\u0010)\u001a\u0004\u0018\u000102¢\u0006\u0004\b3\u00104J\u0017\u00106\u001a\u00020\n2\b\u0010)\u001a\u0004\u0018\u000105¢\u0006\u0004\b6\u00107J\u0015\u00109\u001a\u00020\n2\u0006\u00108\u001a\u00020\u0017¢\u0006\u0004\b9\u0010\u001aJ\u0017\u0010<\u001a\u00020\n2\b\u0010;\u001a\u0004\u0018\u00010:¢\u0006\u0004\b<\u0010=J\u0017\u0010@\u001a\u00020\n2\b\u0010?\u001a\u0004\u0018\u00010>¢\u0006\u0004\b@\u0010AJ\u0017\u0010D\u001a\u00020\n2\b\u0010C\u001a\u0004\u0018\u00010B¢\u0006\u0004\bD\u0010ER$\u0010G\u001a\u00020$2\u0006\u0010F\u001a\u00020$8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bG\u0010H\"\u0004\bI\u0010'R\u0013\u0010M\u001a\u0004\u0018\u00010J8F¢\u0006\u0006\u001a\u0004\bK\u0010LR$\u0010N\u001a\u00020\u001f2\u0006\u0010N\u001a\u00020\u001f8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010\"R$\u0010R\u001a\u00020\u001f2\u0006\u0010R\u001a\u00020\u001f8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bS\u0010P\"\u0004\bT\u0010\"R$\u0010U\u001a\u00020\u001f2\u0006\u0010U\u001a\u00020\u001f8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bV\u0010P\"\u0004\bW\u0010\"R$\u0010X\u001a\u00020\u001f2\u0006\u0010X\u001a\u00020\u001f8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bY\u0010P\"\u0004\bZ\u0010\"¨\u0006["}, d2 = {"Lio/getstream/photoview/PhotoView;", "Landroidx/appcompat/widget/AppCompatImageView;", "Landroid/widget/ImageView$ScaleType;", "getScaleType", "()Landroid/widget/ImageView$ScaleType;", "Landroid/graphics/Matrix;", "getImageMatrix", "()Landroid/graphics/Matrix;", "Landroid/view/View$OnLongClickListener;", "l", "", "setOnLongClickListener", "(Landroid/view/View$OnLongClickListener;)V", "Landroid/view/View$OnClickListener;", "setOnClickListener", "(Landroid/view/View$OnClickListener;)V", "scaleType", "setScaleType", "(Landroid/widget/ImageView$ScaleType;)V", "Landroid/graphics/drawable/Drawable;", "drawable", "setImageDrawable", "(Landroid/graphics/drawable/Drawable;)V", "", "resId", "setImageResource", "(I)V", "Landroid/net/Uri;", "uri", "setImageURI", "(Landroid/net/Uri;)V", "", "rotationDegree", "setRotationTo", "(F)V", "setRotationBy", "", "allow", "setAllowParentInterceptOnEdge", "(Z)V", "Lio/getstream/photoview/OnMatrixChangedListener;", "listener", "setOnMatrixChangeListener", "(Lio/getstream/photoview/OnMatrixChangedListener;)V", "Lio/getstream/photoview/OnPhotoTapListener;", "setOnPhotoTapListener", "(Lio/getstream/photoview/OnPhotoTapListener;)V", "Lio/getstream/photoview/OnOutsidePhotoTapListener;", "setOnOutsidePhotoTapListener", "(Lio/getstream/photoview/OnOutsidePhotoTapListener;)V", "Lio/getstream/photoview/OnViewTapListener;", "setOnViewTapListener", "(Lio/getstream/photoview/OnViewTapListener;)V", "Lio/getstream/photoview/OnViewDragListener;", "setOnViewDragListener", "(Lio/getstream/photoview/OnViewDragListener;)V", "milliseconds", "setZoomTransitionDuration", "Landroid/view/GestureDetector$OnDoubleTapListener;", "onDoubleTapListener", "setOnDoubleTapListener", "(Landroid/view/GestureDetector$OnDoubleTapListener;)V", "Lio/getstream/photoview/OnScaleChangedListener;", "onScaleChangedListener", "setOnScaleChangeListener", "(Lio/getstream/photoview/OnScaleChangedListener;)V", "Lio/getstream/photoview/OnSingleFlingListener;", "onSingleFlingListener", "setOnSingleFlingListener", "(Lio/getstream/photoview/OnSingleFlingListener;)V", "zoomable", "isZoomable", "()Z", "setZoomable", "Landroid/graphics/RectF;", "getDisplayRect", "()Landroid/graphics/RectF;", "displayRect", "minimumScale", "getMinimumScale", "()F", "setMinimumScale", "mediumScale", "getMediumScale", "setMediumScale", "maximumScale", "getMaximumScale", "setMaximumScale", "scale", "getScale", "setScale", "photoview_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PhotoView extends AppCompatImageView {
    public final PhotoViewAttacher attacher;
    public ImageView.ScaleType pendingScaleType;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhotoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        context.getClass();
        this.attacher = new PhotoViewAttacher(this);
        super.setScaleType(ImageView.ScaleType.MATRIX);
        ImageView.ScaleType scaleType = this.pendingScaleType;
        if (scaleType != null) {
            setScaleType(scaleType);
            this.pendingScaleType = null;
        }
    }

    public final RectF getDisplayRect() {
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher != null) {
            photoViewAttacher.checkMatrixBounds();
            return photoViewAttacher.getDisplayRect(photoViewAttacher.getDrawMatrix());
        }
        Intrinsics.throwUninitializedPropertyAccessException("attacher");
        throw null;
    }

    @Override // android.widget.ImageView
    public Matrix getImageMatrix() {
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher != null) {
            return photoViewAttacher.imageMatrix;
        }
        Intrinsics.throwUninitializedPropertyAccessException("attacher");
        throw null;
    }

    public final float getMaximumScale() {
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher != null) {
            return photoViewAttacher.mMaxScale;
        }
        Intrinsics.throwUninitializedPropertyAccessException("attacher");
        throw null;
    }

    public final float getMediumScale() {
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher != null) {
            return photoViewAttacher.mMidScale;
        }
        Intrinsics.throwUninitializedPropertyAccessException("attacher");
        throw null;
    }

    public final float getMinimumScale() {
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher != null) {
            return photoViewAttacher.mMinScale;
        }
        Intrinsics.throwUninitializedPropertyAccessException("attacher");
        throw null;
    }

    public final float getScale() {
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher != null) {
            return photoViewAttacher.getScale();
        }
        Intrinsics.throwUninitializedPropertyAccessException("attacher");
        throw null;
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher != null) {
            return photoViewAttacher.mScaleType;
        }
        Intrinsics.throwUninitializedPropertyAccessException("attacher");
        throw null;
    }

    public final void setAllowParentInterceptOnEdge(boolean allow) {
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher != null) {
            photoViewAttacher.mAllowParentInterceptOnEdge = allow;
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("attacher");
            throw null;
        }
    }

    @Override // android.widget.ImageView
    public final boolean setFrame(int i, int i2, int i3, int i4) {
        PhotoViewAttacher photoViewAttacher;
        boolean frame = super.setFrame(i, i2, i3, i4);
        if (!frame || (photoViewAttacher = this.attacher) == null) {
            return frame;
        }
        if (photoViewAttacher != null) {
            photoViewAttacher.update();
            return frame;
        }
        Intrinsics.throwUninitializedPropertyAccessException("attacher");
        throw null;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher != null) {
            if (photoViewAttacher != null) {
                photoViewAttacher.update();
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("attacher");
                throw null;
            }
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int resId) {
        super.setImageResource(resId);
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher != null) {
            if (photoViewAttacher != null) {
                photoViewAttacher.update();
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("attacher");
                throw null;
            }
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher != null) {
            if (photoViewAttacher != null) {
                photoViewAttacher.update();
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("attacher");
                throw null;
            }
        }
    }

    public final void setMaximumScale(float f) {
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("attacher");
            throw null;
        }
        OperationKt.checkZoomLevels(photoViewAttacher.mMinScale, photoViewAttacher.mMidScale, f);
        photoViewAttacher.mMaxScale = f;
    }

    public final void setMediumScale(float f) {
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("attacher");
            throw null;
        }
        OperationKt.checkZoomLevels(photoViewAttacher.mMinScale, f, photoViewAttacher.mMaxScale);
        photoViewAttacher.mMidScale = f;
    }

    public final void setMinimumScale(float f) {
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("attacher");
            throw null;
        }
        OperationKt.checkZoomLevels(f, photoViewAttacher.mMidScale, photoViewAttacher.mMaxScale);
        photoViewAttacher.mMinScale = f;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener l) {
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher != null) {
            photoViewAttacher.mOnClickListener = l;
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("attacher");
            throw null;
        }
    }

    public final void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher != null) {
            photoViewAttacher.mGestureDetector.setOnDoubleTapListener(onDoubleTapListener);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("attacher");
            throw null;
        }
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener l) {
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher != null) {
            photoViewAttacher.mLongClickListener = l;
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("attacher");
            throw null;
        }
    }

    public final void setOnMatrixChangeListener(OnMatrixChangedListener listener) {
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher != null) {
            photoViewAttacher.mMatrixChangeListener = listener;
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("attacher");
            throw null;
        }
    }

    public final void setOnOutsidePhotoTapListener(OnOutsidePhotoTapListener listener) {
        if (this.attacher != null) {
            return;
        }
        Intrinsics.throwUninitializedPropertyAccessException("attacher");
        throw null;
    }

    public final void setOnPhotoTapListener(OnPhotoTapListener listener) {
        if (this.attacher != null) {
            return;
        }
        Intrinsics.throwUninitializedPropertyAccessException("attacher");
        throw null;
    }

    public final void setOnScaleChangeListener(OnScaleChangedListener onScaleChangedListener) {
        if (this.attacher != null) {
            return;
        }
        Intrinsics.throwUninitializedPropertyAccessException("attacher");
        throw null;
    }

    public final void setOnSingleFlingListener(OnSingleFlingListener onSingleFlingListener) {
        if (this.attacher != null) {
            return;
        }
        Intrinsics.throwUninitializedPropertyAccessException("attacher");
        throw null;
    }

    public final void setOnViewDragListener(OnViewDragListener listener) {
        if (this.attacher != null) {
            return;
        }
        Intrinsics.throwUninitializedPropertyAccessException("attacher");
        throw null;
    }

    public final void setOnViewTapListener(OnViewTapListener listener) {
        if (this.attacher != null) {
            return;
        }
        Intrinsics.throwUninitializedPropertyAccessException("attacher");
        throw null;
    }

    public final void setRotationBy(float rotationDegree) {
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("attacher");
            throw null;
        }
        photoViewAttacher.mSuppMatrix.postRotate(rotationDegree % 360.0f);
        photoViewAttacher.checkAndDisplayMatrix();
    }

    public final void setRotationTo(float rotationDegree) {
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("attacher");
            throw null;
        }
        photoViewAttacher.mSuppMatrix.setRotate(rotationDegree % 360.0f);
        photoViewAttacher.checkAndDisplayMatrix();
    }

    public final void setScale(float f) {
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("attacher");
            throw null;
        }
        PhotoView photoView = photoViewAttacher.mImageView;
        photoViewAttacher.setScale(f, photoView.getRight() / 2, photoView.getBottom() / 2, false);
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        PhotoViewAttacher photoViewAttacher;
        scaleType.getClass();
        if (getDrawable() == null || (photoViewAttacher = this.attacher) == null) {
            this.pendingScaleType = scaleType;
            return;
        }
        if (photoViewAttacher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("attacher");
            throw null;
        }
        if (scaleType == ImageView.ScaleType.MATRIX) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Matrix scale type is not supported");
        } else if (scaleType != photoViewAttacher.mScaleType) {
            photoViewAttacher.mScaleType = scaleType;
            photoViewAttacher.update();
        }
    }

    public final void setZoomTransitionDuration(int milliseconds) {
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher != null) {
            photoViewAttacher.mZoomDuration = milliseconds;
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("attacher");
            throw null;
        }
    }

    public final void setZoomable(boolean z) {
        PhotoViewAttacher photoViewAttacher = this.attacher;
        if (photoViewAttacher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("attacher");
            throw null;
        }
        photoViewAttacher.isZoomEnabled = z;
        photoViewAttacher.update();
    }
}
