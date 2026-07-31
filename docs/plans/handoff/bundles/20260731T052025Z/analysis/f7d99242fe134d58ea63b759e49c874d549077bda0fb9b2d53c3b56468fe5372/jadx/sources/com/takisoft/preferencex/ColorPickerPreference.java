package com.takisoft.preferencex;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.widget.ImageView;
import androidx.core.content.res.CamUtils;
import androidx.preference.DialogPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceViewHolder;
import com.fsck.k9.R;
import com.takisoft.colorpicker.ColorStateDrawable;
import org.openintents.openpgp.OpenPgpError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ColorPickerPreference extends DialogPreference {
    public int color;
    public final CharSequence[] colorDescriptions;
    public ImageView colorWidget;
    public final int[] colors;
    public final int columns;
    public final int size;
    public final boolean sortColors;

    static {
        PreferenceFragmentCompat.registerPreferenceFragment(ColorPickerPreference.class, ColorPickerPreferenceDialogFragmentCompat.class);
    }

    public ColorPickerPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.takisoft.preferencex.colorpicker.R$styleable.ColorPickerPreference, i, 0);
        int resourceId = obtainStyledAttributes.getResourceId(1, R.array.color_picker_default_colors);
        if (resourceId != 0) {
            this.colors = context.getResources().getIntArray(resourceId);
        }
        this.colorDescriptions = obtainStyledAttributes.getTextArray(0);
        this.color = obtainStyledAttributes.getColor(3, 0);
        this.columns = obtainStyledAttributes.getInt(2, 0);
        this.size = obtainStyledAttributes.getInt(4, 2);
        this.sortColors = obtainStyledAttributes.getBoolean(5, false);
        obtainStyledAttributes.recycle();
        this.mWidgetLayoutResId = R.layout.preference_widget_color_swatch;
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        ImageView imageView = (ImageView) preferenceViewHolder.findViewById(R.id.color_picker_widget);
        this.colorWidget = imageView;
        int i = this.color;
        if (imageView == null) {
            return;
        }
        this.colorWidget.setImageDrawable(new ColorStateDrawable(new Drawable[]{this.mContext.getDrawable(R.drawable.colorpickerpreference_pref_swatch)}, i));
    }

    @Override // androidx.preference.Preference
    public final Object onGetDefaultValue(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    @Override // androidx.preference.Preference
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setInternalColor(savedState.color, false);
    }

    @Override // androidx.preference.Preference
    public final Parcelable onSaveInstanceState() {
        super.onSaveInstanceState();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.mPersistent) {
            return absSavedState;
        }
        SavedState savedState = new SavedState();
        savedState.color = this.color;
        return savedState;
    }

    @Override // androidx.preference.Preference
    public final void onSetInitialValue(Object obj) {
        String str = (String) obj;
        setInternalColor(getPersistedInt(!TextUtils.isEmpty(str) ? Color.parseColor(str) : 0), true);
    }

    public final void setInternalColor(int i, boolean z) {
        if (getPersistedInt(0) == i && !z) {
            return;
        }
        this.color = i;
        persistInt(i);
        if (this.colorWidget != null) {
            this.colorWidget.setImageDrawable(new ColorStateDrawable(new Drawable[]{this.mContext.getDrawable(R.drawable.colorpickerpreference_pref_swatch)}, i));
        }
        notifyChanged();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new OpenPgpError.AnonymousClass1(4);
        public int color;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.color = parcel.readInt();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.color);
        }

        public SavedState() {
            super(AbsSavedState.EMPTY_STATE);
        }
    }

    public ColorPickerPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ColorPickerPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, CamUtils.getAttr(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle));
    }

    public ColorPickerPreference(Context context) {
        this(context, null);
    }
}
