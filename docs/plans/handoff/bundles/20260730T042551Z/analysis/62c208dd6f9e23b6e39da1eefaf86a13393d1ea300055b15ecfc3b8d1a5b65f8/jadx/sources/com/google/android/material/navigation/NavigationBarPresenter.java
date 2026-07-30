package com.google.android.material.navigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.MenuItem;
import androidx.appcompat.view.menu.Cbreak;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.view.menu.Cconst;
import androidx.appcompat.view.menu.Cgoto;
import androidx.transition.AutoTransition;
import androidx.transition.Ctry;
import com.google.android.material.badge.BadgeState;
import com.google.android.material.badge.Cdo;
import com.google.android.material.internal.ParcelableSparseArray;
import defpackage.AbstractC2718eu;
import defpackage.AbstractC2895hu;

/* loaded from: classes3.dex */
public final class NavigationBarPresenter implements Cbreak {

    /* renamed from: do, reason: not valid java name */
    public AbstractC2895hu f11215do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f11216do = false;

    /* renamed from: for, reason: not valid java name */
    public int f11217for;

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public ParcelableSparseArray f11218do;

        /* renamed from: for, reason: not valid java name */
        public int f11219for;

        /* renamed from: com.google.android.material.navigation.NavigationBarPresenter$SavedState$do, reason: invalid class name */
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

        public SavedState() {
        }

        public SavedState(Parcel parcel) {
            this.f11219for = parcel.readInt();
            this.f11218do = (ParcelableSparseArray) parcel.readParcelable(getClass().getClassLoader());
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f11219for);
            parcel.writeParcelable(this.f11218do, 0);
        }
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: case */
    public final boolean mo3317case() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: catch */
    public final boolean mo978catch(Cgoto cgoto) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: class */
    public final void mo3318class(Parcelable parcelable) {
        SparseArray<Cdo> sparseArray;
        if (parcelable instanceof SavedState) {
            AbstractC2895hu abstractC2895hu = this.f11215do;
            SavedState savedState = (SavedState) parcelable;
            int i = savedState.f11219for;
            int size = abstractC2895hu.f13380do.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    break;
                }
                MenuItem item = abstractC2895hu.f13380do.getItem(i2);
                if (i == item.getItemId()) {
                    abstractC2895hu.f13397new = i;
                    abstractC2895hu.f13401try = i2;
                    item.setChecked(true);
                    break;
                }
                i2++;
            }
            Context context = this.f11215do.getContext();
            ParcelableSparseArray parcelableSparseArray = savedState.f11218do;
            SparseArray sparseArray2 = new SparseArray(parcelableSparseArray.size());
            for (int i3 = 0; i3 < parcelableSparseArray.size(); i3++) {
                int keyAt = parcelableSparseArray.keyAt(i3);
                BadgeState.State state = (BadgeState.State) parcelableSparseArray.valueAt(i3);
                sparseArray2.put(keyAt, state != null ? new Cdo(context, state) : null);
            }
            AbstractC2895hu abstractC2895hu2 = this.f11215do;
            abstractC2895hu2.getClass();
            int i4 = 0;
            while (true) {
                int size2 = sparseArray2.size();
                sparseArray = abstractC2895hu2.f13395if;
                if (i4 >= size2) {
                    break;
                }
                int keyAt2 = sparseArray2.keyAt(i4);
                if (sparseArray.indexOfKey(keyAt2) < 0) {
                    sparseArray.append(keyAt2, (Cdo) sparseArray2.get(keyAt2));
                }
                i4++;
            }
            AbstractC2718eu[] abstractC2718euArr = abstractC2895hu2.f13387do;
            if (abstractC2718euArr != null) {
                for (AbstractC2718eu abstractC2718eu : abstractC2718euArr) {
                    Cdo cdo = sparseArray.get(abstractC2718eu.getId());
                    if (cdo != null) {
                        abstractC2718eu.m6599break(cdo);
                    }
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: const */
    public final boolean mo979const(Cgoto cgoto) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: else */
    public final void mo980else(Context context, Ccase ccase) {
        this.f11215do.f13380do = ccase;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: for */
    public final void mo3319for(Ccase ccase, boolean z) {
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    public final int getId() {
        return this.f11217for;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: goto */
    public final boolean mo3320goto(Cconst cconst) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: new */
    public final void mo3321new(boolean z) {
        AutoTransition autoTransition;
        if (this.f11216do) {
            return;
        }
        if (z) {
            this.f11215do.m6840do();
            return;
        }
        AbstractC2895hu abstractC2895hu = this.f11215do;
        Ccase ccase = abstractC2895hu.f13380do;
        if (ccase == null || abstractC2895hu.f13387do == null) {
            return;
        }
        int size = ccase.size();
        if (size != abstractC2895hu.f13387do.length) {
            abstractC2895hu.m6840do();
            return;
        }
        int i = abstractC2895hu.f13397new;
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = abstractC2895hu.f13380do.getItem(i2);
            if (item.isChecked()) {
                abstractC2895hu.f13397new = item.getItemId();
                abstractC2895hu.f13401try = i2;
            }
        }
        if (i != abstractC2895hu.f13397new && (autoTransition = abstractC2895hu.f13381do) != null) {
            Ctry.m4665do(abstractC2895hu, autoTransition);
        }
        boolean m6839case = AbstractC2895hu.m6839case(abstractC2895hu.f13390for, abstractC2895hu.f13380do.m3326class().size());
        for (int i3 = 0; i3 < size; i3++) {
            abstractC2895hu.f13382do.f11216do = true;
            abstractC2895hu.f13387do[i3].m6602class(abstractC2895hu.f13390for);
            AbstractC2718eu abstractC2718eu = abstractC2895hu.f13387do[i3];
            if (abstractC2718eu.f12766if != m6839case) {
                abstractC2718eu.f12766if = m6839case;
                abstractC2718eu.m6600case();
            }
            abstractC2895hu.f13387do[i3].mo3307if((Cgoto) abstractC2895hu.f13380do.getItem(i3));
            abstractC2895hu.f13382do.f11216do = false;
        }
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: this */
    public final Parcelable mo3322this() {
        SavedState savedState = new SavedState();
        AbstractC2895hu abstractC2895hu = this.f11215do;
        savedState.f11219for = abstractC2895hu.f13397new;
        SparseArray<Cdo> sparseArray = abstractC2895hu.f13395if;
        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        for (int i = 0; i < sparseArray.size(); i++) {
            int keyAt = sparseArray.keyAt(i);
            Cdo valueAt = sparseArray.valueAt(i);
            parcelableSparseArray.put(keyAt, valueAt != null ? valueAt.f10518do.f10476do : null);
        }
        savedState.f11218do = parcelableSparseArray;
        return savedState;
    }
}
