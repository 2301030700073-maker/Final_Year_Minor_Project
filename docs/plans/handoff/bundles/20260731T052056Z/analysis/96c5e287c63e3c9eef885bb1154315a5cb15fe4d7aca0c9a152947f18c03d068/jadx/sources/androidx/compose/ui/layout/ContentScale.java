package androidx.compose.ui.layout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface ContentScale {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static final ContentScale$Companion$Fit$1 Crop = new ContentScale$Companion$Fit$1(2);
        public static final ContentScale$Companion$Fit$1 Fit = new ContentScale$Companion$Fit$1(0);
        public static final ContentScale$Companion$Fit$1 FillWidth = new ContentScale$Companion$Fit$1(3);
        public static final ContentScale$Companion$Fit$1 Inside = new ContentScale$Companion$Fit$1(4);
        public static final FixedScale None = new FixedScale();
    }

    /* renamed from: computeScaleFactor-H7hwNQA, reason: not valid java name */
    long mo511computeScaleFactorH7hwNQA(long j, long j2);
}
