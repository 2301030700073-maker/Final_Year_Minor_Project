package org.wikipedia.activitytab;

import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.VerticalAlignElement;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.CardKt;
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
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.recyclerview.widget.RecyclerView;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import j$.util.concurrent.ConcurrentHashMap;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import org.wikipedia.R;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.util.DateUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ImpactModuleKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ int f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ int f$2;
    public final /* synthetic */ long f$3;
    public final /* synthetic */ Map f$4;
    public final /* synthetic */ Map f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ long f$7;

    public /* synthetic */ ImpactModuleKt$$ExternalSyntheticLambda1(int i, int i2, int i3, long j, Map map, Map map2, NumberFormat numberFormat, long j2) {
        this.f$0 = i;
        this.f$1 = i2;
        this.f$2 = i3;
        this.f$3 = j;
        this.f$4 = map;
        this.f$5 = map2;
        this.f$6 = numberFormat;
        this.f$7 = j2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String str;
        boolean z;
        int i;
        long j;
        int i2 = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$6;
        switch (i2) {
            case 0:
                NumberFormat numberFormat = (NumberFormat) obj3;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                Arrangement$End$1 arrangement$End$1 = OffsetKt.f5Start;
                BiasAlignment.Vertical vertical = Alignment.Companion.Bottom;
                BiasAlignment.Vertical vertical2 = Alignment.Companion.Top;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(companion, 16.0f);
                    Arrangement$End$1 arrangement$End$12 = OffsetKt.Top;
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$End$12, horizontal, gapComposer, 0);
                    long j2 = gapComposer.compositeKeyHashCode;
                    int i3 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m132padding3ABfNKs);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                    Updater.m327setimpl(gapComposer, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
                    Integer valueOf = Integer.valueOf(i3);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m327setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m326reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                    Updater.m327setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
                    String stringResource = UtilsKt.stringResource(R.string.activity_tab_impact_all_time, gapComposer);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = TypographyKt.LocalTypography;
                    TextStyle textStyle = ((Typography) gapComposer.consume(staticProvidableCompositionLocal)).labelMedium;
                    FontWeight fontWeight = FontWeight.SemiBold;
                    TextStyle m647copyp1EtxEg$default = TextStyle.m647copyp1EtxEg$default(textStyle, 0L, 0L, fontWeight, null, 0L, 0L, null, 16777211);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
                    TextKt.m308TextNvy7gAk(stringResource, null, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, null, null, 0L, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal)).labelMedium.paragraphStyle.lineHeight, 0, false, 0, 0, null, m647copyp1EtxEg$default, gapComposer, 0, 0, 129018);
                    GapComposer gapComposer2 = gapComposer;
                    Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), vertical2, gapComposer2, 6);
                    long j3 = gapComposer2.compositeKeyHashCode;
                    int i4 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m136paddingqDBjuR0$default);
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i4, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                    Modifier weight$default$1 = Animation.CC.weight$default$1(companion, 1.0f);
                    int i5 = this.f$0;
                    ImpactModuleKt.ImpactStatView(weight$default$1, R.drawable.ic_mode_edit_white_24dp, String.valueOf(i5), UtilsKt.pluralStringResource(R.plurals.activity_tab_impact_total_edits, i5, gapComposer2), gapComposer2, 0);
                    int i6 = this.f$1;
                    String str2 = "-";
                    if (i6 > 0) {
                        gapComposer2.startReplaceGroup(1127161540);
                        String pluralStringResource = UtilsKt.pluralStringResource(R.plurals.activity_tab_impact_best_streak_text, i6, new Object[]{Integer.valueOf(i6)}, gapComposer2);
                        gapComposer2.end(false);
                        str = pluralStringResource;
                    } else {
                        gapComposer2.startReplaceGroup(1127314897);
                        gapComposer2.end(false);
                        str = "-";
                    }
                    ImpactModuleKt.ImpactStatView(Animation.CC.weight$default$1(companion, 1.0f), R.drawable.baseline_stars_24, str, UtilsKt.stringResource(R.string.activity_tab_impact_best_streak, gapComposer2), gapComposer2, 0);
                    gapComposer2.end(true);
                    Modifier m136paddingqDBjuR0$default2 = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                    RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), vertical2, gapComposer2, 6);
                    long j4 = gapComposer2.compositeKeyHashCode;
                    int i7 = (int) (j4 ^ (j4 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer2, m136paddingqDBjuR0$default2);
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, rowMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i7, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer2, materializeModifier3, composeUiNode$Companion$SetModifier$14);
                    Modifier weight$default$12 = Animation.CC.weight$default$1(companion, 1.0f);
                    int i8 = this.f$2;
                    ImpactModuleKt.ImpactStatView(weight$default$12, R.drawable.ic_notification_thanks, String.valueOf(i8), UtilsKt.pluralStringResource(R.plurals.activity_tab_impact_thanks, i8, gapComposer2), gapComposer2, 0);
                    long j5 = this.f$3;
                    if (j5 > 0) {
                        ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                        str2 = DateUtil.getDateStringWithSkeletonPattern("MM/dd/yyyy", new Date(j5 * 1000));
                    }
                    ImpactModuleKt.ImpactStatView(Animation.CC.weight$default$1(companion, 1.0f), R.drawable.edit_history_ooui, str2, UtilsKt.stringResource(R.string.activity_tab_impact_last_edited, gapComposer2), gapComposer2, 0);
                    gapComposer2.end(true);
                    if (i5 > 0) {
                        gapComposer2.startReplaceGroup(1476941082);
                        CardKt.m266HorizontalDivider9IZ8Weo(OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), RecyclerView.DECELERATION_RATE, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).borderColor, gapComposer2, 6, 2);
                        Modifier m136paddingqDBjuR0$default3 = OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                        ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(arrangement$End$12, horizontal, gapComposer2, 0);
                        long j6 = gapComposer2.compositeKeyHashCode;
                        int i9 = (int) (j6 ^ (j6 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer2, m136paddingqDBjuR0$default3);
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m327setimpl(gapComposer2, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$12);
                        Animation.CC.m(i9, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                        Updater.m327setimpl(gapComposer2, materializeModifier4, composeUiNode$Companion$SetModifier$14);
                        TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.activity_tab_impact_recent_activity, gapComposer2), null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, null, null, 0L, null, ((Typography) gapComposer2.consume(staticProvidableCompositionLocal)).labelMedium.paragraphStyle.lineHeight, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(staticProvidableCompositionLocal)).labelMedium, 0L, 0L, fontWeight, null, 0L, 0L, null, 16777211), gapComposer2, 0, 0, 129018);
                        Modifier m136paddingqDBjuR0$default4 = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                        RowMeasurePolicy rowMeasurePolicy3 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(4.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), vertical, gapComposer2, 54);
                        long j7 = gapComposer2.compositeKeyHashCode;
                        int i10 = (int) (j7 ^ (j7 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer2, m136paddingqDBjuR0$default4);
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m327setimpl(gapComposer2, rowMeasurePolicy3, composeUiNode$Companion$SetModifier$1);
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope5, composeUiNode$Companion$SetModifier$12);
                        Animation.CC.m(i10, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                        Updater.m327setimpl(gapComposer2, materializeModifier5, composeUiNode$Companion$SetModifier$14);
                        Map map = this.f$5;
                        Collection values = map.values();
                        values.getClass();
                        Iterator it = values.iterator();
                        int i11 = 0;
                        while (it.hasNext()) {
                            i11 = ((Number) it.next()).intValue() + i11;
                        }
                        String valueOf2 = String.valueOf(i11);
                        VerticalAlignElement verticalAlignElement = new VerticalAlignElement(vertical);
                        TextStyle textStyle2 = ((Typography) gapComposer2.consume(staticProvidableCompositionLocal)).titleLarge;
                        FontWeight fontWeight2 = FontWeight.Medium;
                        TextKt.m308TextNvy7gAk(valueOf2, verticalAlignElement, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, fontWeight2, null, 0L, null, 0L, 0, false, 0, 0, null, textStyle2, gapComposer2, 1572864, 0, 131000);
                        String lowerCase = UtilsKt.pluralStringResource(R.plurals.activity_tab_impact_recent_activity_edits, i11, gapComposer2).toLowerCase(Locale.ROOT);
                        lowerCase.getClass();
                        TextKt.m308TextNvy7gAk(lowerCase, null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(staticProvidableCompositionLocal)).bodySmall, 0L, 0L, fontWeight2, null, 0L, ContextsKt.getSp(22), null, 16646139), gapComposer2, 0, 0, 131066);
                        gapComposer2.end(true);
                        Modifier m136paddingqDBjuR0$default5 = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                        RowMeasurePolicy rowMeasurePolicy4 = RowKt.rowMeasurePolicy(arrangement$End$1, vertical2, gapComposer2, 0);
                        long j8 = gapComposer2.compositeKeyHashCode;
                        int i12 = (int) (j8 ^ (j8 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope6 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier6 = AbsoluteAlignment.materializeModifier(gapComposer2, m136paddingqDBjuR0$default5);
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m327setimpl(gapComposer2, rowMeasurePolicy4, composeUiNode$Companion$SetModifier$1);
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope6, composeUiNode$Companion$SetModifier$12);
                        Animation.CC.m(i12, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                        Updater.m327setimpl(gapComposer2, materializeModifier6, composeUiNode$Companion$SetModifier$14);
                        int size = map.size();
                        gapComposer2.startReplaceGroup(-1200217625);
                        Iterator it2 = map.entrySet().iterator();
                        while (it2.hasNext()) {
                            if (((Number) ((Map.Entry) it2.next()).getValue()).intValue() > 0) {
                                gapComposer2.startReplaceGroup(-880406951);
                                j = ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor;
                                i = 0;
                                gapComposer2.end(false);
                            } else {
                                i = 0;
                                gapComposer2.startReplaceGroup(-880299970);
                                j = ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor;
                                gapComposer2.end(false);
                            }
                            BoxKt.Box(ImageKt.m46backgroundbw27NRU(OffsetKt.m134paddingVpY3zN4$default(SizeKt.m140height3ABfNKs(Animation.CC.weight$default$1(companion, 1.0f / size), 24.0f), 1.0f, RecyclerView.DECELERATION_RATE, 2), j, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(8.0f)), gapComposer2, i);
                        }
                        gapComposer2.end(false);
                        gapComposer2.end(true);
                        Modifier m136paddingqDBjuR0$default6 = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                        RowMeasurePolicy rowMeasurePolicy5 = RowKt.rowMeasurePolicy(arrangement$End$1, vertical2, gapComposer2, 0);
                        long j9 = gapComposer2.compositeKeyHashCode;
                        int i13 = (int) (j9 ^ (j9 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope7 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier7 = AbsoluteAlignment.materializeModifier(gapComposer2, m136paddingqDBjuR0$default6);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                        } else {
                            gapComposer2.useNode();
                        }
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetMeasurePolicy;
                        Updater.m327setimpl(gapComposer2, rowMeasurePolicy5, composeUiNode$Companion$SetModifier$15);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$16 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope7, composeUiNode$Companion$SetModifier$16);
                        Integer valueOf3 = Integer.valueOf(i13);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$17 = ComposeUiNode.Companion.SetCompositeKeyHash;
                        Updater.m327setimpl(gapComposer2, valueOf3, composeUiNode$Companion$SetModifier$17);
                        OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$12 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                        Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$12);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$18 = ComposeUiNode.Companion.SetModifier;
                        LayoutWeightElement m = ViewSizeResolver$CC.m(gapComposer2, materializeModifier7, composeUiNode$Companion$SetModifier$18, 1.0f, true);
                        ConcurrentHashMap concurrentHashMap2 = DateUtil.DATE_FORMATS;
                        String str3 = (String) CollectionsKt.first(map.keySet());
                        str3.getClass();
                        Date parse = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).parse(str3);
                        parse.getClass();
                        String dateStringWithSkeletonPattern = DateUtil.getDateStringWithSkeletonPattern("MMMM d", parse);
                        StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = TypographyKt.LocalTypography;
                        TextStyle textStyle3 = ((Typography) gapComposer2.consume(staticProvidableCompositionLocal3)).bodySmall;
                        StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = WikipediaColorKt.LocalWikipediaColor;
                        TextKt.m308TextNvy7gAk(dateStringWithSkeletonPattern, m, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal4)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, textStyle3, gapComposer2, 0, 0, 131064);
                        String str4 = (String) CollectionsKt.last(map.keySet());
                        str4.getClass();
                        Date parse2 = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).parse(str4);
                        parse2.getClass();
                        TextKt.m308TextNvy7gAk(DateUtil.getDateStringWithSkeletonPattern("MMMM d", parse2), null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal4)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(staticProvidableCompositionLocal3)).bodySmall, gapComposer2, 0, 0, 131066);
                        gapComposer2.end(true);
                        CardKt.m266HorizontalDivider9IZ8Weo(OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), RecyclerView.DECELERATION_RATE, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal4)).borderColor, gapComposer2, 6, 2);
                        Modifier m136paddingqDBjuR0$default7 = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                        RowMeasurePolicy rowMeasurePolicy6 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(4.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), vertical, gapComposer2, 54);
                        long j10 = gapComposer2.compositeKeyHashCode;
                        int i14 = (int) (j10 ^ (j10 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope8 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier8 = AbsoluteAlignment.materializeModifier(gapComposer2, m136paddingqDBjuR0$default7);
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m327setimpl(gapComposer2, rowMeasurePolicy6, composeUiNode$Companion$SetModifier$15);
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope8, composeUiNode$Companion$SetModifier$16);
                        Animation.CC.m(i14, gapComposer2, composeUiNode$Companion$SetModifier$17, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$12);
                        Updater.m327setimpl(gapComposer2, materializeModifier8, composeUiNode$Companion$SetModifier$18);
                        long j11 = this.f$7;
                        String format = numberFormat.format(j11);
                        format.getClass();
                        VerticalAlignElement verticalAlignElement2 = new VerticalAlignElement(vertical);
                        TextStyle textStyle4 = ((Typography) gapComposer2.consume(staticProvidableCompositionLocal3)).titleLarge;
                        FontWeight fontWeight3 = FontWeight.Medium;
                        TextKt.m308TextNvy7gAk(format, verticalAlignElement2, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal4)).primaryColor, null, 0L, fontWeight3, null, 0L, null, 0L, 0, false, 0, 0, null, textStyle4, gapComposer2, 1572864, 0, 131000);
                        String lowerCase2 = UtilsKt.pluralStringResource(R.plurals.activity_tab_impact_recent_activity_views, (int) j11, gapComposer2).toLowerCase(Locale.ROOT);
                        lowerCase2.getClass();
                        TextKt.m308TextNvy7gAk(lowerCase2, null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal4)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(staticProvidableCompositionLocal3)).bodySmall, 0L, 0L, fontWeight3, null, 0L, ContextsKt.getSp(22), null, 16646139), gapComposer2, 0, 0, 131066);
                        gapComposer2.end(true);
                        TabsBoxKt.m898LineChartxfPyhaw(this.f$4, OffsetKt.m136paddingqDBjuR0$default(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 32.0f), RecyclerView.DECELERATION_RATE, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), 90, 2.0f, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal4)).progressiveColor, gapComposer2, 3504);
                        gapComposer2 = gapComposer2;
                        z = true;
                        gapComposer2.end(true);
                        gapComposer2.end(false);
                    } else {
                        z = true;
                        gapComposer2.startReplaceGroup(1482812792);
                        gapComposer2.end(false);
                    }
                    gapComposer2.end(z);
                    break;
                }
            default:
                ((Integer) obj2).getClass();
                ImpactModuleKt.AllTimeImpactCard((Modifier) obj3, this.f$0, this.f$1, this.f$2, this.f$3, this.f$4, this.f$7, this.f$5, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    public /* synthetic */ ImpactModuleKt$$ExternalSyntheticLambda1(Modifier modifier, int i, int i2, int i3, long j, Map map, long j2, Map map2, int i4) {
        this.f$6 = modifier;
        this.f$0 = i;
        this.f$1 = i2;
        this.f$2 = i3;
        this.f$3 = j;
        this.f$4 = map;
        this.f$7 = j2;
        this.f$5 = map2;
    }
}
