package org.wikipedia.gallery;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public class TextInfo implements Parcelable {
    public final String html;
    public final String lang;
    public final String text;
    public static final Companion Companion = new Companion();
    public static final Parcelable.Creator<TextInfo> CREATOR = new PageTitle.Creator(4);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return TextInfo$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ TextInfo(int i, String str, String str2, String str3) {
        if ((i & 1) == 0) {
            this.lang = "";
        } else {
            this.lang = str;
        }
        if ((i & 2) == 0) {
            this.text = "";
        } else {
            this.text = str2;
        }
        if ((i & 4) == 0) {
            this.html = "";
        } else {
            this.html = str3;
        }
    }

    public static final /* synthetic */ void write$Self(TextInfo textInfo, UuidKt uuidKt, SerialDescriptor serialDescriptor) {
        String str = textInfo.html;
        String str2 = textInfo.text;
        String str3 = textInfo.lang;
        if (uuidKt.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str3, "")) {
            uuidKt.encodeStringElement(serialDescriptor, 0, str3);
        }
        if (uuidKt.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str2, "")) {
            uuidKt.encodeStringElement(serialDescriptor, 1, str2);
        }
        if (!uuidKt.shouldEncodeElementDefault(serialDescriptor) && Intrinsics.areEqual(str, "")) {
            return;
        }
        uuidKt.encodeStringElement(serialDescriptor, 2, str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.lang);
        parcel.writeString(this.text);
        parcel.writeString(this.html);
    }

    public TextInfo(String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        this.lang = str;
        this.text = str2;
        this.html = str3;
    }

    public /* synthetic */ TextInfo() {
        this("", "", "");
    }
}
