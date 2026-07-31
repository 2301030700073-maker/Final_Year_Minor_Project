package org.wikipedia.feed.news;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import coil3.util.ContextsKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.maplibre.android.util.DefaultStyle;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.edit.Edit$$ExternalSyntheticLambda0;
import org.wikipedia.util.ImageUrlUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class NewsItem implements Parcelable {
    public final List links;
    public final String story;
    public static final Companion Companion = new Companion();
    public static final Parcelable.Creator<NewsItem> CREATOR = new DefaultStyle.AnonymousClass1(25);
    public static final Lazy[] $childSerializers = {null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Edit$$ExternalSyntheticLambda0(29))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return NewsItem$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ NewsItem(int i, String str, List list) {
        this.story = (i & 1) == 0 ? "" : str;
        if ((i & 2) == 0) {
            this.links = EmptyList.INSTANCE;
        } else {
            this.links = list;
        }
    }

    public static Uri getFirstImageUri(List list) {
        Object obj;
        String thumbnailUrl;
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            String thumbnailUrl2 = ((PageSummary) obj).getThumbnailUrl();
            if (thumbnailUrl2 != null && thumbnailUrl2.length() != 0) {
                break;
            }
        }
        PageSummary pageSummary = (PageSummary) obj;
        if (pageSummary == null || (thumbnailUrl = pageSummary.getThumbnailUrl()) == null) {
            return null;
        }
        Uri parse = Uri.parse(thumbnailUrl);
        parse.getClass();
        return parse;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String thumbUrl() {
        Uri firstImageUri = getFirstImageUri(this.links);
        if (firstImageUri == null) {
            return null;
        }
        Pattern pattern = ImageUrlUtil.WIDTH_IN_IMAGE_URL_REGEX;
        String uri = firstImageUri.toString();
        uri.getClass();
        return ImageUrlUtil.getUrlForPreferredSize(960, uri);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.story);
        List list = this.links;
        parcel.writeInt(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            parcel.writeParcelable((Parcelable) it.next(), i);
        }
    }

    public NewsItem(String str, ArrayList arrayList) {
        str.getClass();
        this.story = str;
        this.links = arrayList;
    }
}
