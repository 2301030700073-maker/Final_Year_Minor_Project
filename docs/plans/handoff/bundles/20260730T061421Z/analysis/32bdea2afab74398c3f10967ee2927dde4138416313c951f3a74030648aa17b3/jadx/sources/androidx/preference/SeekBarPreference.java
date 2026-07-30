package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.preference.Preference;
import b.l.V;
import b.l.X;
import b.l.Y;
import b.l.Z;
import b.l.a0;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class SeekBarPreference extends Preference {

    /* renamed from: a, reason: collision with root package name */
    public int f167a;

    /* renamed from: b, reason: collision with root package name */
    public int f168b;

    /* renamed from: c, reason: collision with root package name */
    public int f169c;

    /* renamed from: d, reason: collision with root package name */
    public int f170d;
    public boolean e;
    public SeekBar f;
    public TextView g;
    public boolean h;
    public boolean i;
    public boolean j;
    public SeekBar.OnSeekBarChangeListener k;
    public View.OnKeyListener l;

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.seekBarPreferenceStyle, 0);
        this.k = new Y(this);
        this.l = new Z(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, X.l, R.attr.seekBarPreferenceStyle, 0);
        this.f168b = obtainStyledAttributes.getInt(3, 0);
        int i = obtainStyledAttributes.getInt(1, 100);
        int i2 = this.f168b;
        i = i < i2 ? i2 : i;
        if (i != this.f169c) {
            this.f169c = i;
            notifyChanged();
        }
        int i3 = obtainStyledAttributes.getInt(4, 0);
        if (i3 != this.f170d) {
            this.f170d = Math.min(this.f169c - this.f168b, Math.abs(i3));
            notifyChanged();
        }
        this.h = obtainStyledAttributes.getBoolean(2, true);
        this.i = obtainStyledAttributes.getBoolean(5, false);
        this.j = obtainStyledAttributes.getBoolean(6, false);
        obtainStyledAttributes.recycle();
    }

    public final void e(int i, boolean z) {
        int i2 = this.f168b;
        if (i < i2) {
            i = i2;
        }
        int i3 = this.f169c;
        if (i > i3) {
            i = i3;
        }
        if (i != this.f167a) {
            this.f167a = i;
            g(i);
            if (shouldPersist() && i != getPersistedInt(~i)) {
                if (getPreferenceDataStore() != null) {
                    throw new UnsupportedOperationException("Not implemented on this data store");
                }
                SharedPreferences.Editor a2 = this.mPreferenceManager.a();
                a2.putInt(this.mKey, i);
                if (!this.mPreferenceManager.e) {
                    a2.apply();
                }
            }
            if (z) {
                notifyChanged();
            }
        }
    }

    public void g(int i) {
        TextView textView = this.g;
        if (textView != null) {
            textView.setText(String.valueOf(i));
        }
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(V v) {
        super.onBindViewHolder(v);
        v.itemView.setOnKeyListener(this.l);
        this.f = (SeekBar) v.a(R.id.seekbar);
        TextView textView = (TextView) v.a(R.id.seekbar_value);
        this.g = textView;
        if (this.i) {
            textView.setVisibility(0);
        } else {
            textView.setVisibility(8);
            this.g = null;
        }
        SeekBar seekBar = this.f;
        if (seekBar == null) {
            Log.e("SeekBarPreference", "SeekBar view is null in onBindViewHolder.");
            return;
        }
        seekBar.setOnSeekBarChangeListener(this.k);
        this.f.setMax(this.f169c - this.f168b);
        int i = this.f170d;
        if (i != 0) {
            this.f.setKeyProgressIncrement(i);
        } else {
            this.f170d = this.f.getKeyProgressIncrement();
        }
        this.f.setProgress(this.f167a - this.f168b);
        g(this.f167a);
        this.f.setEnabled(isEnabled());
    }

    @Override // androidx.preference.Preference
    public Object onGetDefaultValue(TypedArray typedArray, int i) {
        return Integer.valueOf(typedArray.getInt(i, 0));
    }

    @Override // androidx.preference.Preference
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f167a = savedState.f171a;
        this.f168b = savedState.f172b;
        this.f169c = savedState.f173c;
        notifyChanged();
    }

    @Override // androidx.preference.Preference
    public Parcelable onSaveInstanceState() {
        super.onSaveInstanceState();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.mPersistent) {
            return absSavedState;
        }
        SavedState savedState = new SavedState(absSavedState);
        savedState.f171a = this.f167a;
        savedState.f172b = this.f168b;
        savedState.f173c = this.f169c;
        return savedState;
    }

    @Override // androidx.preference.Preference
    public void onSetInitialValue(Object obj) {
        if (obj == null) {
            obj = 0;
        }
        e(getPersistedInt(((Integer) obj).intValue()), true);
    }

    public class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator CREATOR = new a0();

        /* renamed from: a, reason: collision with root package name */
        public int f171a;

        /* renamed from: b, reason: collision with root package name */
        public int f172b;

        /* renamed from: c, reason: collision with root package name */
        public int f173c;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f171a = parcel.readInt();
            this.f172b = parcel.readInt();
            this.f173c = parcel.readInt();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f171a);
            parcel.writeInt(this.f172b);
            parcel.writeInt(this.f173c);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }
}
