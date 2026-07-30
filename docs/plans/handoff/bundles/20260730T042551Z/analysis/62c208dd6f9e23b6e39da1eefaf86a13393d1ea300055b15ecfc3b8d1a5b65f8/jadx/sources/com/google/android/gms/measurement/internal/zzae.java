package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.SO;

@SafeParcelable.Class(creator = "ConditionalUserPropertyParcelCreator")
/* loaded from: classes3.dex */
public final class zzae extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzae> CREATOR = new SO();

    /* renamed from: break, reason: not valid java name */
    @SafeParcelable.Field(id = 2)
    public String f10300break;

    /* renamed from: catch, reason: not valid java name */
    @SafeParcelable.Field(id = 3)
    public String f10301catch;

    /* renamed from: class, reason: not valid java name */
    @SafeParcelable.Field(id = 7)
    public String f10302class;

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(id = 5)
    public long f10303do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(id = 8)
    public final zzbf f10304do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(id = 4)
    public zzon f10305do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(id = 6)
    public boolean f10306do;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.Field(id = 11)
    public final long f10307for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(id = 12)
    public final zzbf f10308for;

    /* renamed from: if, reason: not valid java name */
    @SafeParcelable.Field(id = 9)
    public long f10309if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(id = 10)
    public zzbf f10310if;

    public zzae(zzae zzaeVar) {
        Preconditions.checkNotNull(zzaeVar);
        this.f10300break = zzaeVar.f10300break;
        this.f10301catch = zzaeVar.f10301catch;
        this.f10305do = zzaeVar.f10305do;
        this.f10303do = zzaeVar.f10303do;
        this.f10306do = zzaeVar.f10306do;
        this.f10302class = zzaeVar.f10302class;
        this.f10304do = zzaeVar.f10304do;
        this.f10309if = zzaeVar.f10309if;
        this.f10310if = zzaeVar.f10310if;
        this.f10307for = zzaeVar.f10307for;
        this.f10308for = zzaeVar.f10308for;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f10300break, false);
        SafeParcelWriter.writeString(parcel, 3, this.f10301catch, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.f10305do, i, false);
        SafeParcelWriter.writeLong(parcel, 5, this.f10303do);
        SafeParcelWriter.writeBoolean(parcel, 6, this.f10306do);
        SafeParcelWriter.writeString(parcel, 7, this.f10302class, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.f10304do, i, false);
        SafeParcelWriter.writeLong(parcel, 9, this.f10309if);
        SafeParcelWriter.writeParcelable(parcel, 10, this.f10310if, i, false);
        SafeParcelWriter.writeLong(parcel, 11, this.f10307for);
        SafeParcelWriter.writeParcelable(parcel, 12, this.f10308for, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @SafeParcelable.Constructor
    public zzae(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) zzon zzonVar, @SafeParcelable.Param(id = 5) long j, @SafeParcelable.Param(id = 6) boolean z, @SafeParcelable.Param(id = 7) String str3, @SafeParcelable.Param(id = 8) zzbf zzbfVar, @SafeParcelable.Param(id = 9) long j2, @SafeParcelable.Param(id = 10) zzbf zzbfVar2, @SafeParcelable.Param(id = 11) long j3, @SafeParcelable.Param(id = 12) zzbf zzbfVar3) {
        this.f10300break = str;
        this.f10301catch = str2;
        this.f10305do = zzonVar;
        this.f10303do = j;
        this.f10306do = z;
        this.f10302class = str3;
        this.f10304do = zzbfVar;
        this.f10309if = j2;
        this.f10310if = zzbfVar2;
        this.f10307for = j3;
        this.f10308for = zzbfVar3;
    }
}
