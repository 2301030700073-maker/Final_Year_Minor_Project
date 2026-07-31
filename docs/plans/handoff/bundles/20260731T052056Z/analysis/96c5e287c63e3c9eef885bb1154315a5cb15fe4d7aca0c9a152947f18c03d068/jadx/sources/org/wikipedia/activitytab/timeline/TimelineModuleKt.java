package org.wikipedia.activitytab.timeline;

import android.content.Context;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda7;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.painter.BrushPainter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.recyclerview.widget.RecyclerView;
import coil3.compose.AsyncImageKt;
import coil3.request.ImageRequest;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import okio.ByteString;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda31;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda17;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda9;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TimelineModuleKt {
    public static final ComposableLambdaImpl lambda$1828866402 = new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(14), false, 1828866402);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ActivitySource.values().length];
            try {
                iArr[ActivitySource.EDIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ActivitySource.SEARCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ActivitySource.LINK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ActivitySource.BOOKMARKED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final void TimelineButtonView(Modifier modifier, Function0 function0, GapComposer gapComposer, int i) {
        Modifier modifier2;
        GapComposer gapComposer2 = gapComposer;
        function0.getClass();
        gapComposer2.startRestartGroup(1327865398);
        int i2 = i | 6 | (gapComposer2.changedInstance(function0) ? 32 : 16);
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Top, gapComposer2, 6);
            long j = gapComposer2.compositeKeyHashCode;
            int i3 = (int) ((j >>> 32) ^ j);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            modifier2 = Modifier.Companion.$$INSTANCE;
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, modifier2);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            BoxKt.Box(SizeKt.m145size3ABfNKs(modifier2, 24.0f), gapComposer2, 6);
            Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(modifier2, RecyclerView.DECELERATION_RATE, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
            PaddingValuesImpl m125PaddingValuesYgX7TsA$default = OffsetKt.m125PaddingValuesYgX7TsA$default(2, 18.0f);
            PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            CardKt.Button(function0, m136paddingqDBjuR0$default, false, null, ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).additionColor, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).secondaryColor, gapComposer2, 12), null, null, m125PaddingValuesYgX7TsA$default, lambda$1828866402, gapComposer, ((i2 >> 3) & 14) | 817889328, 364);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda9(i, modifier2, function0, 2);
        }
    }

    public static final void TimelineContent(TimelineItem timelineItem, Modifier modifier, GapComposer gapComposer, int i) {
        Integer num;
        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1;
        char c;
        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1;
        GapComposer gapComposer2;
        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12;
        OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1;
        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal;
        boolean z;
        boolean z2;
        GapComposer gapComposer3 = gapComposer;
        timelineItem.getClass();
        gapComposer3.startRestartGroup(-1516283350);
        int i2 = i | (gapComposer3.changedInstance(timelineItem) ? 4 : 2);
        if (gapComposer3.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer3, 54);
            long j = gapComposer3.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer3.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer3, modifier);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
            gapComposer3.startReusableNode();
            if (gapComposer3.inserting) {
                gapComposer3.createNode(layoutNode$Companion$Constructor$12);
            } else {
                gapComposer3.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer3, rowMeasurePolicy, composeUiNode$Companion$SetModifier$14);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer3, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$15);
            Integer valueOf = Integer.valueOf(i3);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$16 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer3, valueOf, composeUiNode$Companion$SetModifier$16);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$12 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$12);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$17 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer3, materializeModifier, composeUiNode$Companion$SetModifier$17);
            ActivitySource activitySource = timelineItem.activitySource;
            int i4 = activitySource == null ? -1 : WhenMappings.$EnumSwitchMapping$0[activitySource.ordinal()];
            if (i4 == -1) {
                num = null;
            } else if (i4 == 1) {
                num = Integer.valueOf(R.drawable.ic_mode_edit_white_24dp);
            } else if (i4 == 2) {
                num = Integer.valueOf(R.drawable.outline_search_24);
            } else if (i4 == 3) {
                num = Integer.valueOf(R.drawable.ic_link_black_24dp);
            } else {
                if (i4 != 4) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return;
                }
                num = Integer.valueOf(R.drawable.ic_bookmark_white_24dp);
            }
            if (num != null) {
                gapComposer3.startReplaceGroup(1393010771);
                Painter painterResource = UnsignedKt.painterResource(num.intValue(), 0, gapComposer3);
                c = ' ';
                layoutNode$Companion$Constructor$1 = layoutNode$Companion$Constructor$12;
                long j2 = ((WikipediaColor) gapComposer3.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor;
                composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$17;
                ownerSnapshotObserver$onCommitAffectingLayout$1 = ownerSnapshotObserver$onCommitAffectingLayout$12;
                composeUiNode$Companion$SetModifier$13 = composeUiNode$Companion$SetModifier$16;
                composeUiNode$Companion$SetModifier$12 = composeUiNode$Companion$SetModifier$15;
                gapComposer2 = gapComposer3;
                IconKt.m286Iconww6aTOc(painterResource, null, null, j2, gapComposer2, 56, 4);
                gapComposer2.end(false);
            } else {
                composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$17;
                c = ' ';
                layoutNode$Companion$Constructor$1 = layoutNode$Companion$Constructor$12;
                gapComposer2 = gapComposer3;
                composeUiNode$Companion$SetModifier$12 = composeUiNode$Companion$SetModifier$15;
                ownerSnapshotObserver$onCommitAffectingLayout$1 = ownerSnapshotObserver$onCommitAffectingLayout$12;
                composeUiNode$Companion$SetModifier$13 = composeUiNode$Companion$SetModifier$16;
                gapComposer2.startReplaceGroup(1393183100);
                gapComposer2.end(false);
            }
            LayoutWeightElement layoutWeightElement = new LayoutWeightElement(1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Center, Alignment.Companion.Start, gapComposer2, 6);
            long j3 = gapComposer2.compositeKeyHashCode;
            int i5 = (int) (j3 ^ (j3 >>> c));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, layoutWeightElement);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$14);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i5, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$1);
            String str = timelineItem.displayTitle;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
            TextStyle textStyle = ((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).titleMedium;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = WikipediaColorKt.LocalWikipediaColor;
            gapComposer3 = gapComposer;
            TabsBoxKt.m897HtmlTextKiACRJU(str, null, null, TextStyle.m647copyp1EtxEg$default(textStyle, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal3)).primaryColor, 0L, null, FontFamily.Serif, 0L, 0L, null, 16777182), 0L, 1, 2, 0L, null, null, 0, gapComposer3, 1769472, 3990);
            String str2 = timelineItem.description;
            if (str2 == null || str2.length() == 0) {
                staticProvidableCompositionLocal = staticProvidableCompositionLocal3;
                z = false;
                gapComposer3.startReplaceGroup(1423859698);
                gapComposer3.end(false);
            } else {
                gapComposer3.startReplaceGroup(1423563276);
                staticProvidableCompositionLocal = staticProvidableCompositionLocal3;
                TextKt.m308TextNvy7gAk(timelineItem.description, null, ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal3)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 2, false, 1, 0, null, ((Typography) gapComposer3.consume(staticProvidableCompositionLocal2)).bodyMedium, gapComposer, 0, 24960, 110586);
                gapComposer3 = gapComposer;
                z = false;
                gapComposer3.end(false);
            }
            gapComposer3.end(true);
            String str3 = timelineItem.thumbnailUrl;
            if (str3 == null || str3.length() == 0) {
                z2 = true;
                gapComposer3.startReplaceGroup(1394752444);
                gapComposer3.end(z);
            } else {
                gapComposer3.startReplaceGroup(1394182571);
                Context context = (Context) gapComposer3.consume(AndroidCompositionLocals_androidKt.LocalContext);
                String str4 = timelineItem.thumbnailUrl;
                Boolean bool = Boolean.FALSE;
                context.getClass();
                ImageRequest build = Okio__OkioKt._implementation != null ? ByteString.Companion.getRequestBuilder(context, str4, bool, bool, null, null).build() : null;
                BrushPainter brushPainter = new BrushPainter(new SolidColor(((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal)).borderColor));
                BrushPainter brushPainter2 = new BrushPainter(new SolidColor(((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal)).borderColor));
                z2 = true;
                AsyncImageKt.m774AsyncImagex1rPTaM(build, null, ClipKt.clip(SizeKt.m145size3ABfNKs(Modifier.Companion.$$INSTANCE, 56.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(8.0f)), brushPainter, brushPainter2, null, null, ContentScale.Companion.Crop, gapComposer3, 36912, 6, 31712);
                gapComposer3.end(z);
            }
            gapComposer3.end(z2);
        } else {
            gapComposer3.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer3.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda17(timelineItem, modifier, i, 20);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void TimelineDateSeparator(java.util.Date r34, androidx.compose.ui.Modifier r35, androidx.compose.runtime.GapComposer r36, int r37, int r38) {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.activitytab.timeline.TimelineModuleKt.TimelineDateSeparator(java.util.Date, androidx.compose.ui.Modifier, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void TimelineModule(final TimelineItem timelineItem, final Function1 function1, GapComposer gapComposer, int i) {
        timelineItem.getClass();
        function1.getClass();
        gapComposer.startRestartGroup(1027951437);
        int i2 = (gapComposer.changedInstance(timelineItem) ? 4 : 2) | i;
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 32 : 16;
        }
        final int i3 = 1;
        final int i4 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            int i5 = i2 & 112;
            boolean changedInstance = (i5 == 32) | gapComposer.changedInstance(timelineItem);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (changedInstance || rememberedValue == neverEqualPolicy) {
                rememberedValue = new Function0() { // from class: org.wikipedia.activitytab.timeline.TimelineModuleKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        int i6 = i4;
                        Unit unit = Unit.INSTANCE;
                        TimelineItem timelineItem2 = timelineItem;
                        Function1 function12 = function1;
                        switch (i6) {
                            case 0:
                                function12.invoke(timelineItem2);
                                break;
                            default:
                                function12.invoke(timelineItem2);
                                break;
                        }
                        return unit;
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m133paddingVpY3zN4 = OffsetKt.m133paddingVpY3zN4(ImageKt.m51clickableoSLSa3U$default(15, companion, null, (Function0) rememberedValue, false), 16.0f, 8.0f);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i6 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m133paddingVpY3zN4);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            TimelineContent(timelineItem, SizeKt.fillMaxWidth(companion, 1.0f), gapComposer, (i2 & 14) | 48);
            if (timelineItem.activitySource == ActivitySource.EDIT) {
                gapComposer.startReplaceGroup(-2014940148);
                boolean changedInstance2 = (i5 == 32) | gapComposer.changedInstance(timelineItem);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new Function0() { // from class: org.wikipedia.activitytab.timeline.TimelineModuleKt$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i62 = i3;
                            Unit unit = Unit.INSTANCE;
                            TimelineItem timelineItem2 = timelineItem;
                            Function1 function12 = function1;
                            switch (i62) {
                                case 0:
                                    function12.invoke(timelineItem2);
                                    break;
                                default:
                                    function12.invoke(timelineItem2);
                                    break;
                            }
                            return unit;
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                TimelineButtonView(null, (Function0) rememberedValue2, gapComposer, 0);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-2014818101);
                gapComposer.end(false);
            }
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ForYouCardKt$$ExternalSyntheticLambda31(timelineItem, function1, i, 12);
        }
    }

    public static final void TimelineModuleEmptyView(Modifier modifier, GapComposer gapComposer, int i) {
        int i2;
        GapComposer gapComposer2 = gapComposer;
        gapComposer2.startRestartGroup(-269068845);
        if ((i & 6) == 0) {
            i2 = i | (gapComposer2.changed(modifier) ? 4 : 2);
        } else {
            i2 = i;
        }
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.CenterHorizontally, gapComposer2, 48);
            long j = gapComposer2.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, modifier);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 48.0f, 7);
            String stringResource = UtilsKt.stringResource(R.string.activity_tab_timeline_today, gapComposer2);
            FontWeight fontWeight = FontWeight.Bold;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = TypographyKt.LocalTypography;
            TextStyle textStyle = ((Typography) gapComposer2.consume(staticProvidableCompositionLocal)).titleLarge;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
            TextKt.m308TextNvy7gAk(stringResource, m136paddingqDBjuR0$default, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, fontWeight, null, 0L, null, 0L, 0, false, 0, 0, null, textStyle, gapComposer, 1572912, 0, 131000);
            ImageKt.Image(UnsignedKt.painterResource(R.drawable.illustration_activity_tab_empty, 0, gapComposer), null, SizeKt.m145size3ABfNKs(companion, 164.0f), null, null, RecyclerView.DECELERATION_RATE, null, gapComposer, 440, 120);
            TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.activity_tab_timeline_empty_state_title, gapComposer), OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal)).titleSmall, gapComposer, 48, 0, 130040);
            TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.activity_tab_timeline_empty_state_message, gapComposer), OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 4.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal)).bodyMedium, gapComposer, 48, 0, 130040);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new BoxKt$$ExternalSyntheticLambda0(modifier, i, 2, (byte) 0);
        }
    }
}
