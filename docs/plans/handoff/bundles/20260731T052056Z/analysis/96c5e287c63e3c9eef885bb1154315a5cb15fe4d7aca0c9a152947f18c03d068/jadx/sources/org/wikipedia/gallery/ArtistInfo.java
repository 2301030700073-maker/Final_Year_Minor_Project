package org.wikipedia.gallery;

import android.os.Parcel;
import android.os.Parcelable;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.maplibre.android.util.DefaultStyle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class ArtistInfo extends TextInfo {
    public final String name;
    public final String userPage;
    public static final Companion Companion = new Companion();
    public static final Parcelable.Creator<ArtistInfo> CREATOR = new DefaultStyle.AnonymousClass1(28);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return ArtistInfo$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ ArtistInfo(int i, String str, String str2, String str3, String str4, String str5) {
        super(i, str, str2, str3);
        if ((i & 8) == 0) {
            this.name = null;
        } else {
            this.name = str4;
        }
        if ((i & 16) == 0) {
            this.userPage = null;
        } else {
            this.userPage = str5;
        }
    }

    @Override // org.wikipedia.gallery.TextInfo, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // org.wikipedia.gallery.TextInfo, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.name);
        parcel.writeString(this.userPage);
    }

    public ArtistInfo(String str, String str2) {
        this.name = str;
        this.userPage = str2;
    }
}
