package com.android.launcher3.touch;

import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.android.launcher3.Utilities;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class SingleAxisSwipeDetector extends BaseSwipeDetector {
    public final Direction mDir;
    public final Listener mListener;
    public int mScrollDirections;
    public static final Direction VERTICAL = new Direction() { // from class: com.android.launcher3.touch.SingleAxisSwipeDetector.1
        @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Direction
        public float extractDirection(PointF pointF) {
            return pointF.y;
        }

        @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Direction
        public float extractOrthogonalDirection(PointF pointF) {
            return pointF.x;
        }

        @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Direction
        public boolean isNegative(float f) {
            return f > RecentsState.NO_OFFSET;
        }

        @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Direction
        public boolean isPositive(float f) {
            return f < RecentsState.NO_OFFSET;
        }
    };
    public static final Direction HORIZONTAL = new Direction() { // from class: com.android.launcher3.touch.SingleAxisSwipeDetector.2
        @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Direction
        public float extractDirection(PointF pointF) {
            return pointF.x;
        }

        @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Direction
        public float extractOrthogonalDirection(PointF pointF) {
            return pointF.y;
        }

        @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Direction
        public boolean isNegative(float f) {
            return f < RecentsState.NO_OFFSET;
        }

        @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Direction
        public boolean isPositive(float f) {
            return f > RecentsState.NO_OFFSET;
        }
    };

    public abstract class Direction {
        public abstract float extractDirection(PointF pointF);

        public abstract float extractOrthogonalDirection(PointF pointF);

        public abstract boolean isNegative(float f);

        public abstract boolean isPositive(float f);
    }

    public interface Listener {
        boolean onDrag(float f);

        default boolean onDrag(float f, MotionEvent motionEvent) {
            return onDrag(f);
        }

        void onDragEnd(float f);

        void onDragStart(boolean z, float f);

        default boolean onDrag(float f, float f2, MotionEvent motionEvent) {
            return onDrag(f, motionEvent);
        }
    }

    public SingleAxisSwipeDetector(Context context, Listener listener, Direction direction) {
        this(ViewConfiguration.get(context), listener, direction, Utilities.isRtl(context.getResources()));
    }

    @Override // com.android.launcher3.touch.BaseSwipeDetector
    public void reportDragEndInternal(PointF pointF) {
        this.mListener.onDragEnd(this.mDir.extractDirection(pointF));
    }

    @Override // com.android.launcher3.touch.BaseSwipeDetector
    public void reportDragStartInternal(boolean z) {
        this.mListener.onDragStart(!z, this.mDir.extractDirection(this.mSubtractDisplacement));
    }

    @Override // com.android.launcher3.touch.BaseSwipeDetector
    public void reportDraggingInternal(PointF pointF, MotionEvent motionEvent) {
        this.mListener.onDrag(this.mDir.extractDirection(pointF), this.mDir.extractOrthogonalDirection(pointF), motionEvent);
    }

    @Override // com.android.launcher3.touch.BaseSwipeDetector
    public boolean shouldScrollStart(PointF pointF) {
        if (Math.abs(this.mDir.extractDirection(pointF)) < Math.max(this.mTouchSlop, Math.abs(this.mDir.extractOrthogonalDirection(pointF)))) {
            return false;
        }
        float extractDirection = this.mDir.extractDirection(pointF);
        if (!((this.mScrollDirections & 2) > 0 && this.mDir.isNegative(extractDirection))) {
            if (!((this.mScrollDirections & 1) > 0 && this.mDir.isPositive(extractDirection))) {
                return false;
            }
        }
        return true;
    }

    public SingleAxisSwipeDetector(ViewConfiguration viewConfiguration, Listener listener, Direction direction, boolean z) {
        super(viewConfiguration, z);
        this.mListener = listener;
        this.mDir = direction;
    }
}
