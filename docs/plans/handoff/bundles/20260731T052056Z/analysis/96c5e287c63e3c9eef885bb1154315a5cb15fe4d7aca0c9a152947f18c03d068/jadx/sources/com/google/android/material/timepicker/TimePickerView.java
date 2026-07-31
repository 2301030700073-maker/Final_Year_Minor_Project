package com.google.android.material.timepicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import okio.internal.DefaultSocket;
import org.wikipedia.R;
import org.wikipedia.databinding.FragmentNewsBinding;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class TimePickerView extends ConstraintLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Chip hourView;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.android.material.timepicker.TimePickerView$1, reason: invalid class name */
    public final class AnonymousClass1 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = TimePickerView.$r8$clinit;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.android.material.timepicker.TimePickerView$2, reason: invalid class name */
    public final class AnonymousClass2 extends GestureDetector.SimpleOnGestureListener {
        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public final boolean onDoubleTap(MotionEvent motionEvent) {
            int i = TimePickerView.$r8$clinit;
            return false;
        }
    }

    public TimePickerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        LayoutInflater.from(context).inflate(R.layout.material_timepicker, this);
        ClockFaceView clockFaceView = (ClockFaceView) findViewById(R.id.material_clock_face);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(R.id.material_clock_period_toggle);
        materialButtonToggleGroup.onButtonCheckedListeners.add(new TimePickerView$$ExternalSyntheticLambda0());
        Chip chip = (Chip) findViewById(R.id.material_minute_tv);
        Chip chip2 = (Chip) findViewById(R.id.material_hour_tv);
        this.hourView = chip2;
        clockFaceView.onEnterKeyPressedListener = new TimePickerView$$ExternalSyntheticLambda1(this);
        AnonymousClass3 anonymousClass3 = new AnonymousClass3(0, new GestureDetector(getContext(), new AnonymousClass2()));
        chip.setOnTouchListener(anonymousClass3);
        chip2.setOnTouchListener(anonymousClass3);
        chip.setTag(R.id.selection_type, 12);
        chip2.setTag(R.id.selection_type, 10);
        chip.setOnClickListener(anonymousClass1);
        chip2.setOnClickListener(anonymousClass1);
        chip.setAccessibilityClassName("android.view.View");
        chip2.setAccessibilityClassName("android.view.View");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this && i == 0) {
            this.hourView.sendAccessibilityEvent(8);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.android.material.timepicker.TimePickerView$3, reason: invalid class name */
    public final class AnonymousClass3 implements View.OnTouchListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object val$gestureDetector;

        public AnonymousClass3(DefaultSocket defaultSocket, FragmentNewsBinding fragmentNewsBinding) {
            this.$r8$classId = 3;
            this.val$gestureDetector = fragmentNewsBinding;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x005d, code lost:
        
            if ((((android.widget.FrameLayout) r0.reflectionFilters).getMeasuredWidth() + kotlin.uuid.UuidKt.getViewPointOnScreen((android.widget.FrameLayout) r0.reflectionFilters).x) < r8.getRawX()) goto L17;
         */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnTouchListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean onTouch(android.view.View r7, android.view.MotionEvent r8) {
            /*
                r6 = this;
                int r0 = r6.$r8$classId
                r1 = 1
                r2 = 0
                java.lang.Object r6 = r6.val$gestureDetector
                switch(r0) {
                    case 0: goto La5;
                    case 1: goto L69;
                    case 2: goto Lf;
                    default: goto L9;
                }
            L9:
                org.wikipedia.databinding.FragmentNewsBinding r6 = (org.wikipedia.databinding.FragmentNewsBinding) r6
                r6.onTouchEvent(r8)
                return r2
            Lf:
                r7.getClass()
                r8.getClass()
                int r7 = r8.getAction()
                com.skydoves.balloon.Balloon r6 = (com.skydoves.balloon.Balloon) r6
                com.google.gson.GsonBuilder r0 = r6.binding
                com.skydoves.balloon.Balloon$Builder r3 = r6.builder
                r4 = 4
                if (r7 != r4) goto L2a
                boolean r7 = r3.dismissWhenTouchOutside
                if (r7 == 0) goto L68
                r6.dismiss()
                goto L68
            L2a:
                int r7 = r8.getAction()
                if (r7 != r1) goto L67
                java.lang.Object r7 = r0.reflectionFilters
                android.widget.FrameLayout r7 = (android.widget.FrameLayout) r7
                android.graphics.Point r7 = kotlin.uuid.UuidKt.getViewPointOnScreen(r7)
                int r7 = r7.x
                float r7 = (float) r7
                float r4 = r8.getRawX()
                int r7 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
                if (r7 > 0) goto L5f
                java.lang.Object r7 = r0.reflectionFilters
                android.widget.FrameLayout r7 = (android.widget.FrameLayout) r7
                android.graphics.Point r7 = kotlin.uuid.UuidKt.getViewPointOnScreen(r7)
                int r7 = r7.x
                java.lang.Object r0 = r0.reflectionFilters
                android.widget.FrameLayout r0 = (android.widget.FrameLayout) r0
                int r0 = r0.getMeasuredWidth()
                int r0 = r0 + r7
                float r7 = (float) r0
                float r8 = r8.getRawX()
                int r7 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1))
                if (r7 >= 0) goto L67
            L5f:
                boolean r7 = r3.dismissWhenTouchOutside
                if (r7 == 0) goto L68
                r6.dismiss()
                goto L68
            L67:
                r1 = r2
            L68:
                return r1
            L69:
                androidx.appcompat.widget.ListPopupWindow r6 = (androidx.appcompat.widget.ListPopupWindow) r6
                androidx.appcompat.widget.ListPopupWindow$ListSelectorHider r7 = r6.mResizePopupRunnable
                android.os.Handler r0 = r6.mHandler
                androidx.appcompat.widget.AppCompatPopupWindow r6 = r6.mPopup
                int r3 = r8.getAction()
                float r4 = r8.getX()
                int r4 = (int) r4
                float r8 = r8.getY()
                int r8 = (int) r8
                if (r3 != 0) goto L9f
                if (r6 == 0) goto L9f
                boolean r5 = r6.isShowing()
                if (r5 == 0) goto L9f
                if (r4 < 0) goto L9f
                int r5 = r6.getWidth()
                if (r4 >= r5) goto L9f
                if (r8 < 0) goto L9f
                int r6 = r6.getHeight()
                if (r8 >= r6) goto L9f
                r3 = 250(0xfa, double:1.235E-321)
                r0.postDelayed(r7, r3)
                goto La4
            L9f:
                if (r3 != r1) goto La4
                r0.removeCallbacks(r7)
            La4:
                return r2
            La5:
                android.widget.Checkable r7 = (android.widget.Checkable) r7
                boolean r7 = r7.isChecked()
                if (r7 == 0) goto Lb3
                android.view.GestureDetector r6 = (android.view.GestureDetector) r6
                boolean r2 = r6.onTouchEvent(r8)
            Lb3:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.timepicker.TimePickerView.AnonymousClass3.onTouch(android.view.View, android.view.MotionEvent):boolean");
        }

        public /* synthetic */ AnonymousClass3(int i, Object obj) {
            this.$r8$classId = i;
            this.val$gestureDetector = obj;
        }
    }
}
