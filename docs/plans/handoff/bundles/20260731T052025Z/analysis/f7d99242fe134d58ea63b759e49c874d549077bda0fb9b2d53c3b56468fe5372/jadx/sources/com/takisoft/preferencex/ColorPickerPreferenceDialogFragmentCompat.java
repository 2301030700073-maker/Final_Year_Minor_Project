package com.takisoft.preferencex;

import android.app.Dialog;
import android.os.Bundle;
import androidx.preference.PreferenceDialogFragmentCompat;
import com.takisoft.colorpicker.ColorPickerDialog;
import com.takisoft.colorpicker.OnColorSelectedListener;
import org.minidns.edns.Edns;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ColorPickerPreferenceDialogFragmentCompat extends PreferenceDialogFragmentCompat implements OnColorSelectedListener {
    public int pickedColor;

    @Override // com.takisoft.colorpicker.OnColorSelectedListener
    public final void onColorSelected(int i) {
        this.pickedColor = i;
        this.mWhichButtonClicked = -1;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        ColorPickerPreference colorPickerPreference = (ColorPickerPreference) getPreference();
        Edns edns = new Edns(getContext());
        edns.udpPayloadSize = colorPickerPreference.color;
        edns.variablePart = colorPickerPreference.colors;
        edns.optRecord = colorPickerPreference.colorDescriptions;
        edns.flags = colorPickerPreference.size;
        edns.dnssecOk = colorPickerPreference.sortColors;
        edns.version = colorPickerPreference.columns;
        ColorPickerDialog colorPickerDialog = new ColorPickerDialog(getActivity(), this, edns.build());
        colorPickerDialog.setTitle(colorPickerPreference.mDialogTitle);
        return colorPickerDialog;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public final void onDialogClosed(boolean z) {
        ColorPickerPreference colorPickerPreference = (ColorPickerPreference) getPreference();
        if (z) {
            colorPickerPreference.callChangeListener(Integer.valueOf(this.pickedColor));
            colorPickerPreference.setInternalColor(this.pickedColor, false);
        }
    }
}
