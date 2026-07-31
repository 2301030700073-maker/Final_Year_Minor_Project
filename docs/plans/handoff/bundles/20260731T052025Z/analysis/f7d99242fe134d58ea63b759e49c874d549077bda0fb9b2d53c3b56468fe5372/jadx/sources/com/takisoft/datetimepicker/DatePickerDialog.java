package com.takisoft.datetimepicker;

import android.content.DialogInterface;
import android.os.Bundle;
import androidx.appcompat.app.AlertDialog;
import com.takisoft.datetimepicker.widget.DatePicker;
import com.takisoft.preferencex.DatePickerPreferenceDialogFragmentCompat;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DatePickerDialog extends AlertDialog implements DialogInterface.OnClickListener {
    public final DatePicker mDatePicker;
    public final DatePickerPreferenceDialogFragmentCompat mDateSetListener;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DatePickerDialog(androidx.appcompat.app.AppCompatActivity r5, com.takisoft.preferencex.DatePickerPreferenceDialogFragmentCompat r6, int r7, int r8, int r9) {
        /*
            r4 = this;
            android.util.TypedValue r0 = new android.util.TypedValue
            r0.<init>()
            android.content.res.Resources$Theme r1 = r5.getTheme()
            r2 = 2130969013(0x7f0401b5, float:1.7546696E38)
            r3 = 1
            boolean r1 = r1.resolveAttribute(r2, r0, r3)
            if (r1 == 0) goto L16
            int r0 = r0.resourceId
            goto L19
        L16:
            r0 = 2131952609(0x7f1303e1, float:1.9541666E38)
        L19:
            r4.<init>(r5, r0)
            androidx.transition.Transition$1 r5 = new androidx.transition.Transition$1
            r5.<init>()
            android.content.Context r0 = r4.getContext()
            android.view.LayoutInflater r1 = android.view.LayoutInflater.from(r0)
            r2 = 2131493205(0x7f0c0155, float:1.8609884E38)
            r3 = 0
            android.view.View r1 = r1.inflate(r2, r3)
            androidx.appcompat.app.AlertController r2 = r4.mAlert
            r2.mView = r1
            r3 = 0
            r2.mViewSpacingSpecified = r3
            r2 = 17039370(0x104000a, float:2.42446E-38)
            java.lang.String r2 = r0.getString(r2)
            r3 = -1
            r4.setButton(r3, r2, r4)
            r2 = 17039360(0x1040000, float:2.424457E-38)
            java.lang.String r0 = r0.getString(r2)
            r2 = -2
            r4.setButton(r2, r0, r4)
            r0 = 2131296636(0x7f09017c, float:1.8211194E38)
            android.view.View r0 = r1.findViewById(r0)
            com.takisoft.datetimepicker.widget.DatePicker r0 = (com.takisoft.datetimepicker.widget.DatePicker) r0
            r4.mDatePicker = r0
            r0.init(r7, r8, r9, r4)
            r0.setValidationCallback(r5)
            r4.mDateSetListener = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.takisoft.datetimepicker.DatePickerDialog.<init>(androidx.appcompat.app.AppCompatActivity, com.takisoft.preferencex.DatePickerPreferenceDialogFragmentCompat, int, int, int):void");
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        DatePickerPreferenceDialogFragmentCompat datePickerPreferenceDialogFragmentCompat;
        if (i == -2) {
            cancel();
            return;
        }
        if (i == -1 && (datePickerPreferenceDialogFragmentCompat = this.mDateSetListener) != null) {
            DatePicker datePicker = this.mDatePicker;
            datePicker.clearFocus();
            int year = datePicker.getYear();
            int month = datePicker.getMonth();
            int dayOfMonth = datePicker.getDayOfMonth();
            datePickerPreferenceDialogFragmentCompat.pickedYear = year;
            datePickerPreferenceDialogFragmentCompat.pickedMonth = month;
            datePickerPreferenceDialogFragmentCompat.pickedDay = dayOfMonth;
            datePickerPreferenceDialogFragmentCompat.mWhichButtonClicked = -1;
        }
    }

    @Override // android.app.Dialog
    public final void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.mDatePicker.init(bundle.getInt("year"), bundle.getInt("month"), bundle.getInt("day"), this);
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public final Bundle onSaveInstanceState() {
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        DatePicker datePicker = this.mDatePicker;
        onSaveInstanceState.putInt("year", datePicker.getYear());
        onSaveInstanceState.putInt("month", datePicker.getMonth());
        onSaveInstanceState.putInt("day", datePicker.getDayOfMonth());
        return onSaveInstanceState;
    }
}
