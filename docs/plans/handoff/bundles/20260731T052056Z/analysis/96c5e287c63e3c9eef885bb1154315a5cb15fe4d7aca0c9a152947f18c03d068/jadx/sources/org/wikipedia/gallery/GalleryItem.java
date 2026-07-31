package org.wikipedia.gallery;

import coil3.util.ContextsKt;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.page.tabs.Tab$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public class GalleryItem {
    public final ArtistInfo artist;
    public final String audioType;
    public final TextInfo caption;
    public final TextInfo credit;
    public final TextInfo description;
    public final double duration;
    public final String entityId;
    public final String filePage;
    public final ImageLicense license;
    public final ImageInfo original;
    public final int sectionId;
    public final List sources;
    public final StructuredData structuredData;
    public final ImageInfo thumbnail;
    public Titles titles;
    public final String type;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {null, null, null, null, null, null, null, null, null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Tab$$ExternalSyntheticLambda0(10)), null, null, null, null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return GalleryItem$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class StructuredData {
        public HashMap captions;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Tab$$ExternalSyntheticLambda0(11))};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return GalleryItem$StructuredData$$serializer.INSTANCE;
            }
        }
    }

    public /* synthetic */ GalleryItem(int i, int i2, String str, String str2, StructuredData structuredData, String str3, double d, String str4, ImageInfo imageInfo, ImageInfo imageInfo2, TextInfo textInfo, TextInfo textInfo2, List list, TextInfo textInfo3, Titles titles, ArtistInfo artistInfo, ImageLicense imageLicense) {
        this.sectionId = (i & 1) == 0 ? 0 : i2;
        if ((i & 2) == 0) {
            this.entityId = "";
        } else {
            this.entityId = str;
        }
        if ((i & 4) == 0) {
            this.audioType = "";
        } else {
            this.audioType = str2;
        }
        if ((i & 8) == 0) {
            this.structuredData = null;
        } else {
            this.structuredData = structuredData;
        }
        if ((i & 16) == 0) {
            this.filePage = "https://commons.wikimedia.org/";
        } else {
            this.filePage = str3;
        }
        if ((i & 32) == 0) {
            this.duration = 0.0d;
        } else {
            this.duration = d;
        }
        if ((i & 64) == 0) {
            this.type = "";
        } else {
            this.type = str4;
        }
        if ((i & 128) == 0) {
            this.thumbnail = new ImageInfo();
        } else {
            this.thumbnail = imageInfo;
        }
        if ((i & 256) == 0) {
            this.original = new ImageInfo();
        } else {
            this.original = imageInfo2;
        }
        if ((i & 512) == 0) {
            this.description = new TextInfo();
        } else {
            this.description = textInfo;
        }
        if ((i & 1024) == 0) {
            this.caption = null;
        } else {
            this.caption = textInfo2;
        }
        if ((i & 2048) == 0) {
            this.sources = null;
        } else {
            this.sources = list;
        }
        if ((i & 4096) == 0) {
            this.credit = null;
        } else {
            this.credit = textInfo3;
        }
        if ((i & 8192) == 0) {
            this.titles = null;
        } else {
            this.titles = titles;
        }
        if ((i & 16384) == 0) {
            this.artist = null;
        } else {
            this.artist = artistInfo;
        }
        if ((i & 32768) == 0) {
            this.license = null;
        } else {
            this.license = imageLicense;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v30 org.wikipedia.gallery.GalleryItem, still in use, count: 2, list:
          (r0v30 org.wikipedia.gallery.GalleryItem) from 0x0130: IGET (r0v30 org.wikipedia.gallery.GalleryItem) A[WRAPPED] (LINE:305) org.wikipedia.gallery.GalleryItem.titles org.wikipedia.gallery.GalleryItem$Titles
          (r0v30 org.wikipedia.gallery.GalleryItem) from 0x0134: PHI (r0v35 org.wikipedia.gallery.GalleryItem) = (r0v30 org.wikipedia.gallery.GalleryItem) binds: [B:64:0x0132] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:125)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:62)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:45)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:35)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:34)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    public static final /* synthetic */ void write$Self(org.wikipedia.gallery.GalleryItem r20, kotlin.uuid.UuidKt r21, kotlinx.serialization.descriptors.SerialDescriptor r22) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.gallery.GalleryItem.write$Self(org.wikipedia.gallery.GalleryItem, kotlin.uuid.UuidKt, kotlinx.serialization.descriptors.SerialDescriptor):void");
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Titles {
        public static final Companion Companion = new Companion();
        public final String canonical;
        public final String display;
        public final String normalized;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return GalleryItem$Titles$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Titles(int i, String str, String str2, String str3) {
            if ((i & 1) == 0) {
                this.display = "";
            } else {
                this.display = str;
            }
            if ((i & 2) == 0) {
                this.canonical = "";
            } else {
                this.canonical = str2;
            }
            if ((i & 4) == 0) {
                this.normalized = "";
            } else {
                this.normalized = str3;
            }
        }

        public Titles(String str, String str2, String str3) {
            str.getClass();
            str3.getClass();
            this.display = str;
            this.canonical = str2;
            this.normalized = str3;
        }
    }
}
