package com.google.android.material.timepicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import com.joeykrim.rootcheck.R;
import defpackage.ViewOnTouchListenerC3440oH;

/* loaded from: classes3.dex */
class TimePickerView extends ConstraintLayout {

    /* renamed from: break, reason: not valid java name */
    public static final /* synthetic */ int f11766break = 0;

    /* renamed from: do, reason: not valid java name */
    public final Chip f11767do;

    /* renamed from: com.google.android.material.timepicker.TimePickerView$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = TimePickerView.f11766break;
            TimePickerView.this.getClass();
        }
    }

    public TimePickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this && i == 0) {
            this.f11767do.sendAccessibilityEvent(8);
        }
    }

    public TimePickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Cdo cdo = new Cdo();
        LayoutInflater.from(context).inflate(R.layout.material_timepicker, this);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(R.id.material_clock_period_toggle);
        materialButtonToggleGroup.f10692do.add(new MaterialButtonToggleGroup.Cnew() { // from class: com.google.android.material.timepicker.if
            @Override // com.google.android.material.button.MaterialButtonToggleGroup.Cnew
            /* renamed from: do */
            public final void mo5719do() {
                int i2 = TimePickerView.f11766break;
                TimePickerView.this.getClass();
            }
        });
        Chip chip = (Chip) findViewById(R.id.material_minute_tv);
        Chip chip2 = (Chip) findViewById(R.id.material_hour_tv);
        this.f11767do = chip2;
        ViewOnTouchListenerC3440oH viewOnTouchListenerC3440oH = new ViewOnTouchListenerC3440oH(new GestureDetector(getContext(), new Cfor(this)));
        chip.setOnTouchListener(viewOnTouchListenerC3440oH);
        chip2.setOnTouchListener(viewOnTouchListenerC3440oH);
        chip.setTag(R.id.selection_type, 12);
        chip2.setTag(R.id.selection_type, 10);
        chip.setOnClickListener(cdo);
        chip2.setOnClickListener(cdo);
        chip.f10802do = "android.view.View";
        chip2.f10802do = "android.view.View";
    }
}
