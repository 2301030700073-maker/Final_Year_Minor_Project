package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import androidx.fragment.app.FragmentState;
import androidx.preference.Preference;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ConnectionPool;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.databinding.DialogThemeChooserBinding;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.theme.ThemeChooserDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class SeekBarPreference extends Preference {
    public final boolean mAdjustable;
    public int mMax;
    public int mMin;
    public SeekBar mSeekBar;
    public final AnonymousClass1 mSeekBarChangeListener;
    public int mSeekBarIncrement;
    public final SearchView.AnonymousClass6 mSeekBarKeyListener;
    public int mSeekBarValue;
    public TextView mSeekBarValueTextView;
    public final boolean mShowSeekBarValue;
    public boolean mTrackingTouch;
    public final boolean mUpdatesContinuously;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.preference.SeekBarPreference$1, reason: invalid class name */
    public final class AnonymousClass1 implements SeekBar.OnSeekBarChangeListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass1(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            int textSizeMultiplier;
            int i2 = this.$r8$classId;
            Object obj = this.this$0;
            switch (i2) {
                case 0:
                    SeekBarPreference seekBarPreference = (SeekBarPreference) obj;
                    if (z && (seekBarPreference.mUpdatesContinuously || !seekBarPreference.mTrackingTouch)) {
                        seekBarPreference.syncValueInternal(seekBar);
                        return;
                    }
                    int i3 = i + seekBarPreference.mMin;
                    TextView textView = seekBarPreference.mSeekBarValueTextView;
                    if (textView != null) {
                        textView.setText(String.valueOf(i3));
                        return;
                    }
                    return;
                default:
                    ThemeChooserDialog themeChooserDialog = (ThemeChooserDialog) obj;
                    seekBar.getClass();
                    if (z) {
                        if (themeChooserDialog.isEditing) {
                            Prefs prefs = Prefs.INSTANCE;
                            textSizeMultiplier = PrefsIoUtil.getInt(R.string.preference_key_editing_text_size_multiplier, 0);
                            DialogThemeChooserBinding dialogThemeChooserBinding = themeChooserDialog._binding;
                            dialogThemeChooserBinding.getClass();
                            PrefsIoUtil.setInt(R.string.preference_key_editing_text_size_multiplier, dialogThemeChooserBinding.textSizeSeekBar.getValue());
                            ThemeChooserDialog.Callback callback = themeChooserDialog.callback();
                            if (callback != null) {
                                callback.onEditingPrefsChanged();
                            }
                            themeChooserDialog.updateFontSize$1();
                        } else {
                            Prefs prefs2 = Prefs.INSTANCE;
                            textSizeMultiplier = Prefs.getTextSizeMultiplier();
                            WikipediaApp wikipediaApp = themeChooserDialog.app;
                            DialogThemeChooserBinding dialogThemeChooserBinding2 = themeChooserDialog._binding;
                            dialogThemeChooserBinding2.getClass();
                            if (wikipediaApp.setFontSizeMultiplier(dialogThemeChooserBinding2.textSizeSeekBar.getValue())) {
                                themeChooserDialog.updatingFont = true;
                                themeChooserDialog.updateFontSize$1();
                            }
                        }
                        ConnectionPool connectionPool = themeChooserDialog.appearanceSettingInteractionEvent;
                        if (connectionPool == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("appearanceSettingInteractionEvent");
                            throw null;
                        }
                        connectionPool.submitEvent("fontSizeChange", String.valueOf(textSizeMultiplier), String.valueOf(Prefs.getTextSizeMultiplier()));
                        return;
                    }
                    return;
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStartTrackingTouch(SeekBar seekBar) {
            switch (this.$r8$classId) {
                case 0:
                    ((SeekBarPreference) this.this$0).mTrackingTouch = true;
                    break;
                default:
                    seekBar.getClass();
                    break;
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStopTrackingTouch(SeekBar seekBar) {
            switch (this.$r8$classId) {
                case 0:
                    SeekBarPreference seekBarPreference = (SeekBarPreference) this.this$0;
                    seekBarPreference.mTrackingTouch = false;
                    if (seekBar.getProgress() + seekBarPreference.mMin != seekBarPreference.mSeekBarValue) {
                        seekBarPreference.syncValueInternal(seekBar);
                        break;
                    }
                    break;
                default:
                    seekBar.getClass();
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new FragmentState.AnonymousClass1(15);
        public int mMax;
        public int mMin;
        public int mSeekBarValue;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.mSeekBarValue = parcel.readInt();
            this.mMin = parcel.readInt();
            this.mMax = parcel.readInt();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.mSeekBarValue);
            parcel.writeInt(this.mMin);
            parcel.writeInt(this.mMax);
        }
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.seekBarPreferenceStyle, 0);
        this.mSeekBarChangeListener = new AnonymousClass1(0, this);
        this.mSeekBarKeyListener = new SearchView.AnonymousClass6(1, this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SeekBarPreference, R.attr.seekBarPreferenceStyle, 0);
        this.mMin = obtainStyledAttributes.getInt(3, 0);
        int i = obtainStyledAttributes.getInt(1, 100);
        int i2 = this.mMin;
        i = i < i2 ? i2 : i;
        if (i != this.mMax) {
            this.mMax = i;
            notifyChanged();
        }
        int i3 = obtainStyledAttributes.getInt(4, 0);
        if (i3 != this.mSeekBarIncrement) {
            this.mSeekBarIncrement = Math.min(this.mMax - this.mMin, Math.abs(i3));
            notifyChanged();
        }
        this.mAdjustable = obtainStyledAttributes.getBoolean(2, true);
        this.mShowSeekBarValue = obtainStyledAttributes.getBoolean(5, false);
        this.mUpdatesContinuously = obtainStyledAttributes.getBoolean(6, false);
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        preferenceViewHolder.itemView.setOnKeyListener(this.mSeekBarKeyListener);
        this.mSeekBar = (SeekBar) preferenceViewHolder.findViewById(R.id.seekbar);
        TextView textView = (TextView) preferenceViewHolder.findViewById(R.id.seekbar_value);
        this.mSeekBarValueTextView = textView;
        if (this.mShowSeekBarValue) {
            textView.setVisibility(0);
        } else {
            textView.setVisibility(8);
            this.mSeekBarValueTextView = null;
        }
        SeekBar seekBar = this.mSeekBar;
        if (seekBar == null) {
            Log.e("SeekBarPreference", "SeekBar view is null in onBindViewHolder.");
            return;
        }
        seekBar.setOnSeekBarChangeListener(this.mSeekBarChangeListener);
        this.mSeekBar.setMax(this.mMax - this.mMin);
        int i = this.mSeekBarIncrement;
        SeekBar seekBar2 = this.mSeekBar;
        if (i != 0) {
            seekBar2.setKeyProgressIncrement(i);
        } else {
            this.mSeekBarIncrement = seekBar2.getKeyProgressIncrement();
        }
        this.mSeekBar.setProgress(this.mSeekBarValue - this.mMin);
        int i2 = this.mSeekBarValue;
        TextView textView2 = this.mSeekBarValueTextView;
        if (textView2 != null) {
            textView2.setText(String.valueOf(i2));
        }
        this.mSeekBar.setEnabled(isEnabled());
    }

    @Override // androidx.preference.Preference
    public final Object onGetDefaultValue(TypedArray typedArray, int i) {
        return Integer.valueOf(typedArray.getInt(i, 0));
    }

    @Override // androidx.preference.Preference
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mSeekBarValue = savedState.mSeekBarValue;
        this.mMin = savedState.mMin;
        this.mMax = savedState.mMax;
        notifyChanged();
    }

    @Override // androidx.preference.Preference
    public final Parcelable onSaveInstanceState() {
        super.onSaveInstanceState();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.mPersistent) {
            return absSavedState;
        }
        SavedState savedState = new SavedState();
        savedState.mSeekBarValue = this.mSeekBarValue;
        savedState.mMin = this.mMin;
        savedState.mMax = this.mMax;
        return savedState;
    }

    @Override // androidx.preference.Preference
    public final void onSetInitialValue(Object obj) {
        if (obj == null) {
            obj = 0;
        }
        setValueInternal(getPersistedInt(((Integer) obj).intValue()), true);
    }

    public final void setValueInternal(int i, boolean z) {
        int i2 = this.mMin;
        if (i < i2) {
            i = i2;
        }
        int i3 = this.mMax;
        if (i > i3) {
            i = i3;
        }
        if (i != this.mSeekBarValue) {
            this.mSeekBarValue = i;
            TextView textView = this.mSeekBarValueTextView;
            if (textView != null) {
                textView.setText(String.valueOf(i));
            }
            persistInt(i);
            if (z) {
                notifyChanged();
            }
        }
    }

    public final void syncValueInternal(SeekBar seekBar) {
        int progress = seekBar.getProgress() + this.mMin;
        if (progress != this.mSeekBarValue) {
            if (callChangeListener(Integer.valueOf(progress))) {
                setValueInternal(progress, false);
                return;
            }
            seekBar.setProgress(this.mSeekBarValue - this.mMin);
            int i = this.mSeekBarValue;
            TextView textView = this.mSeekBarValueTextView;
            if (textView != null) {
                textView.setText(String.valueOf(i));
            }
        }
    }
}
