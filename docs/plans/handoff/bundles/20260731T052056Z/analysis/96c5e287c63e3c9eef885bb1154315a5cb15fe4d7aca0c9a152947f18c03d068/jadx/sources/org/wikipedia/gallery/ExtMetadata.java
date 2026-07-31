package org.wikipedia.gallery;

import android.os.Parcel;
import android.os.Parcelable;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.maplibre.android.util.DefaultStyle;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class ExtMetadata implements Parcelable {
    public final Values artist;
    public final Values credit;
    public final Values dateTimeOriginal;
    public final Values imageDescription;
    public final Values license;
    public final Values licenseShortName;
    public final Values licenseUrl;
    public final Values objectName;
    public final Values usageTerms;
    public static final Companion Companion = new Companion();
    public static final Parcelable.Creator<ExtMetadata> CREATOR = new DefaultStyle.AnonymousClass1(29);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return ExtMetadata$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ ExtMetadata(int i, Values values, Values values2, Values values3, Values values4, Values values5, Values values6, Values values7, Values values8, Values values9) {
        if ((i & 1) == 0) {
            this.objectName = null;
        } else {
            this.objectName = values;
        }
        if ((i & 2) == 0) {
            this.imageDescription = null;
        } else {
            this.imageDescription = values2;
        }
        if ((i & 4) == 0) {
            this.dateTimeOriginal = null;
        } else {
            this.dateTimeOriginal = values3;
        }
        if ((i & 8) == 0) {
            this.artist = null;
        } else {
            this.artist = values4;
        }
        if ((i & 16) == 0) {
            this.credit = null;
        } else {
            this.credit = values5;
        }
        if ((i & 32) == 0) {
            this.licenseShortName = null;
        } else {
            this.licenseShortName = values6;
        }
        if ((i & 64) == 0) {
            this.usageTerms = null;
        } else {
            this.usageTerms = values7;
        }
        if ((i & 128) == 0) {
            this.licenseUrl = null;
        } else {
            this.licenseUrl = values8;
        }
        if ((i & 256) == 0) {
            this.license = null;
        } else {
            this.license = values9;
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String imageDescription() {
        Values values = this.imageDescription;
        String str = values != null ? values.value : null;
        return str == null ? "" : str;
    }

    public final String licenseShortName() {
        Values values = this.licenseShortName;
        String str = values != null ? values.value : null;
        return str == null ? "" : str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        Values values = this.objectName;
        if (values == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            values.writeToParcel(parcel, i);
        }
        Values values2 = this.imageDescription;
        if (values2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            values2.writeToParcel(parcel, i);
        }
        Values values3 = this.dateTimeOriginal;
        if (values3 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            values3.writeToParcel(parcel, i);
        }
        Values values4 = this.artist;
        if (values4 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            values4.writeToParcel(parcel, i);
        }
        Values values5 = this.credit;
        if (values5 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            values5.writeToParcel(parcel, i);
        }
        Values values6 = this.licenseShortName;
        if (values6 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            values6.writeToParcel(parcel, i);
        }
        Values values7 = this.usageTerms;
        if (values7 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            values7.writeToParcel(parcel, i);
        }
        Values values8 = this.licenseUrl;
        if (values8 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            values8.writeToParcel(parcel, i);
        }
        Values values9 = this.license;
        if (values9 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            values9.writeToParcel(parcel, i);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Values implements Parcelable {
        public final String hidden;
        public final String source;
        public final String value;
        public static final Companion Companion = new Companion();
        public static final Parcelable.Creator<Values> CREATOR = new PageTitle.Creator(1);

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return ExtMetadata$Values$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Values(int i, String str, String str2, String str3) {
            if ((i & 1) == 0) {
                this.value = null;
            } else {
                this.value = str;
            }
            if ((i & 2) == 0) {
                this.source = null;
            } else {
                this.source = str2;
            }
            if ((i & 4) == 0) {
                this.hidden = null;
            } else {
                this.hidden = str3;
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeString(this.value);
            parcel.writeString(this.source);
            parcel.writeString(this.hidden);
        }

        public Values(String str, String str2, String str3) {
            this.value = str;
            this.source = str2;
            this.hidden = str3;
        }
    }

    public ExtMetadata(Values values, Values values2, Values values3, Values values4, Values values5, Values values6, Values values7, Values values8, Values values9) {
        this.objectName = values;
        this.imageDescription = values2;
        this.dateTimeOriginal = values3;
        this.artist = values4;
        this.credit = values5;
        this.licenseShortName = values6;
        this.usageTerms = values7;
        this.licenseUrl = values8;
        this.license = values9;
    }
}
