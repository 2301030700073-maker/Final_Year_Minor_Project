package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareContent;
import defpackage.C0173Do;

/* loaded from: classes.dex */
public final class ShareFeedContent extends ShareContent<ShareFeedContent, Object> {
    public static final Parcelable.Creator<ShareFeedContent> CREATOR = new Cdo();

    /* renamed from: const, reason: not valid java name */
    public final String f9406const;

    /* renamed from: final, reason: not valid java name */
    public final String f9407final;

    /* renamed from: import, reason: not valid java name */
    public final String f9408import;

    /* renamed from: native, reason: not valid java name */
    public final String f9409native;

    /* renamed from: super, reason: not valid java name */
    public final String f9410super;

    /* renamed from: throw, reason: not valid java name */
    public final String f9411throw;

    /* renamed from: while, reason: not valid java name */
    public final String f9412while;

    /* renamed from: com.facebook.share.internal.ShareFeedContent$do, reason: invalid class name */
    public static final class Cdo implements Parcelable.Creator<ShareFeedContent> {
        @Override // android.os.Parcelable.Creator
        public final ShareFeedContent createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "parcel");
            return new ShareFeedContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ShareFeedContent[] newArray(int i) {
            return new ShareFeedContent[i];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareFeedContent(Parcel parcel) {
        super(parcel);
        C0173Do.m401try(parcel, "parcel");
        this.f9406const = parcel.readString();
        this.f9407final = parcel.readString();
        this.f9410super = parcel.readString();
        this.f9411throw = parcel.readString();
        this.f9412while = parcel.readString();
        this.f9408import = parcel.readString();
        this.f9409native = parcel.readString();
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "out");
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f9406const);
        parcel.writeString(this.f9407final);
        parcel.writeString(this.f9410super);
        parcel.writeString(this.f9411throw);
        parcel.writeString(this.f9412while);
        parcel.writeString(this.f9408import);
        parcel.writeString(this.f9409native);
    }
}
