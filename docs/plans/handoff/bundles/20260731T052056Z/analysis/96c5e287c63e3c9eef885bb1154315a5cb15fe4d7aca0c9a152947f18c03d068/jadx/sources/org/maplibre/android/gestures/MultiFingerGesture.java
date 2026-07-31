package org.maplibre.android.gestures;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import okio.ByteString;
import org.wikipedia.databinding.FragmentNewsBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class MultiFingerGesture extends BaseGesture {
    public DisplayMetrics displayMetrics;
    public final float edgeSlop;
    public PointF focalPoint;
    public final ByteString.Companion permittedActionsGuard;
    public final ArrayList pointerIdList;
    public final HashMap pointersDistanceMap;
    public float spanThreshold;

    public MultiFingerGesture(Context context, FragmentNewsBinding fragmentNewsBinding) {
        super(context, fragmentNewsBinding);
        this.permittedActionsGuard = new ByteString.Companion(10);
        this.pointerIdList = new ArrayList();
        this.pointersDistanceMap = new HashMap();
        this.focalPoint = new PointF();
        this.edgeSlop = ViewConfiguration.get(context).getScaledEdgeSlop();
        queryDisplayMetrics();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00cf A[LOOP:1: B:28:0x00cd->B:29:0x00cf, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f0  */
    @Override // org.maplibre.android.gestures.BaseGesture
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean analyzeEvent(android.view.MotionEvent r20) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.maplibre.android.gestures.MultiFingerGesture.analyzeEvent(android.view.MotionEvent):boolean");
    }

    public boolean analyzeMovement() {
        return false;
    }

    @Override // org.maplibre.android.gestures.BaseGesture
    public boolean canExecute(int i) {
        return super.canExecute(i) && !isSloppyGesture();
    }

    public int getRequiredPointersCount() {
        return 2;
    }

    public boolean isSloppyGesture() {
        float f = this.displayMetrics.widthPixels;
        float f2 = this.edgeSlop;
        float f3 = f - f2;
        float f4 = r0.heightPixels - f2;
        Iterator it = this.pointerIdList.iterator();
        while (it.hasNext()) {
            int findPointerIndex = this.currentEvent.findPointerIndex(((Integer) it.next()).intValue());
            MotionEvent motionEvent = this.currentEvent;
            float rawX = motionEvent.getRawX() - motionEvent.getX();
            int pointerCount = motionEvent.getPointerCount();
            float f5 = RecyclerView.DECELERATION_RATE;
            float x = findPointerIndex < pointerCount ? motionEvent.getX(findPointerIndex) + rawX : 0.0f;
            MotionEvent motionEvent2 = this.currentEvent;
            float rawY = motionEvent2.getRawY() - motionEvent2.getY();
            if (findPointerIndex < motionEvent2.getPointerCount()) {
                f5 = motionEvent2.getY(findPointerIndex) + rawY;
            }
            if (x < f2 || f5 < f2 || x > f3 || f5 > f4) {
                return true;
            }
        }
        Iterator it2 = this.pointersDistanceMap.values().iterator();
        while (it2.hasNext()) {
            if (((MultiFingerDistancesObject) it2.next()).currFingersDiffXY < this.spanThreshold) {
                return true;
            }
        }
        return false;
    }

    public final void queryDisplayMetrics() {
        WindowManager windowManager = this.windowManager;
        if (windowManager == null) {
            this.displayMetrics = this.context.getResources().getDisplayMetrics();
        } else {
            this.displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getRealMetrics(this.displayMetrics);
        }
    }

    public abstract void reset();
}
