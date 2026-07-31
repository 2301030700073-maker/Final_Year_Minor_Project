package org.schabi.newpipe.util.image;

import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import j$.util.Collection;
import j$.util.Comparator;
import j$.util.Optional;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.EmptyList;
import kotlinx.coroutines.rx3.RxAwaitKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda10;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda41;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda4;
import us.shandian.giga.ui.common.Deleter$$ExternalSyntheticLambda3;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public abstract class ImageStrategy {
    public static PreferredImageQuality preferredImageQuality = PreferredImageQuality.MEDIUM;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[Image.ResolutionLevel.values().length];
            try {
                iArr[3] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[PreferredImageQuality.values().length];
            try {
                iArr2[0] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[2] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[3] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public static final String choosePreferredImage(List list, PreferredImageQuality preferredImageQuality2) {
        Image.ResolutionLevel resolutionLevel;
        list.getClass();
        preferredImageQuality2.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            Image image = (Image) obj;
            if (image.getHeight() != -1 && image.getWidth() != -1) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Image image2 = (Image) it.next();
            arrayList2.add(Double.valueOf(image2.getWidth() / image2.getHeight()));
        }
        int i = 0;
        Double d = (Double) CollectionsKt.getOrNull(0, arrayList2);
        double doubleValue = d != null ? d.doubleValue() : 1.0d;
        int ordinal = preferredImageQuality2.ordinal();
        int i2 = 3;
        int i3 = 2;
        int i4 = 1;
        if (ordinal == 0) {
            resolutionLevel = Image.ResolutionLevel.UNKNOWN;
        } else if (ordinal == 1) {
            resolutionLevel = Image.ResolutionLevel.LOW;
        } else if (ordinal == 2) {
            resolutionLevel = Image.ResolutionLevel.MEDIUM;
        } else {
            if (ordinal != 3) {
                DecodeUtils$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            resolutionLevel = Image.ResolutionLevel.HIGH;
        }
        Comparator thenComparing = Comparator.EL.thenComparing(Comparator.CC.comparingInt(new ListHelper$$ExternalSyntheticLambda4(new RxAwaitKt$$ExternalSyntheticLambda0(resolutionLevel, 15), i3)), new Player$$ExternalSyntheticLambda41(new FeedFragment$$ExternalSyntheticLambda10(13), 14));
        int ordinal2 = preferredImageQuality2.ordinal();
        if (ordinal2 != 0) {
            if (ordinal2 == 1) {
                thenComparing = Comparator.EL.thenComparingDouble(thenComparing, new ImageStrategy$$ExternalSyntheticLambda6(new ImageStrategy$$ExternalSyntheticLambda5(doubleValue, 0), i));
            } else if (ordinal2 == 2) {
                thenComparing = Comparator.EL.thenComparingDouble(thenComparing, new ImageStrategy$$ExternalSyntheticLambda6(new ImageStrategy$$ExternalSyntheticLambda5(doubleValue, 1), i2));
            } else {
                if (ordinal2 != 3) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m();
                    return null;
                }
                thenComparing = Comparator.EL.thenComparingDouble(thenComparing, new ImageStrategy$$ExternalSyntheticLambda6(new ImageStrategy$$ExternalSyntheticLambda5(doubleValue, 2), i3));
            }
        }
        Optional min = Collection.EL.stream(list).min(thenComparing);
        ImageStrategy$choosePreferredImage$1 imageStrategy$choosePreferredImage$1 = ImageStrategy$choosePreferredImage$1.INSTANCE;
        return (String) min.map(new Deleter$$ExternalSyntheticLambda3(i4)).orElse(null);
    }

    public static final List dbUrlToImageList(String str) {
        return str == null ? EmptyList.INSTANCE : Jsoup.listOf(new Image(str, -1, -1, Image.ResolutionLevel.UNKNOWN));
    }

    public static final double estimatePixelCount(Image image, double d) {
        image.getClass();
        if (image.getHeight() == -1) {
            if (image.getWidth() == -1) {
                return 0.0d;
            }
            return (image.getWidth() * image.getWidth()) / d;
        }
        if (image.getWidth() == -1) {
            return image.getHeight() * image.getHeight() * d;
        }
        return image.getWidth() * image.getHeight();
    }

    public static final String imageListToDbUrl(List list) {
        list.getClass();
        return choosePreferredImage(list, WhenMappings.$EnumSwitchMapping$1[preferredImageQuality.ordinal()] == 1 ? PreferredImageQuality.MEDIUM : preferredImageQuality);
    }

    public static final boolean shouldLoadImages() {
        return preferredImageQuality != PreferredImageQuality.NONE;
    }

    public static final String choosePreferredImage(List list) {
        list.getClass();
        if (preferredImageQuality == PreferredImageQuality.NONE) {
            return null;
        }
        return choosePreferredImage(list, preferredImageQuality);
    }
}
