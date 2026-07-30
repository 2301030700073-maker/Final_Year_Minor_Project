package org.fdroid.fdroid.views;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.selection.SelectableKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.UriHandler;
import androidx.compose.ui.res.ColorResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.fdroid.fdroid.R;
import org.fdroid.fdroid.UtilsKt;

/* compiled from: CallToActionBanner.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
final class CallToActionBannerKt$CallToActionBanner$1 implements Function3 {
    final /* synthetic */ Function0 $handleDismiss;
    final /* synthetic */ UriHandler $uriHandler;
    final /* synthetic */ String $url;

    CallToActionBannerKt$CallToActionBanner$1(UriHandler uriHandler, String str, Function0 function0) {
        this.$uriHandler = uriHandler;
        this.$url = str;
        this.$handleDismiss = function0;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        invoke((AnimatedVisibilityScope) obj, (Composer) obj2, ((Number) obj3).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(AnimatedVisibilityScope AnimatedVisibility, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(AnimatedVisibility, "$this$AnimatedVisibility");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(308140470, i, -1, "org.fdroid.fdroid.views.CallToActionBanner.<anonymous> (CallToActionBanner.kt:81)");
        }
        final UriHandler uriHandler = this.$uriHandler;
        final String str = this.$url;
        Function0 function0 = this.$handleDismiss;
        Modifier.Companion companion = Modifier.Companion;
        Arrangement arrangement = Arrangement.INSTANCE;
        Arrangement.Horizontal start = arrangement.getStart();
        Alignment.Companion companion2 = Alignment.Companion;
        MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(start, companion2.getTop(), composer, 0);
        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Modifier materializeModifier = ComposedModifierKt.materializeModifier(composer, companion);
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
        Updater.m1044setimpl(m1043constructorimpl, rowMeasurePolicy, companion3.getSetMeasurePolicy());
        Updater.m1044setimpl(m1043constructorimpl, currentCompositionLocalMap, companion3.getSetResolvedCompositionLocals());
        Function2 setCompositeKeyHash = companion3.getSetCompositeKeyHash();
        if (m1043constructorimpl.getInserting() || !Intrinsics.areEqual(m1043constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
            m1043constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
            m1043constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
        }
        Updater.m1044setimpl(m1043constructorimpl, materializeModifier, companion3.getSetModifier());
        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
        Modifier m100backgroundbw27NRU$default = BackgroundKt.m100backgroundbw27NRU$default(companion, ColorResources_androidKt.colorResource(R.color.call_to_action_banner__background, composer, 0), null, 2, null);
        MeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(Arrangement.Absolute.INSTANCE.m250spacedBy0680j_4(Dp.m2424constructorimpl(0)), companion2.getCenterVertically(), composer, 54);
        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap2 = composer.getCurrentCompositionLocalMap();
        Modifier materializeModifier2 = ComposedModifierKt.materializeModifier(composer, m100backgroundbw27NRU$default);
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
        Updater.m1044setimpl(m1043constructorimpl2, rowMeasurePolicy2, companion3.getSetMeasurePolicy());
        Updater.m1044setimpl(m1043constructorimpl2, currentCompositionLocalMap2, companion3.getSetResolvedCompositionLocals());
        Function2 setCompositeKeyHash2 = companion3.getSetCompositeKeyHash();
        if (m1043constructorimpl2.getInserting() || !Intrinsics.areEqual(m1043constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
            m1043constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
            m1043constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
        }
        Updater.m1044setimpl(m1043constructorimpl2, materializeModifier2, companion3.getSetModifier());
        Alignment.Horizontal centerHorizontally = companion2.getCenterHorizontally();
        Modifier weight$default = RowScope.CC.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null);
        composer.startReplaceGroup(891452609);
        boolean changedInstance = composer.changedInstance(uriHandler) | composer.changed(str);
        Object rememberedValue = composer.rememberedValue();
        if (changedInstance || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new Function0() { // from class: org.fdroid.fdroid.views.CallToActionBannerKt$CallToActionBanner$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit invoke$lambda$4$lambda$3$lambda$1$lambda$0;
                    invoke$lambda$4$lambda$3$lambda$1$lambda$0 = CallToActionBannerKt$CallToActionBanner$1.invoke$lambda$4$lambda$3$lambda$1$lambda$0(UriHandler.this, str);
                    return invoke$lambda$4$lambda$3$lambda$1$lambda$0;
                }
            };
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceGroup();
        float f = 6;
        Modifier m269paddingqDBjuR0$default = PaddingKt.m269paddingqDBjuR0$default(SelectableKt.m365selectableXHw0xAI$default(weight$default, false, false, null, (Function0) rememberedValue, 6, null), Dp.m2424constructorimpl(f), Dp.m2424constructorimpl(f), 0.0f, Dp.m2424constructorimpl(f), 4, null);
        MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement.getTop(), centerHorizontally, composer, 48);
        int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap3 = composer.getCurrentCompositionLocalMap();
        Modifier materializeModifier3 = ComposedModifierKt.materializeModifier(composer, m269paddingqDBjuR0$default);
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
        Updater.m1044setimpl(m1043constructorimpl3, columnMeasurePolicy, companion3.getSetMeasurePolicy());
        Updater.m1044setimpl(m1043constructorimpl3, currentCompositionLocalMap3, companion3.getSetResolvedCompositionLocals());
        Function2 setCompositeKeyHash3 = companion3.getSetCompositeKeyHash();
        if (m1043constructorimpl3.getInserting() || !Intrinsics.areEqual(m1043constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
            m1043constructorimpl3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash3));
            m1043constructorimpl3.apply(Integer.valueOf(currentCompositeKeyHash3), setCompositeKeyHash3);
        }
        Updater.m1044setimpl(m1043constructorimpl3, materializeModifier3, companion3.getSetModifier());
        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
        String stringResource = StringResources_androidKt.stringResource(R.string.call_to_action_keepandroidopen, composer, 0);
        TextAlign.Companion companion4 = TextAlign.Companion;
        TextKt.m780Text4IGK_g(stringResource, null, ColorResources_androidKt.colorResource(R.color.call_to_action_banner__text, composer, 0), 0L, null, null, null, 0L, null, TextAlign.m2341boximpl(companion4.m2348getCentere0LSkKk()), 0L, 0, false, 0, 0, null, new TextStyle(0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, 0, 0, TextUnitKt.getEm(1), null, null, null, 0, 0, null, 16646143, null), composer, 0, 1572864, 65018);
        TextKt.m780Text4IGK_g("https://keepandroidopen.org", null, ColorResources_androidKt.colorResource(R.color.call_to_action_banner__link, composer, 0), 0L, null, null, null, 0L, TextDecoration.Companion.getUnderline(), TextAlign.m2341boximpl(companion4.m2348getCentere0LSkKk()), 0L, 0, false, 0, 0, null, new TextStyle(0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, 0, 0, 0L, null, null, null, 0, 0, null, 16777215, null), composer, 100663302, 1572864, 64762);
        composer.endNode();
        IconButtonKt.IconButton(function0, null, false, null, null, ComposableSingletons$CallToActionBannerKt.INSTANCE.m3120getLambda1$app_fullRelease(), composer, 196608, 30);
        composer.endNode();
        composer.endNode();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$4$lambda$3$lambda$1$lambda$0(UriHandler uriHandler, String str) {
        UtilsKt.openUriSafe(uriHandler, str);
        return Unit.INSTANCE;
    }
}
