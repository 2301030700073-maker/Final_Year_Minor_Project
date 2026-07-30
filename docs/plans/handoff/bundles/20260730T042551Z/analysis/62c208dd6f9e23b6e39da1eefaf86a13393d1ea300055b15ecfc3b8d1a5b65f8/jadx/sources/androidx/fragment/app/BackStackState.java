package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.Cpublic;
import java.util.ArrayList;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new Cdo();

    /* renamed from: break, reason: not valid java name */
    public final String f6796break;

    /* renamed from: case, reason: not valid java name */
    public final int f6797case;

    /* renamed from: do, reason: not valid java name */
    public final CharSequence f6798do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<String> f6799do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f6800do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f6801do;

    /* renamed from: for, reason: not valid java name */
    public final int f6802for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final ArrayList<String> f6803for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final int[] f6804for;

    /* renamed from: if, reason: not valid java name */
    public final CharSequence f6805if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ArrayList<String> f6806if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final int[] f6807if;

    /* renamed from: new, reason: not valid java name */
    public final int f6808new;

    /* renamed from: try, reason: not valid java name */
    public final int f6809try;

    /* renamed from: androidx.fragment.app.BackStackState$do, reason: invalid class name */
    public class Cdo implements Parcelable.Creator<BackStackState> {
        @Override // android.os.Parcelable.Creator
        public final BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final BackStackState[] newArray(int i) {
            return new BackStackState[i];
        }
    }

    public BackStackState(androidx.fragment.app.Cdo cdo) {
        int size = ((Cpublic) cdo).f6988do.size();
        this.f6801do = new int[size * 5];
        if (!((Cpublic) cdo).f6989do) {
            throw new IllegalStateException("Not on back stack");
        }
        this.f6799do = new ArrayList<>(size);
        this.f6807if = new int[size];
        this.f6804for = new int[size];
        int i = 0;
        int i2 = 0;
        while (i < size) {
            Cpublic.Cdo cdo2 = ((Cpublic) cdo).f6988do.get(i);
            int i3 = i2 + 1;
            this.f6801do[i2] = cdo2.f6999do;
            ArrayList<String> arrayList = this.f6799do;
            Fragment fragment = cdo2.f7000do;
            arrayList.add(fragment != null ? fragment.mWho : null);
            int[] iArr = this.f6801do;
            int i4 = i3 + 1;
            iArr[i3] = cdo2.f7003if;
            int i5 = i4 + 1;
            iArr[i4] = cdo2.f7002for;
            int i6 = i5 + 1;
            iArr[i5] = cdo2.f7005new;
            iArr[i6] = cdo2.f7006try;
            this.f6807if[i] = cdo2.f7001do.ordinal();
            this.f6804for[i] = cdo2.f7004if.ordinal();
            i++;
            i2 = i6 + 1;
        }
        this.f6802for = cdo.f6998try;
        this.f6796break = ((Cpublic) cdo).f6987do;
        this.f6808new = cdo.f6954goto;
        this.f6809try = cdo.f6984case;
        this.f6798do = ((Cpublic) cdo).f6986do;
        this.f6797case = cdo.f6990else;
        this.f6805if = ((Cpublic) cdo).f6994if;
        this.f6806if = ((Cpublic) cdo).f6995if;
        this.f6803for = ((Cpublic) cdo).f6992for;
        this.f6800do = ((Cpublic) cdo).f6996if;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f6801do);
        parcel.writeStringList(this.f6799do);
        parcel.writeIntArray(this.f6807if);
        parcel.writeIntArray(this.f6804for);
        parcel.writeInt(this.f6802for);
        parcel.writeString(this.f6796break);
        parcel.writeInt(this.f6808new);
        parcel.writeInt(this.f6809try);
        TextUtils.writeToParcel(this.f6798do, parcel, 0);
        parcel.writeInt(this.f6797case);
        TextUtils.writeToParcel(this.f6805if, parcel, 0);
        parcel.writeStringList(this.f6806if);
        parcel.writeStringList(this.f6803for);
        parcel.writeInt(this.f6800do ? 1 : 0);
    }

    public BackStackState(Parcel parcel) {
        this.f6801do = parcel.createIntArray();
        this.f6799do = parcel.createStringArrayList();
        this.f6807if = parcel.createIntArray();
        this.f6804for = parcel.createIntArray();
        this.f6802for = parcel.readInt();
        this.f6796break = parcel.readString();
        this.f6808new = parcel.readInt();
        this.f6809try = parcel.readInt();
        this.f6798do = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f6797case = parcel.readInt();
        this.f6805if = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f6806if = parcel.createStringArrayList();
        this.f6803for = parcel.createStringArrayList();
        this.f6800do = parcel.readInt() != 0;
    }
}
