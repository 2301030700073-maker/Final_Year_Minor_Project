package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.datepicker.CalendarConstraints;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class CompositeDateValidator implements CalendarConstraints.DateValidator {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cnew f10915do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<CalendarConstraints.DateValidator> f10916do;

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f10913do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cif f10914do = new Cif();
    public static final Parcelable.Creator<CompositeDateValidator> CREATOR = new Cfor();

    /* renamed from: com.google.android.material.datepicker.CompositeDateValidator$do, reason: invalid class name */
    public class Cdo implements Cnew {
        @Override // com.google.android.material.datepicker.CompositeDateValidator.Cnew
        /* renamed from: do, reason: not valid java name */
        public final boolean mo5783do(List<CalendarConstraints.DateValidator> list, long j) {
            for (CalendarConstraints.DateValidator dateValidator : list) {
                if (dateValidator != null && dateValidator.mo5782this(j)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.Cnew
        public final int getId() {
            return 1;
        }
    }

    /* renamed from: com.google.android.material.datepicker.CompositeDateValidator$for, reason: invalid class name */
    public class Cfor implements Parcelable.Creator<CompositeDateValidator> {
        @Override // android.os.Parcelable.Creator
        public final CompositeDateValidator createFromParcel(Parcel parcel) {
            ArrayList readArrayList = parcel.readArrayList(CalendarConstraints.DateValidator.class.getClassLoader());
            int readInt = parcel.readInt();
            Cnew cnew = CompositeDateValidator.f10914do;
            if (readInt != 2 && readInt == 1) {
                cnew = CompositeDateValidator.f10913do;
            }
            readArrayList.getClass();
            return new CompositeDateValidator(readArrayList, cnew);
        }

        @Override // android.os.Parcelable.Creator
        public final CompositeDateValidator[] newArray(int i) {
            return new CompositeDateValidator[i];
        }
    }

    /* renamed from: com.google.android.material.datepicker.CompositeDateValidator$if, reason: invalid class name */
    public class Cif implements Cnew {
        @Override // com.google.android.material.datepicker.CompositeDateValidator.Cnew
        /* renamed from: do */
        public final boolean mo5783do(List<CalendarConstraints.DateValidator> list, long j) {
            for (CalendarConstraints.DateValidator dateValidator : list) {
                if (dateValidator != null && !dateValidator.mo5782this(j)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.Cnew
        public final int getId() {
            return 2;
        }
    }

    /* renamed from: com.google.android.material.datepicker.CompositeDateValidator$new, reason: invalid class name */
    public interface Cnew {
        /* renamed from: do */
        boolean mo5783do(List<CalendarConstraints.DateValidator> list, long j);

        int getId();
    }

    public CompositeDateValidator() {
        throw null;
    }

    public CompositeDateValidator(ArrayList arrayList, Cnew cnew) {
        this.f10916do = arrayList;
        this.f10915do = cnew;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CompositeDateValidator)) {
            return false;
        }
        CompositeDateValidator compositeDateValidator = (CompositeDateValidator) obj;
        return this.f10916do.equals(compositeDateValidator.f10916do) && this.f10915do.getId() == compositeDateValidator.f10915do.getId();
    }

    public final int hashCode() {
        return this.f10916do.hashCode();
    }

    @Override // com.google.android.material.datepicker.CalendarConstraints.DateValidator
    /* renamed from: this */
    public final boolean mo5782this(long j) {
        return this.f10915do.mo5783do(this.f10916do, j);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.f10916do);
        parcel.writeInt(this.f10915do.getId());
    }
}
