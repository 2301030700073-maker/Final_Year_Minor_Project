package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.C0173Do;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class ShareMessengerURLActionButton extends ShareMessengerActionButton {
    public static final Parcelable.Creator<ShareMessengerURLActionButton> CREATOR = new Cdo();

    /* renamed from: do, reason: not valid java name */
    public final Uri f9457do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f9458do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f9459do;

    /* renamed from: if, reason: not valid java name */
    public final Uri f9460if;

    /* renamed from: com.facebook.share.model.ShareMessengerURLActionButton$do, reason: invalid class name */
    public static final class Cdo implements Parcelable.Creator<ShareMessengerURLActionButton> {
        @Override // android.os.Parcelable.Creator
        public final ShareMessengerURLActionButton createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "parcel");
            return new ShareMessengerURLActionButton(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ShareMessengerURLActionButton[] newArray(int i) {
            return new ShareMessengerURLActionButton[i];
        }
    }

    /* renamed from: com.facebook.share.model.ShareMessengerURLActionButton$if, reason: invalid class name */
    public enum Cif {
        /* JADX INFO: Fake field, exist only in values array */
        WebviewHeightRatioFull,
        /* JADX INFO: Fake field, exist only in values array */
        WebviewHeightRatioTall,
        /* JADX INFO: Fake field, exist only in values array */
        WebviewHeightRatioCompact;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static Cif[] valuesCustom() {
            return (Cif[]) Arrays.copyOf(values(), 3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareMessengerURLActionButton(Parcel parcel) {
        super(parcel);
        C0173Do.m401try(parcel, "parcel");
        this.f9457do = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f9459do = parcel.readByte() != 0;
        this.f9460if = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f9458do = (Cif) parcel.readSerializable();
        parcel.readByte();
    }

    @Override // com.facebook.share.model.ShareMessengerActionButton, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "dest");
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f9457do, 0);
        boolean z = this.f9459do;
        parcel.writeByte(z ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.f9460if, 0);
        parcel.writeSerializable(this.f9458do);
        parcel.writeByte(z ? (byte) 1 : (byte) 0);
    }
}
