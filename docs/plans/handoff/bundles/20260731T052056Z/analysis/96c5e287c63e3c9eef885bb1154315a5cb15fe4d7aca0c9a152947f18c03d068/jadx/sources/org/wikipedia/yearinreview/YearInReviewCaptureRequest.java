package org.wikipedia.yearinreview;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.yearinreview.YearInReviewScreenData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class YearInReviewCaptureRequest {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class GeoScreen extends YearInReviewCaptureRequest {
        public final Function2 requestScreenshotBitmap;
        public final YearInReviewScreenData screenData;

        public GeoScreen(YearInReviewScreenData yearInReviewScreenData, Function2 function2) {
            yearInReviewScreenData.getClass();
            this.screenData = yearInReviewScreenData;
            this.requestScreenshotBitmap = function2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof GeoScreen)) {
                return false;
            }
            GeoScreen geoScreen = (GeoScreen) obj;
            return Intrinsics.areEqual(this.screenData, geoScreen.screenData) && Intrinsics.areEqual(this.requestScreenshotBitmap, geoScreen.requestScreenshotBitmap);
        }

        public final int hashCode() {
            int hashCode = this.screenData.hashCode() * 31;
            Function2 function2 = this.requestScreenshotBitmap;
            return hashCode + (function2 == null ? 0 : function2.hashCode());
        }

        public final String toString() {
            return "GeoScreen(screenData=" + this.screenData + ", requestScreenshotBitmap=" + this.requestScreenshotBitmap + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HighlightsScreen extends YearInReviewCaptureRequest {
        public final YearInReviewScreenData.HighlightsScreen data;

        public HighlightsScreen(YearInReviewScreenData.HighlightsScreen highlightsScreen) {
            this.data = highlightsScreen;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof HighlightsScreen) && this.data == ((HighlightsScreen) obj).data;
        }

        public final int hashCode() {
            return this.data.hashCode();
        }

        public final String toString() {
            return "HighlightsScreen(data=" + this.data + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class StandardScreen extends YearInReviewCaptureRequest {
        public final YearInReviewScreenData screenData;

        public StandardScreen(YearInReviewScreenData yearInReviewScreenData) {
            yearInReviewScreenData.getClass();
            this.screenData = yearInReviewScreenData;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof StandardScreen) && Intrinsics.areEqual(this.screenData, ((StandardScreen) obj).screenData);
        }

        public final int hashCode() {
            return this.screenData.hashCode();
        }

        public final String toString() {
            return "StandardScreen(screenData=" + this.screenData + ")";
        }
    }
}
