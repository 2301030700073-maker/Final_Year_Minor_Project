package com.takisoft.datetimepicker;

import android.content.DialogInterface;
import android.os.Bundle;
import androidx.appcompat.app.AlertDialog;
import androidx.preference.Preference;
import com.takisoft.datetimepicker.widget.TimePicker;
import com.takisoft.preferencex.TimePickerPreferenceDialogFragmentCompat;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TimePickerDialog extends AlertDialog implements DialogInterface.OnClickListener, TimePicker.OnTimeChangedListener {
    public final TimePicker mTimePicker;
    public final TimePickerPreferenceDialogFragmentCompat mTimeSetListener;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TimePickerDialog(androidx.appcompat.app.AppCompatActivity r5, com.takisoft.preferencex.TimePickerPreferenceDialogFragmentCompat r6, int r7, int r8, boolean r9) {
        /*
            r4 = this;
            android.util.TypedValue r0 = new android.util.TypedValue
            r0.<init>()
            android.content.res.Resources$Theme r1 = r5.getTheme()
            r2 = 2130970155(0x7f04062b, float:1.7549012E38)
            r3 = 1
            boolean r1 = r1.resolveAttribute(r2, r0, r3)
            if (r1 == 0) goto L16
            int r0 = r0.resourceId
            goto L19
        L16:
            r0 = 2131952610(0x7f1303e2, float:1.9541668E38)
        L19:
            r4.<init>(r5, r0)
            r4.mTimeSetListener = r6
            android.content.Context r5 = r4.getContext()
            android.view.LayoutInflater r6 = android.view.LayoutInflater.from(r5)
            r0 = 2131494269(0x7f0c057d, float:1.8612042E38)
            r1 = 0
            android.view.View r6 = r6.inflate(r0, r1)
            androidx.appcompat.app.AlertController r0 = r4.mAlert
            r0.mView = r6
            r1 = 0
            r0.mViewSpacingSpecified = r1
            r0 = 17039370(0x104000a, float:2.42446E-38)
            java.lang.String r0 = r5.getString(r0)
            r1 = -1
            r4.setButton(r1, r0, r4)
            r0 = 17039360(0x1040000, float:2.424457E-38)
            java.lang.String r5 = r5.getString(r0)
            r0 = -2
            r4.setButton(r0, r5, r4)
            r5 = 2131297333(0x7f090435, float:1.8212608E38)
            android.view.View r5 = r6.findViewById(r5)
            com.takisoft.datetimepicker.widget.TimePicker r5 = (com.takisoft.datetimepicker.widget.TimePicker) r5
            r4.mTimePicker = r5
            java.lang.Boolean r6 = java.lang.Boolean.valueOf(r9)
            r5.setIs24HourView(r6)
            java.lang.Integer r6 = java.lang.Integer.valueOf(r7)
            r5.setCurrentHour(r6)
            java.lang.Integer r6 = java.lang.Integer.valueOf(r8)
            r5.setCurrentMinute(r6)
            r5.setOnTimeChangedListener(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.takisoft.datetimepicker.TimePickerDialog.<init>(androidx.appcompat.app.AppCompatActivity, com.takisoft.preferencex.TimePickerPreferenceDialogFragmentCompat, int, int, boolean):void");
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        TimePickerPreferenceDialogFragmentCompat timePickerPreferenceDialogFragmentCompat;
        if (i == -2) {
            cancel();
            return;
        }
        if (i == -1 && (timePickerPreferenceDialogFragmentCompat = this.mTimeSetListener) != null) {
            TimePicker timePicker = this.mTimePicker;
            int intValue = timePicker.getCurrentHour().intValue();
            int intValue2 = timePicker.getCurrentMinute().intValue();
            timePickerPreferenceDialogFragmentCompat.pickedHour = intValue;
            timePickerPreferenceDialogFragmentCompat.pickedMinute = intValue2;
            timePickerPreferenceDialogFragmentCompat.mWhichButtonClicked = -1;
        }
    }

    @Override // android.app.Dialog
    public final void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        int i = bundle.getInt("hour");
        int i2 = bundle.getInt("minute");
        Boolean valueOf = Boolean.valueOf(bundle.getBoolean("is24hour"));
        TimePicker timePicker = this.mTimePicker;
        timePicker.setIs24HourView(valueOf);
        timePicker.setCurrentHour(Integer.valueOf(i));
        timePicker.setCurrentMinute(Integer.valueOf(i2));
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public final Bundle onSaveInstanceState() {
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        TimePicker timePicker = this.mTimePicker;
        onSaveInstanceState.putInt("hour", timePicker.getCurrentHour().intValue());
        onSaveInstanceState.putInt("minute", timePicker.getCurrentMinute().intValue());
        onSaveInstanceState.putBoolean("is24hour", timePicker.mDelegate.is24Hour());
        return onSaveInstanceState;
    }

    @Override // android.app.Dialog
    public final void show() {
        super.show();
        this.mAlert.mButtonPositive.setOnClickListener(new Preference.AnonymousClass1(6, this));
    }

    @Override // com.takisoft.datetimepicker.widget.TimePicker.OnTimeChangedListener
    public final void onTimeChanged() {
    }
}
