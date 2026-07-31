package org.wikipedia.yearinreview;

import android.content.Context;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import kotlin.Pair;
import kotlin.ULong;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.R;
import org.wikipedia.compose.ComposeColors;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda11;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda9;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class YearInReviewScreenData {
    public final boolean allowDonate;
    public final boolean showDonateInToolbar;
    public final String slideName;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CustomIconScreen extends StandardScreen {
        public final boolean showDonateButton;

        public CustomIconScreen(boolean z, Object obj, Object obj2, String str, boolean z2) {
            super(z, R.drawable.launcher_foreground_yir25, null, obj, obj2, str, !z2, 4);
            this.showDonateButton = z2;
        }

        @Override // org.wikipedia.yearinreview.YearInReviewScreenData
        public final void BottomButton(Context context, Function1 function1, GapComposer gapComposer, int i) {
            int i2;
            context.getClass();
            function1.getClass();
            gapComposer.startRestartGroup(5708482);
            if ((i & 48) == 0) {
                i2 = (gapComposer.changedInstance(function1) ? 32 : 16) | i;
            } else {
                i2 = i;
            }
            if ((i & 384) == 0) {
                i2 |= gapComposer.changedInstance(this) ? 256 : 128;
            }
            if (!gapComposer.shouldExecute(i2 & 1, (i2 & 145) != 144)) {
                gapComposer.skipToGroupEnd();
            } else if (this.showDonateButton) {
                gapComposer.startReplaceGroup(-1737136153);
                Modifier fillMaxWidth = SizeKt.fillMaxWidth(OffsetKt.m136paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, 8.0f, 8.0f, 8.0f, RecyclerView.DECELERATION_RATE, 8), 1.0f);
                PaddingValuesImpl m125PaddingValuesYgX7TsA$default = OffsetKt.m125PaddingValuesYgX7TsA$default(2, 18.0f);
                PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
                ButtonColors m260buttonColorsro_MJ88 = ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor, 0L, gapComposer, 14);
                boolean changedInstance = gapComposer.changedInstance(this) | ((i2 & 112) == 32);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                    rememberedValue = new AboutActivityKt$$ExternalSyntheticLambda11(13, function1, this);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                CardKt.Button((Function0) rememberedValue, fillMaxWidth, false, null, m260buttonColorsro_MJ88, null, null, m125PaddingValuesYgX7TsA$default, YearInReviewDialog.lambda$2085340557, gapComposer, 817889280, 364);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-1736144928);
                gapComposer.end(false);
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9((Object) this, (Object) context, (Object) function1, i, 23);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class GeoScreen extends YearInReviewScreenData {
        public final String bodyText;
        public final String headlineText;
        public final Pair largestClusterBottomRight;
        public final Pair largestClusterTopLeft;
        public final List pagesWithCoordinates;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GeoScreen(boolean z, Pair pair, Pair pair2, List list, String str, String str2, String str3) {
            super(2, str3, z);
            pair.getClass();
            pair2.getClass();
            list.getClass();
            this.largestClusterTopLeft = pair;
            this.largestClusterBottomRight = pair2;
            this.pagesWithCoordinates = list;
            this.headlineText = str;
            this.bodyText = str2;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HighlightItem {
        public final long highlightColor;
        public final List items;
        public final String singleValue;
        public final String title;

        public HighlightItem(String str, String str2, List list, long j, int i) {
            str2 = (i & 2) != 0 ? null : str2;
            list = (i & 4) != 0 ? EmptyList.INSTANCE : list;
            j = (i & 8) != 0 ? ComposeColors.Gray700 : j;
            list.getClass();
            this.title = str;
            this.singleValue = str2;
            this.items = list;
            this.highlightColor = j;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof HighlightItem)) {
                return false;
            }
            HighlightItem highlightItem = (HighlightItem) obj;
            if (!this.title.equals(highlightItem.title) || !Intrinsics.areEqual(this.singleValue, highlightItem.singleValue) || !this.items.equals(highlightItem.items)) {
                return false;
            }
            long j = highlightItem.highlightColor;
            int i = Color.$r8$clinit;
            return ULong.m820equalsimpl0(this.highlightColor, j);
        }

        public final int hashCode() {
            int hashCode = this.title.hashCode() * 31;
            String str = this.singleValue;
            int m = Modifier.CC.m((hashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.items);
            int i = Color.$r8$clinit;
            return Modifier.CC.m(this.highlightColor) + m;
        }

        public final String toString() {
            String m434toStringimpl = Color.m434toStringimpl(this.highlightColor);
            StringBuilder m352m = Modifier.CC.m352m("HighlightItem(title=", this.title, ", singleValue=", this.singleValue, ", items=");
            m352m.append(this.items);
            m352m.append(", highlightColor=");
            m352m.append(m434toStringimpl);
            m352m.append(")");
            return m352m.toString();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HighlightsScreen extends YearInReviewScreenData {
        public final List highlights;
        public final String screenshotUrl;

        public HighlightsScreen(List list, String str, String str2) {
            super(3, str2, false);
            this.highlights = list;
            this.screenshotUrl = str;
        }

        @Override // org.wikipedia.yearinreview.YearInReviewScreenData
        public final void BottomButton(Context context, Function1 function1, GapComposer gapComposer, int i) {
            context.getClass();
            function1.getClass();
            gapComposer.startReplaceGroup(-1596604755);
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(Modifier.Companion.$$INSTANCE, 1.0f), 8.0f, 8.0f, 8.0f, RecyclerView.DECELERATION_RATE, 8), 1.0f);
            PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
            ButtonColors m260buttonColorsro_MJ88 = ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor, 0L, gapComposer, 14);
            boolean changedInstance = ((((i & 112) ^ 48) > 32 && gapComposer.changed(function1)) || (i & 48) == 32) | gapComposer.changedInstance(this);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new AboutActivityKt$$ExternalSyntheticLambda11(14, function1, this);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            CardKt.Button((Function0) rememberedValue, fillMaxWidth, false, null, m260buttonColorsro_MJ88, null, null, null, YearInReviewDialog.lambda$770360989, gapComposer, 805306368, 492);
            gapComposer.end(false);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ReadingPatterns extends StandardScreen {
        public final String favoriteDayText;
        public final String favoriteMonthText;
        public final String favoriteTimeText;

        public ReadingPatterns(boolean z, int i, String str, String str2, String str3, String str4, String str5, String str6) {
            super(z, i, null, str, str2, str3, false, 68);
            this.favoriteTimeText = str4;
            this.favoriteDayText = str5;
            this.favoriteMonthText = str6;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class StandardScreen extends YearInReviewScreenData {
        public final Object bodyText;
        public final Object headlineText;
        public final Modifier imageModifier;
        public final int imageResource;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public StandardScreen(boolean r2, int r3, androidx.compose.ui.Modifier r4, java.lang.Object r5, java.lang.Object r6, java.lang.String r7, boolean r8, int r9) {
            /*
                r1 = this;
                r0 = r9 & 4
                if (r0 == 0) goto Lc
                androidx.compose.ui.Modifier$Companion r4 = androidx.compose.ui.Modifier.Companion.$$INSTANCE
                r0 = 1128792064(0x43480000, float:200.0)
                androidx.compose.ui.Modifier r4 = androidx.compose.foundation.layout.SizeKt.m145size3ABfNKs(r4, r0)
            Lc:
                r9 = r9 & 64
                if (r9 == 0) goto L11
                r8 = 1
            L11:
                r4.getClass()
                r1.<init>(r7, r2, r8)
                r1.imageResource = r3
                r1.imageModifier = r4
                r1.headlineText = r5
                r1.bodyText = r6
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.yearinreview.YearInReviewScreenData.StandardScreen.<init>(boolean, int, androidx.compose.ui.Modifier, java.lang.Object, java.lang.Object, java.lang.String, boolean, int):void");
        }
    }

    public YearInReviewScreenData(String str, boolean z, boolean z2) {
        this.allowDonate = z;
        this.showDonateInToolbar = z2;
        this.slideName = str;
    }

    public void BottomButton(Context context, Function1 function1, GapComposer gapComposer, int i) {
        context.getClass();
        function1.getClass();
        gapComposer.startReplaceGroup(1809995904);
        gapComposer.end(false);
    }

    public /* synthetic */ YearInReviewScreenData(int i, String str, boolean z) {
        this(str, (i & 1) != 0 ? true : z, true);
    }
}
