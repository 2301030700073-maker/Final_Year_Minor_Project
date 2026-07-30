package androidx.preference;

import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.AbsSavedState;
import androidx.preference.Preference;
import b.l.C0143d;

/* loaded from: classes.dex */
public class EditTextPreference extends DialogPreference {
    public String g;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public EditTextPreference(android.content.Context r4, android.util.AttributeSet r5) {
        /*
            r3 = this;
            r0 = 2130968735(0x7f04009f, float:1.7546132E38)
            r1 = 16842898(0x1010092, float:2.3693967E-38)
            int r0 = b.e.b.d.g(r4, r0, r1)
            r1 = 0
            r3.<init>(r4, r5, r0, r1)
            int[] r2 = b.l.X.f1052d
            android.content.res.TypedArray r4 = r4.obtainStyledAttributes(r5, r2, r0, r1)
            boolean r5 = b.e.b.d.h(r4, r1, r1, r1)
            if (r5 == 0) goto L2c
            b.l.e r5 = b.l.C0144e.f1059a
            if (r5 != 0) goto L25
            b.l.e r5 = new b.l.e
            r5.<init>()
            b.l.C0144e.f1059a = r5
        L25:
            b.l.e r5 = b.l.C0144e.f1059a
            r3.mSummaryProvider = r5
            r3.notifyChanged()
        L2c:
            r4.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.EditTextPreference.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public void e(String str) {
        boolean shouldDisableDependents = shouldDisableDependents();
        this.g = str;
        persistString(str);
        boolean shouldDisableDependents2 = shouldDisableDependents();
        if (shouldDisableDependents2 != shouldDisableDependents) {
            notifyDependencyChange(shouldDisableDependents2);
        }
        notifyChanged();
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
        e(savedState.f147a);
    }

    @Override // androidx.preference.Preference
    public Parcelable onSaveInstanceState() {
        super.onSaveInstanceState();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.mPersistent) {
            return absSavedState;
        }
        SavedState savedState = new SavedState(absSavedState);
        savedState.f147a = this.g;
        return savedState;
    }

    @Override // androidx.preference.Preference
    public void onSetInitialValue(Object obj) {
        e(getPersistedString((String) obj));
    }

    @Override // androidx.preference.Preference
    public boolean shouldDisableDependents() {
        return TextUtils.isEmpty(this.g) || super.shouldDisableDependents();
    }

    public class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator CREATOR = new C0143d();

        /* renamed from: a, reason: collision with root package name */
        public String f147a;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f147a = parcel.readString();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f147a);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }
}
