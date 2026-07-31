package io.getstream.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import android.widget.OverScroller;
import androidx.compose.animation.core.Animation;
import androidx.recyclerview.widget.RecyclerView;
import com.google.gson.GsonBuilder;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.gallery.GalleryItemFragment;
import org.wikipedia.gallery.GalleryItemFragment$$ExternalSyntheticLambda0;
import org.wikipedia.views.SwipeableListView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PhotoViewAttacher implements View.OnTouchListener, View.OnLayoutChangeListener {
    public final Matrix imageMatrix;
    public boolean isZoomEnabled;
    public final Matrix mBaseMatrix;
    public boolean mBlockParentIntercept;
    public FlingRunnable mCurrentFlingRunnable;
    public final RectF mDisplayRect;
    public final GestureDetector mGestureDetector;
    public int mHorizontalScrollEdge;
    public final PhotoView mImageView;
    public View.OnLongClickListener mLongClickListener;
    public OnMatrixChangedListener mMatrixChangeListener;
    public final float[] mMatrixValues;
    public View.OnClickListener mOnClickListener;
    public final CustomGestureDetector mScaleDragDetector;
    public ImageView.ScaleType mScaleType;
    public final Matrix mSuppMatrix;
    public int mVerticalScrollEdge;
    public final ConnectionPool onGestureListener;
    public final AccelerateDecelerateInterpolator mInterpolator = new AccelerateDecelerateInterpolator();
    public int mZoomDuration = 200;
    public float mMinScale = 1.0f;
    public float mMidScale = 1.75f;
    public float mMaxScale = 3.0f;
    public boolean mAllowParentInterceptOnEdge = true;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class AnimatedZoomRunnable implements Runnable {
        public final float mFocalX;
        public final float mFocalY;
        public final long mStartTime = System.currentTimeMillis();
        public final float mZoomEnd;
        public final float mZoomStart;

        public AnimatedZoomRunnable(float f, float f2, float f3, float f4) {
            this.mZoomStart = f;
            this.mZoomEnd = f2;
            this.mFocalX = f3;
            this.mFocalY = f4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            PhotoViewAttacher photoViewAttacher = PhotoViewAttacher.this;
            float interpolation = photoViewAttacher.mInterpolator.getInterpolation(Math.min(1.0f, ((System.currentTimeMillis() - this.mStartTime) * 1.0f) / photoViewAttacher.mZoomDuration));
            float f = this.mZoomStart;
            photoViewAttacher.onGestureListener.onScale(Animation.CC.m(this.mZoomEnd, f, interpolation, f) / photoViewAttacher.getScale(), this.mFocalX, this.mFocalY, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE);
            if (interpolation < 1.0f) {
                photoViewAttacher.mImageView.postDelayed(this, 16L);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FlingRunnable implements Runnable {
        public int mCurrentX;
        public int mCurrentY;
        public final OverScroller mScroller;

        public FlingRunnable(Context context) {
            this.mScroller = new OverScroller(context);
        }

        @Override // java.lang.Runnable
        public final void run() {
            OverScroller overScroller = this.mScroller;
            if (!overScroller.isFinished() && overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                PhotoViewAttacher photoViewAttacher = PhotoViewAttacher.this;
                photoViewAttacher.mSuppMatrix.postTranslate(this.mCurrentX - currX, this.mCurrentY - currY);
                photoViewAttacher.checkAndDisplayMatrix();
                this.mCurrentX = currX;
                this.mCurrentY = currY;
                photoViewAttacher.mImageView.postDelayed(this, 16L);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            try {
                iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ImageView.ScaleType.FIT_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ImageView.ScaleType.FIT_XY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ImageView.ScaleType.CENTER_CROP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public PhotoViewAttacher(PhotoView photoView) {
        this.mImageView = photoView;
        int i = 1;
        GestureDetector gestureDetector = new GestureDetector(photoView.getContext(), new SwipeableListView.ViewGestureListener(i, this));
        this.mGestureDetector = gestureDetector;
        this.mBaseMatrix = new Matrix();
        this.imageMatrix = new Matrix();
        this.mSuppMatrix = new Matrix();
        this.mDisplayRect = new RectF();
        this.mMatrixValues = new float[9];
        this.mHorizontalScrollEdge = 2;
        this.mVerticalScrollEdge = 2;
        this.isZoomEnabled = true;
        this.mScaleType = ImageView.ScaleType.FIT_CENTER;
        ConnectionPool connectionPool = new ConnectionPool(i, this);
        this.onGestureListener = connectionPool;
        photoView.setOnTouchListener(this);
        photoView.addOnLayoutChangeListener(this);
        if (photoView.isInEditMode()) {
            return;
        }
        Context context = photoView.getContext();
        context.getClass();
        this.mScaleDragDetector = new CustomGestureDetector(context, connectionPool);
        gestureDetector.setOnDoubleTapListener(new GestureDetector.OnDoubleTapListener() { // from class: io.getstream.photoview.PhotoViewAttacher.1
            @Override // android.view.GestureDetector.OnDoubleTapListener
            public final boolean onDoubleTap(MotionEvent motionEvent) {
                float scale;
                float x;
                float y;
                float f;
                PhotoViewAttacher photoViewAttacher = PhotoViewAttacher.this;
                motionEvent.getClass();
                try {
                    scale = photoViewAttacher.getScale();
                    x = motionEvent.getX();
                    y = motionEvent.getY();
                    f = photoViewAttacher.mMidScale;
                } catch (ArrayIndexOutOfBoundsException unused) {
                }
                if (scale < f) {
                    photoViewAttacher.setScale(f, x, y, true);
                    return true;
                }
                if (scale >= f) {
                    float f2 = photoViewAttacher.mMaxScale;
                    if (scale < f2) {
                        photoViewAttacher.setScale(f2, x, y, true);
                        return true;
                    }
                }
                photoViewAttacher.setScale(photoViewAttacher.mMinScale, x, y, true);
                return true;
            }

            @Override // android.view.GestureDetector.OnDoubleTapListener
            public final boolean onDoubleTapEvent(MotionEvent motionEvent) {
                motionEvent.getClass();
                return false;
            }

            @Override // android.view.GestureDetector.OnDoubleTapListener
            public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                motionEvent.getClass();
                PhotoViewAttacher photoViewAttacher = PhotoViewAttacher.this;
                View.OnClickListener onClickListener = photoViewAttacher.mOnClickListener;
                if (onClickListener != null) {
                    onClickListener.onClick(photoViewAttacher.mImageView);
                }
                photoViewAttacher.checkMatrixBounds();
                RectF displayRect = photoViewAttacher.getDisplayRect(photoViewAttacher.getDrawMatrix());
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (displayRect == null || !displayRect.contains(x, y)) {
                    return false;
                }
                displayRect.width();
                displayRect.height();
                return true;
            }
        });
    }

    public final void checkAndDisplayMatrix() {
        if (checkMatrixBounds()) {
            setImageViewMatrix(getDrawMatrix());
        }
    }

    public final boolean checkMatrixBounds() {
        float f;
        RectF displayRect = getDisplayRect(getDrawMatrix());
        if (displayRect == null) {
            return false;
        }
        float height = displayRect.height();
        float width = displayRect.width();
        PhotoView photoView = this.mImageView;
        float height2 = (photoView.getHeight() - photoView.getPaddingTop()) - photoView.getPaddingBottom();
        float f2 = RecyclerView.DECELERATION_RATE;
        if (height <= height2) {
            int i = WhenMappings.$EnumSwitchMapping$0[this.mScaleType.ordinal()];
            float f3 = displayRect.top;
            if (i != 2) {
                f = (i != 3 ? (height2 - height) / 2.0f : height2 - height) - f3;
            } else {
                f = -f3;
            }
            this.mVerticalScrollEdge = 2;
        } else {
            float f4 = displayRect.top;
            if (f4 > RecyclerView.DECELERATION_RATE) {
                this.mVerticalScrollEdge = 0;
                f = -f4;
            } else {
                float f5 = displayRect.bottom;
                if (f5 < height2) {
                    this.mVerticalScrollEdge = 1;
                    f = height2 - f5;
                } else {
                    this.mVerticalScrollEdge = -1;
                    f = 0.0f;
                }
            }
        }
        float width2 = (photoView.getWidth() - photoView.getPaddingLeft()) - photoView.getPaddingRight();
        if (width <= width2) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[this.mScaleType.ordinal()];
            float f6 = displayRect.left;
            if (i2 != 2) {
                f2 = (i2 != 3 ? (width2 - width) / 2.0f : width2 - width) - f6;
            } else {
                f2 = -f6;
            }
            this.mHorizontalScrollEdge = 2;
        } else {
            float f7 = displayRect.left;
            if (f7 > RecyclerView.DECELERATION_RATE) {
                this.mHorizontalScrollEdge = 0;
                f2 = -f7;
            } else {
                float f8 = displayRect.right;
                if (f8 < width2) {
                    f2 = width2 - f8;
                    this.mHorizontalScrollEdge = 1;
                } else {
                    this.mHorizontalScrollEdge = -1;
                }
            }
        }
        this.mSuppMatrix.postTranslate(f2, f);
        return true;
    }

    public final RectF getDisplayRect(Matrix matrix) {
        Drawable drawable = this.mImageView.getDrawable();
        if (drawable == null) {
            return null;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        RectF rectF = this.mDisplayRect;
        rectF.set(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, intrinsicWidth, intrinsicHeight);
        matrix.mapRect(rectF);
        return rectF;
    }

    public final Matrix getDrawMatrix() {
        Matrix matrix = this.mBaseMatrix;
        Matrix matrix2 = this.imageMatrix;
        matrix2.set(matrix);
        matrix2.postConcat(this.mSuppMatrix);
        return matrix2;
    }

    public final float getScale() {
        Matrix matrix = this.mSuppMatrix;
        float[] fArr = this.mMatrixValues;
        matrix.getValues(fArr);
        float pow = (float) Math.pow(fArr[0], 2.0d);
        matrix.getValues(fArr);
        return (float) Math.sqrt(pow + ((float) Math.pow(fArr[3], 2.0d)));
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        view.getClass();
        if (i == i5 && i2 == i6 && i3 == i7 && i4 == i8) {
            return;
        }
        updateBaseMatrix(this.mImageView.getDrawable());
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r9, android.view.MotionEvent r10) {
        /*
            r8 = this;
            r9.getClass()
            r10.getClass()
            boolean r0 = r8.isZoomEnabled
            r6 = 0
            if (r0 == 0) goto Ld8
            r0 = r9
            android.widget.ImageView r0 = (android.widget.ImageView) r0
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            if (r0 == 0) goto Ld8
            int r0 = r10.getAction()
            r7 = 1
            if (r0 == 0) goto L89
            if (r0 == r7) goto L22
            r2 = 3
            if (r0 == r2) goto L22
            goto L9e
        L22:
            float r0 = r8.getScale()
            float r2 = r8.mMinScale
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 >= 0) goto L56
            r8.checkMatrixBounds()
            android.graphics.Matrix r0 = r8.getDrawMatrix()
            android.graphics.RectF r0 = r8.getDisplayRect(r0)
            if (r0 == 0) goto L9e
            r2 = r0
            io.getstream.photoview.PhotoViewAttacher$AnimatedZoomRunnable r0 = new io.getstream.photoview.PhotoViewAttacher$AnimatedZoomRunnable
            r3 = r2
            float r2 = r8.getScale()
            r4 = r3
            float r3 = r8.mMinScale
            r5 = r4
            float r4 = r5.centerX()
            float r5 = r5.centerY()
            r1 = r8
            r0.<init>(r2, r3, r4, r5)
            r9.post(r0)
        L54:
            r0 = r7
            goto L9f
        L56:
            float r0 = r8.getScale()
            float r2 = r8.mMaxScale
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 <= 0) goto L9e
            r8.checkMatrixBounds()
            android.graphics.Matrix r0 = r8.getDrawMatrix()
            android.graphics.RectF r0 = r8.getDisplayRect(r0)
            if (r0 == 0) goto L9e
            r2 = r0
            io.getstream.photoview.PhotoViewAttacher$AnimatedZoomRunnable r0 = new io.getstream.photoview.PhotoViewAttacher$AnimatedZoomRunnable
            r3 = r2
            float r2 = r8.getScale()
            r4 = r3
            float r3 = r8.mMaxScale
            r5 = r4
            float r4 = r5.centerX()
            float r5 = r5.centerY()
            r1 = r8
            r0.<init>(r2, r3, r4, r5)
            r9.post(r0)
            goto L54
        L89:
            android.view.ViewParent r0 = r9.getParent()
            if (r0 == 0) goto L92
            r0.requestDisallowInterceptTouchEvent(r7)
        L92:
            io.getstream.photoview.PhotoViewAttacher$FlingRunnable r0 = r8.mCurrentFlingRunnable
            if (r0 == 0) goto L9e
            android.widget.OverScroller r0 = r0.mScroller
            r0.forceFinished(r7)
            r0 = 0
            r8.mCurrentFlingRunnable = r0
        L9e:
            r0 = r6
        L9f:
            io.getstream.photoview.CustomGestureDetector r2 = r8.mScaleDragDetector
            if (r2 == 0) goto Lcd
            android.view.ScaleGestureDetector r0 = r2.mDetector
            boolean r3 = r0.isInProgress()
            boolean r4 = r2.isDragging
            r0.onTouchEvent(r10)     // Catch: java.lang.IllegalArgumentException -> Lb1
            r2.processTouchEvent(r10)     // Catch: java.lang.IllegalArgumentException -> Lb1
        Lb1:
            if (r3 != 0) goto Lbb
            boolean r0 = r0.isInProgress()
            if (r0 != 0) goto Lbb
            r0 = r7
            goto Lbc
        Lbb:
            r0 = r6
        Lbc:
            if (r4 != 0) goto Lc4
            boolean r2 = r2.isDragging
            if (r2 != 0) goto Lc4
            r2 = r7
            goto Lc5
        Lc4:
            r2 = r6
        Lc5:
            if (r0 == 0) goto Lca
            if (r2 == 0) goto Lca
            r6 = r7
        Lca:
            r8.mBlockParentIntercept = r6
            r0 = r7
        Lcd:
            android.view.GestureDetector r1 = r8.mGestureDetector
            boolean r1 = r1.onTouchEvent(r10)
            if (r1 == 0) goto Ld6
            goto Ld7
        Ld6:
            r7 = r0
        Ld7:
            return r7
        Ld8:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.getstream.photoview.PhotoViewAttacher.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public final void setImageViewMatrix(Matrix matrix) {
        this.mImageView.setImageMatrix(matrix);
        if (this.mMatrixChangeListener == null || getDisplayRect(matrix) == null) {
            return;
        }
        OnMatrixChangedListener onMatrixChangedListener = this.mMatrixChangeListener;
        onMatrixChangedListener.getClass();
        GalleryItemFragment galleryItemFragment = ((GalleryItemFragment$$ExternalSyntheticLambda0) onMatrixChangedListener).f$0;
        if (galleryItemFragment.isAdded()) {
            GsonBuilder gsonBuilder = galleryItemFragment._binding;
            gsonBuilder.getClass();
            PhotoView photoView = (PhotoView) gsonBuilder.longSerializationPolicy;
            GsonBuilder gsonBuilder2 = galleryItemFragment._binding;
            gsonBuilder2.getClass();
            photoView.setAllowParentInterceptOnEdge(Math.abs(((PhotoView) gsonBuilder2.longSerializationPolicy).getScale() - 1.0f) < 0.01f);
        }
    }

    public final void setScale(float f, float f2, float f3, boolean z) {
        if (f < this.mMinScale || f > this.mMaxScale) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Scale must be within the range of minScale and maxScale");
        } else if (z) {
            this.mImageView.post(new AnimatedZoomRunnable(getScale(), f, f2, f3));
        } else {
            this.mSuppMatrix.setScale(f, f, f2, f3);
            checkAndDisplayMatrix();
        }
    }

    public final void update() {
        if (this.isZoomEnabled) {
            updateBaseMatrix(this.mImageView.getDrawable());
            return;
        }
        Matrix matrix = this.mSuppMatrix;
        matrix.reset();
        matrix.postRotate(RecyclerView.DECELERATION_RATE);
        checkAndDisplayMatrix();
        setImageViewMatrix(getDrawMatrix());
        checkMatrixBounds();
    }

    public final void updateBaseMatrix(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        PhotoView photoView = this.mImageView;
        float width = (photoView.getWidth() - photoView.getPaddingLeft()) - photoView.getPaddingRight();
        float height = (photoView.getHeight() - photoView.getPaddingTop()) - photoView.getPaddingBottom();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        Matrix matrix = this.mBaseMatrix;
        matrix.reset();
        float f = intrinsicWidth;
        float f2 = width / f;
        float f3 = intrinsicHeight;
        float f4 = height / f3;
        ImageView.ScaleType scaleType = this.mScaleType;
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
        int i = iArr[scaleType.ordinal()];
        if (i == 5) {
            matrix.postTranslate((width - f) / 2.0f, (height - f3) / 2.0f);
        } else if (i == 6) {
            if (f2 < f4) {
                f2 = f4;
            }
            matrix.postScale(f2, f2);
            matrix.postTranslate((width - (f * f2)) / 2.0f, (height - (f3 * f2)) / 2.0f);
        } else if (i != 7) {
            RectF rectF = new RectF(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, f, f3);
            RectF rectF2 = new RectF(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, width, height);
            int i2 = iArr[this.mScaleType.ordinal()];
            if (i2 == 1) {
                matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            } else if (i2 == 2) {
                matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
            } else if (i2 == 3) {
                matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
            } else if (i2 == 4) {
                matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
            }
        } else {
            if (f2 > f4) {
                f2 = f4;
            }
            if (1.0f <= f2) {
                f2 = 1.0f;
            }
            matrix.postScale(f2, f2);
            matrix.postTranslate((width - (f * f2)) / 2.0f, (height - (f3 * f2)) / 2.0f);
        }
        Matrix matrix2 = this.mSuppMatrix;
        matrix2.reset();
        matrix2.postRotate(RecyclerView.DECELERATION_RATE);
        checkAndDisplayMatrix();
        setImageViewMatrix(getDrawMatrix());
        checkMatrixBounds();
    }
}
