package org.jsoup.nodes;

import java.lang.ref.SoftReference;
import java.util.ArrayDeque;
import java.util.WeakHashMap;
import java.util.function.Supplier;
import org.jsoup.select.Elements;
import org.schabi.newpipe.extractor.exceptions.ParsingException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Entities$$ExternalSyntheticLambda0 implements Supplier {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Entities$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.$r8$classId) {
            case 0:
                return new char[2];
            case 1:
                return new byte[8192];
            case 2:
                return new SoftReference(new ArrayDeque());
            case 3:
                return new StringBuilder(1024);
            case 4:
                return new String[512];
            case 5:
                return new char[2048];
            case 6:
                return new Elements();
            case 7:
                return new WeakHashMap();
            case 8:
                return new NodeIterator(new TextNode(""), Node.class);
            case 9:
                return new ParsingException("Could not get token");
            case 10:
                return new ParsingException("Could not get uploader name");
            case 11:
                return new ParsingException("no id found for this url");
            case 12:
                return new ParsingException("Could not get channel name");
            case 13:
                return new ParsingException("Could not get avatars");
            case 14:
                return new ParsingException("Could not get avatars");
            case 15:
                return new ParsingException("Could not get comment replies continuation");
            case 16:
                return new ParsingException("Could not get comment entity payload mutation");
            case 17:
                return new ParsingException("Could not get thumbnailOverlayBadgeViewModel");
            case 18:
                return new ParsingException("Could not get thumbnailBadgeViewModel");
            case 19:
                return new ParsingException("Could not get uploader info");
            case 20:
                return new ParsingException("Could not get playlist info");
            case 21:
                return new ParsingException("Could not get \"Now\" or \"Videos\" trending tab");
            default:
                return null;
        }
    }
}
