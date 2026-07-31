package com.takisoft.preferencex;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import androidx.core.content.res.CamUtils;
import androidx.preference.DialogPreference;
import androidx.preference.Preference;
import com.fsck.k9.R;
import com.jcraft.jzlib.Adler32;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import org.openintents.openpgp.OpenPgpError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class TimePickerPreference extends DialogPreference {
    public static final SimpleDateFormat FORMAT = new SimpleDateFormat("HH:mm", Locale.US);
    public final int hourFormat;
    public final Date pickerTime;
    public CharSequence summary;
    public final CharSequence summaryHasTime;
    public final String summaryPattern;
    public Date time;

    static {
        PreferenceFragmentCompat.registerPreferenceFragment(TimePickerPreference.class, TimePickerPreferenceDialogFragmentCompat.class);
    }

    public TimePickerPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.summary = super.getSummary();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.takisoft.preferencex.datetimepicker.R$styleable.TimePickerPreference, i, 0);
        this.hourFormat = obtainStyledAttributes.getInt(0, 0);
        this.summaryPattern = obtainStyledAttributes.getString(3);
        this.summaryHasTime = obtainStyledAttributes.getText(2);
        if (obtainStyledAttributes.getBoolean(4, false)) {
            if (Adler32.instance == null) {
                Adler32.instance = new Adler32(20);
            }
            this.mSummaryProvider = Adler32.instance;
            notifyChanged();
        }
        String string = obtainStyledAttributes.getString(1);
        if (!TextUtils.isEmpty(string)) {
            try {
                this.pickerTime = FORMAT.parse(string);
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public final CharSequence getSummary() {
        Preference.SummaryProvider summaryProvider = this.mSummaryProvider;
        if (summaryProvider != null) {
            return summaryProvider.provideSummary(this);
        }
        if (this.time == null) {
            return this.summary;
        }
        String str = this.summaryPattern;
        DateFormat timeFormat = str == null ? android.text.format.DateFormat.getTimeFormat(this.mContext) : new SimpleDateFormat(str, Locale.getDefault());
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(this.time);
        String format = timeFormat.format(calendar.getTime());
        CharSequence charSequence = this.summaryHasTime;
        return (charSequence == null || format == null) ? format != null ? format : this.summary : String.format(charSequence.toString(), format);
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
        this.time = savedState.time;
    }

    @Override // androidx.preference.Preference
    public final Parcelable onSaveInstanceState() {
        super.onSaveInstanceState();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.mPersistent) {
            return absSavedState;
        }
        SavedState savedState = new SavedState();
        savedState.time = this.time;
        return savedState;
    }

    @Override // androidx.preference.Preference
    public final void onSetInitialValue(Object obj) {
        setInternalTime(getPersistedString((String) obj), true);
    }

    public final void setInternalTime(String str, boolean z) {
        String persistedString = getPersistedString(null);
        if ((persistedString == null || persistedString.equals(str)) && ((str == null || str.equals(persistedString)) && !z)) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                this.time = FORMAT.parse(str);
            } catch (ParseException e) {
                e.printStackTrace();
                this.time = null;
            }
        }
        if (str == null) {
            str = "";
        }
        persistString(str);
        notifyChanged();
    }

    @Override // androidx.preference.Preference
    public final void setSummary(CharSequence charSequence) {
        super.setSummary(charSequence);
        if (charSequence == null && this.summary != null) {
            this.summary = null;
        } else {
            if (charSequence == null || charSequence.equals(this.summary)) {
                return;
            }
            this.summary = ((String) charSequence).toString();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new OpenPgpError.AnonymousClass1(6);
        public Date time;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.time = (Date) parcel.readSerializable();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeSerializable(this.time);
        }

        public SavedState() {
            super(AbsSavedState.EMPTY_STATE);
        }
    }

    public TimePickerPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public TimePickerPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, CamUtils.getAttr(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle));
    }

    public TimePickerPreference(Context context) {
        this(context, null);
    }
}
