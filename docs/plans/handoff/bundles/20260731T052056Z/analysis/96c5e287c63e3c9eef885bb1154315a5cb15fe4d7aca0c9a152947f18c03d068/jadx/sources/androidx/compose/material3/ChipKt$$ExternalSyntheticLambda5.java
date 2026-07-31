package androidx.compose.material3;

import android.content.Context;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
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
import coil3.util.ContextsKt;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okhttp3.Handshake$$ExternalSyntheticLambda0;
import okio.Options;
import org.wikipedia.R;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.donate.donationreminder.DonationReminderScreenKt;
import org.wikipedia.donate.donationreminder.SelectableOption;
import org.wikipedia.feed.wikigames.OnThisDayCardGameState;
import org.wikipedia.feed.wikigames.OnThisDayGameKt$$ExternalSyntheticLambda13;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt;
import org.wikipedia.util.Resource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ChipKt$$ExternalSyntheticLambda5 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Function0 f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ boolean f$3;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Object f$7;
    public final /* synthetic */ Object f$8;
    public final /* synthetic */ Object f$9;

    public /* synthetic */ ChipKt$$ExternalSyntheticLambda5(Function0 function0, ComposableLambdaImpl composableLambdaImpl, Modifier modifier, boolean z, Shape shape, ChipColors chipColors, ChipElevation chipElevation, BorderStroke borderStroke, int i) {
        this.f$0 = function0;
        this.f$1 = composableLambdaImpl;
        this.f$2 = modifier;
        this.f$3 = z;
        this.f$6 = shape;
        this.f$7 = chipColors;
        this.f$8 = chipElevation;
        this.f$9 = borderStroke;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Modifier modifier;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$9;
        Object obj4 = this.f$8;
        Object obj5 = this.f$7;
        Object obj6 = this.f$6;
        Object obj7 = this.f$2;
        Object obj8 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                ChipKt.AssistChip(this.f$0, (ComposableLambdaImpl) obj8, (Modifier) obj7, this.f$3, (Shape) obj6, (ChipColors) obj5, (ChipElevation) obj4, (BorderStroke) obj3, (GapComposer) obj, Updater.updateChangedFlags(49));
                break;
            case 1:
                ((Integer) obj2).getClass();
                DonationReminderScreenKt.DonationAmountView((SelectableOption) obj8, (String) obj7, this.f$3, (String) obj6, (Function1) obj5, this.f$0, (Function1) obj4, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(196609));
                break;
            case 2:
                String str = (String) obj8;
                OnThisDayCardGameState.Completed completed = (OnThisDayCardGameState.Completed) obj7;
                Function0 function0 = (Function0) obj6;
                Function0 function02 = (Function0) obj5;
                Function0 function03 = (Function0) obj4;
                Context context = (Context) obj3;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    boolean z = this.f$3;
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    if (z) {
                        gapComposer.startReplaceGroup(-383923840);
                        Function0 function04 = this.f$0;
                        boolean changed = gapComposer.changed(function04);
                        Object rememberedValue = gapComposer.rememberedValue();
                        if (changed || rememberedValue == Composer$Companion.Empty) {
                            rememberedValue = new Handshake$$ExternalSyntheticLambda0(19, function04);
                            gapComposer.updateRememberedValue(rememberedValue);
                        }
                        modifier = ImageKt.m51clickableoSLSa3U$default(15, companion, null, (Function0) rememberedValue, false);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(-383922803);
                        gapComposer.end(false);
                        modifier = companion;
                    }
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                    long j = gapComposer.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
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
                    Integer valueOf = Integer.valueOf(i2);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m327setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m326reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                    Updater.m327setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
                    Modifier then = OffsetKt.m132padding3ABfNKs(companion, 16.0f).then(SizeKt.FillWholeMaxSize);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
                    long j2 = gapComposer.compositeKeyHashCode;
                    int i3 = (int) (j2 ^ (j2 >>> 32));
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
                    Animation.CC.m(i3, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                    Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(companion, 44.0f);
                    Painter painterResource = UnsignedKt.painterResource(R.drawable.ic_event_available, 0, gapComposer);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    IconKt.m286Iconww6aTOc(painterResource, null, m145size3ABfNKs, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).successColor, gapComposer, 440, 0);
                    TextKt.m308TextNvy7gAk(str, OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer.consume(TypographyKt.LocalTypography)).titleMedium, 0L, 0L, FontWeight.SemiBold, null, ContextsKt.getSp(0.15d), 0L, null, 16777083), gapComposer, 48, 0, 131064);
                    Options.Companion.OnThisDayGameCountdown(completed, z, function0, gapComposer, 0);
                    OffsetKt.Spacer(gapComposer, new LayoutWeightElement(1.0f, true));
                    if (z) {
                        gapComposer.startReplaceGroup(-975831687);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(-977876695);
                        OffsetKt.FlowRow(SizeKt.fillMaxWidth(companion, 1.0f), new Arrangement$SpacedAligned(12.0f, true, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(2, Alignment.Companion.End)), new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), null, 2, 0, Expect_jvmKt.rememberComposableLambda(-504011415, new OnThisDayGameKt$$ExternalSyntheticLambda13(function02, function03, context, completed, 0), gapComposer), gapComposer, 1597878, 40);
                        gapComposer.end(false);
                    }
                    gapComposer.end(true);
                    gapComposer.end(true);
                    break;
                }
            case 3:
                ((Integer) obj2).getClass();
                RecommendedReadingListSourceScreenKt.RecommendedReadingListInterestsContent(this.f$3, (LazyStaggeredGridState) obj8, (List) obj7, (Set) obj6, (Function1) obj5, this.f$0, (Function0) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(1572865));
                break;
            default:
                ((Integer) obj2).getClass();
                RecommendedReadingListSourceScreenKt.RecommendedReadingListInterestsScreen((Resource) obj8, this.f$3, (WikiErrorClickEvents) obj7, (Function1) obj6, this.f$0, (Function0) obj5, (Function1) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    public /* synthetic */ ChipKt$$ExternalSyntheticLambda5(SelectableOption selectableOption, String str, boolean z, String str2, Function1 function1, Function0 function0, Function1 function12, Function1 function13, int i) {
        this.f$1 = selectableOption;
        this.f$2 = str;
        this.f$3 = z;
        this.f$6 = str2;
        this.f$7 = function1;
        this.f$0 = function0;
        this.f$8 = function12;
        this.f$9 = function13;
    }

    public /* synthetic */ ChipKt$$ExternalSyntheticLambda5(Resource resource, boolean z, WikiErrorClickEvents wikiErrorClickEvents, Function1 function1, Function0 function0, Function0 function02, Function1 function12, Function0 function03, int i) {
        this.f$1 = resource;
        this.f$3 = z;
        this.f$2 = wikiErrorClickEvents;
        this.f$6 = function1;
        this.f$0 = function0;
        this.f$7 = function02;
        this.f$8 = function12;
        this.f$9 = function03;
    }

    public /* synthetic */ ChipKt$$ExternalSyntheticLambda5(boolean z, LazyStaggeredGridState lazyStaggeredGridState, List list, Set set, Function1 function1, Function0 function0, Function0 function02, Function0 function03, int i) {
        this.f$3 = z;
        this.f$1 = lazyStaggeredGridState;
        this.f$2 = list;
        this.f$6 = set;
        this.f$7 = function1;
        this.f$0 = function0;
        this.f$8 = function02;
        this.f$9 = function03;
    }

    public /* synthetic */ ChipKt$$ExternalSyntheticLambda5(boolean z, Function0 function0, String str, OnThisDayCardGameState.Completed completed, Function0 function02, Function0 function03, Function0 function04, Context context) {
        this.f$3 = z;
        this.f$0 = function0;
        this.f$1 = str;
        this.f$2 = completed;
        this.f$6 = function02;
        this.f$7 = function03;
        this.f$8 = function04;
        this.f$9 = context;
    }
}
