package androidx.preference;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.View;
import android.view.ViewGroup;
import b.e.b.d;
import b.l.AbstractC0157s;
import b.l.C0154o;
import b.l.InterfaceC0155p;
import b.l.M;
import b.l.Q;
import b.l.S;
import b.l.ViewOnClickListenerC0153n;
import b.l.ViewOnCreateContextMenuListenerC0156q;
import b.l.X;
import b.l.r;
import c.a.c.a.a;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class Preference implements Comparable {
    public boolean mAllowDividerAbove;
    public boolean mAllowDividerBelow;
    public boolean mBaseMethodCalled;
    public final View.OnClickListener mClickListener;
    public Context mContext;
    public boolean mCopyingEnabled;
    public Object mDefaultValue;
    public String mDependencyKey;
    public boolean mDependencyMet;
    public List mDependents;
    public boolean mEnabled;
    public Bundle mExtras;
    public String mFragment;
    public boolean mHasId;
    public boolean mHasSingleLineTitleAttr;
    public Drawable mIcon;
    public int mIconResId;
    public boolean mIconSpaceReserved;
    public long mId;
    public Intent mIntent;
    public String mKey;
    public int mLayoutResId;
    public M mListener;
    public InterfaceC0155p mOnClickListener;
    public ViewOnCreateContextMenuListenerC0156q mOnCopyListener;
    public int mOrder;
    public boolean mParentDependencyMet;
    public PreferenceGroup mParentGroup;
    public boolean mPersistent;
    public AbstractC0157s mPreferenceDataStore;
    public S mPreferenceManager;
    public boolean mRequiresKey;
    public boolean mSelectable;
    public boolean mShouldDisableView;
    public boolean mSingleLineTitle;
    public CharSequence mSummary;
    public r mSummaryProvider;
    public CharSequence mTitle;
    public int mViewId;
    public boolean mVisible;
    public int mWidgetLayoutResId;

    public class BaseSavedState extends AbsSavedState {
        public static final Parcelable.Creator CREATOR = new C0154o();

        public BaseSavedState(Parcel parcel) {
            super(parcel);
        }

        public BaseSavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public Preference(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mOrder = Integer.MAX_VALUE;
        this.mViewId = 0;
        this.mEnabled = true;
        this.mSelectable = true;
        this.mPersistent = true;
        this.mDependencyMet = true;
        this.mParentDependencyMet = true;
        this.mVisible = true;
        this.mAllowDividerAbove = true;
        this.mAllowDividerBelow = true;
        this.mSingleLineTitle = true;
        this.mShouldDisableView = true;
        this.mLayoutResId = R.layout.preference;
        this.mClickListener = new ViewOnClickListenerC0153n(this);
        this.mContext = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, X.g, i, i2);
        this.mIconResId = d.l(obtainStyledAttributes, 23, 0, 0);
        String string = obtainStyledAttributes.getString(26);
        this.mKey = string == null ? obtainStyledAttributes.getString(6) : string;
        CharSequence text = obtainStyledAttributes.getText(34);
        this.mTitle = text == null ? obtainStyledAttributes.getText(4) : text;
        CharSequence text2 = obtainStyledAttributes.getText(33);
        this.mSummary = text2 == null ? obtainStyledAttributes.getText(7) : text2;
        this.mOrder = obtainStyledAttributes.getInt(28, obtainStyledAttributes.getInt(8, Integer.MAX_VALUE));
        String string2 = obtainStyledAttributes.getString(22);
        this.mFragment = string2 == null ? obtainStyledAttributes.getString(13) : string2;
        this.mLayoutResId = obtainStyledAttributes.getResourceId(27, obtainStyledAttributes.getResourceId(3, R.layout.preference));
        this.mWidgetLayoutResId = obtainStyledAttributes.getResourceId(35, obtainStyledAttributes.getResourceId(9, 0));
        this.mEnabled = obtainStyledAttributes.getBoolean(21, obtainStyledAttributes.getBoolean(2, true));
        this.mSelectable = obtainStyledAttributes.getBoolean(30, obtainStyledAttributes.getBoolean(5, true));
        this.mPersistent = obtainStyledAttributes.getBoolean(29, obtainStyledAttributes.getBoolean(1, true));
        String string3 = obtainStyledAttributes.getString(19);
        this.mDependencyKey = string3 == null ? obtainStyledAttributes.getString(10) : string3;
        this.mAllowDividerAbove = obtainStyledAttributes.getBoolean(16, obtainStyledAttributes.getBoolean(16, this.mSelectable));
        this.mAllowDividerBelow = obtainStyledAttributes.getBoolean(17, obtainStyledAttributes.getBoolean(17, this.mSelectable));
        if (obtainStyledAttributes.hasValue(18)) {
            this.mDefaultValue = onGetDefaultValue(obtainStyledAttributes, 18);
        } else if (obtainStyledAttributes.hasValue(11)) {
            this.mDefaultValue = onGetDefaultValue(obtainStyledAttributes, 11);
        }
        this.mShouldDisableView = obtainStyledAttributes.getBoolean(31, obtainStyledAttributes.getBoolean(12, true));
        boolean hasValue = obtainStyledAttributes.hasValue(32);
        this.mHasSingleLineTitleAttr = hasValue;
        if (hasValue) {
            this.mSingleLineTitle = obtainStyledAttributes.getBoolean(32, obtainStyledAttributes.getBoolean(14, true));
        }
        this.mIconSpaceReserved = obtainStyledAttributes.getBoolean(24, obtainStyledAttributes.getBoolean(15, false));
        this.mVisible = obtainStyledAttributes.getBoolean(25, obtainStyledAttributes.getBoolean(25, true));
        this.mCopyingEnabled = obtainStyledAttributes.getBoolean(20, obtainStyledAttributes.getBoolean(20, false));
        obtainStyledAttributes.recycle();
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        Preference preference = (Preference) obj;
        int i = this.mOrder;
        int i2 = preference.mOrder;
        if (i != i2) {
            return i - i2;
        }
        CharSequence charSequence = this.mTitle;
        CharSequence charSequence2 = preference.mTitle;
        if (charSequence == charSequence2) {
            return 0;
        }
        if (charSequence == null) {
            return 1;
        }
        if (charSequence2 == null) {
            return -1;
        }
        return charSequence.toString().compareToIgnoreCase(preference.mTitle.toString());
    }

    public void dispatchRestoreInstanceState(Bundle bundle) {
        Parcelable parcelable;
        if (!hasKey() || (parcelable = bundle.getParcelable(this.mKey)) == null) {
            return;
        }
        this.mBaseMethodCalled = false;
        onRestoreInstanceState(parcelable);
        if (!this.mBaseMethodCalled) {
            throw new IllegalStateException("Derived class did not call super.onRestoreInstanceState()");
        }
    }

    public void dispatchSaveInstanceState(Bundle bundle) {
        if (hasKey()) {
            this.mBaseMethodCalled = false;
            Parcelable onSaveInstanceState = onSaveInstanceState();
            if (!this.mBaseMethodCalled) {
                throw new IllegalStateException("Derived class did not call super.onSaveInstanceState()");
            }
            if (onSaveInstanceState != null) {
                bundle.putParcelable(this.mKey, onSaveInstanceState);
            }
        }
    }

    public Bundle getExtras() {
        if (this.mExtras == null) {
            this.mExtras = new Bundle();
        }
        return this.mExtras;
    }

    public long getId() {
        return this.mId;
    }

    public boolean getPersistedBoolean(boolean z) {
        if (!shouldPersist()) {
            return z;
        }
        AbstractC0157s preferenceDataStore = getPreferenceDataStore();
        return preferenceDataStore != null ? preferenceDataStore.getBoolean(this.mKey, z) : this.mPreferenceManager.b().getBoolean(this.mKey, z);
    }

    public int getPersistedInt(int i) {
        return (shouldPersist() && getPreferenceDataStore() == null) ? this.mPreferenceManager.b().getInt(this.mKey, i) : i;
    }

    public String getPersistedString(String str) {
        return (shouldPersist() && getPreferenceDataStore() == null) ? this.mPreferenceManager.b().getString(this.mKey, str) : str;
    }

    public Set getPersistedStringSet(Set set) {
        return (shouldPersist() && getPreferenceDataStore() == null) ? this.mPreferenceManager.b().getStringSet(this.mKey, set) : set;
    }

    public AbstractC0157s getPreferenceDataStore() {
        AbstractC0157s abstractC0157s = this.mPreferenceDataStore;
        if (abstractC0157s != null) {
            return abstractC0157s;
        }
        S s = this.mPreferenceManager;
        return null;
    }

    public CharSequence getSummary() {
        r rVar = this.mSummaryProvider;
        return rVar != null ? rVar.a(this) : this.mSummary;
    }

    public boolean hasKey() {
        return !TextUtils.isEmpty(this.mKey);
    }

    public boolean isEnabled() {
        return this.mEnabled && this.mDependencyMet && this.mParentDependencyMet;
    }

    public void notifyChanged() {
        int indexOf;
        M m = this.mListener;
        if (m == null || (indexOf = m.f1032c.indexOf(this)) == -1) {
            return;
        }
        m.mObservable.c(indexOf, 1, this);
    }

    public void notifyDependencyChange(boolean z) {
        List list = this.mDependents;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ((Preference) list.get(i)).onDependencyChanged(z);
        }
    }

    public void notifyHierarchyChanged() {
        M m = this.mListener;
        if (m != null) {
            m.e.removeCallbacks(m.f);
            m.e.post(m.f);
        }
    }

    public void onAttached() {
        PreferenceScreen preferenceScreen;
        if (TextUtils.isEmpty(this.mDependencyKey)) {
            return;
        }
        String str = this.mDependencyKey;
        S s = this.mPreferenceManager;
        Preference preference = null;
        if (s != null && (preferenceScreen = s.h) != null) {
            preference = preferenceScreen.g(str);
        }
        if (preference != null) {
            if (preference.mDependents == null) {
                preference.mDependents = new ArrayList();
            }
            preference.mDependents.add(this);
            onDependencyChanged(preference.shouldDisableDependents());
            return;
        }
        StringBuilder f = a.f("Dependency \"");
        f.append(this.mDependencyKey);
        f.append("\" not found for preference \"");
        f.append(this.mKey);
        f.append("\" (title: \"");
        f.append((Object) this.mTitle);
        f.append("\"");
        throw new IllegalStateException(f.toString());
    }

    public void onAttachedToHierarchy(S s) {
        long j;
        this.mPreferenceManager = s;
        if (!this.mHasId) {
            synchronized (s) {
                j = s.f1039b;
                s.f1039b = 1 + j;
            }
            this.mId = j;
        }
        if (getPreferenceDataStore() != null) {
            onSetInitialValue1(this.mDefaultValue);
            return;
        }
        if (shouldPersist()) {
            if (((this.mPreferenceManager == null || getPreferenceDataStore() != null) ? null : this.mPreferenceManager.b()).contains(this.mKey)) {
                onSetInitialValue1(null);
                return;
            }
        }
        Object obj = this.mDefaultValue;
        if (obj != null) {
            onSetInitialValue1(obj);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(b.l.V r9) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.Preference.onBindViewHolder(b.l.V):void");
    }

    public void onClick() {
    }

    public void onDependencyChanged(boolean z) {
        if (this.mDependencyMet == z) {
            this.mDependencyMet = !z;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public void onDetached() {
        unregisterDependency();
    }

    public Object onGetDefaultValue(TypedArray typedArray, int i) {
        return null;
    }

    @Deprecated
    public void onInitializeAccessibilityNodeInfo() {
    }

    public void onParentChanged(boolean z) {
        if (this.mParentDependencyMet == z) {
            this.mParentDependencyMet = !z;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        this.mBaseMethodCalled = true;
        if (parcelable != AbsSavedState.EMPTY_STATE && parcelable != null) {
            throw new IllegalArgumentException("Wrong state class -- expecting Preference State");
        }
    }

    public Parcelable onSaveInstanceState() {
        this.mBaseMethodCalled = true;
        return AbsSavedState.EMPTY_STATE;
    }

    public void onSetInitialValue(Object obj) {
    }

    @Deprecated
    public void onSetInitialValue1(Object obj) {
        onSetInitialValue(obj);
    }

    public void performClick(View view) {
        Intent intent;
        Q q;
        if (isEnabled() && this.mSelectable) {
            onClick();
            InterfaceC0155p interfaceC0155p = this.mOnClickListener;
            if (interfaceC0155p == null || !interfaceC0155p.a(this)) {
                S s = this.mPreferenceManager;
                if ((s == null || (q = s.i) == null || !q.onPreferenceTreeClick(this)) && (intent = this.mIntent) != null) {
                    this.mContext.startActivity(intent);
                }
            }
        }
    }

    public boolean persistBoolean(boolean z) {
        if (!shouldPersist()) {
            return false;
        }
        if (z == getPersistedBoolean(!z)) {
            return true;
        }
        AbstractC0157s preferenceDataStore = getPreferenceDataStore();
        if (preferenceDataStore != null) {
            preferenceDataStore.putBoolean(this.mKey, z);
        } else {
            SharedPreferences.Editor a2 = this.mPreferenceManager.a();
            a2.putBoolean(this.mKey, z);
            if (!this.mPreferenceManager.e) {
                a2.apply();
            }
        }
        return true;
    }

    public boolean persistString(String str) {
        if (!shouldPersist()) {
            return false;
        }
        if (TextUtils.equals(str, getPersistedString(null))) {
            return true;
        }
        if (getPreferenceDataStore() != null) {
            throw new UnsupportedOperationException("Not implemented on this data store");
        }
        SharedPreferences.Editor a2 = this.mPreferenceManager.a();
        a2.putString(this.mKey, str);
        if (!this.mPreferenceManager.e) {
            a2.apply();
        }
        return true;
    }

    public final void setEnabledStateOnViews(View view, boolean z) {
        view.setEnabled(z);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                setEnabledStateOnViews(viewGroup.getChildAt(childCount), z);
            }
        }
    }

    public void setKey(String str) {
        this.mKey = str;
        if (!this.mRequiresKey || hasKey()) {
            return;
        }
        if (TextUtils.isEmpty(this.mKey)) {
            throw new IllegalStateException("Preference does not have a key assigned.");
        }
        this.mRequiresKey = true;
    }

    public final void setOnPreferenceChangeInternalListener(M m) {
        this.mListener = m;
    }

    public void setOrder(int i) {
        if (i != this.mOrder) {
            this.mOrder = i;
            notifyHierarchyChanged();
        }
    }

    public void setSummary(CharSequence charSequence) {
        if (this.mSummaryProvider != null) {
            throw new IllegalStateException("Preference already has a SummaryProvider set.");
        }
        if (TextUtils.equals(this.mSummary, charSequence)) {
            return;
        }
        this.mSummary = charSequence;
        notifyChanged();
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.mTitle)) {
            return;
        }
        this.mTitle = charSequence;
        notifyChanged();
    }

    public boolean shouldDisableDependents() {
        return !isEnabled();
    }

    public boolean shouldPersist() {
        return this.mPreferenceManager != null && this.mPersistent && hasKey();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        CharSequence charSequence = this.mTitle;
        if (!TextUtils.isEmpty(charSequence)) {
            sb.append(charSequence);
            sb.append(' ');
        }
        CharSequence summary = getSummary();
        if (!TextUtils.isEmpty(summary)) {
            sb.append(summary);
            sb.append(' ');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    public final void unregisterDependency() {
        List list;
        PreferenceScreen preferenceScreen;
        String str = this.mDependencyKey;
        if (str != null) {
            S s = this.mPreferenceManager;
            Preference preference = null;
            if (s != null && (preferenceScreen = s.h) != null) {
                preference = preferenceScreen.g(str);
            }
            if (preference == null || (list = preference.mDependents) == null) {
                return;
            }
            list.remove(this);
        }
    }

    public Preference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, d.g(context, R.attr.preferenceStyle, android.R.attr.preferenceStyle));
    }

    public Preference(Context context) {
        this(context, null);
    }
}
