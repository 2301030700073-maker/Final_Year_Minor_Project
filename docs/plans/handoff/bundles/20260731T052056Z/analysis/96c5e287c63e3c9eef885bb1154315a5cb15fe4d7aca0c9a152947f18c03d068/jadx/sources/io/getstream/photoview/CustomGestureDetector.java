package io.getstream.photoview;

import android.content.Context;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.recyclerview.widget.RecyclerView;
import io.getstream.photoview.PhotoViewAttacher;
import io.getstream.photoview.PhotoViewAttacher.FlingRunnable;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CustomGestureDetector {
    public boolean isDragging;
    public final ConnectionPool listener;
    public int mActivePointerId = -1;
    public int mActivePointerIndex;
    public final ScaleGestureDetector mDetector;
    public float mLastTouchX;
    public float mLastTouchY;
    public VelocityTracker mVelocityTracker;
    public final float minimumVelocity;
    public final float touchSlop;

    public CustomGestureDetector(Context context, ConnectionPool connectionPool) {
        this.listener = connectionPool;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.touchSlop = viewConfiguration.getScaledTouchSlop();
        this.minimumVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mDetector = new ScaleGestureDetector(context, new ScaleGestureDetector.OnScaleGestureListener() { // from class: io.getstream.photoview.CustomGestureDetector$scaleListener$1
            public float lastFocusX;
            public float lastFocusY;

            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public final boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                scaleGestureDetector.getClass();
                float scaleFactor = scaleGestureDetector.getScaleFactor();
                if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
                    return false;
                }
                if (scaleFactor < RecyclerView.DECELERATION_RATE) {
                    return true;
                }
                CustomGestureDetector.this.listener.onScale(scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY(), scaleGestureDetector.getFocusX() - this.lastFocusX, scaleGestureDetector.getFocusY() - this.lastFocusY);
                this.lastFocusX = scaleGestureDetector.getFocusX();
                this.lastFocusY = scaleGestureDetector.getFocusY();
                return true;
            }

            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public final boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
                scaleGestureDetector.getClass();
                this.lastFocusX = scaleGestureDetector.getFocusX();
                this.lastFocusY = scaleGestureDetector.getFocusY();
                return true;
            }

            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public final void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
                scaleGestureDetector.getClass();
            }
        });
    }

    public final void processTouchEvent(MotionEvent motionEvent) {
        float x;
        float y;
        float x2;
        float y2;
        int i;
        int i2;
        int i3;
        int i4;
        float x3;
        float y3;
        int i5;
        PhotoViewAttacher photoViewAttacher = (PhotoViewAttacher) this.listener.delegate;
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            if (action == 1) {
                this.mActivePointerId = -1;
                if (this.isDragging && this.mVelocityTracker != null) {
                    try {
                        x2 = motionEvent.getX(this.mActivePointerIndex);
                    } catch (Exception unused) {
                        x2 = motionEvent.getX();
                    }
                    this.mLastTouchX = x2;
                    try {
                        y2 = motionEvent.getY(this.mActivePointerIndex);
                    } catch (Exception unused2) {
                        y2 = motionEvent.getY();
                    }
                    this.mLastTouchY = y2;
                    VelocityTracker velocityTracker = this.mVelocityTracker;
                    velocityTracker.getClass();
                    velocityTracker.addMovement(motionEvent);
                    VelocityTracker velocityTracker2 = this.mVelocityTracker;
                    velocityTracker2.getClass();
                    velocityTracker2.computeCurrentVelocity(1000);
                    VelocityTracker velocityTracker3 = this.mVelocityTracker;
                    velocityTracker3.getClass();
                    float xVelocity = velocityTracker3.getXVelocity();
                    VelocityTracker velocityTracker4 = this.mVelocityTracker;
                    velocityTracker4.getClass();
                    float yVelocity = velocityTracker4.getYVelocity();
                    float abs = Math.abs(xVelocity);
                    float abs2 = Math.abs(yVelocity);
                    if (abs < abs2) {
                        abs = abs2;
                    }
                    if (abs >= this.minimumVelocity) {
                        PhotoView photoView = photoViewAttacher.mImageView;
                        PhotoViewAttacher.FlingRunnable flingRunnable = photoViewAttacher.new FlingRunnable(photoView.getContext());
                        photoViewAttacher.mCurrentFlingRunnable = flingRunnable;
                        int width = (photoView.getWidth() - photoView.getPaddingLeft()) - photoView.getPaddingRight();
                        int height = (photoView.getHeight() - photoView.getPaddingTop()) - photoView.getPaddingBottom();
                        int i6 = (int) (-xVelocity);
                        int i7 = (int) (-yVelocity);
                        photoViewAttacher.checkMatrixBounds();
                        RectF displayRect = photoViewAttacher.getDisplayRect(photoViewAttacher.getDrawMatrix());
                        if (displayRect != null) {
                            int round = Math.round(-displayRect.left);
                            float f = width;
                            if (f < displayRect.width()) {
                                i = Math.round(displayRect.width() - f);
                                i2 = 0;
                            } else {
                                i = round;
                                i2 = i;
                            }
                            int round2 = Math.round(-displayRect.top);
                            float f2 = height;
                            if (f2 < displayRect.height()) {
                                i3 = Math.round(displayRect.height() - f2);
                                i4 = 0;
                            } else {
                                i3 = round2;
                                i4 = i3;
                            }
                            flingRunnable.mCurrentX = round;
                            flingRunnable.mCurrentY = round2;
                            if (round != i || round2 != i3) {
                                flingRunnable.mScroller.fling(round, round2, i6, i7, i2, i, i4, i3, 0, 0);
                            }
                        }
                        photoView.post(photoViewAttacher.mCurrentFlingRunnable);
                    }
                }
                VelocityTracker velocityTracker5 = this.mVelocityTracker;
                if (velocityTracker5 != null) {
                    velocityTracker5.recycle();
                    this.mVelocityTracker = null;
                }
            } else if (action == 2) {
                try {
                    x3 = motionEvent.getX(this.mActivePointerIndex);
                } catch (Exception unused3) {
                    x3 = motionEvent.getX();
                }
                try {
                    y3 = motionEvent.getY(this.mActivePointerIndex);
                } catch (Exception unused4) {
                    y3 = motionEvent.getY();
                }
                float f3 = x3 - this.mLastTouchX;
                float f4 = y3 - this.mLastTouchY;
                boolean z = this.isDragging;
                if (!z) {
                    z = Math.sqrt((double) ((f4 * f4) + (f3 * f3))) >= ((double) this.touchSlop);
                    this.isDragging = z;
                }
                if (z) {
                    CustomGestureDetector customGestureDetector = photoViewAttacher.mScaleDragDetector;
                    if (customGestureDetector == null || !customGestureDetector.mDetector.isInProgress()) {
                        photoViewAttacher.mSuppMatrix.postTranslate(f3, f4);
                        photoViewAttacher.checkAndDisplayMatrix();
                        ViewParent parent = photoViewAttacher.mImageView.getParent();
                        if (photoViewAttacher.mAllowParentInterceptOnEdge && ((customGestureDetector == null || !customGestureDetector.mDetector.isInProgress()) && !photoViewAttacher.mBlockParentIntercept)) {
                            int i8 = photoViewAttacher.mHorizontalScrollEdge;
                            if ((i8 == 2 || ((i8 == 0 && f3 >= 1.0f) || ((i8 == 1 && f3 <= -1.0f) || (((i5 = photoViewAttacher.mVerticalScrollEdge) == 0 && f4 >= 1.0f) || (i5 == 1 && f4 <= -1.0f))))) && parent != null) {
                                parent.requestDisallowInterceptTouchEvent(false);
                            }
                        } else if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    this.mLastTouchX = x3;
                    this.mLastTouchY = y3;
                    VelocityTracker velocityTracker6 = this.mVelocityTracker;
                    if (velocityTracker6 != null) {
                        velocityTracker6.addMovement(motionEvent);
                    }
                }
            } else if (action == 3) {
                this.mActivePointerId = -1;
                VelocityTracker velocityTracker7 = this.mVelocityTracker;
                if (velocityTracker7 != null) {
                    velocityTracker7.recycle();
                    this.mVelocityTracker = null;
                }
            } else if (action == 6) {
                int action2 = (motionEvent.getAction() & 65280) >> 8;
                if (motionEvent.getPointerId(action2) == this.mActivePointerId) {
                    int i9 = action2 != 0 ? 0 : 1;
                    this.mActivePointerId = motionEvent.getPointerId(i9);
                    this.mLastTouchX = motionEvent.getX(i9);
                    this.mLastTouchY = motionEvent.getY(i9);
                }
            }
        } else {
            this.mActivePointerId = motionEvent.getPointerId(0);
            VelocityTracker obtain = VelocityTracker.obtain();
            this.mVelocityTracker = obtain;
            if (obtain != null) {
                obtain.addMovement(motionEvent);
            }
            try {
                x = motionEvent.getX(this.mActivePointerIndex);
            } catch (Exception unused5) {
                x = motionEvent.getX();
            }
            this.mLastTouchX = x;
            try {
                y = motionEvent.getY(this.mActivePointerIndex);
            } catch (Exception unused6) {
                y = motionEvent.getY();
            }
            this.mLastTouchY = y;
            this.isDragging = false;
        }
        int i10 = this.mActivePointerId;
        this.mActivePointerIndex = motionEvent.findPointerIndex(i10 != -1 ? i10 : 0);
    }
}
