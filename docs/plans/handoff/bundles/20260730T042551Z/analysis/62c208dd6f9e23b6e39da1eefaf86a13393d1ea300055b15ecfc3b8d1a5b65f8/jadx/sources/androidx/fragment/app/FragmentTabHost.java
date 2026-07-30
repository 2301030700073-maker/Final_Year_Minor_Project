package androidx.fragment.app;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TabHost;
import defpackage.Creturn;
import java.util.ArrayList;

@Deprecated
/* loaded from: classes.dex */
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {

    /* renamed from: do, reason: not valid java name */
    public TabHost.OnTabChangeListener f6923do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Cdo> f6924do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f6925do;

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: break, reason: not valid java name */
        public String f6926break;

        /* renamed from: androidx.fragment.app.FragmentTabHost$SavedState$do, reason: invalid class name */
        public class Cdo implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("FragmentTabHost.SavedState{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" curTab=");
            return Creturn.m7984try(sb, this.f6926break, "}");
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f6926break);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f6926break = parcel.readString();
        }
    }

    /* renamed from: androidx.fragment.app.FragmentTabHost$do, reason: invalid class name */
    public static final class Cdo {
    }

    @Deprecated
    public FragmentTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6924do = new ArrayList<>();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.inflatedId}, 0, 0);
        obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    /* renamed from: do, reason: not valid java name */
    public final Cpublic m4155do() {
        ArrayList<Cdo> arrayList = this.f6924do;
        if (arrayList.size() <= 0) {
            return null;
        }
        arrayList.get(0).getClass();
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        getCurrentTabTag();
        ArrayList<Cdo> arrayList = this.f6924do;
        if (arrayList.size() > 0) {
            arrayList.get(0).getClass();
            throw null;
        }
        this.f6925do = true;
        m4155do();
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f6925do = false;
    }

    @Override // android.view.View
    @Deprecated
    public final void onRestoreInstanceState(@SuppressLint({"UnknownNullness"}) Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.f6926break);
    }

    @Override // android.view.View
    @Deprecated
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f6926break = getCurrentTabTag();
        return savedState;
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    @Deprecated
    public final void onTabChanged(String str) {
        if (this.f6925do) {
            m4155do();
        }
        TabHost.OnTabChangeListener onTabChangeListener = this.f6923do;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public final void setOnTabChangedListener(TabHost.OnTabChangeListener onTabChangeListener) {
        this.f6923do = onTabChangeListener;
    }

    @Override // android.widget.TabHost
    @Deprecated
    public final void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }
}
