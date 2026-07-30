package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.SharePhoto;
import defpackage.C0173Do;
import defpackage.C0471Rf;
import defpackage.E8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class SharePhotoContent extends ShareContent<SharePhotoContent, Cdo> {
    public static final Parcelable.Creator<SharePhotoContent> CREATOR = new Cif();

    /* renamed from: if, reason: not valid java name */
    public final List<SharePhoto> f9471if;

    /* renamed from: com.facebook.share.model.SharePhotoContent$do, reason: invalid class name */
    public static final class Cdo extends ShareContent.Cdo<SharePhotoContent, Cdo> {

        /* renamed from: do, reason: not valid java name */
        public final ArrayList f9472do = new ArrayList();

        /* renamed from: do, reason: not valid java name */
        public final void m5532do(List list) {
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    SharePhoto sharePhoto = (SharePhoto) it.next();
                    if (sharePhoto != null) {
                        this.f9472do.add(new SharePhoto(new SharePhoto.Cdo().m5531do(sharePhoto)));
                    }
                }
            }
        }
    }

    /* renamed from: com.facebook.share.model.SharePhotoContent$if, reason: invalid class name */
    public static final class Cif implements Parcelable.Creator<SharePhotoContent> {
        @Override // android.os.Parcelable.Creator
        public final SharePhotoContent createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "parcel");
            return new SharePhotoContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final SharePhotoContent[] newArray(int i) {
            return new SharePhotoContent[i];
        }
    }

    public SharePhotoContent(Cdo cdo) {
        super(cdo);
        this.f9471if = E8.j(cdo.f9472do);
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "out");
        super.writeToParcel(parcel, i);
        List<SharePhoto> list = this.f9471if;
        C0173Do.m401try(list, "photos");
        Object[] array = list.toArray(new SharePhoto[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        parcel.writeParcelableArray((SharePhoto[]) array, i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharePhotoContent(Parcel parcel) {
        super(parcel);
        Iterable iterable;
        C0173Do.m401try(parcel, "parcel");
        Parcelable[] readParcelableArray = parcel.readParcelableArray(ShareMedia.class.getClassLoader());
        if (readParcelableArray == null) {
            iterable = C0471Rf.f3217do;
        } else {
            ArrayList arrayList = new ArrayList();
            for (Parcelable parcelable : readParcelableArray) {
                if (parcelable instanceof ShareMedia) {
                    arrayList.add(parcelable);
                }
            }
            iterable = arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : iterable) {
            if (obj instanceof SharePhoto) {
                arrayList2.add(obj);
            }
        }
        this.f9471if = E8.j(arrayList2);
    }
}
