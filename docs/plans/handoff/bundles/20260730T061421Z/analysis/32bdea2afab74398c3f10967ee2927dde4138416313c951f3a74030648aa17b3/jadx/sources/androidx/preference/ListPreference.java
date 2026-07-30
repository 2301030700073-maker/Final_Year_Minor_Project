package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import androidx.preference.Preference;
import b.e.b.d;
import b.l.C0146g;
import b.l.C0147h;
import b.l.X;
import b.l.r;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class ListPreference extends DialogPreference {
    public CharSequence[] g;
    public CharSequence[] h;
    public String i;
    public String j;
    public boolean k;

    public ListPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, X.e, i, i2);
        this.g = d.n(obtainStyledAttributes, 2, 0);
        CharSequence[] textArray = obtainStyledAttributes.getTextArray(3);
        this.h = textArray == null ? obtainStyledAttributes.getTextArray(1) : textArray;
        if (obtainStyledAttributes.getBoolean(4, obtainStyledAttributes.getBoolean(4, false))) {
            if (C0147h.f1061a == null) {
                C0147h.f1061a = new C0147h();
            }
            this.mSummaryProvider = C0147h.f1061a;
            notifyChanged();
        }
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, X.g, i, i2);
        this.j = d.m(obtainStyledAttributes2, 33, 7);
        obtainStyledAttributes2.recycle();
    }

    public int e(String str) {
        CharSequence[] charSequenceArr;
        if (str == null || (charSequenceArr = this.h) == null) {
            return -1;
        }
        for (int length = charSequenceArr.length - 1; length >= 0; length--) {
            if (TextUtils.equals(this.h[length].toString(), str)) {
                return length;
            }
        }
        return -1;
    }

    public CharSequence g() {
        CharSequence[] charSequenceArr;
        int e = e(this.i);
        if (e < 0 || (charSequenceArr = this.g) == null) {
            return null;
        }
        return charSequenceArr[e];
    }

    @Override // androidx.preference.Preference
    public CharSequence getSummary() {
        r rVar = this.mSummaryProvider;
        if (rVar != null) {
            return rVar.a(this);
        }
        CharSequence g = g();
        CharSequence summary = super.getSummary();
        String str = this.j;
        if (str == null) {
            return summary;
        }
        Object[] objArr = new Object[1];
        if (g == null) {
            g = "";
        }
        objArr[0] = g;
        String format = String.format(str, objArr);
        if (TextUtils.equals(format, summary)) {
            return summary;
        }
        Log.w("ListPreference", "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead.");
        return format;
    }

    public void h(String str) {
        boolean z = !TextUtils.equals(this.i, str);
        if (z || !this.k) {
            this.i = str;
            this.k = true;
            persistString(str);
            if (z) {
                notifyChanged();
            }
        }
    }

    @Override // androidx.preference.Preference
    public Object onGetDefaultValue(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    @Override // androidx.preference.Preference
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        h(savedState.f148a);
    }

    @Override // androidx.preference.Preference
    public Parcelable onSaveInstanceState() {
        super.onSaveInstanceState();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.mPersistent) {
            return absSavedState;
        }
        SavedState savedState = new SavedState(absSavedState);
        savedState.f148a = this.i;
        return savedState;
    }

    @Override // androidx.preference.Preference
    public void onSetInitialValue(Object obj) {
        h(getPersistedString((String) obj));
    }

    @Override // androidx.preference.Preference
    public void setSummary(CharSequence charSequence) {
        super.setSummary(charSequence);
        if (charSequence == null) {
            this.j = null;
        } else {
            this.j = charSequence.toString();
        }
    }

    public class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator CREATOR = new C0146g();

        /* renamed from: a, reason: collision with root package name */
        public String f148a;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f148a = parcel.readString();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f148a);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public ListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, d.g(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle), 0);
    }
}
