package org.wikipedia.gallery;

import android.os.Parcel;
import android.os.Parcelable;
import coil3.util.ContextsKt;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.tabs.Tab$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class MediaListItem implements Parcelable {
    public final TextInfo caption;
    public final int sectionId;
    public final boolean showInGallery;
    public final List srcSets;
    public final String title;
    public final String type;
    public static final Companion Companion = new Companion();
    public static final Parcelable.Creator<MediaListItem> CREATOR = new PageTitle.Creator(2);
    public static final Lazy[] $childSerializers = {null, null, null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Tab$$ExternalSyntheticLambda0(17))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return MediaListItem$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ MediaListItem(int i, String str, String str2, TextInfo textInfo, boolean z, int i2, List list) {
        if ((i & 1) == 0) {
            this.title = "";
        } else {
            this.title = str;
        }
        if ((i & 2) == 0) {
            this.type = "";
        } else {
            this.type = str2;
        }
        if ((i & 4) == 0) {
            this.caption = null;
        } else {
            this.caption = textInfo;
        }
        if ((i & 8) == 0) {
            this.showInGallery = false;
        } else {
            this.showInGallery = z;
        }
        if ((i & 16) == 0) {
            this.sectionId = 0;
        } else {
            this.sectionId = i2;
        }
        if ((i & 32) == 0) {
            this.srcSets = EmptyList.INSTANCE;
        } else {
            this.srcSets = list;
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.title);
        parcel.writeString(this.type);
        parcel.writeParcelable(this.caption, i);
        parcel.writeInt(this.showInGallery ? 1 : 0);
        parcel.writeInt(this.sectionId);
        List list = this.srcSets;
        parcel.writeInt(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((ImageSrcSet) it.next()).writeToParcel(parcel, i);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class ImageSrcSet implements Parcelable {
        public final String _scale;
        public final String src;
        public static final Companion Companion = new Companion();
        public static final Parcelable.Creator<ImageSrcSet> CREATOR = new PageTitle.Creator(3);

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MediaListItem$ImageSrcSet$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ ImageSrcSet(int i, String str, String str2) {
            this._scale = (i & 1) == 0 ? null : str;
            if ((i & 2) == 0) {
                this.src = "";
            } else {
                this.src = str2;
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeString(this._scale);
            parcel.writeString(this.src);
        }

        public ImageSrcSet(String str, String str2) {
            str2.getClass();
            this._scale = str;
            this.src = str2;
        }
    }

    public MediaListItem(String str, String str2, TextInfo textInfo, boolean z, int i, List list) {
        str.getClass();
        str2.getClass();
        list.getClass();
        this.title = str;
        this.type = str2;
        this.caption = textInfo;
        this.showInGallery = z;
        this.sectionId = i;
        this.srcSets = list;
    }
}
