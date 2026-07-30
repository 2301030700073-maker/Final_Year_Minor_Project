package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareContent.Cdo;
import com.facebook.share.model.ShareHashtag;
import defpackage.C0173Do;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ShareContent<M extends ShareContent<M, B>, B extends Cdo<M, B>> implements ShareModel {

    /* renamed from: break, reason: not valid java name */
    public final String f9435break;

    /* renamed from: catch, reason: not valid java name */
    public final String f9436catch;

    /* renamed from: class, reason: not valid java name */
    public final String f9437class;

    /* renamed from: do, reason: not valid java name */
    public final Uri f9438do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ShareHashtag f9439do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<String> f9440do;

    /* renamed from: com.facebook.share.model.ShareContent$do, reason: invalid class name */
    public static abstract class Cdo<M extends ShareContent<M, B>, B extends Cdo<M, B>> {

        /* renamed from: do, reason: not valid java name */
        public Uri f9441do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public ShareHashtag f9442do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f9443do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public List<String> f9444do;

        /* renamed from: for, reason: not valid java name */
        public String f9445for;

        /* renamed from: if, reason: not valid java name */
        public String f9446if;
    }

    public ShareContent(Cdo<M, B> cdo) {
        this.f9438do = cdo.f9441do;
        this.f9440do = cdo.f9444do;
        this.f9435break = cdo.f9443do;
        this.f9436catch = cdo.f9446if;
        this.f9437class = cdo.f9445for;
        this.f9439do = cdo.f9442do;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "out");
        parcel.writeParcelable(this.f9438do, 0);
        parcel.writeStringList(this.f9440do);
        parcel.writeString(this.f9435break);
        parcel.writeString(this.f9436catch);
        parcel.writeString(this.f9437class);
        parcel.writeParcelable(this.f9439do, 0);
    }

    public ShareContent(Parcel parcel) {
        C0173Do.m401try(parcel, "parcel");
        this.f9438do = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        this.f9440do = arrayList.isEmpty() ? null : DesugarCollections.unmodifiableList(arrayList);
        this.f9435break = parcel.readString();
        this.f9436catch = parcel.readString();
        this.f9437class = parcel.readString();
        ShareHashtag.Cdo cdo = new ShareHashtag.Cdo();
        ShareHashtag shareHashtag = (ShareHashtag) parcel.readParcelable(ShareHashtag.class.getClassLoader());
        if (shareHashtag != null) {
            cdo.f9448do = shareHashtag.f9447break;
        }
        this.f9439do = new ShareHashtag(cdo);
    }
}
