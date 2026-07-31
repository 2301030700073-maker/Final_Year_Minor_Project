package com.takisoft.colorpicker;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.fsck.k9.R;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ColorPickerSwatch extends FrameLayout implements View.OnClickListener {
    public ImageView mCheckmarkImage;
    public int mColor;
    public OnColorSelectedListener mOnColorSelectedListener;
    public ImageView mSwatchImage;

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        OnColorSelectedListener onColorSelectedListener = this.mOnColorSelectedListener;
        if (onColorSelectedListener != null) {
            onColorSelectedListener.onColorSelected(this.mColor);
        }
    }

    public void setChecked(boolean z) {
        ImageView imageView = this.mCheckmarkImage;
        if (z) {
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
    }

    public void setColor(int i) {
        this.mSwatchImage.setImageDrawable(new ColorStateDrawable(new Drawable[]{getContext().getResources().getDrawable(R.drawable.color_picker_swatch)}, i));
        this.mColor = i;
    }

    public void setOnColorSelectedListener(OnColorSelectedListener onColorSelectedListener) {
        this.mOnColorSelectedListener = onColorSelectedListener;
    }
}
