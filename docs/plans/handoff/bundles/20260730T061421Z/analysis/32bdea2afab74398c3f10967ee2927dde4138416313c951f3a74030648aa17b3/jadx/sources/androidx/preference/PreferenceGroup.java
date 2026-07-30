package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import androidx.preference.Preference;
import b.d.n;
import b.e.b.d;
import b.l.F;
import b.l.G;
import b.l.I;
import b.l.X;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class PreferenceGroup extends Preference {

    /* renamed from: a, reason: collision with root package name */
    public final n f162a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f163b;

    /* renamed from: c, reason: collision with root package name */
    public List f164c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f165d;
    public int e;
    public boolean f;
    public int g;
    public G h;
    public final Runnable i;

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f162a = new n();
        this.f163b = new Handler();
        this.f165d = true;
        this.e = 0;
        this.f = false;
        this.g = Integer.MAX_VALUE;
        this.h = null;
        this.i = new F(this);
        this.f164c = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, X.j, i, i2);
        this.f165d = d.h(obtainStyledAttributes, 2, 2, true);
        if (obtainStyledAttributes.hasValue(1)) {
            l(obtainStyledAttributes.getInt(1, obtainStyledAttributes.getInt(1, Integer.MAX_VALUE)));
        }
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public void dispatchRestoreInstanceState(Bundle bundle) {
        super.dispatchRestoreInstanceState(bundle);
        int i = i();
        for (int i2 = 0; i2 < i; i2++) {
            h(i2).dispatchRestoreInstanceState(bundle);
        }
    }

    @Override // androidx.preference.Preference
    public void dispatchSaveInstanceState(Bundle bundle) {
        super.dispatchSaveInstanceState(bundle);
        int i = i();
        for (int i2 = 0; i2 < i; i2++) {
            h(i2).dispatchSaveInstanceState(bundle);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean e(androidx.preference.Preference r9) {
        /*
            Method dump skipped, instructions count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.PreferenceGroup.e(androidx.preference.Preference):boolean");
    }

    public Preference g(CharSequence charSequence) {
        Preference g;
        if (charSequence == null) {
            throw new IllegalArgumentException("Key cannot be null");
        }
        if (TextUtils.equals(this.mKey, charSequence)) {
            return this;
        }
        int i = i();
        for (int i2 = 0; i2 < i; i2++) {
            Preference h = h(i2);
            if (TextUtils.equals(h.mKey, charSequence)) {
                return h;
            }
            if ((h instanceof PreferenceGroup) && (g = ((PreferenceGroup) h).g(charSequence)) != null) {
                return g;
            }
        }
        return null;
    }

    public Preference h(int i) {
        return (Preference) this.f164c.get(i);
    }

    public int i() {
        return this.f164c.size();
    }

    public boolean j() {
        return true;
    }

    public boolean k(Preference preference) {
        boolean remove;
        synchronized (this) {
            preference.unregisterDependency();
            if (preference.mParentGroup == this) {
                preference.mParentGroup = null;
            }
            remove = this.f164c.remove(preference);
            if (remove) {
                String str = preference.mKey;
                if (str != null) {
                    this.f162a.put(str, Long.valueOf(preference.getId()));
                    this.f163b.removeCallbacks(this.i);
                    this.f163b.post(this.i);
                }
                if (this.f) {
                    preference.onDetached();
                }
            }
        }
        notifyHierarchyChanged();
        return remove;
    }

    public void l(int i) {
        if (i != Integer.MAX_VALUE && !hasKey()) {
            Log.e("PreferenceGroup", getClass().getSimpleName() + " should have a key defined if it contains an expandable preference");
        }
        this.g = i;
    }

    @Override // androidx.preference.Preference
    public void notifyDependencyChange(boolean z) {
        super.notifyDependencyChange(z);
        int i = i();
        for (int i2 = 0; i2 < i; i2++) {
            h(i2).onParentChanged(z);
        }
    }

    @Override // androidx.preference.Preference
    public void onAttached() {
        super.onAttached();
        this.f = true;
        int i = i();
        for (int i2 = 0; i2 < i; i2++) {
            h(i2).onAttached();
        }
    }

    @Override // androidx.preference.Preference
    public void onDetached() {
        unregisterDependency();
        this.f = false;
        int i = i();
        for (int i2 = 0; i2 < i; i2++) {
            h(i2).onDetached();
        }
    }

    @Override // androidx.preference.Preference
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.g = savedState.f166a;
        super.onRestoreInstanceState(savedState.getSuperState());
    }

    @Override // androidx.preference.Preference
    public Parcelable onSaveInstanceState() {
        super.onSaveInstanceState();
        return new SavedState(AbsSavedState.EMPTY_STATE, this.g);
    }

    public class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator CREATOR = new I();

        /* renamed from: a, reason: collision with root package name */
        public int f166a;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f166a = parcel.readInt();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f166a);
        }

        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.f166a = i;
        }
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
