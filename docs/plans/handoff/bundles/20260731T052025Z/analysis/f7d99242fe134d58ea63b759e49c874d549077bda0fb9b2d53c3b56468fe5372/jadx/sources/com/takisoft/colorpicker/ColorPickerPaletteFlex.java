package com.takisoft.colorpicker;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.recyclerview.widget.RecyclerView;
import com.fsck.k9.R;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.takisoft.colorpicker.ColorPickerDialog;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import org.minidns.edns.Edns;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ColorPickerPaletteFlex extends RecyclerView implements OnColorSelectedListener {
    public final String mDescription;
    public final String mDescriptionSelected;
    public OnColorSelectedListener mOnColorSelectedListener;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ColorAdapter extends RecyclerView.Adapter {
        public final ColorPickerPaletteFlex colorSelectedListener;
        public final String description;
        public final String descriptionSelected;
        public final ColorPickerDialog.Params params;

        public ColorAdapter(ColorPickerDialog.Params params, ColorPickerPaletteFlex colorPickerPaletteFlex, String str, String str2) {
            this.params = params;
            this.colorSelectedListener = colorPickerPaletteFlex;
            this.description = str;
            this.descriptionSelected = str2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            return this.params.mColors.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            CharSequence format;
            ColorPickerSwatch colorPickerSwatch = (ColorPickerSwatch) ((ColorHolder) viewHolder).itemView;
            ColorPickerDialog.Params params = this.params;
            int i2 = params.mSelectedColor;
            int i3 = params.mColors[i];
            boolean z = i2 == i3;
            colorPickerSwatch.setColor(i3);
            colorPickerSwatch.setChecked(z);
            FlexboxLayoutManager.LayoutParams layoutParams = (FlexboxLayoutManager.LayoutParams) colorPickerSwatch.getLayoutParams();
            int i4 = params.mColumns;
            if (i4 <= 0 || i % i4 != 0) {
                layoutParams.mWrapBefore = false;
            } else {
                layoutParams.mWrapBefore = true;
            }
            CharSequence[] charSequenceArr = params.mColorContentDescriptions;
            if (charSequenceArr == null || charSequenceArr.length <= i) {
                int i5 = i + 1;
                format = z ? String.format(this.descriptionSelected, Integer.valueOf(i5)) : String.format(this.description, Integer.valueOf(i5));
            } else {
                format = charSequenceArr[i];
            }
            colorPickerSwatch.setContentDescription(format);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            Context context = viewGroup.getContext();
            ColorPickerSwatch colorPickerSwatch = new ColorPickerSwatch(context);
            LayoutInflater.from(context).inflate(R.layout.color_picker_swatch, colorPickerSwatch);
            colorPickerSwatch.mSwatchImage = (ImageView) colorPickerSwatch.findViewById(R.id.color_picker_swatch);
            ImageView imageView = (ImageView) colorPickerSwatch.findViewById(R.id.color_picker_checkmark);
            colorPickerSwatch.mCheckmarkImage = imageView;
            imageView.setImageDrawable(Utf8.SafeProcessor.getDrawable(context, R.drawable.color_picker_checkmark));
            colorPickerSwatch.setOnClickListener(colorPickerSwatch);
            colorPickerSwatch.setOnColorSelectedListener(this.colorSelectedListener);
            ColorPickerDialog.Params params = this.params;
            int i2 = params.mSwatchLength;
            FlexboxLayoutManager.LayoutParams layoutParams = new FlexboxLayoutManager.LayoutParams(i2, i2);
            int i3 = params.mMarginSize;
            layoutParams.setMargins(i3, i3, i3, i3);
            layoutParams.mFlexGrow = 0.0f;
            layoutParams.mFlexShrink = 0.0f;
            colorPickerSwatch.setLayoutParams(layoutParams);
            return new ColorHolder(colorPickerSwatch);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ColorHolder extends RecyclerView.ViewHolder {
    }

    public ColorPickerPaletteFlex(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setLayoutManager(new FlexboxLayoutManager(context));
        Resources resources = getResources();
        this.mDescription = resources.getString(R.string.color_swatch_description);
        this.mDescriptionSelected = resources.getString(R.string.color_swatch_description_selected);
        Edns edns = new Edns(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ColorPickerPaletteFlex, i, 0);
        int resourceId = obtainStyledAttributes.getResourceId(1, R.array.color_picker_default_colors);
        if (resourceId > 0) {
            edns.variablePart = context.getResources().getIntArray(resourceId);
        }
        edns.udpPayloadSize = obtainStyledAttributes.getInt(3, 0);
        edns.dnssecOk = obtainStyledAttributes.getBoolean(5, false);
        edns.version = obtainStyledAttributes.getInt(2, 0);
        edns.flags = obtainStyledAttributes.getInt(4, 2);
        edns.optRecord = obtainStyledAttributes.getTextArray(0);
        obtainStyledAttributes.recycle();
        setup(edns.build());
    }

    @Override // com.takisoft.colorpicker.OnColorSelectedListener
    public final void onColorSelected(int i) {
        OnColorSelectedListener onColorSelectedListener = this.mOnColorSelectedListener;
        if (onColorSelectedListener != null) {
            onColorSelectedListener.onColorSelected(i);
        }
    }

    public void setOnColorSelectedListener(OnColorSelectedListener onColorSelectedListener) {
        this.mOnColorSelectedListener = onColorSelectedListener;
    }

    public void setup(ColorPickerDialog.Params params) {
        if (params.mColors == null) {
            Regex$$ExternalSyntheticBUOutline0.m$3(params, ") does not contain colors.", "The supplied params (");
            return;
        }
        setAdapter(new ColorAdapter(params, this, this.mDescription, this.mDescriptionSelected));
        int length = params.mColors.length;
        for (int i = 0; i < length; i++) {
            if (params.mColors[i] == params.mSelectedColor) {
                scrollToPosition(i);
                return;
            }
        }
    }

    public ColorPickerPaletteFlex(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ColorPickerPaletteFlex(Context context) {
        this(context, null);
    }
}
