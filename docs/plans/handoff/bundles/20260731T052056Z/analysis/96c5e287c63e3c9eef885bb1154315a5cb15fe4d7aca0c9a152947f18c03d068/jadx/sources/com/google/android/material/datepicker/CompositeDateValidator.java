package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.collection.internal.Lock;
import androidx.fragment.app.FragmentState;
import androidx.work.impl.AutoMigration_14_15;
import com.google.android.material.datepicker.CalendarConstraints;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CompositeDateValidator implements CalendarConstraints.DateValidator {
    public final Operator operator;
    public final List validators;
    public static final AutoMigration_14_15 ANY_OPERATOR = new AutoMigration_14_15(23);
    public static final Lock ALL_OPERATOR = new Lock(23);
    public static final Parcelable.Creator<CompositeDateValidator> CREATOR = new FragmentState.AnonymousClass1(28);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Operator {
        int getId();

        boolean isValid(long j, List list);
    }

    public CompositeDateValidator(List list, Operator operator) {
        this.validators = list;
        this.operator = operator;
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
        return this.validators.equals(compositeDateValidator.validators) && this.operator.getId() == compositeDateValidator.operator.getId();
    }

    public final int hashCode() {
        return this.validators.hashCode();
    }

    @Override // com.google.android.material.datepicker.CalendarConstraints.DateValidator
    public final boolean isValid(long j) {
        return this.operator.isValid(j, this.validators);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.validators);
        parcel.writeInt(this.operator.getId());
    }
}
