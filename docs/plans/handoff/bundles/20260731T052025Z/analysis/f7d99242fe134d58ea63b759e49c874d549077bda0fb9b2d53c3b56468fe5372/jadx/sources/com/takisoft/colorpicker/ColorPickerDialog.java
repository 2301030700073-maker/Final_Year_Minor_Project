package com.takisoft.colorpicker;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import com.fsck.k9.R;
import com.takisoft.preferencex.ColorPickerPreferenceDialogFragmentCompat;
import org.openintents.openpgp.OpenPgpError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ColorPickerDialog extends AlertDialog implements OnColorSelectedListener {
    public final ColorPickerPreferenceDialogFragmentCompat listener;
    public final ColorPickerPaletteFlex mPalette;
    public final Params params;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Params implements Parcelable {
        public static final Parcelable.Creator<Params> CREATOR = new OpenPgpError.AnonymousClass1(1);
        public CharSequence[] mColorContentDescriptions;
        public int[] mColors;
        public int mColumns;
        public int mMarginSize;
        public int mSelectedColor;
        public int mSelectedColorIndex;
        public int mSize;
        public int mSwatchLength;

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeIntArray(this.mColors);
            parcel.writeInt(this.mSelectedColor);
            parcel.writeInt(this.mColumns);
            parcel.writeInt(this.mSize);
            parcel.writeInt(this.mSwatchLength);
            parcel.writeInt(this.mMarginSize);
            parcel.writeInt(this.mSelectedColorIndex);
        }
    }

    public ColorPickerDialog(AppCompatActivity appCompatActivity, ColorPickerPreferenceDialogFragmentCompat colorPickerPreferenceDialogFragmentCompat, Params params) {
        super(appCompatActivity, R.style.ThemeOverlay_Material_Dialog_ColorPicker);
        Context context = getContext();
        this.listener = colorPickerPreferenceDialogFragmentCompat;
        this.params = params;
        View inflate = LayoutInflater.from(context).inflate(R.layout.color_picker_dialog, this.mAlert.mListView);
        AlertController alertController = this.mAlert;
        alertController.mView = inflate;
        alertController.mViewSpacingSpecified = false;
        ProgressBar progressBar = (ProgressBar) inflate.findViewById(android.R.id.progress);
        ColorPickerPaletteFlex colorPickerPaletteFlex = (ColorPickerPaletteFlex) inflate.findViewById(R.id.color_picker);
        this.mPalette = colorPickerPaletteFlex;
        colorPickerPaletteFlex.setOnColorSelectedListener(this);
        if (params.mColumns > 0) {
            colorPickerPaletteFlex.getLayoutParams().width = (((params.mMarginSize * 2) + params.mSwatchLength) * params.mColumns) + colorPickerPaletteFlex.getPaddingRight() + colorPickerPaletteFlex.getPaddingLeft();
        }
        if (params.mColors == null || progressBar == null) {
            return;
        }
        progressBar.setVisibility(8);
        if (params.mColors != null) {
            colorPickerPaletteFlex.setup(params);
        }
        colorPickerPaletteFlex.setVisibility(0);
    }

    @Override // com.takisoft.colorpicker.OnColorSelectedListener
    public final void onColorSelected(int i) {
        ColorPickerPreferenceDialogFragmentCompat colorPickerPreferenceDialogFragmentCompat = this.listener;
        if (colorPickerPreferenceDialogFragmentCompat != null) {
            colorPickerPreferenceDialogFragmentCompat.onColorSelected(i);
        }
        Params params = this.params;
        if (i != params.mSelectedColor) {
            params.mSelectedColor = i;
            this.mPalette.setup(params);
        }
        dismiss();
    }
}
