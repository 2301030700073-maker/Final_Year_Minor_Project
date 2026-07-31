package org.wikipedia.talk.db;

import android.os.Parcel;
import android.os.Parcelable;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TalkTemplate implements Parcelable {
    public static final Parcelable.Creator<TalkTemplate> CREATOR = new PageTitle.Creator(8);
    public final int id;
    public String message;
    public int order;
    public String subject;
    public String title;
    public final int type;

    public TalkTemplate(int i, int i2, int i3, String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        this.id = i;
        this.type = i2;
        this.order = i3;
        this.title = str;
        this.subject = str2;
        this.message = str3;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return this.title;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeInt(this.id);
        parcel.writeInt(this.type);
        parcel.writeInt(this.order);
        parcel.writeString(this.title);
        parcel.writeString(this.subject);
        parcel.writeString(this.message);
    }
}
