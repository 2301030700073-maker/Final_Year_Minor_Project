package org.wikipedia.activitytab;

import android.content.Context;
import android.text.format.DateFormat;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.VerticalAlignElement;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.painter.BrushPainter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.font.FontWeight;
import androidx.recyclerview.widget.RecyclerView;
import coil3.compose.AsyncImageKt;
import coil3.request.ImageRequest;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function2;
import okio.ByteString;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.activitytab.ActivityTabViewModel;
import org.wikipedia.compose.ComposeColors;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingHistoryModuleKt$$ExternalSyntheticLambda6 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ActivityTabViewModel.ReadingHistory f$0;
    public final /* synthetic */ LocalDate f$1;

    public /* synthetic */ ReadingHistoryModuleKt$$ExternalSyntheticLambda6(ActivityTabViewModel.ReadingHistory readingHistory, LocalDate localDate, int i) {
        this.$r8$classId = i;
        this.f$0 = readingHistory;
        this.f$1 = localDate;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1;
        String str;
        boolean z;
        List list;
        Modifier.Companion companion;
        BiasAlignment biasAlignment;
        BiasAlignment biasAlignment2;
        String str2;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        LocalDate localDate = this.f$1;
        ActivityTabViewModel.ReadingHistory readingHistory = this.f$0;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                BiasAlignment biasAlignment3 = Alignment.Companion.Center;
                BiasAlignment biasAlignment4 = Alignment.Companion.TopStart;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Locale locale = ((androidx.compose.ui.text.intl.Locale) gapComposer.consume(CompositionLocalsKt.LocalLocale)).platformLocale;
                    Modifier.Companion companion2 = Modifier.Companion.$$INSTANCE;
                    Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(companion2, 16.0f);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
                    long j = gapComposer.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m132padding3ABfNKs);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer.useNode();
                    }
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                    Updater.m327setimpl(gapComposer, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
                    Integer valueOf = Integer.valueOf(i2);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m327setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m326reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    BiasAlignment biasAlignment5 = biasAlignment3;
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                    Updater.m327setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
                    Painter painterResource = UnsignedKt.painterResource(R.drawable.ic_bookmark_border_white_24dp, 0, gapComposer);
                    String stringResource = UtilsKt.stringResource(R.string.activity_tab_monthly_articles_saved, gapComposer);
                    LocalDateTime localDateTime = readingHistory.lastArticleSavedTime;
                    int i3 = readingHistory.articlesSavedThisMonth;
                    List list2 = readingHistory.articlesSaved;
                    if (localDateTime != null) {
                        boolean equals = localDate.equals(localDateTime.toLocalDate());
                        LocalDateTime localDateTime2 = readingHistory.lastArticleSavedTime;
                        str = equals ? localDateTime2.format(DateTimeFormatter.ofPattern(DateFormat.getBestDateTimePattern(locale, "hhmm a"))) : localDateTime2.format(DateTimeFormatter.ofPattern(DateFormat.getBestDateTimePattern(locale, "MMMM d")));
                        layoutNode$Companion$Constructor$1 = layoutNode$Companion$Constructor$12;
                    } else {
                        layoutNode$Companion$Constructor$1 = layoutNode$Companion$Constructor$12;
                        str = null;
                    }
                    BiasAlignment biasAlignment6 = biasAlignment4;
                    List list3 = list2;
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = layoutNode$Companion$Constructor$1;
                    ImpactModuleKt.CommonCardHeader(null, painterResource, stringResource, str, false, true, gapComposer, 196672, 17);
                    Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion2, 1.0f), RecyclerView.DECELERATION_RATE, 6.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                    Arrangement$End$1 arrangement$End$1 = OffsetKt.f5Start;
                    BiasAlignment.Vertical vertical = Alignment.Companion.Top;
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement$End$1, vertical, gapComposer, 0);
                    long j2 = gapComposer.compositeKeyHashCode;
                    int i4 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, m136paddingqDBjuR0$default);
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$13);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m327setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i4, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                    TextKt.m308TextNvy7gAk(String.valueOf(i3), new VerticalAlignElement(Alignment.Companion.Bottom), ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, FontWeight.Medium, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(TypographyKt.LocalTypography)).titleLarge, gapComposer, 1572864, 0, 131000);
                    OffsetKt.Spacer(gapComposer, new LayoutWeightElement(1.0f, true));
                    RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(arrangement$End$1, vertical, gapComposer, 0);
                    long j3 = gapComposer.compositeKeyHashCode;
                    int i5 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer, companion2);
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$13);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m327setimpl(gapComposer, rowMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i5, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer, materializeModifier3, composeUiNode$Companion$SetModifier$14);
                    int size = list3.size() <= 4 ? list3.size() : 3;
                    boolean z2 = list3.size() > 4;
                    gapComposer.startReplaceGroup(526550037);
                    int i6 = 0;
                    while (true) {
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                        if (i6 >= size) {
                            BiasAlignment biasAlignment7 = biasAlignment5;
                            Modifier.Companion companion3 = companion2;
                            BiasAlignment biasAlignment8 = biasAlignment6;
                            gapComposer.end(false);
                            if (z2) {
                                gapComposer.startReplaceGroup(-854833477);
                                Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(SizeKt.m145size3ABfNKs(OffsetKt.m136paddingqDBjuR0$default(companion3, 4.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 14), 38.0f), ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).placeholderColor, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(19.0f));
                                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment8, false);
                                long j4 = gapComposer.compositeKeyHashCode;
                                int i7 = (int) (j4 ^ (j4 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer.currentCompositionLocalScope();
                                Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer, m46backgroundbw27NRU);
                                ComposeUiNode.Companion.getClass();
                                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$14 = ComposeUiNode.Companion.Constructor;
                                gapComposer.startReusableNode();
                                if (gapComposer.inserting) {
                                    gapComposer.createNode(layoutNode$Companion$Constructor$14);
                                } else {
                                    gapComposer.useNode();
                                }
                                Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                                Updater.m327setimpl(gapComposer, currentCompositionLocalScope4, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                Updater.m327setimpl(gapComposer, Integer.valueOf(i7), ComposeUiNode.Companion.SetCompositeKeyHash);
                                Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                Updater.m327setimpl(gapComposer, materializeModifier4, ComposeUiNode.Companion.SetModifier);
                                TextKt.m308TextNvy7gAk(String.format(locale, "+%d", Arrays.copyOf(new Object[]{Integer.valueOf(i3 - 3)}, 1)), boxScopeInstance.align(companion3, biasAlignment7), Color.White, null, ContextsKt.getSp(11), FontWeight.Medium, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer, 1597824, 0, 262056);
                                z = true;
                                gapComposer.end(true);
                                gapComposer.end(false);
                            } else {
                                z = true;
                                gapComposer.startReplaceGroup(-853889775);
                                gapComposer.end(false);
                            }
                            Modifier.CC.m(gapComposer, z, z, z);
                            break;
                        } else {
                            List list4 = list3;
                            String str3 = ((PageTitle) list4.get(i6)).thumbUrl;
                            if (str3 == null || str3.length() == 0) {
                                Modifier.Companion companion4 = companion2;
                                list = list4;
                                gapComposer.startReplaceGroup(-856691741);
                                companion = companion4;
                                Modifier m48borderxT4_qwU = ImageKt.m48borderxT4_qwU(ImageKt.m46backgroundbw27NRU(SizeKt.m145size3ABfNKs(OffsetKt.m136paddingqDBjuR0$default(companion4, 4.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 14), 38.0f), Color.White, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(19.0f)), 0.5f, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(19.0f));
                                BiasAlignment biasAlignment9 = biasAlignment6;
                                MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment9, false);
                                long j5 = gapComposer.compositeKeyHashCode;
                                int i8 = (int) (j5 ^ (j5 >>> 32));
                                PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer.currentCompositionLocalScope();
                                Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer, m48borderxT4_qwU);
                                ComposeUiNode.Companion.getClass();
                                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$15 = ComposeUiNode.Companion.Constructor;
                                gapComposer.startReusableNode();
                                if (gapComposer.inserting) {
                                    gapComposer.createNode(layoutNode$Companion$Constructor$15);
                                } else {
                                    gapComposer.useNode();
                                }
                                Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                                Updater.m327setimpl(gapComposer, currentCompositionLocalScope5, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                Updater.m327setimpl(gapComposer, Integer.valueOf(i8), ComposeUiNode.Companion.SetCompositeKeyHash);
                                Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                Updater.m327setimpl(gapComposer, materializeModifier5, ComposeUiNode.Companion.SetModifier);
                                BiasAlignment biasAlignment10 = biasAlignment5;
                                Modifier align = boxScopeInstance.align(SizeKt.m145size3ABfNKs(companion, 24.0f), biasAlignment10);
                                GapComposer gapComposer2 = gapComposer;
                                biasAlignment = biasAlignment9;
                                biasAlignment2 = biasAlignment10;
                                IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_wikipedia_b, 0, gapComposer), null, align, Color.Black, gapComposer2, 3128, 0);
                                gapComposer = gapComposer2;
                                gapComposer.end(true);
                                gapComposer.end(false);
                            } else {
                                gapComposer.startReplaceGroup(-855664556);
                                Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
                                Boolean bool = Boolean.FALSE;
                                context.getClass();
                                ImageRequest build = Okio__OkioKt._implementation != null ? ByteString.Companion.getRequestBuilder(context, str3, bool, bool, null, null).build() : null;
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                                Modifier.Companion companion5 = companion2;
                                list = list4;
                                GapComposer gapComposer3 = gapComposer;
                                AsyncImageKt.m774AsyncImagex1rPTaM(build, null, ClipKt.clip(SizeKt.m145size3ABfNKs(OffsetKt.m136paddingqDBjuR0$default(companion5, 4.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 14), 38.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(19.0f)), new BrushPainter(new SolidColor(((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).borderColor)), new BrushPainter(new SolidColor(((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).borderColor)), null, null, ContentScale.Companion.Crop, gapComposer3, 36912, 6, 31712);
                                gapComposer = gapComposer3;
                                gapComposer.end(false);
                                biasAlignment2 = biasAlignment5;
                                biasAlignment = biasAlignment6;
                                companion = companion5;
                            }
                            i6++;
                            biasAlignment6 = biasAlignment;
                            biasAlignment5 = biasAlignment2;
                            list3 = list;
                            companion2 = companion;
                        }
                    }
                }
                break;
            default:
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer4.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    Locale locale2 = ((androidx.compose.ui.text.intl.Locale) gapComposer4.consume(CompositionLocalsKt.LocalLocale)).platformLocale;
                    Modifier.Companion companion6 = Modifier.Companion.$$INSTANCE;
                    Modifier m132padding3ABfNKs2 = OffsetKt.m132padding3ABfNKs(companion6, 16.0f);
                    ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer4, 0);
                    long j6 = gapComposer4.compositeKeyHashCode;
                    int i9 = (int) (j6 ^ (j6 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope6 = gapComposer4.currentCompositionLocalScope();
                    Modifier materializeModifier6 = AbsoluteAlignment.materializeModifier(gapComposer4, m132padding3ABfNKs2);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$16 = ComposeUiNode.Companion.Constructor;
                    gapComposer4.startReusableNode();
                    if (gapComposer4.inserting) {
                        gapComposer4.createNode(layoutNode$Companion$Constructor$16);
                    } else {
                        gapComposer4.useNode();
                    }
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetMeasurePolicy;
                    Updater.m327setimpl(gapComposer4, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$15);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$16 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                    Updater.m327setimpl(gapComposer4, currentCompositionLocalScope6, composeUiNode$Companion$SetModifier$16);
                    Integer valueOf2 = Integer.valueOf(i9);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$17 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m327setimpl(gapComposer4, valueOf2, composeUiNode$Companion$SetModifier$17);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$12 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m326reconcileimpl(gapComposer4, ownerSnapshotObserver$onCommitAffectingLayout$12);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$18 = ComposeUiNode.Companion.SetModifier;
                    Updater.m327setimpl(gapComposer4, materializeModifier6, composeUiNode$Companion$SetModifier$18);
                    Painter painterResource2 = UnsignedKt.painterResource(R.drawable.ic_newsstand_24, 0, gapComposer4);
                    String stringResource2 = UtilsKt.stringResource(R.string.activity_tab_monthly_articles_read, gapComposer4);
                    LocalDateTime localDateTime3 = readingHistory.lastArticleReadTime;
                    int i10 = readingHistory.articlesReadThisMonth;
                    if (localDateTime3 != null) {
                        boolean equals2 = localDate.equals(localDateTime3.toLocalDate());
                        LocalDateTime localDateTime4 = readingHistory.lastArticleReadTime;
                        str2 = equals2 ? localDateTime4.format(DateTimeFormatter.ofPattern(DateFormat.getBestDateTimePattern(locale2, "hhmm a"))) : localDateTime4.format(DateTimeFormatter.ofPattern(DateFormat.getBestDateTimePattern(locale2, "MMMM d")));
                    } else {
                        str2 = null;
                    }
                    ImpactModuleKt.CommonCardHeader(null, painterResource2, stringResource2, str2, false, true, gapComposer4, 196672, 17);
                    Modifier m136paddingqDBjuR0$default2 = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion6, 1.0f), RecyclerView.DECELERATION_RATE, 6.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                    RowMeasurePolicy rowMeasurePolicy3 = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.Top, gapComposer4, 0);
                    long j7 = gapComposer4.compositeKeyHashCode;
                    int i11 = (int) (j7 ^ (j7 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope7 = gapComposer4.currentCompositionLocalScope();
                    Modifier materializeModifier7 = AbsoluteAlignment.materializeModifier(gapComposer4, m136paddingqDBjuR0$default2);
                    gapComposer4.startReusableNode();
                    if (gapComposer4.inserting) {
                        gapComposer4.createNode(layoutNode$Companion$Constructor$16);
                    } else {
                        gapComposer4.useNode();
                    }
                    Updater.m327setimpl(gapComposer4, rowMeasurePolicy3, composeUiNode$Companion$SetModifier$15);
                    Updater.m327setimpl(gapComposer4, currentCompositionLocalScope7, composeUiNode$Companion$SetModifier$16);
                    Animation.CC.m(i11, gapComposer4, composeUiNode$Companion$SetModifier$17, gapComposer4, ownerSnapshotObserver$onCommitAffectingLayout$12);
                    Updater.m327setimpl(gapComposer4, materializeModifier7, composeUiNode$Companion$SetModifier$18);
                    TextKt.m308TextNvy7gAk(String.valueOf(i10), new VerticalAlignElement(Alignment.Companion.Bottom), ((WikipediaColor) gapComposer4.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, FontWeight.Medium, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer4.consume(TypographyKt.LocalTypography)).titleLarge, gapComposer4, 1572864, 0, 131000);
                    OffsetKt.Spacer(gapComposer4, new LayoutWeightElement(1.0f, true));
                    TabsBoxKt.m901TinyBarCharteaDK9VM(readingHistory.articlesReadByWeek, SizeKt.m146sizeVpY3zN4(companion6, 72.0f, i10 == 0 ? 32.0f : 48.0f), ComposeColors.Gray300, ComposeColors.Green600, gapComposer4, 3456);
                    gapComposer4.end(true);
                    gapComposer4.end(true);
                    break;
                }
        }
        return unit;
    }
}
