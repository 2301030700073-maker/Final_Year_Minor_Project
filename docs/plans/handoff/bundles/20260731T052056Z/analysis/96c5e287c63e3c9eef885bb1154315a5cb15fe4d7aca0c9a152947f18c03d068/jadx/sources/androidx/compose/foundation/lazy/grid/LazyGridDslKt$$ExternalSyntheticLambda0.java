package androidx.compose.foundation.lazy.grid;

import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.layout.Arrangement$Horizontal;
import androidx.compose.foundation.layout.Arrangement$Vertical;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.material3.TextFieldDefaults;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusTraversalKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.donate.donationreminder.DonationReminderScreenKt;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda29;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda30;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8;
import org.wikipedia.language.LangLinksScreenKt$$ExternalSyntheticLambda4;
import org.wikipedia.language.addlanguages.AddLanguagesListScreenKt$$ExternalSyntheticLambda3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class LazyGridDslKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Function1 f$10;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Object f$7;
    public final /* synthetic */ boolean f$8;
    public final /* synthetic */ Object f$9;

    public /* synthetic */ LazyGridDslKt$$ExternalSyntheticLambda0(GridCells$Fixed gridCells$Fixed, Modifier modifier, LazyGridState lazyGridState, PaddingValues paddingValues, Arrangement$Vertical arrangement$Vertical, Arrangement$Horizontal arrangement$Horizontal, FlingBehavior flingBehavior, boolean z, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, Function1 function1, int i) {
        this.f$0 = gridCells$Fixed;
        this.f$1 = modifier;
        this.f$2 = lazyGridState;
        this.f$3 = paddingValues;
        this.f$5 = arrangement$Vertical;
        this.f$6 = arrangement$Horizontal;
        this.f$7 = flingBehavior;
        this.f$8 = z;
        this.f$9 = androidEdgeEffectOverscrollEffect;
        this.f$10 = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Modifier.Companion companion;
        ComposableLambdaImpl composableLambdaImpl;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$9;
        Object obj4 = this.f$7;
        Object obj5 = this.f$6;
        Object obj6 = this.f$5;
        Object obj7 = this.f$3;
        Object obj8 = this.f$2;
        Object obj9 = this.f$1;
        Object obj10 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                TuplesKt.LazyVerticalGrid((GridCells$Fixed) obj10, (Modifier) obj9, (LazyGridState) obj8, (PaddingValues) obj7, (Arrangement$Vertical) obj6, (Arrangement$Horizontal) obj5, (FlingBehavior) obj4, this.f$8, (AndroidEdgeEffectOverscrollEffect) obj3, this.f$10, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            default:
                String str = (String) obj10;
                FocusRequester focusRequester = (FocusRequester) obj9;
                String str2 = (String) obj8;
                Function1 function1 = (Function1) obj7;
                Function2 function2 = (Function2) obj6;
                Function2 function22 = (Function2) obj5;
                MutableState mutableState = (MutableState) obj4;
                MutableState mutableState2 = (MutableState) obj3;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    RoundedCornerShape m177RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(28.0f);
                    Modifier.Companion companion2 = Modifier.Companion.$$INSTANCE;
                    Modifier clip = ClipKt.clip(companion2, m177RoundedCornerShape0680j_4);
                    ProvidableCompositionLocal providableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(clip, ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).paperColor, ColorKt.RectangleShape), 24.0f);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
                    long j = gapComposer.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m132padding3ABfNKs);
                    ComposeUiNode.Companion.getClass();
                    Function0 function0 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(function0);
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
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                    Updater.m327setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
                    Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion2, 1.0f);
                    ProvidableCompositionLocal providableCompositionLocal2 = TypographyKt.LocalTypography;
                    TextKt.m308TextNvy7gAk(str, fillMaxWidth, ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(providableCompositionLocal2)).labelLarge, gapComposer, 48, 0, 130040);
                    OffsetKt.Spacer(gapComposer, SizeKt.m140height3ABfNKs(companion2, 16.0f));
                    Modifier focusRequester2 = FocusTraversalKt.focusRequester(companion2, focusRequester);
                    Object rememberedValue = gapComposer.rememberedValue();
                    Object obj11 = Composer$Companion.Empty;
                    if (rememberedValue == obj11) {
                        companion = companion2;
                        rememberedValue = new GamesHubScreenKt$$ExternalSyntheticLambda8(13, focusRequester, mutableState);
                        gapComposer.updateRememberedValue(rememberedValue);
                    } else {
                        companion = companion2;
                    }
                    Modifier onGloballyPositioned = RulerKt.onGloballyPositioned(focusRequester2, (Function1) rememberedValue);
                    String str3 = (String) mutableState2.getValue();
                    boolean z = str2.length() > 0;
                    TextStyle textStyle = ((Typography) gapComposer.consume(providableCompositionLocal2)).bodyLarge;
                    KeyboardOptions keyboardOptions = new KeyboardOptions(this.f$8 ? 3 : 8, 115);
                    Function1 function12 = this.f$10;
                    boolean changed = gapComposer.changed(function12) | gapComposer.changed(function1);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changed || rememberedValue2 == obj11) {
                        rememberedValue2 = new AddLanguagesListScreenKt$$ExternalSyntheticLambda3(function12, function1, mutableState2, 1);
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    KeyboardActions keyboardActions = new KeyboardActions((Function1) rememberedValue2, 31);
                    long j2 = ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).primaryColor;
                    ProvidableCompositionLocal providableCompositionLocal3 = ColorSchemeKt.LocalColorScheme;
                    long j3 = ((ColorScheme) gapComposer.consume(providableCompositionLocal3)).outline;
                    long j4 = ((ColorScheme) gapComposer.consume(providableCompositionLocal3)).onSurfaceVariant;
                    long j5 = ((ColorScheme) gapComposer.consume(providableCompositionLocal3)).outline;
                    long j6 = ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).primaryColor;
                    long j7 = ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).primaryColor;
                    int i3 = 8;
                    TextFieldColors m304colors0hiis_0 = TextFieldDefaults.m304colors0hiis_0(j2, j4, j7, j6, j3, j5, gapComposer, 2147477236);
                    if (str2.length() > 0) {
                        gapComposer.startReplaceGroup(-763190395);
                        ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(1538694765, new HomeScreenKt$$ExternalSyntheticLambda30(str2, i3, (byte) 0), gapComposer);
                        gapComposer.end(false);
                        composableLambdaImpl = rememberComposableLambda;
                    } else {
                        gapComposer.startReplaceGroup(-762922928);
                        gapComposer.end(false);
                        composableLambdaImpl = null;
                    }
                    ComposableLambdaImpl composableLambdaImpl2 = str2.length() > 0 ? DonationReminderScreenKt.lambda$1091446873 : null;
                    boolean changed2 = gapComposer.changed(function12);
                    Object rememberedValue3 = gapComposer.rememberedValue();
                    if (changed2 || rememberedValue3 == obj11) {
                        rememberedValue3 = new LangLinksScreenKt$$ExternalSyntheticLambda4(function12, mutableState2, 1);
                        gapComposer.updateRememberedValue(rememberedValue3);
                    }
                    CardKt.OutlinedTextField(str3, (Function1) rememberedValue3, onGloballyPositioned, false, textStyle, null, null, composableLambdaImpl2, function2, function22, composableLambdaImpl, z, null, keyboardOptions, keyboardActions, true, 0, 0, null, m304colors0hiis_0, gapComposer, 0, 12582912, 3949016);
                    Modifier fillMaxWidth2 = SizeKt.fillMaxWidth(OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), 1.0f);
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f2End, Alignment.Companion.Top, gapComposer, 6);
                    long j8 = gapComposer.compositeKeyHashCode;
                    int i4 = (int) (j8 ^ (j8 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, fillMaxWidth2);
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(function0);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m327setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i4, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                    boolean changed3 = gapComposer.changed(function12) | gapComposer.changed(function1);
                    Object rememberedValue4 = gapComposer.rememberedValue();
                    if (changed3 || rememberedValue4 == obj11) {
                        rememberedValue4 = new HomeScreenKt$$ExternalSyntheticLambda29(function12, function1, mutableState2, 14);
                        gapComposer.updateRememberedValue(rememberedValue4);
                    }
                    CardKt.TextButton((Function0) rememberedValue4, null, false, null, null, null, DonationReminderScreenKt.lambda$959995468, gapComposer, 805306368, 510);
                    gapComposer.end(true);
                    gapComposer.end(true);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ LazyGridDslKt$$ExternalSyntheticLambda0(String str, FocusRequester focusRequester, String str2, boolean z, Function1 function1, Function1 function12, Function2 function2, Function2 function22, MutableState mutableState, MutableState mutableState2) {
        this.f$0 = str;
        this.f$1 = focusRequester;
        this.f$2 = str2;
        this.f$8 = z;
        this.f$10 = function1;
        this.f$3 = function12;
        this.f$5 = function2;
        this.f$6 = function22;
        this.f$7 = mutableState;
        this.f$9 = mutableState2;
    }
}
