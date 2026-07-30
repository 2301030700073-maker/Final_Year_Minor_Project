package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.C0173Do;
import defpackage.C0471Rf;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class ShareMediaContent extends ShareContent<ShareMediaContent, Object> {
    public static final Parcelable.Creator<ShareMediaContent> CREATOR = new Cdo();

    /* renamed from: if, reason: not valid java name */
    public final List<ShareMedia<?, ?>> f9455if;

    /* renamed from: com.facebook.share.model.ShareMediaContent$do, reason: invalid class name */
    public static final class Cdo implements Parcelable.Creator<ShareMediaContent> {
        @Override // android.os.Parcelable.Creator
        public final ShareMediaContent createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "source");
            return new ShareMediaContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ShareMediaContent[] newArray(int i) {
            return new ShareMediaContent[i];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareMediaContent(Parcel parcel) {
        super(parcel);
        List<ShareMedia<?, ?>> list;
        C0173Do.m401try(parcel, "source");
        Parcelable[] readParcelableArray = parcel.readParcelableArray(ShareMedia.class.getClassLoader());
        if (readParcelableArray == null) {
            list = null;
        } else {
            ArrayList arrayList = new ArrayList();
            for (Parcelable parcelable : readParcelableArray) {
                ShareMedia shareMedia = (ShareMedia) parcelable;
                if (shareMedia != null) {
                    arrayList.add(shareMedia);
                }
            }
            list = arrayList;
        }
        this.f9455if = list == null ? C0471Rf.f3217do : list;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "out");
        super.writeToParcel(parcel, i);
        Object[] array = this.f9455if.toArray(new ShareMedia[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        parcel.writeParcelableArray((Parcelable[]) array, i);
    }
}
