package org.wikipedia.views;

import android.graphics.Point;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import okhttp3.HttpUrl;
import org.wikipedia.activity.BaseActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ImageZoomHelper {
    public static boolean isZooming;
    public final WeakReference activityWeakReference;
    public View darkView;
    public boolean isAnimatingDismiss;
    public double originalDistance;
    public int[] originalXY;
    public ViewGroup parentOfZoomableView;
    public int pivotX;
    public int pivotY;
    public int[] twoPointCenter;
    public int viewIndex;
    public final ArrayList zoomListeners = new ArrayList();
    public View zoomableView;
    public FrameLayout.LayoutParams zoomableViewFrameLP;
    public ViewGroup.LayoutParams zoomableViewLP;

    public ImageZoomHelper(BaseActivity baseActivity) {
        this.activityWeakReference = new WeakReference(baseActivity);
    }

    public static View findZoomableView(View view, MotionEvent motionEvent) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
        motionEvent.getPointerCoords(0, pointerCoords);
        MotionEvent.PointerCoords pointerCoords2 = new MotionEvent.PointerCoords();
        motionEvent.getPointerCoords(1, pointerCoords2);
        Point point = new Point((int) pointerCoords.x, (int) pointerCoords.y);
        Point point2 = new Point((int) pointerCoords2.x, (int) pointerCoords2.y);
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.getClass();
            if ((HttpUrl.Companion.getIntTag(childAt) & 2) == 0) {
                int[] iArr = new int[2];
                childAt.getLocationOnScreen(iArr);
                int i2 = iArr[0];
                Rect rect = new Rect(i2, iArr[1], childAt.getWidth() + i2, childAt.getHeight() + iArr[1]);
                if (rect.contains(point.x, point.y) && rect.contains(point2.x, point2.y)) {
                    return (HttpUrl.Companion.getIntTag(childAt) & 1) != 0 ? childAt : findZoomableView(childAt, motionEvent);
                }
            }
        }
        return null;
    }

    public final void updateZoomableView(float f, float f2, float f3, int i, int i2, int i3, int i4) {
        View view = this.zoomableView;
        view.getClass();
        view.setScaleX(((1.0f - f3) * f) + f3);
        View view2 = this.zoomableView;
        view2.getClass();
        view2.setScaleY(((1.0f - f2) * f) + f2);
        float f4 = ((i3 - i) * f) + i;
        float f5 = ((i4 - i2) * f) + i2;
        FrameLayout.LayoutParams layoutParams = this.zoomableViewFrameLP;
        layoutParams.getClass();
        layoutParams.leftMargin = (int) f4;
        FrameLayout.LayoutParams layoutParams2 = this.zoomableViewFrameLP;
        layoutParams2.getClass();
        layoutParams2.topMargin = (int) f5;
        View view3 = this.zoomableView;
        view3.getClass();
        view3.setLayoutParams(this.zoomableViewFrameLP);
    }
}
