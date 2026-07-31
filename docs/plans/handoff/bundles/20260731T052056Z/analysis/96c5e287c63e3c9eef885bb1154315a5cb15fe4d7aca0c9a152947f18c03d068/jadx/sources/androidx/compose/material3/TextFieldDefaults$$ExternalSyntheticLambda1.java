package androidx.compose.material3;

import android.content.Context;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.recyclerview.widget.RecyclerView;
import coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okhttp3.Handshake$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.feed.personalization.homepreference.HomeContentState;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceScreenKt;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;
import org.wikipedia.feed.wikigames.OnThisDayCardGameState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TextFieldDefaults$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ boolean f$1;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;

    public /* synthetic */ TextFieldDefaults$$ExternalSyntheticLambda1(boolean z, Function0 function0, String str, OnThisDayCardGameState.InProgress inProgress, Context context) {
        this.$r8$classId = 2;
        this.f$1 = z;
        this.f$0 = function0;
        this.f$3 = str;
        this.f$5 = inProgress;
        this.f$6 = context;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Modifier modifier;
        int i;
        String stringResource;
        int i2 = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$6;
        Object obj4 = this.f$5;
        Object obj5 = this.f$3;
        Object obj6 = this.f$0;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                ((TextFieldDefaults) obj6).m305Container4EFweAY(this.f$1, (MutableInteractionSourceImpl) obj5, (TextFieldColors) obj4, (Shape) obj3, (GapComposer) obj, Updater.updateChangedFlags(114822145));
                break;
            case 1:
                ((Integer) obj2).getClass();
                HomePreferenceScreenKt.HomePreferenceSection((HomeContentState) obj6, this.f$1, (HomePreferenceType) obj5, (Function1) obj4, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(385));
                break;
            default:
                Function0 function0 = (Function0) obj6;
                String str = (String) obj5;
                OnThisDayCardGameState.InProgress inProgress = (OnThisDayCardGameState.InProgress) obj4;
                Context context = (Context) obj3;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    boolean z = this.f$1;
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    if (z) {
                        gapComposer.startReplaceGroup(376721599);
                        boolean changed = gapComposer.changed(function0);
                        Object rememberedValue = gapComposer.rememberedValue();
                        if (changed || rememberedValue == Composer$Companion.Empty) {
                            rememberedValue = new Handshake$$ExternalSyntheticLambda0(18, function0);
                            gapComposer.updateRememberedValue(rememberedValue);
                        }
                        modifier = ImageKt.m51clickableoSLSa3U$default(15, companion, null, (Function0) rememberedValue, false);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(376722760);
                        gapComposer.end(false);
                        modifier = companion;
                    }
                    BiasAlignment biasAlignment = Alignment.Companion.TopStart;
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                    long j = gapComposer.compositeKeyHashCode;
                    int i3 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                    Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
                    Integer valueOf = Integer.valueOf(i3);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m327setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m326reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                    Updater.m327setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
                    Modifier then = OffsetKt.m132padding3ABfNKs(companion, 16.0f).then(SizeKt.FillWholeMaxSize);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
                    long j2 = gapComposer.compositeKeyHashCode;
                    int i4 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, then);
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m327setimpl(gapComposer, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i4, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                    Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(companion, 44.0f);
                    Painter painterResource = UnsignedKt.painterResource(R.drawable.ic_events_24dp, 0, gapComposer);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    IconKt.m286Iconww6aTOc(painterResource, null, m145size3ABfNKs, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).progressiveColor, gapComposer, 440, 0);
                    Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                    long j3 = ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
                    TextKt.m308TextNvy7gAk(str, m136paddingqDBjuR0$default, j3, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer.consume(staticProvidableCompositionLocal2)).titleMedium, 0L, 0L, FontWeight.SemiBold, null, ContextsKt.getSp(0.15d), 0L, null, 16777083), gapComposer, 48, 0, 131064);
                    if (z) {
                        gapComposer.startReplaceGroup(930522642);
                        stringResource = UtilsKt.stringResource(R.string.on_this_day_game_card_progress_short_label, new Object[]{Integer.valueOf(inProgress.currentQuestion + 1)}, gapComposer);
                        i = 0;
                        gapComposer.end(false);
                    } else {
                        i = 0;
                        gapComposer.startReplaceGroup(930730776);
                        stringResource = UtilsKt.stringResource(R.string.on_this_day_game_card_progress_label, new Object[]{Integer.valueOf(inProgress.currentQuestion + 1)}, gapComposer);
                        gapComposer.end(false);
                    }
                    TextKt.m308TextNvy7gAk(stringResource, companion, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer.consume(staticProvidableCompositionLocal2)).bodyMedium, 0L, 0L, null, null, ContextsKt.getSp(i), ContextsKt.getSp(24), null, 16646015), gapComposer, 48, 0, 131064);
                    GapComposer gapComposer2 = gapComposer;
                    OffsetKt.Spacer(gapComposer2, new LayoutWeightElement(1.0f, true));
                    if (z) {
                        gapComposer2.startReplaceGroup(932616382);
                        gapComposer2.end(false);
                    } else {
                        gapComposer2.startReplaceGroup(931412249);
                        Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
                        MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                        long j4 = gapComposer2.compositeKeyHashCode;
                        int i5 = (int) (j4 ^ (j4 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer2, fillMaxWidth);
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                        Animation.CC.m(i5, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                        Updater.m327setimpl(gapComposer2, materializeModifier3, composeUiNode$Companion$SetModifier$14);
                        Modifier align = BoxScopeInstance.INSTANCE.align(companion, Alignment.Companion.CenterEnd);
                        PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
                        CardKt.FilledTonalButton(function0, align, false, null, ButtonDefaults.m261filledTonalButtonColorsro_MJ88(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).backgroundColor, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).progressiveColor, gapComposer2), null, null, Expect_jvmKt.rememberComposableLambda(1805335697, new SubcomposeAsyncImageKt$$ExternalSyntheticLambda2(14, context, inProgress), gapComposer2), gapComposer2, 805306368, 492);
                        gapComposer2 = gapComposer2;
                        gapComposer2.end(true);
                        gapComposer2.end(false);
                    }
                    gapComposer2.end(true);
                    gapComposer2.end(true);
                    break;
                }
                break;
        }
        return unit;
    }

    public /* synthetic */ TextFieldDefaults$$ExternalSyntheticLambda1(int i, int i2, Object obj, Object obj2, Object obj3, Object obj4, boolean z) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = z;
        this.f$3 = obj2;
        this.f$5 = obj3;
        this.f$6 = obj4;
    }
}
