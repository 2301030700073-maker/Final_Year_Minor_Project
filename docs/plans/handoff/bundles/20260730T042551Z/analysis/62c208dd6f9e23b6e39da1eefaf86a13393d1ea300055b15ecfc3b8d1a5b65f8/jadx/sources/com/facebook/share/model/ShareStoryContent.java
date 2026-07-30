package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.C0173Do;
import defpackage.E8;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class ShareStoryContent extends ShareContent<ShareStoryContent, Object> {
    public static final Parcelable.Creator<ShareStoryContent> CREATOR = new Cdo();

    /* renamed from: const, reason: not valid java name */
    public final String f9473const;

    /* renamed from: do, reason: not valid java name */
    public final ShareMedia<?, ?> f9474do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SharePhoto f9475do;

    /* renamed from: if, reason: not valid java name */
    public final List<String> f9476if;

    /* renamed from: com.facebook.share.model.ShareStoryContent$do, reason: invalid class name */
    public static final class Cdo implements Parcelable.Creator<ShareStoryContent> {
        @Override // android.os.Parcelable.Creator
        public final ShareStoryContent createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "parcel");
            return new ShareStoryContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ShareStoryContent[] newArray(int i) {
            return new ShareStoryContent[i];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareStoryContent(Parcel parcel) {
        super(parcel);
        C0173Do.m401try(parcel, "parcel");
        this.f9474do = (ShareMedia) parcel.readParcelable(ShareMedia.class.getClassLoader());
        this.f9475do = (SharePhoto) parcel.readParcelable(SharePhoto.class.getClassLoader());
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        this.f9476if = arrayList.isEmpty() ? null : E8.j(arrayList);
        this.f9473const = parcel.readString();
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "out");
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f9474do, 0);
        parcel.writeParcelable(this.f9475do, 0);
        List<String> list = this.f9476if;
        parcel.writeStringList(list == null ? null : E8.j(list));
        parcel.writeString(this.f9473const);
    }
}
