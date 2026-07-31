package org.wikipedia.feed.didyouknow;

import android.os.Parcel;
import android.os.Parcelable;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.maplibre.android.util.DefaultStyle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class DidYouKnowItem implements Parcelable {
    public final String html;
    public final String text;
    public static final Companion Companion = new Companion();
    public static final Parcelable.Creator<DidYouKnowItem> CREATOR = new DefaultStyle.AnonymousClass1(24);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return DidYouKnowItem$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ DidYouKnowItem(int i, String str, String str2) {
        if ((i & 1) == 0) {
            this.html = "";
        } else {
            this.html = str;
        }
        if ((i & 2) == 0) {
            this.text = "";
        } else {
            this.text = str2;
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.html);
        parcel.writeString(this.text);
    }

    public DidYouKnowItem(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.html = str;
        this.text = str2;
    }
}
