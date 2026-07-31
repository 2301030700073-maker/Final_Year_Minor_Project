package com.takisoft.preferencex;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.format.DateFormat;
import androidx.appcompat.app.AppCompatActivity;
import androidx.preference.PreferenceDialogFragmentCompat;
import com.takisoft.datetimepicker.TimePickerDialog;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class TimePickerPreferenceDialogFragmentCompat extends PreferenceDialogFragmentCompat {
    public int pickedHour;
    public int pickedMinute;

    @Override // androidx.preference.PreferenceDialogFragmentCompat, android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.mWhichButtonClicked = i;
        if (i == -1) {
            ((TimePickerDialog) this.mDialog).onClick(dialogInterface, i);
        }
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        TimePickerPreference timePickerPreference = (TimePickerPreference) getPreference();
        Calendar calendar = Calendar.getInstance();
        Date date = timePickerPreference.time;
        Date date2 = timePickerPreference.pickerTime;
        if (date != null) {
            calendar.setTime(date);
        } else if (date2 != null) {
            calendar.setTime(date2);
        }
        AppCompatActivity activity = getActivity();
        int i = calendar.get(11);
        int i2 = calendar.get(12);
        int i3 = timePickerPreference.hourFormat;
        TimePickerDialog timePickerDialog = new TimePickerDialog(activity, this, i, i2, i3 == 0 ? DateFormat.is24HourFormat(timePickerPreference.mContext) : i3 == 2);
        timePickerDialog.setButton(-1, timePickerPreference.mPositiveButtonText, this);
        timePickerDialog.setButton(-2, timePickerPreference.mNegativeButtonText, this);
        return timePickerDialog;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public final void onDialogClosed(boolean z) {
        TimePickerPreference timePickerPreference = (TimePickerPreference) getPreference();
        if (z) {
            timePickerPreference.callChangeListener(new Path.Companion());
            timePickerPreference.setInternalTime(String.format(Locale.US, "%02d:%02d", Integer.valueOf(this.pickedHour), Integer.valueOf(this.pickedMinute)), false);
        }
    }
}
