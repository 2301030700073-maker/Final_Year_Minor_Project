package org.wikipedia.settings.dev.playground;

import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FlowRowScopeInstance;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ChipKt;
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
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import j$.time.LocalDate;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import org.wikipedia.R;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda32;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda2;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6 implements Function3 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Function0 f$0;
    public final /* synthetic */ MutableState f$1;
    public final /* synthetic */ String f$2;
    public final /* synthetic */ String f$3;
    public final /* synthetic */ String f$4;

    public /* synthetic */ ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6(String str, Function0 function0, String str2, String str3, MutableState mutableState) {
        this.f$2 = str;
        this.f$0 = function0;
        this.f$3 = str2;
        this.f$4 = str3;
        this.f$1 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        Object failure;
        boolean z;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj4 = Composer$Companion.Empty;
        final int i2 = 0;
        final int i3 = 1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    ProvidableCompositionLocal providableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    long j = ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).backgroundColor;
                    RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = ColorKt.RectangleShape;
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(companion, j, rectangleShapeKt$RectangleShape$1), 16.0f);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer, 6);
                    long j2 = gapComposer.compositeKeyHashCode;
                    int i4 = (int) (j2 ^ (j2 >>> 32));
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
                    Integer valueOf = Integer.valueOf(i4);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m327setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m326reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                    Updater.m327setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
                    TextKt.m308TextNvy7gAk("readingChallengeLastReadDate", null, ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(TypographyKt.LocalTypography)).labelMedium, gapComposer, 6, 0, 131066);
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer, 54);
                    long j3 = gapComposer.compositeKeyHashCode;
                    int i5 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, companion);
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(function0);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m327setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i5, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                    MutableState mutableState = this.f$1;
                    String str = (String) mutableState.getValue();
                    long j4 = ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).primaryColor;
                    ProvidableCompositionLocal providableCompositionLocal2 = ColorSchemeKt.LocalColorScheme;
                    long j5 = ((ColorScheme) gapComposer.consume(providableCompositionLocal2)).outline;
                    TextFieldColors m304colors0hiis_0 = TextFieldDefaults.m304colors0hiis_0(j4, ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).primaryColor, ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).primaryColor, ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).primaryColor, j5, ((ColorScheme) gapComposer.consume(providableCompositionLocal2)).outline, gapComposer, 2147477236);
                    LayoutWeightElement layoutWeightElement = new LayoutWeightElement(1.0f, true);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (rememberedValue == obj4) {
                        rememberedValue = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState, 22);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    CardKt.OutlinedTextField(str, (Function1) rememberedValue, layoutWeightElement, false, null, null, ReadingChallengePlaygroundDialogKt.f74lambda$636134630, null, null, null, null, false, null, null, null, true, 0, 0, null, m304colors0hiis_0, gapComposer, 12582960, 12582912, 4063096);
                    Function0 function02 = this.f$0;
                    boolean changed = gapComposer.changed(function02);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changed || rememberedValue2 == obj4) {
                        rememberedValue2 = new HomeScreenKt$$ExternalSyntheticLambda32(function02, mutableState, 6);
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    Function0 function03 = (Function0) rememberedValue2;
                    if (((String) mutableState.getValue()).length() != 0) {
                        try {
                            failure = LocalDate.parse((String) mutableState.getValue());
                        } catch (Throwable th) {
                            failure = new Result.Failure(th);
                        }
                        if (failure instanceof Result.Failure) {
                            z = false;
                            PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
                            ProvidableCompositionLocal providableCompositionLocal3 = WikipediaColorKt.LocalWikipediaColor;
                            CardKt.Button(function03, null, z, null, ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer.consume(providableCompositionLocal3)).progressiveColor, ((WikipediaColor) gapComposer.consume(providableCompositionLocal3)).paperColor, gapComposer, 12), null, null, null, ReadingChallengePlaygroundDialogKt.f69lambda$2015767535, gapComposer, 805306368, 490);
                            gapComposer.end(true);
                            OffsetKt.FlowRow(null, new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), null, null, 0, 0, Expect_jvmKt.rememberComposableLambda(-1270711262, new ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6(this.f$2, function02, this.f$3, this.f$4, mutableState), gapComposer), gapComposer, 1572912, 61);
                            gapComposer.end(true);
                            break;
                        }
                    }
                    z = true;
                    PaddingValuesImpl paddingValuesImpl2 = ButtonDefaults.ContentPadding;
                    ProvidableCompositionLocal providableCompositionLocal32 = WikipediaColorKt.LocalWikipediaColor;
                    CardKt.Button(function03, null, z, null, ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer.consume(providableCompositionLocal32)).progressiveColor, ((WikipediaColor) gapComposer.consume(providableCompositionLocal32)).paperColor, gapComposer, 12), null, null, null, ReadingChallengePlaygroundDialogKt.f69lambda$2015767535, gapComposer, 805306368, 490);
                    gapComposer.end(true);
                    OffsetKt.FlowRow(null, new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), null, null, 0, 0, Expect_jvmKt.rememberComposableLambda(-1270711262, new ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6(this.f$2, function02, this.f$3, this.f$4, mutableState), gapComposer), gapComposer, 1572912, 61);
                    gapComposer.end(true);
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((FlowRowScopeInstance) obj).getClass();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    final String str2 = this.f$2;
                    boolean changed2 = gapComposer2.changed(str2);
                    final Function0 function04 = this.f$0;
                    boolean changed3 = changed2 | gapComposer2.changed(function04);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    final MutableState mutableState2 = this.f$1;
                    if (changed3 || rememberedValue3 == obj4) {
                        rememberedValue3 = new Function0() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda23
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i6 = i2;
                                Unit unit2 = Unit.INSTANCE;
                                MutableState mutableState3 = mutableState2;
                                Function0 function05 = function04;
                                String str3 = str2;
                                switch (i6) {
                                    case 0:
                                        Prefs prefs = Prefs.INSTANCE;
                                        PrefsIoUtil.setString(R.string.preference_key_reading_challenge_last_read_date, str3);
                                        mutableState3.setValue(str3);
                                        function05.invoke();
                                        break;
                                    case 1:
                                        Prefs prefs2 = Prefs.INSTANCE;
                                        PrefsIoUtil.setString(R.string.preference_key_reading_challenge_last_read_date, str3);
                                        mutableState3.setValue(str3);
                                        function05.invoke();
                                        break;
                                    default:
                                        Prefs prefs3 = Prefs.INSTANCE;
                                        PrefsIoUtil.setString(R.string.preference_key_reading_challenge_last_read_date, str3);
                                        mutableState3.setValue(str3);
                                        function05.invoke();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    ChipKt.AssistChip((Function0) rememberedValue3, ReadingChallengePlaygroundDialogKt.lambda$2033903237, null, false, null, null, null, null, gapComposer2, 48);
                    final String str3 = this.f$3;
                    boolean changed4 = gapComposer2.changed(str3) | gapComposer2.changed(function04);
                    Object rememberedValue4 = gapComposer2.rememberedValue();
                    if (changed4 || rememberedValue4 == obj4) {
                        rememberedValue4 = new Function0() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda23
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i6 = i3;
                                Unit unit2 = Unit.INSTANCE;
                                MutableState mutableState3 = mutableState2;
                                Function0 function05 = function04;
                                String str32 = str3;
                                switch (i6) {
                                    case 0:
                                        Prefs prefs = Prefs.INSTANCE;
                                        PrefsIoUtil.setString(R.string.preference_key_reading_challenge_last_read_date, str32);
                                        mutableState3.setValue(str32);
                                        function05.invoke();
                                        break;
                                    case 1:
                                        Prefs prefs2 = Prefs.INSTANCE;
                                        PrefsIoUtil.setString(R.string.preference_key_reading_challenge_last_read_date, str32);
                                        mutableState3.setValue(str32);
                                        function05.invoke();
                                        break;
                                    default:
                                        Prefs prefs3 = Prefs.INSTANCE;
                                        PrefsIoUtil.setString(R.string.preference_key_reading_challenge_last_read_date, str32);
                                        mutableState3.setValue(str32);
                                        function05.invoke();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue4);
                    }
                    ChipKt.AssistChip((Function0) rememberedValue4, ReadingChallengePlaygroundDialogKt.lambda$265198780, null, false, null, null, null, null, gapComposer2, 48);
                    final String str4 = this.f$4;
                    boolean changed5 = gapComposer2.changed(str4) | gapComposer2.changed(function04);
                    Object rememberedValue5 = gapComposer2.rememberedValue();
                    if (changed5 || rememberedValue5 == obj4) {
                        final int i6 = 2;
                        rememberedValue5 = new Function0() { // from class: org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda23
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i62 = i6;
                                Unit unit2 = Unit.INSTANCE;
                                MutableState mutableState3 = mutableState2;
                                Function0 function05 = function04;
                                String str32 = str4;
                                switch (i62) {
                                    case 0:
                                        Prefs prefs = Prefs.INSTANCE;
                                        PrefsIoUtil.setString(R.string.preference_key_reading_challenge_last_read_date, str32);
                                        mutableState3.setValue(str32);
                                        function05.invoke();
                                        break;
                                    case 1:
                                        Prefs prefs2 = Prefs.INSTANCE;
                                        PrefsIoUtil.setString(R.string.preference_key_reading_challenge_last_read_date, str32);
                                        mutableState3.setValue(str32);
                                        function05.invoke();
                                        break;
                                    default:
                                        Prefs prefs3 = Prefs.INSTANCE;
                                        PrefsIoUtil.setString(R.string.preference_key_reading_challenge_last_read_date, str32);
                                        mutableState3.setValue(str32);
                                        function05.invoke();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue5);
                    }
                    ChipKt.AssistChip((Function0) rememberedValue5, ReadingChallengePlaygroundDialogKt.lambda$1328387389, null, false, null, null, null, null, gapComposer2, 48);
                    boolean changed6 = gapComposer2.changed(function04);
                    Object rememberedValue6 = gapComposer2.rememberedValue();
                    if (changed6 || rememberedValue6 == obj4) {
                        rememberedValue6 = new HomeScreenKt$$ExternalSyntheticLambda32(function04, mutableState2, 8);
                        gapComposer2.updateRememberedValue(rememberedValue6);
                    }
                    ChipKt.AssistChip((Function0) rememberedValue6, ReadingChallengePlaygroundDialogKt.f67lambda$1903391298, null, false, null, null, null, null, gapComposer2, 48);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6(Function0 function0, MutableState mutableState, String str, String str2, String str3) {
        this.f$0 = function0;
        this.f$1 = mutableState;
        this.f$2 = str;
        this.f$3 = str2;
        this.f$4 = str3;
    }
}
