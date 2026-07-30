package org.fdroid.fdroid.views.repos;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.text.KeyboardActionScope;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.ContentPasteKt;
import androidx.compose.material3.TextFieldKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.ClipboardManager;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.fdroid.fdroid.R;
import org.fdroid.fdroid.compose.ComposeUtils;

/* compiled from: AddRepoIntroScreen.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
final class AddRepoIntroScreenKt$AddRepoIntroContent$1$4 implements Function3 {
    final /* synthetic */ FocusRequester $focusRequester;
    final /* synthetic */ Function1 $onFetchRepo;
    final /* synthetic */ MutableState $textState;

    AddRepoIntroScreenKt$AddRepoIntroContent$1$4(MutableState mutableState, Function1 function1, FocusRequester focusRequester) {
        this.$textState = mutableState;
        this.$onFetchRepo = function1;
        this.$focusRequester = focusRequester;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        invoke((AnimatedVisibilityScope) obj, (Composer) obj2, ((Number) obj3).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(AnimatedVisibilityScope AnimatedVisibility, Composer composer, int i) {
        final MutableState mutableState;
        Intrinsics.checkNotNullParameter(AnimatedVisibility, "$this$AnimatedVisibility");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-397246604, i, -1, "org.fdroid.fdroid.views.repos.AddRepoIntroContent.<anonymous>.<anonymous> (AddRepoIntroScreen.kt:188)");
        }
        Alignment.Companion companion = Alignment.Companion;
        Alignment.Horizontal end = companion.getEnd();
        Arrangement arrangement = Arrangement.INSTANCE;
        float f = 16;
        Arrangement.HorizontalOrVertical m248spacedBy0680j_4 = arrangement.m248spacedBy0680j_4(Dp.m2424constructorimpl(f));
        final MutableState mutableState2 = this.$textState;
        final Function1 function1 = this.$onFetchRepo;
        final FocusRequester focusRequester = this.$focusRequester;
        Modifier.Companion companion2 = Modifier.Companion;
        MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(m248spacedBy0680j_4, end, composer, 54);
        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Modifier materializeModifier = ComposedModifierKt.materializeModifier(composer, companion2);
        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
        Function0 constructor = companion3.getConstructor();
        if (!(composer.getApplier() instanceof Applier)) {
            ComposablesKt.invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(constructor);
        } else {
            composer.useNode();
        }
        Composer m1043constructorimpl = Updater.m1043constructorimpl(composer);
        Updater.m1044setimpl(m1043constructorimpl, columnMeasurePolicy, companion3.getSetMeasurePolicy());
        Updater.m1044setimpl(m1043constructorimpl, currentCompositionLocalMap, companion3.getSetResolvedCompositionLocals());
        Function2 setCompositeKeyHash = companion3.getSetCompositeKeyHash();
        if (m1043constructorimpl.getInserting() || !Intrinsics.areEqual(m1043constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
            m1043constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
            m1043constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
        }
        Updater.m1044setimpl(m1043constructorimpl, materializeModifier, companion3.getSetModifier());
        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
        TextFieldValue textFieldValue = (TextFieldValue) mutableState2.getValue();
        KeyboardOptions keyboardOptions = new KeyboardOptions(0, null, 0, ImeAction.Companion.m2204getGoeUduSuo(), null, null, null, 119, null);
        composer.startReplaceGroup(2008812159);
        boolean changed = composer.changed(function1);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new Function1() { // from class: org.fdroid.fdroid.views.repos.AddRepoIntroScreenKt$AddRepoIntroContent$1$4$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit invoke$lambda$11$lambda$1$lambda$0;
                    invoke$lambda$11$lambda$1$lambda$0 = AddRepoIntroScreenKt$AddRepoIntroContent$1$4.invoke$lambda$11$lambda$1$lambda$0(Function1.this, mutableState2, (KeyboardActionScope) obj);
                    return invoke$lambda$11$lambda$1$lambda$0;
                }
            };
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceGroup();
        KeyboardActions keyboardActions = new KeyboardActions(null, (Function1) rememberedValue, null, null, null, null, 61, null);
        Modifier focusRequester2 = FocusRequesterModifierKt.focusRequester(SizeKt.fillMaxWidth$default(companion2, 0.0f, 1, null), focusRequester);
        composer.startReplaceGroup(2008821627);
        Object rememberedValue2 = composer.rememberedValue();
        Composer.Companion companion4 = Composer.Companion;
        if (rememberedValue2 == companion4.getEmpty()) {
            rememberedValue2 = new Function1() { // from class: org.fdroid.fdroid.views.repos.AddRepoIntroScreenKt$AddRepoIntroContent$1$4$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit invoke$lambda$11$lambda$3$lambda$2;
                    invoke$lambda$11$lambda$3$lambda$2 = AddRepoIntroScreenKt$AddRepoIntroContent$1$4.invoke$lambda$11$lambda$3$lambda$2(FocusRequester.this, (LayoutCoordinates) obj);
                    return invoke$lambda$11$lambda$3$lambda$2;
                }
            };
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceGroup();
        Modifier onGloballyPositioned = OnGloballyPositionedModifierKt.onGloballyPositioned(focusRequester2, (Function1) rememberedValue2);
        composer.startReplaceGroup(2008805918);
        Object rememberedValue3 = composer.rememberedValue();
        if (rememberedValue3 == companion4.getEmpty()) {
            rememberedValue3 = new Function1() { // from class: org.fdroid.fdroid.views.repos.AddRepoIntroScreenKt$AddRepoIntroContent$1$4$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit invoke$lambda$11$lambda$5$lambda$4;
                    invoke$lambda$11$lambda$5$lambda$4 = AddRepoIntroScreenKt$AddRepoIntroContent$1$4.invoke$lambda$11$lambda$5$lambda$4(MutableState.this, (TextFieldValue) obj);
                    return invoke$lambda$11$lambda$5$lambda$4;
                }
            };
            composer.updateRememberedValue(rememberedValue3);
        }
        composer.endReplaceGroup();
        TextFieldKt.TextField(textFieldValue, (Function1) rememberedValue3, onGloballyPositioned, false, false, null, null, null, null, null, null, null, null, false, null, keyboardOptions, keyboardActions, false, 0, 2, null, null, null, composer, 48, 805502976, 0, 7766008);
        MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement.m248spacedBy0680j_4(Dp.m2424constructorimpl(f)), companion.getCenterVertically(), composer, 54);
        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap2 = composer.getCurrentCompositionLocalMap();
        Modifier materializeModifier2 = ComposedModifierKt.materializeModifier(composer, companion2);
        Function0 constructor2 = companion3.getConstructor();
        if (!(composer.getApplier() instanceof Applier)) {
            ComposablesKt.invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(constructor2);
        } else {
            composer.useNode();
        }
        Composer m1043constructorimpl2 = Updater.m1043constructorimpl(composer);
        Updater.m1044setimpl(m1043constructorimpl2, rowMeasurePolicy, companion3.getSetMeasurePolicy());
        Updater.m1044setimpl(m1043constructorimpl2, currentCompositionLocalMap2, companion3.getSetResolvedCompositionLocals());
        Function2 setCompositeKeyHash2 = companion3.getSetCompositeKeyHash();
        if (m1043constructorimpl2.getInserting() || !Intrinsics.areEqual(m1043constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
            m1043constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
            m1043constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
        }
        Updater.m1044setimpl(m1043constructorimpl2, materializeModifier2, companion3.getSetModifier());
        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
        final ClipboardManager clipboardManager = (ClipboardManager) composer.consume(CompositionLocalsKt.getLocalClipboardManager());
        ComposeUtils composeUtils = ComposeUtils.INSTANCE;
        String stringResource = StringResources_androidKt.stringResource(R.string.paste, composer, 0);
        ImageVector contentPaste = ContentPasteKt.getContentPaste(Icons.INSTANCE.getDefault());
        composer.startReplaceGroup(511323305);
        boolean changedInstance = composer.changedInstance(clipboardManager);
        Object rememberedValue4 = composer.rememberedValue();
        if (changedInstance || rememberedValue4 == companion4.getEmpty()) {
            mutableState = mutableState2;
            rememberedValue4 = new Function0() { // from class: org.fdroid.fdroid.views.repos.AddRepoIntroScreenKt$AddRepoIntroContent$1$4$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit invoke$lambda$11$lambda$10$lambda$7$lambda$6;
                    invoke$lambda$11$lambda$10$lambda$7$lambda$6 = AddRepoIntroScreenKt$AddRepoIntroContent$1$4.invoke$lambda$11$lambda$10$lambda$7$lambda$6(ClipboardManager.this, mutableState);
                    return invoke$lambda$11$lambda$10$lambda$7$lambda$6;
                }
            };
            composer.updateRememberedValue(rememberedValue4);
        } else {
            mutableState = mutableState2;
        }
        composer.endReplaceGroup();
        final MutableState mutableState3 = mutableState;
        composeUtils.m2977FDroidOutlineButtonyrwZFoE(stringResource, (Function0) rememberedValue4, null, contentPaste, 0L, composer, 196608, 20);
        SpacerKt.Spacer(RowScope.CC.weight$default(rowScopeInstance, companion2, 1.0f, false, 2, null), composer, 0);
        String stringResource2 = StringResources_androidKt.stringResource(R.string.repo_add_add, composer, 0);
        composer.startReplaceGroup(511338474);
        boolean changed2 = composer.changed(function1);
        Object rememberedValue5 = composer.rememberedValue();
        if (changed2 || rememberedValue5 == companion4.getEmpty()) {
            rememberedValue5 = new Function0() { // from class: org.fdroid.fdroid.views.repos.AddRepoIntroScreenKt$AddRepoIntroContent$1$4$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit invoke$lambda$11$lambda$10$lambda$9$lambda$8;
                    invoke$lambda$11$lambda$10$lambda$9$lambda$8 = AddRepoIntroScreenKt$AddRepoIntroContent$1$4.invoke$lambda$11$lambda$10$lambda$9$lambda$8(Function1.this, mutableState3);
                    return invoke$lambda$11$lambda$10$lambda$9$lambda$8;
                }
            };
            composer.updateRememberedValue(rememberedValue5);
        }
        composer.endReplaceGroup();
        composeUtils.FDroidButton(stringResource2, (Function0) rememberedValue5, null, null, composer, 24576, 12);
        composer.endNode();
        composer.endNode();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$11$lambda$5$lambda$4(MutableState mutableState, TextFieldValue it) {
        Intrinsics.checkNotNullParameter(it, "it");
        mutableState.setValue(it);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$11$lambda$1$lambda$0(Function1 function1, MutableState mutableState, KeyboardActionScope KeyboardActions) {
        Intrinsics.checkNotNullParameter(KeyboardActions, "$this$KeyboardActions");
        function1.invoke(((TextFieldValue) mutableState.getValue()).getText());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$11$lambda$3$lambda$2(FocusRequester focusRequester, LayoutCoordinates it) {
        Intrinsics.checkNotNullParameter(it, "it");
        focusRequester.requestFocus();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$11$lambda$10$lambda$7$lambda$6(ClipboardManager clipboardManager, MutableState mutableState) {
        String str;
        if (clipboardManager.hasText()) {
            AnnotatedString text = clipboardManager.getText();
            if (text == null || (str = text.getText()) == null) {
                str = "";
            }
            mutableState.setValue(new TextFieldValue(str, 0L, (TextRange) null, 6, (DefaultConstructorMarker) null));
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$11$lambda$10$lambda$9$lambda$8(Function1 function1, MutableState mutableState) {
        function1.invoke(((TextFieldValue) mutableState.getValue()).getText());
        return Unit.INSTANCE;
    }
}
