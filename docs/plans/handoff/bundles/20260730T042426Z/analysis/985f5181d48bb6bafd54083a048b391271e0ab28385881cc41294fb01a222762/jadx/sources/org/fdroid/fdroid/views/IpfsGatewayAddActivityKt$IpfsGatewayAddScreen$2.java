package org.fdroid.fdroid.views;

import android.net.Uri;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.ContentPasteKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.TextFieldKt;
import androidx.compose.material3.TextKt;
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
import androidx.compose.ui.res.ColorResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.fdroid.fdroid.R;
import org.fdroid.fdroid.compose.ComposeUtils;

/* compiled from: IpfsGatewayAddActivity.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
final class IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2 implements Function3 {
    final /* synthetic */ MutableState $errorMsg$delegate;
    final /* synthetic */ FocusRequester $focusRequester;
    final /* synthetic */ Function1 $onAddUserGateway;
    final /* synthetic */ MutableState $textState;

    IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2(MutableState mutableState, FocusRequester focusRequester, MutableState mutableState2, Function1 function1) {
        this.$textState = mutableState;
        this.$focusRequester = focusRequester;
        this.$errorMsg$delegate = mutableState2;
        this.$onAddUserGateway = function1;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        invoke((PaddingValues) obj, (Composer) obj2, ((Number) obj3).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(PaddingValues paddingValues, Composer composer, int i) {
        int i2;
        String IpfsGatewayAddScreen$lambda$3;
        final MutableState mutableState;
        String IpfsGatewayAddScreen$lambda$32;
        final MutableState mutableState2;
        String IpfsGatewayAddScreen$lambda$33;
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        if ((i & 6) == 0) {
            i2 = i | (composer.changed(paddingValues) ? 4 : 2);
        } else {
            i2 = i;
        }
        if ((i2 & 19) == 18 && composer.getSkipping()) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1924022157, i2, -1, "org.fdroid.fdroid.views.IpfsGatewayAddScreen.<anonymous> (IpfsGatewayAddActivity.kt:99)");
        }
        Arrangement arrangement = Arrangement.INSTANCE;
        float f = 16;
        Arrangement.HorizontalOrVertical m248spacedBy0680j_4 = arrangement.m248spacedBy0680j_4(Dp.m2424constructorimpl(f));
        Modifier.Companion companion = Modifier.Companion;
        Modifier m265padding3ABfNKs = PaddingKt.m265padding3ABfNKs(PaddingKt.padding(companion, paddingValues), Dp.m2424constructorimpl(f));
        MutableState mutableState3 = this.$textState;
        final FocusRequester focusRequester = this.$focusRequester;
        final MutableState mutableState4 = this.$errorMsg$delegate;
        final Function1 function1 = this.$onAddUserGateway;
        Alignment.Companion companion2 = Alignment.Companion;
        MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(m248spacedBy0680j_4, companion2.getStart(), composer, 6);
        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Modifier materializeModifier = ComposedModifierKt.materializeModifier(composer, m265padding3ABfNKs);
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
        MaterialTheme materialTheme = MaterialTheme.INSTANCE;
        int i3 = MaterialTheme.$stable;
        TextKt.m780Text4IGK_g("Enter IPFS gateway URL", null, 0L, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, materialTheme.getTypography(composer, i3).getBodyLarge(), composer, 6, 0, 65534);
        MeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(arrangement.getTop(), companion2.getStart(), composer, 0);
        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap2 = composer.getCurrentCompositionLocalMap();
        Modifier materializeModifier2 = ComposedModifierKt.materializeModifier(composer, companion);
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
        Updater.m1044setimpl(m1043constructorimpl2, columnMeasurePolicy2, companion3.getSetMeasurePolicy());
        Updater.m1044setimpl(m1043constructorimpl2, currentCompositionLocalMap2, companion3.getSetResolvedCompositionLocals());
        Function2 setCompositeKeyHash2 = companion3.getSetCompositeKeyHash();
        if (m1043constructorimpl2.getInserting() || !Intrinsics.areEqual(m1043constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
            m1043constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
            m1043constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
        }
        Updater.m1044setimpl(m1043constructorimpl2, materializeModifier2, companion3.getSetModifier());
        TextFieldValue textFieldValue = (TextFieldValue) mutableState3.getValue();
        IpfsGatewayAddScreen$lambda$3 = IpfsGatewayAddActivityKt.IpfsGatewayAddScreen$lambda$3(mutableState4);
        boolean z = IpfsGatewayAddScreen$lambda$3.length() > 0;
        Modifier focusRequester2 = FocusRequesterModifierKt.focusRequester(SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null), focusRequester);
        composer.startReplaceGroup(1676542649);
        Object rememberedValue = composer.rememberedValue();
        Composer.Companion companion4 = Composer.Companion;
        if (rememberedValue == companion4.getEmpty()) {
            rememberedValue = new Function1() { // from class: org.fdroid.fdroid.views.IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit invoke$lambda$10$lambda$4$lambda$1$lambda$0;
                    invoke$lambda$10$lambda$4$lambda$1$lambda$0 = IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2.invoke$lambda$10$lambda$4$lambda$1$lambda$0(FocusRequester.this, (LayoutCoordinates) obj);
                    return invoke$lambda$10$lambda$4$lambda$1$lambda$0;
                }
            };
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceGroup();
        Modifier onGloballyPositioned = OnGloballyPositionedModifierKt.onGloballyPositioned(focusRequester2, (Function1) rememberedValue);
        composer.startReplaceGroup(1676534236);
        Object rememberedValue2 = composer.rememberedValue();
        if (rememberedValue2 == companion4.getEmpty()) {
            mutableState = mutableState3;
            rememberedValue2 = new Function1() { // from class: org.fdroid.fdroid.views.IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit invoke$lambda$10$lambda$4$lambda$3$lambda$2;
                    invoke$lambda$10$lambda$4$lambda$3$lambda$2 = IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2.invoke$lambda$10$lambda$4$lambda$3$lambda$2(MutableState.this, (TextFieldValue) obj);
                    return invoke$lambda$10$lambda$4$lambda$3$lambda$2;
                }
            };
            composer.updateRememberedValue(rememberedValue2);
        } else {
            mutableState = mutableState3;
        }
        composer.endReplaceGroup();
        MutableState mutableState5 = mutableState;
        TextFieldKt.TextField(textFieldValue, (Function1) rememberedValue2, onGloballyPositioned, false, false, null, null, null, null, null, null, null, null, z, null, null, null, false, 0, 2, null, null, null, composer, 48, 805306368, 0, 7856120);
        composer.startReplaceGroup(1676546766);
        IpfsGatewayAddScreen$lambda$32 = IpfsGatewayAddActivityKt.IpfsGatewayAddScreen$lambda$3(mutableState4);
        if (IpfsGatewayAddScreen$lambda$32.length() > 0) {
            IpfsGatewayAddScreen$lambda$33 = IpfsGatewayAddActivityKt.IpfsGatewayAddScreen$lambda$3(mutableState4);
            TextKt.m780Text4IGK_g(IpfsGatewayAddScreen$lambda$33, null, ColorResources_androidKt.colorResource(R.color.fdroid_error, composer, 0), 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, materialTheme.getTypography(composer, i3).getBodyLarge(), composer, 0, 0, 65530);
        }
        composer.endReplaceGroup();
        composer.endNode();
        MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement.m248spacedBy0680j_4(Dp.m2424constructorimpl(f)), companion2.getCenterVertically(), composer, 54);
        int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap3 = composer.getCurrentCompositionLocalMap();
        Modifier materializeModifier3 = ComposedModifierKt.materializeModifier(composer, companion);
        Function0 constructor3 = companion3.getConstructor();
        if (!(composer.getApplier() instanceof Applier)) {
            ComposablesKt.invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(constructor3);
        } else {
            composer.useNode();
        }
        Composer m1043constructorimpl3 = Updater.m1043constructorimpl(composer);
        Updater.m1044setimpl(m1043constructorimpl3, rowMeasurePolicy, companion3.getSetMeasurePolicy());
        Updater.m1044setimpl(m1043constructorimpl3, currentCompositionLocalMap3, companion3.getSetResolvedCompositionLocals());
        Function2 setCompositeKeyHash3 = companion3.getSetCompositeKeyHash();
        if (m1043constructorimpl3.getInserting() || !Intrinsics.areEqual(m1043constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
            m1043constructorimpl3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash3));
            m1043constructorimpl3.apply(Integer.valueOf(currentCompositeKeyHash3), setCompositeKeyHash3);
        }
        Updater.m1044setimpl(m1043constructorimpl3, materializeModifier3, companion3.getSetModifier());
        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
        final ClipboardManager clipboardManager = (ClipboardManager) composer.consume(CompositionLocalsKt.getLocalClipboardManager());
        ComposeUtils composeUtils = ComposeUtils.INSTANCE;
        String stringResource = StringResources_androidKt.stringResource(R.string.paste, composer, 0);
        ImageVector contentPaste = ContentPasteKt.getContentPaste(Icons.INSTANCE.getDefault());
        composer.startReplaceGroup(1676570996);
        boolean changedInstance = composer.changedInstance(clipboardManager);
        Object rememberedValue3 = composer.rememberedValue();
        if (changedInstance || rememberedValue3 == companion4.getEmpty()) {
            mutableState2 = mutableState5;
            rememberedValue3 = new Function0() { // from class: org.fdroid.fdroid.views.IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit invoke$lambda$10$lambda$9$lambda$6$lambda$5;
                    invoke$lambda$10$lambda$9$lambda$6$lambda$5 = IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2.invoke$lambda$10$lambda$9$lambda$6$lambda$5(ClipboardManager.this, mutableState2);
                    return invoke$lambda$10$lambda$9$lambda$6$lambda$5;
                }
            };
            composer.updateRememberedValue(rememberedValue3);
        } else {
            mutableState2 = mutableState5;
        }
        composer.endReplaceGroup();
        final MutableState mutableState6 = mutableState2;
        composeUtils.m2977FDroidOutlineButtonyrwZFoE(stringResource, (Function0) rememberedValue3, null, contentPaste, 0L, composer, 196608, 20);
        SpacerKt.Spacer(RowScope.CC.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), composer, 0);
        String stringResource2 = StringResources_androidKt.stringResource(R.string.ipfsgw_add_add, composer, 0);
        composer.startReplaceGroup(1676584933);
        boolean changed = composer.changed(function1);
        Object rememberedValue4 = composer.rememberedValue();
        if (changed || rememberedValue4 == companion4.getEmpty()) {
            rememberedValue4 = new Function0() { // from class: org.fdroid.fdroid.views.IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit invoke$lambda$10$lambda$9$lambda$8$lambda$7;
                    invoke$lambda$10$lambda$9$lambda$8$lambda$7 = IpfsGatewayAddActivityKt$IpfsGatewayAddScreen$2.invoke$lambda$10$lambda$9$lambda$8$lambda$7(MutableState.this, function1, mutableState4);
                    return invoke$lambda$10$lambda$9$lambda$8$lambda$7;
                }
            };
            composer.updateRememberedValue(rememberedValue4);
        }
        composer.endReplaceGroup();
        composeUtils.FDroidButton(stringResource2, (Function0) rememberedValue4, null, null, composer, 24576, 12);
        composer.endNode();
        composer.endNode();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$10$lambda$4$lambda$3$lambda$2(MutableState mutableState, TextFieldValue it) {
        Intrinsics.checkNotNullParameter(it, "it");
        mutableState.setValue(it);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$10$lambda$4$lambda$1$lambda$0(FocusRequester focusRequester, LayoutCoordinates it) {
        Intrinsics.checkNotNullParameter(it, "it");
        focusRequester.requestFocus();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$10$lambda$9$lambda$6$lambda$5(ClipboardManager clipboardManager, MutableState mutableState) {
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
    public static final Unit invoke$lambda$10$lambda$9$lambda$8$lambda$7(MutableState mutableState, Function1 function1, MutableState mutableState2) {
        String str;
        mutableState2.setValue("");
        if (StringsKt.endsWith$default(((TextFieldValue) mutableState.getValue()).getText(), "/", false, 2, (Object) null)) {
            str = ((TextFieldValue) mutableState.getValue()).getText();
        } else {
            str = ((TextFieldValue) mutableState.getValue()).getText() + "/";
        }
        try {
            if (!CollectionsKt.contains(SetsKt.setOf((Object[]) new String[]{"http", "https"}), Uri.parse(str).getScheme())) {
                mutableState2.setValue("IPFS gateway URL should start with `https://`");
                return Unit.INSTANCE;
            }
            function1.invoke(str);
            return Unit.INSTANCE;
        } catch (Exception e) {
            mutableState2.setValue("could not parse uri (" + e + ")");
            return Unit.INSTANCE;
        }
    }
}
