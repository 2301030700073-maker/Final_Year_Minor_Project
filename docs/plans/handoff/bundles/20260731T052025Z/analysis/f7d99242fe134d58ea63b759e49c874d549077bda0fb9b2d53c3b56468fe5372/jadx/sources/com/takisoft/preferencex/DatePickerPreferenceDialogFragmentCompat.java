package com.takisoft.preferencex;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.collection.internal.Lock;
import androidx.preference.PreferenceDialogFragmentCompat;
import com.takisoft.datetimepicker.DatePickerDialog;
import com.takisoft.datetimepicker.widget.DatePicker;
import java.util.Calendar;
import java.util.Date;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class DatePickerPreferenceDialogFragmentCompat extends PreferenceDialogFragmentCompat {
    public int pickedDay;
    public int pickedMonth;
    public int pickedYear;

    @Override // androidx.preference.PreferenceDialogFragmentCompat, android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.mWhichButtonClicked = i;
        if (i == -1) {
            ((DatePickerDialog) this.mDialog).onClick(dialogInterface, i);
        }
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        DatePickerPreference datePickerPreference = (DatePickerPreference) getPreference();
        Calendar calendar = Calendar.getInstance();
        Date date = datePickerPreference.date;
        Date date2 = datePickerPreference.pickerDate;
        Date date3 = datePickerPreference.minDate;
        Date date4 = datePickerPreference.maxDate;
        if (date != null) {
            calendar.setTime(date);
        } else if (date2 != null) {
            calendar.setTime(date2);
        }
        DatePickerDialog datePickerDialog = new DatePickerDialog(getActivity(), this, calendar.get(1), calendar.get(2), calendar.get(5));
        DatePicker datePicker = datePickerDialog.mDatePicker;
        if (date3 != null) {
            calendar.setTime(date3);
            datePicker.setMinDate(calendar.getTimeInMillis());
        }
        if (date4 != null) {
            calendar.setTime(date4);
            datePicker.setMaxDate(calendar.getTimeInMillis());
        }
        datePickerDialog.setButton(-1, datePickerPreference.mPositiveButtonText, this);
        datePickerDialog.setButton(-2, datePickerPreference.mNegativeButtonText, this);
        return datePickerDialog;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public final void onDialogClosed(boolean z) {
        DatePickerPreference datePickerPreference = (DatePickerPreference) getPreference();
        if (z) {
            datePickerPreference.callChangeListener(new Lock());
            int i = this.pickedYear;
            int i2 = this.pickedMonth;
            int i3 = this.pickedDay;
            Calendar calendar = Calendar.getInstance();
            calendar.set(1, i);
            calendar.set(2, i2);
            calendar.set(5, i3);
            datePickerPreference.setInternalDate(DatePickerPreference.FORMAT.format(calendar.getTime()), false);
        }
    }
}
