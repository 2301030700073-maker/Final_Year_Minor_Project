package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Size;

/* compiled from: ContentScale.kt */
/* loaded from: classes.dex */
public interface ContentScale {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* renamed from: computeScaleFactor-H7hwNQA, reason: not valid java name */
    long mo1742computeScaleFactorH7hwNQA(long j, long j2);

    /* compiled from: ContentScale.kt */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final ContentScale Crop = new ContentScale() { // from class: androidx.compose.ui.layout.ContentScale$Companion$Crop$1
            @Override // androidx.compose.ui.layout.ContentScale
            /* renamed from: computeScaleFactor-H7hwNQA */
            public long mo1742computeScaleFactorH7hwNQA(long j, long j2) {
                float m1748computeFillMaxDimensioniLBOSCw;
                m1748computeFillMaxDimensioniLBOSCw = ContentScaleKt.m1748computeFillMaxDimensioniLBOSCw(j, j2);
                return ScaleFactorKt.ScaleFactor(m1748computeFillMaxDimensioniLBOSCw, m1748computeFillMaxDimensioniLBOSCw);
            }
        };
        private static final ContentScale Fit = new ContentScale() { // from class: androidx.compose.ui.layout.ContentScale$Companion$Fit$1
            @Override // androidx.compose.ui.layout.ContentScale
            /* renamed from: computeScaleFactor-H7hwNQA */
            public long mo1742computeScaleFactorH7hwNQA(long j, long j2) {
                float m1749computeFillMinDimensioniLBOSCw;
                m1749computeFillMinDimensioniLBOSCw = ContentScaleKt.m1749computeFillMinDimensioniLBOSCw(j, j2);
                return ScaleFactorKt.ScaleFactor(m1749computeFillMinDimensioniLBOSCw, m1749computeFillMinDimensioniLBOSCw);
            }
        };
        private static final ContentScale FillHeight = new ContentScale() { // from class: androidx.compose.ui.layout.ContentScale$Companion$FillHeight$1
            @Override // androidx.compose.ui.layout.ContentScale
            /* renamed from: computeScaleFactor-H7hwNQA */
            public long mo1742computeScaleFactorH7hwNQA(long j, long j2) {
                float m1747computeFillHeightiLBOSCw;
                m1747computeFillHeightiLBOSCw = ContentScaleKt.m1747computeFillHeightiLBOSCw(j, j2);
                return ScaleFactorKt.ScaleFactor(m1747computeFillHeightiLBOSCw, m1747computeFillHeightiLBOSCw);
            }
        };
        private static final ContentScale FillWidth = new ContentScale() { // from class: androidx.compose.ui.layout.ContentScale$Companion$FillWidth$1
            @Override // androidx.compose.ui.layout.ContentScale
            /* renamed from: computeScaleFactor-H7hwNQA */
            public long mo1742computeScaleFactorH7hwNQA(long j, long j2) {
                float m1750computeFillWidthiLBOSCw;
                m1750computeFillWidthiLBOSCw = ContentScaleKt.m1750computeFillWidthiLBOSCw(j, j2);
                return ScaleFactorKt.ScaleFactor(m1750computeFillWidthiLBOSCw, m1750computeFillWidthiLBOSCw);
            }
        };
        private static final ContentScale Inside = new ContentScale() { // from class: androidx.compose.ui.layout.ContentScale$Companion$Inside$1
            @Override // androidx.compose.ui.layout.ContentScale
            /* renamed from: computeScaleFactor-H7hwNQA */
            public long mo1742computeScaleFactorH7hwNQA(long j, long j2) {
                float m1749computeFillMinDimensioniLBOSCw;
                if (Size.m1204getWidthimpl(j) > Size.m1204getWidthimpl(j2) || Size.m1202getHeightimpl(j) > Size.m1202getHeightimpl(j2)) {
                    m1749computeFillMinDimensioniLBOSCw = ContentScaleKt.m1749computeFillMinDimensioniLBOSCw(j, j2);
                    return ScaleFactorKt.ScaleFactor(m1749computeFillMinDimensioniLBOSCw, m1749computeFillMinDimensioniLBOSCw);
                }
                return ScaleFactorKt.ScaleFactor(1.0f, 1.0f);
            }
        };
        private static final FixedScale None = new FixedScale(1.0f);
        private static final ContentScale FillBounds = new ContentScale() { // from class: androidx.compose.ui.layout.ContentScale$Companion$FillBounds$1
            @Override // androidx.compose.ui.layout.ContentScale
            /* renamed from: computeScaleFactor-H7hwNQA */
            public long mo1742computeScaleFactorH7hwNQA(long j, long j2) {
                float m1750computeFillWidthiLBOSCw;
                float m1747computeFillHeightiLBOSCw;
                m1750computeFillWidthiLBOSCw = ContentScaleKt.m1750computeFillWidthiLBOSCw(j, j2);
                m1747computeFillHeightiLBOSCw = ContentScaleKt.m1747computeFillHeightiLBOSCw(j, j2);
                return ScaleFactorKt.ScaleFactor(m1750computeFillWidthiLBOSCw, m1747computeFillHeightiLBOSCw);
            }
        };

        private Companion() {
        }

        public final ContentScale getCrop() {
            return Crop;
        }

        public final ContentScale getFit() {
            return Fit;
        }

        public final ContentScale getInside() {
            return Inside;
        }

        public final FixedScale getNone() {
            return None;
        }
    }
}
