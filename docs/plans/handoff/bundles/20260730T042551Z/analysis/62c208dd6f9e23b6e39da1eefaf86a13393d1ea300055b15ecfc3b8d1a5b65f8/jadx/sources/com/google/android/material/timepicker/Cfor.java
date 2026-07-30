package com.google.android.material.timepicker;

import android.view.GestureDetector;
import android.view.MotionEvent;

/* renamed from: com.google.android.material.timepicker.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ TimePickerView f11770do;

    public Cfor(TimePickerView timePickerView) {
        this.f11770do = timePickerView;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTap(MotionEvent motionEvent) {
        int i = TimePickerView.f11766break;
        this.f11770do.getClass();
        return false;
    }
}
