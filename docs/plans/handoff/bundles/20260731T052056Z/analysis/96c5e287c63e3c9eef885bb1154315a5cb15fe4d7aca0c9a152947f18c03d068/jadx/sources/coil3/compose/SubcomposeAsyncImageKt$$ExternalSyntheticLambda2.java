package coil3.compose;

import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.UtilsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda12;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda11;
import org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt;
import org.wikipedia.settings.homefeed.FeedConfigurationItem;
import org.wikipedia.settings.homefeed.FeedConfigurationState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SubcomposeAsyncImageKt$$ExternalSyntheticLambda2 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ SubcomposeAsyncImageKt$$ExternalSyntheticLambda2(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    private final Object invoke$org$wikipedia$settings$dev$playground$ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda1(Object obj, Object obj2, Object obj3) {
        ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState;
        Function0 function0 = (Function0) this.f$0;
        ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState2 = (ParcelableSnapshotMutableIntState) this.f$1;
        GapComposer gapComposer = (GapComposer) obj2;
        int intValue = ((Integer) obj3).intValue();
        ((ColumnScopeInstance) obj).getClass();
        if (gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            long j = ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).backgroundColor;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = ColorKt.RectangleShape;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, j, rectangleShapeKt$RectangleShape$1), 16.0f);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer, 6);
            long j2 = gapComposer.compositeKeyHashCode;
            int i = (int) (j2 ^ (j2 >>> 32));
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
            Integer valueOf = Integer.valueOf(i);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
            TextKt.m308TextNvy7gAk("readingChallengeStreak", null, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal2)).labelMedium, gapComposer, 6, 0, 131066);
            int i2 = 1;
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer, 54);
            long j3 = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, companion);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i3, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            boolean changed = gapComposer.changed(function0);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (changed || rememberedValue == neverEqualPolicy) {
                parcelableSnapshotMutableIntState = parcelableSnapshotMutableIntState2;
                rememberedValue = new RandomScreenKt$$ExternalSyntheticLambda12(function0, parcelableSnapshotMutableIntState, i2);
                gapComposer.updateRememberedValue(rememberedValue);
            } else {
                parcelableSnapshotMutableIntState = parcelableSnapshotMutableIntState2;
            }
            CardKt.IconButton((Function0) rememberedValue, null, false, null, null, ReadingChallengePlaygroundDialogKt.f73lambda$558935227, gapComposer, 1572864, 62);
            TextKt.m308TextNvy7gAk(String.valueOf(parcelableSnapshotMutableIntState.getIntValue()), null, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal2)).headlineMedium, gapComposer, 0, 0, 131066);
            boolean changed2 = gapComposer.changed(function0);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new RandomScreenKt$$ExternalSyntheticLambda12(function0, parcelableSnapshotMutableIntState, 2);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            CardKt.IconButton((Function0) rememberedValue2, null, false, null, null, ReadingChallengePlaygroundDialogKt.f66lambda$1602158724, gapComposer, 1572864, 62);
            gapComposer.end(true);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    private final Object invoke$org$wikipedia$settings$homefeed$FeedConfigurationScreenKt$$ExternalSyntheticLambda4(Object obj, Object obj2, Object obj3) {
        FeedConfigurationState feedConfigurationState = (FeedConfigurationState) this.f$0;
        Function1 function1 = (Function1) this.f$1;
        PaddingValues paddingValues = (PaddingValues) obj;
        GapComposer gapComposer = (GapComposer) obj2;
        int intValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((intValue & 6) == 0) {
            intValue |= gapComposer.changed(paddingValues) ? 4 : 2;
        }
        if (gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
            boolean areEqual = Intrinsics.areEqual(feedConfigurationState, FeedConfigurationState.Loading.INSTANCE);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            if (areEqual) {
                gapComposer.startReplaceGroup(-1507455556);
                Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 32.0f);
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                long j = gapComposer.compositeKeyHashCode;
                int i = (int) (j ^ (j >>> 32));
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
                Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                Updater.m327setimpl(gapComposer, Integer.valueOf(i), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                ProgressIndicatorKt.m290CircularProgressIndicator4lLiAd8(null, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor, RecyclerView.DECELERATION_RATE, 0L, 0, RecyclerView.DECELERATION_RATE, gapComposer, 0, 61);
                gapComposer.end(true);
                gapComposer.end(false);
            } else {
                if (!(feedConfigurationState instanceof FeedConfigurationState.Success)) {
                    throw Modifier.CC.m(gapComposer, 644108263, false);
                }
                gapComposer.startReplaceGroup(-1506998213);
                Modifier scroll$default = ImageKt.scroll$default(OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues), ImageKt.rememberScrollState(gapComposer), true);
                ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
                long j2 = gapComposer.compositeKeyHashCode;
                int i2 = (int) (j2 ^ (j2 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, scroll$default);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$12);
                } else {
                    gapComposer.useNode();
                }
                Updater.m327setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m327setimpl(gapComposer, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                Updater.m327setimpl(gapComposer, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m327setimpl(gapComposer, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.home_feed_settings_feed_configuration_description, gapComposer), OffsetKt.m134paddingVpY3zN4$default(OffsetKt.m134paddingVpY3zN4$default(companion, 16.0f, RecyclerView.DECELERATION_RATE, 2), RecyclerView.DECELERATION_RATE, 8.0f, 1), ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(TypographyKt.LocalTypography)).bodyMedium, gapComposer, 48, 0, 131064);
                OffsetKt.Spacer(gapComposer, SizeKt.m140height3ABfNKs(companion, 16.0f));
                gapComposer.startReplaceGroup(269027860);
                for (FeedConfigurationItem feedConfigurationItem : ((FeedConfigurationState.Success) feedConfigurationState).items) {
                    boolean changed = gapComposer.changed(function1) | gapComposer.changed(feedConfigurationItem);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == Composer$Companion.Empty) {
                        rememberedValue = new AboutActivityKt$$ExternalSyntheticLambda11(9, function1, feedConfigurationItem);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Okio__OkioKt.FeedConfigurationItemView(feedConfigurationItem, (Function0) rememberedValue, gapComposer, 0);
                }
                Modifier.CC.m(gapComposer, false, true, false);
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:258:0x09b4, code lost:
    
        if (r3 != false) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x09ee, code lost:
    
        r9 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x09f6, code lost:
    
        if (r14 == 2) goto L272;
     */
    @Override // kotlin.jvm.functions.Function3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(java.lang.Object r71, java.lang.Object r72, java.lang.Object r73) {
        /*
            Method dump skipped, instructions count: 2886
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda2.invoke(java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
    }
}
