package org.wikipedia.feed.image;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.edit.Edit$$ExternalSyntheticLambda0;
import org.wikipedia.gallery.ArtistInfo;
import org.wikipedia.gallery.GalleryItem;
import org.wikipedia.gallery.ImageInfo;
import org.wikipedia.gallery.ImageLicense;
import org.wikipedia.gallery.TextInfo;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class FeaturedImage extends GalleryItem {
    public final ImageInfo image;
    public final String title;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {null, null, null, null, null, null, null, null, null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Edit$$ExternalSyntheticLambda0(27)), null, null, null, null, null, null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return FeaturedImage$$serializer.INSTANCE;
        }
    }

    public FeaturedImage(int i, int i2, String str, String str2, GalleryItem.StructuredData structuredData, String str3, double d, String str4, ImageInfo imageInfo, ImageInfo imageInfo2, TextInfo textInfo, TextInfo textInfo2, List list, TextInfo textInfo3, GalleryItem.Titles titles, ArtistInfo artistInfo, ImageLicense imageLicense, String str5, ImageInfo imageInfo3) {
        super(i, i2, str, str2, structuredData, str3, d, str4, imageInfo, imageInfo2, textInfo, textInfo2, list, textInfo3, titles, artistInfo, imageLicense);
        String str6 = (65536 & i) == 0 ? "" : str5;
        this.title = str6;
        ImageInfo imageInfo4 = (i & 131072) == 0 ? new ImageInfo() : imageInfo3;
        this.image = imageInfo4;
        StringUtil stringUtil = StringUtil.INSTANCE;
        this.titles = new GalleryItem.Titles(str6, StringUtil.addUnderscores(str6), str6);
        ImageInfo imageInfo5 = this.original;
        String str7 = imageInfo4.source;
        imageInfo5.getClass();
        str7.getClass();
        imageInfo5.source = str7;
    }

    public final PageTitle toPageTitle() {
        return new PageTitle(this.title, new WikiSite("https://commons.wikimedia.org/"), (String) null);
    }
}
