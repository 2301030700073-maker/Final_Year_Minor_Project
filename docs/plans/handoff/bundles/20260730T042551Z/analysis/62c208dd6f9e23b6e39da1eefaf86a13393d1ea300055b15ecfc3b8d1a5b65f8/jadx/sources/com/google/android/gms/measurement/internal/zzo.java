package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.appevents.codeless.internal.Constants;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.AV;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "AppMetadataCreator")
@SafeParcelable.Reserved({1, 17, 20, 33})
/* loaded from: classes3.dex */
public final class zzo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzo> CREATOR = new AV();

    /* renamed from: break, reason: not valid java name */
    @SafeParcelable.Field(id = 2)
    public final String f10320break;

    /* renamed from: case, reason: not valid java name */
    @SafeParcelable.Field(id = 22)
    public final long f10321case;

    /* renamed from: catch, reason: not valid java name */
    @SafeParcelable.Field(id = 3)
    public final String f10322catch;

    /* renamed from: class, reason: not valid java name */
    @SafeParcelable.Field(id = 4)
    public final String f10323class;

    /* renamed from: const, reason: not valid java name */
    @SafeParcelable.Field(id = 5)
    public final String f10324const;

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(id = 6)
    public final long f10325do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(id = 21)
    public final Boolean f10326do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(id = ConnectionResult.API_DISABLED)
    public final List<String> f10327do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(defaultValue = ServerProtocol.DIALOG_RETURN_SCOPES_TRUE, id = 9)
    public final boolean f10328do;

    /* renamed from: else, reason: not valid java name */
    @SafeParcelable.Field(id = 29)
    public final long f10329else;

    /* renamed from: final, reason: not valid java name */
    @SafeParcelable.Field(id = 8)
    public final String f10330final;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.Field(id = 15)
    public final int f10331for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(defaultValueUnchecked = "Integer.MIN_VALUE", id = 11)
    public final long f10332for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(defaultValue = ServerProtocol.DIALOG_RETURN_SCOPES_TRUE, id = 16)
    public final boolean f10333for;

    /* renamed from: goto, reason: not valid java name */
    @SafeParcelable.Field(id = 34)
    public final long f10334goto;

    /* renamed from: if, reason: not valid java name */
    @SafeParcelable.Field(id = 7)
    public final long f10335if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(id = 10)
    public final boolean f10336if;

    /* renamed from: import, reason: not valid java name */
    @SafeParcelable.Field(defaultValue = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, id = Constants.MAX_TREE_DEPTH)
    public final String f10337import;

    /* renamed from: native, reason: not valid java name */
    @SafeParcelable.Field(defaultValue = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, id = 26)
    public final String f10338native;

    /* renamed from: new, reason: not valid java name */
    @SafeParcelable.Field(defaultValue = "100", id = 30)
    public final int f10339new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(id = 13)
    @Deprecated
    public final long f10340new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(id = 18)
    public final boolean f10341new;

    /* renamed from: public, reason: not valid java name */
    @SafeParcelable.Field(id = 27)
    public final String f10342public;

    /* renamed from: return, reason: not valid java name */
    @SafeParcelable.Field(defaultValue = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, id = 31)
    public final String f10343return;

    /* renamed from: static, reason: not valid java name */
    @SafeParcelable.Field(id = 35)
    public final String f10344static;

    /* renamed from: super, reason: not valid java name */
    @SafeParcelable.Field(id = 12)
    public final String f10345super;

    /* renamed from: switch, reason: not valid java name */
    @SafeParcelable.Field(defaultValue = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, id = 36)
    public final String f10346switch;

    /* renamed from: throw, reason: not valid java name */
    @SafeParcelable.Field(id = 19)
    public final String f10347throw;

    /* renamed from: try, reason: not valid java name */
    @SafeParcelable.Field(id = 32)
    public final int f10348try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(id = 14)
    public final long f10349try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(defaultValue = "false", id = 28)
    public final boolean f10350try;

    /* renamed from: while, reason: not valid java name */
    @SafeParcelable.Field(id = ConnectionResult.API_DISABLED_FOR_CONNECTION)
    public final String f10351while;

    public zzo(String str, String str2, String str3, long j, String str4, long j2, long j3, String str5, boolean z, boolean z2, String str6, long j4, int i, boolean z3, boolean z4, String str7, Boolean bool, long j5, List list, String str8, String str9, String str10, boolean z5, long j6, int i2, String str11, int i3, long j7, String str12, String str13) {
        Preconditions.checkNotEmpty(str);
        this.f10320break = str;
        this.f10322catch = TextUtils.isEmpty(str2) ? null : str2;
        this.f10323class = str3;
        this.f10332for = j;
        this.f10324const = str4;
        this.f10325do = j2;
        this.f10335if = j3;
        this.f10330final = str5;
        this.f10328do = z;
        this.f10336if = z2;
        this.f10345super = str6;
        this.f10340new = 0L;
        this.f10349try = j4;
        this.f10331for = i;
        this.f10333for = z3;
        this.f10341new = z4;
        this.f10347throw = str7;
        this.f10326do = bool;
        this.f10321case = j5;
        this.f10327do = list;
        this.f10351while = null;
        this.f10337import = str8;
        this.f10338native = str9;
        this.f10342public = str10;
        this.f10350try = z5;
        this.f10329else = j6;
        this.f10339new = i2;
        this.f10343return = str11;
        this.f10348try = i3;
        this.f10334goto = j7;
        this.f10344static = str12;
        this.f10346switch = str13;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f10320break, false);
        SafeParcelWriter.writeString(parcel, 3, this.f10322catch, false);
        SafeParcelWriter.writeString(parcel, 4, this.f10323class, false);
        SafeParcelWriter.writeString(parcel, 5, this.f10324const, false);
        SafeParcelWriter.writeLong(parcel, 6, this.f10325do);
        SafeParcelWriter.writeLong(parcel, 7, this.f10335if);
        SafeParcelWriter.writeString(parcel, 8, this.f10330final, false);
        SafeParcelWriter.writeBoolean(parcel, 9, this.f10328do);
        SafeParcelWriter.writeBoolean(parcel, 10, this.f10336if);
        SafeParcelWriter.writeLong(parcel, 11, this.f10332for);
        SafeParcelWriter.writeString(parcel, 12, this.f10345super, false);
        SafeParcelWriter.writeLong(parcel, 13, this.f10340new);
        SafeParcelWriter.writeLong(parcel, 14, this.f10349try);
        SafeParcelWriter.writeInt(parcel, 15, this.f10331for);
        SafeParcelWriter.writeBoolean(parcel, 16, this.f10333for);
        SafeParcelWriter.writeBoolean(parcel, 18, this.f10341new);
        SafeParcelWriter.writeString(parcel, 19, this.f10347throw, false);
        SafeParcelWriter.writeBooleanObject(parcel, 21, this.f10326do, false);
        SafeParcelWriter.writeLong(parcel, 22, this.f10321case);
        SafeParcelWriter.writeStringList(parcel, 23, this.f10327do, false);
        SafeParcelWriter.writeString(parcel, 24, this.f10351while, false);
        SafeParcelWriter.writeString(parcel, 25, this.f10337import, false);
        SafeParcelWriter.writeString(parcel, 26, this.f10338native, false);
        SafeParcelWriter.writeString(parcel, 27, this.f10342public, false);
        SafeParcelWriter.writeBoolean(parcel, 28, this.f10350try);
        SafeParcelWriter.writeLong(parcel, 29, this.f10329else);
        SafeParcelWriter.writeInt(parcel, 30, this.f10339new);
        SafeParcelWriter.writeString(parcel, 31, this.f10343return, false);
        SafeParcelWriter.writeInt(parcel, 32, this.f10348try);
        SafeParcelWriter.writeLong(parcel, 34, this.f10334goto);
        SafeParcelWriter.writeString(parcel, 35, this.f10344static, false);
        SafeParcelWriter.writeString(parcel, 36, this.f10346switch, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @SafeParcelable.Constructor
    public zzo(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) String str3, @SafeParcelable.Param(id = 5) String str4, @SafeParcelable.Param(id = 6) long j, @SafeParcelable.Param(id = 7) long j2, @SafeParcelable.Param(id = 8) String str5, @SafeParcelable.Param(id = 9) boolean z, @SafeParcelable.Param(id = 10) boolean z2, @SafeParcelable.Param(id = 11) long j3, @SafeParcelable.Param(id = 12) String str6, @SafeParcelable.Param(id = 13) long j4, @SafeParcelable.Param(id = 14) long j5, @SafeParcelable.Param(id = 15) int i, @SafeParcelable.Param(id = 16) boolean z3, @SafeParcelable.Param(id = 18) boolean z4, @SafeParcelable.Param(id = 19) String str7, @SafeParcelable.Param(id = 21) Boolean bool, @SafeParcelable.Param(id = 22) long j6, @SafeParcelable.Param(id = 23) ArrayList arrayList, @SafeParcelable.Param(id = 24) String str8, @SafeParcelable.Param(id = 25) String str9, @SafeParcelable.Param(id = 26) String str10, @SafeParcelable.Param(id = 27) String str11, @SafeParcelable.Param(id = 28) boolean z5, @SafeParcelable.Param(id = 29) long j7, @SafeParcelable.Param(id = 30) int i2, @SafeParcelable.Param(id = 31) String str12, @SafeParcelable.Param(id = 32) int i3, @SafeParcelable.Param(id = 34) long j8, @SafeParcelable.Param(id = 35) String str13, @SafeParcelable.Param(id = 36) String str14) {
        this.f10320break = str;
        this.f10322catch = str2;
        this.f10323class = str3;
        this.f10332for = j3;
        this.f10324const = str4;
        this.f10325do = j;
        this.f10335if = j2;
        this.f10330final = str5;
        this.f10328do = z;
        this.f10336if = z2;
        this.f10345super = str6;
        this.f10340new = j4;
        this.f10349try = j5;
        this.f10331for = i;
        this.f10333for = z3;
        this.f10341new = z4;
        this.f10347throw = str7;
        this.f10326do = bool;
        this.f10321case = j6;
        this.f10327do = arrayList;
        this.f10351while = str8;
        this.f10337import = str9;
        this.f10338native = str10;
        this.f10342public = str11;
        this.f10350try = z5;
        this.f10329else = j7;
        this.f10339new = i2;
        this.f10343return = str12;
        this.f10348try = i3;
        this.f10334goto = j8;
        this.f10344static = str13;
        this.f10346switch = str14;
    }
}
