package com.android.launcher3.dragndrop;

import android.os.SystemClock;
import android.view.DragEvent;
import android.view.MotionEvent;
import com.android.quickstep.fallback.RecentsState;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public abstract class DragDriver {
    public final EventListener mEventListener;
    public final Consumer mSecondaryEventConsumer;

    public interface EventListener {
    }

    public class InternalDragDriver extends DragDriver {
        public InternalDragDriver(DragController dragController, Consumer consumer) {
            super(dragController, consumer);
        }

        @Override // com.android.launcher3.dragndrop.DragDriver
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            this.mSecondaryEventConsumer.accept(motionEvent);
            int action = motionEvent.getAction();
            if (action == 1) {
                ((DragController) this.mEventListener).onDriverDragEnd(motionEvent.getX(), motionEvent.getY());
            } else if (action == 3) {
                ((DragController) this.mEventListener).cancelDrag();
            }
            return true;
        }

        @Override // com.android.launcher3.dragndrop.DragDriver
        public boolean onTouchEvent(MotionEvent motionEvent) {
            this.mSecondaryEventConsumer.accept(motionEvent);
            int action = motionEvent.getAction();
            if (action == 1) {
                ((DragController) this.mEventListener).onDriverDragMove(motionEvent.getX(), motionEvent.getY());
                ((DragController) this.mEventListener).onDriverDragEnd(motionEvent.getX(), motionEvent.getY());
            } else if (action == 2) {
                ((DragController) this.mEventListener).onDriverDragMove(motionEvent.getX(), motionEvent.getY());
            } else if (action == 3) {
                ((DragController) this.mEventListener).cancelDrag();
            }
            return true;
        }
    }

    public class SystemDragDriver extends DragDriver {
        public final long mDragStartTime;
        public float mLastX;
        public float mLastY;

        public SystemDragDriver(DragController dragController, Consumer consumer) {
            super(dragController, consumer);
            this.mLastX = RecentsState.NO_OFFSET;
            this.mLastY = RecentsState.NO_OFFSET;
            this.mDragStartTime = SystemClock.uptimeMillis();
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0035 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0036  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0046 A[FALL_THROUGH, RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x004f  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0076  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0092  */
        @Override // com.android.launcher3.dragndrop.DragDriver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onDragEvent(android.view.DragEvent r13) {
            /*
                r12 = this;
                int r0 = r13.getAction()
                r1 = 2
                r2 = 0
                r3 = 1
                if (r0 == r3) goto L11
                if (r0 == r1) goto L12
                r1 = 4
                if (r0 == r1) goto Lf
                goto L2e
            Lf:
                r8 = r3
                goto L13
            L11:
                r1 = r2
            L12:
                r8 = r1
            L13:
                long r4 = r12.mDragStartTime
                long r6 = android.os.SystemClock.uptimeMillis()
                float r9 = r13.getX()
                float r10 = r13.getY()
                r11 = 0
                android.view.MotionEvent r0 = android.view.MotionEvent.obtain(r4, r6, r8, r9, r10, r11)
                java.util.function.Consumer r1 = r12.mSecondaryEventConsumer
                r1.accept(r0)
                r0.recycle()
            L2e:
                int r0 = r13.getAction()
                switch(r0) {
                    case 1: goto L92;
                    case 2: goto L76;
                    case 3: goto L4f;
                    case 4: goto L47;
                    case 5: goto L46;
                    case 6: goto L36;
                    default: goto L35;
                }
            L35:
                return r2
            L36:
                com.android.launcher3.dragndrop.DragDriver$EventListener r12 = r12.mEventListener
                com.android.launcher3.dragndrop.DragController r12 = (com.android.launcher3.dragndrop.DragController) r12
                com.android.launcher3.DropTarget r13 = r12.mLastDropTarget
                if (r13 == 0) goto L46
                com.android.launcher3.DropTarget$DragObject r0 = r12.mDragObject
                r13.onDragExit(r0)
                r13 = 0
                r12.mLastDropTarget = r13
            L46:
                return r3
            L47:
                com.android.launcher3.dragndrop.DragDriver$EventListener r12 = r12.mEventListener
                com.android.launcher3.dragndrop.DragController r12 = (com.android.launcher3.dragndrop.DragController) r12
                r12.cancelDrag()
                return r3
            L4f:
                float r0 = r13.getX()
                r12.mLastX = r0
                float r0 = r13.getY()
                r12.mLastY = r0
                com.android.launcher3.dragndrop.DragDriver$EventListener r0 = r12.mEventListener
                float r1 = r13.getX()
                float r13 = r13.getY()
                com.android.launcher3.dragndrop.DragController r0 = (com.android.launcher3.dragndrop.DragController) r0
                r0.onDriverDragMove(r1, r13)
                com.android.launcher3.dragndrop.DragDriver$EventListener r13 = r12.mEventListener
                float r0 = r12.mLastX
                float r12 = r12.mLastY
                com.android.launcher3.dragndrop.DragController r13 = (com.android.launcher3.dragndrop.DragController) r13
                r13.onDriverDragEnd(r0, r12)
                return r3
            L76:
                float r0 = r13.getX()
                r12.mLastX = r0
                float r0 = r13.getY()
                r12.mLastY = r0
                com.android.launcher3.dragndrop.DragDriver$EventListener r12 = r12.mEventListener
                float r0 = r13.getX()
                float r13 = r13.getY()
                com.android.launcher3.dragndrop.DragController r12 = (com.android.launcher3.dragndrop.DragController) r12
                r12.onDriverDragMove(r0, r13)
                return r3
            L92:
                float r0 = r13.getX()
                r12.mLastX = r0
                float r13 = r13.getY()
                r12.mLastY = r13
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.dragndrop.DragDriver.SystemDragDriver.onDragEvent(android.view.DragEvent):boolean");
        }

        @Override // com.android.launcher3.dragndrop.DragDriver
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return false;
        }
    }

    public DragDriver(EventListener eventListener, Consumer consumer) {
        this.mEventListener = eventListener;
        this.mSecondaryEventConsumer = consumer;
    }

    public boolean onDragEvent(DragEvent dragEvent) {
        return false;
    }

    public abstract boolean onInterceptTouchEvent(MotionEvent motionEvent);

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }
}
