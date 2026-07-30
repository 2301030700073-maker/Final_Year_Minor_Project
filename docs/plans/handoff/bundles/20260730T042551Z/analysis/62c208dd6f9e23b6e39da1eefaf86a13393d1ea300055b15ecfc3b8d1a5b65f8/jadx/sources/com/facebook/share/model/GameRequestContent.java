package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.C0173Do;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class GameRequestContent implements ShareModel {
    public static final Parcelable.Creator<GameRequestContent> CREATOR = new Cif();

    /* renamed from: break, reason: not valid java name */
    public final String f9421break;

    /* renamed from: catch, reason: not valid java name */
    public final String f9422catch;

    /* renamed from: class, reason: not valid java name */
    public final String f9423class;

    /* renamed from: const, reason: not valid java name */
    public final String f9424const;

    /* renamed from: do, reason: not valid java name */
    public final Cdo f9425do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f9426do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f9427do;

    /* renamed from: final, reason: not valid java name */
    public final String f9428final;

    /* renamed from: if, reason: not valid java name */
    public final ArrayList f9429if;

    /* renamed from: com.facebook.share.model.GameRequestContent$do, reason: invalid class name */
    public enum Cdo {
        /* JADX INFO: Fake field, exist only in values array */
        SEND,
        /* JADX INFO: Fake field, exist only in values array */
        ASKFOR,
        /* JADX INFO: Fake field, exist only in values array */
        TURN,
        /* JADX INFO: Fake field, exist only in values array */
        INVITE;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static Cdo[] valuesCustom() {
            return (Cdo[]) Arrays.copyOf(values(), 4);
        }
    }

    /* renamed from: com.facebook.share.model.GameRequestContent$for, reason: invalid class name */
    public enum Cfor {
        /* JADX INFO: Fake field, exist only in values array */
        APP_USERS,
        /* JADX INFO: Fake field, exist only in values array */
        APP_NON_USERS,
        /* JADX INFO: Fake field, exist only in values array */
        EVERYBODY;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static Cfor[] valuesCustom() {
            return (Cfor[]) Arrays.copyOf(values(), 3);
        }
    }

    /* renamed from: com.facebook.share.model.GameRequestContent$if, reason: invalid class name */
    public static final class Cif implements Parcelable.Creator<GameRequestContent> {
        @Override // android.os.Parcelable.Creator
        public final GameRequestContent createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "parcel");
            return new GameRequestContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final GameRequestContent[] newArray(int i) {
            return new GameRequestContent[i];
        }
    }

    public GameRequestContent(Parcel parcel) {
        C0173Do.m401try(parcel, "parcel");
        this.f9421break = parcel.readString();
        this.f9422catch = parcel.readString();
        this.f9427do = parcel.createStringArrayList();
        this.f9423class = parcel.readString();
        this.f9424const = parcel.readString();
        this.f9425do = (Cdo) parcel.readSerializable();
        this.f9428final = parcel.readString();
        this.f9426do = (Cfor) parcel.readSerializable();
        this.f9429if = parcel.createStringArrayList();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "out");
        parcel.writeString(this.f9421break);
        parcel.writeString(this.f9422catch);
        parcel.writeStringList(this.f9427do);
        parcel.writeString(this.f9423class);
        parcel.writeString(this.f9424const);
        parcel.writeSerializable(this.f9425do);
        parcel.writeString(this.f9428final);
        parcel.writeSerializable(this.f9426do);
        parcel.writeStringList(this.f9429if);
    }
}
