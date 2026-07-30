package com.bumptech.glide.integration.compose;

import android.content.Context;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.unit.Constraints;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.integration.compose.Transition;
import com.bumptech.glide.request.BaseRequestOptions;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GlideImage.kt */
/* loaded from: classes.dex */
public abstract class GlideImageKt {
    public static final void GlideImage(final Object obj, final String str, Modifier modifier, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, Placeholder placeholder, Placeholder placeholder2, Transition.Factory factory, Function1 function1, Composer composer, final int i, final int i2, final int i3) {
        Modifier glideNode;
        Composer startRestartGroup = composer.startRestartGroup(1955430130);
        final Modifier modifier2 = (i3 & 4) != 0 ? Modifier.Companion : modifier;
        final Alignment center = (i3 & 8) != 0 ? Alignment.Companion.getCenter() : alignment;
        final ContentScale fit = (i3 & 16) != 0 ? ContentScale.Companion.getFit() : contentScale;
        final float f2 = (i3 & 32) != 0 ? 1.0f : f;
        ColorFilter colorFilter2 = (i3 & 64) != 0 ? null : colorFilter;
        Placeholder placeholder3 = (i3 & 128) != 0 ? null : placeholder;
        Placeholder placeholder4 = (i3 & 256) != 0 ? null : placeholder2;
        Transition.Factory factory2 = (i3 & 512) != 0 ? null : factory;
        Function1 function12 = (i3 & 1024) != 0 ? new Function1() { // from class: com.bumptech.glide.integration.compose.GlideImageKt$GlideImage$1
            @Override // kotlin.jvm.functions.Function1
            public final RequestBuilder invoke(RequestBuilder it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return it;
            }
        } : function1;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1955430130, i, i2, "com.bumptech.glide.integration.compose.GlideImage (GlideImage.kt:84)");
        }
        startRestartGroup.startReplaceableGroup(482162156);
        Context context = (Context) startRestartGroup.consume(AndroidCompositionLocals_androidKt.getLocalContext());
        startRestartGroup.startReplaceableGroup(1157296644);
        boolean changed = startRestartGroup.changed(context);
        Object rememberedValue = startRestartGroup.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = Glide.with(context);
            Intrinsics.checkNotNullExpressionValue(rememberedValue, "with(it)");
            startRestartGroup.updateRememberedValue(rememberedValue);
        }
        startRestartGroup.endReplaceableGroup();
        RequestManager requestManager = (RequestManager) rememberedValue;
        startRestartGroup.endReplaceableGroup();
        Intrinsics.checkNotNullExpressionValue(requestManager, "LocalContext.current.let…(it) { Glide.with(it) } }");
        RequestBuilder rememberRequestBuilderWithDefaults = rememberRequestBuilderWithDefaults(obj, requestManager, function12, fit, startRestartGroup, ((i2 << 6) & 896) | 72 | ((i >> 3) & 7168));
        startRestartGroup.startReplaceableGroup(482162656);
        ((Boolean) startRestartGroup.consume(InspectionModeKt.getLocalInspectionMode())).booleanValue();
        startRestartGroup.endReplaceableGroup();
        startRestartGroup.startReplaceableGroup(482163560);
        glideNode = GlideModifierKt.glideNode(modifier2, rememberRequestBuilderWithDefaults, (r23 & 2) != 0 ? null : str, (r23 & 4) != 0 ? null : center, (r23 & 8) != 0 ? null : fit, (r23 & 16) != 0 ? null : Float.valueOf(f2), (r23 & 32) != 0 ? null : colorFilter2, (r23 & 64) != 0 ? null : factory2, (r23 & 128) != 0 ? null : null, (r23 & 256) != 0 ? null : null, (r23 & 512) != 0 ? null : null, (r23 & 1024) == 0 ? null : null);
        SimpleLayout(glideNode, startRestartGroup, 0);
        startRestartGroup.endReplaceableGroup();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        final ColorFilter colorFilter3 = colorFilter2;
        final Placeholder placeholder5 = placeholder3;
        final Placeholder placeholder6 = placeholder4;
        final Transition.Factory factory3 = factory2;
        final Function1 function13 = function12;
        endRestartGroup.updateScope(new Function2(obj, str, modifier2, center, fit, f2, colorFilter3, placeholder5, placeholder6, factory3, function13, i, i2, i3) { // from class: com.bumptech.glide.integration.compose.GlideImageKt$GlideImage$5
            final /* synthetic */ int $$changed;
            final /* synthetic */ int $$changed1;
            final /* synthetic */ int $$default;
            final /* synthetic */ Alignment $alignment;
            final /* synthetic */ float $alpha;
            final /* synthetic */ ColorFilter $colorFilter;
            final /* synthetic */ String $contentDescription;
            final /* synthetic */ ContentScale $contentScale;
            final /* synthetic */ Object $model;
            final /* synthetic */ Modifier $modifier;
            final /* synthetic */ Function1 $requestBuilderTransform;
            final /* synthetic */ Transition.Factory $transition;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
                this.$transition = factory3;
                this.$requestBuilderTransform = function13;
                this.$$changed = i;
                this.$$changed1 = i2;
                this.$$default = i3;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                invoke((Composer) obj2, ((Number) obj3).intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i4) {
                GlideImageKt.GlideImage(this.$model, this.$contentDescription, this.$modifier, this.$alignment, this.$contentScale, this.$alpha, this.$colorFilter, null, null, this.$transition, this.$requestBuilderTransform, composer2, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1), RecomposeScopeImplKt.updateChangedFlags(this.$$changed1), this.$$default);
            }
        });
    }

    private static final RequestBuilder rememberRequestBuilderWithDefaults(Object obj, RequestManager requestManager, Function1 function1, ContentScale contentScale, Composer composer, int i) {
        composer.startReplaceableGroup(1761561633);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1761561633, i, -1, "com.bumptech.glide.integration.compose.rememberRequestBuilderWithDefaults (GlideImage.kt:429)");
        }
        Object[] objArr = {obj, requestManager, function1, contentScale};
        composer.startReplaceableGroup(-568225417);
        boolean z = false;
        for (int i2 = 0; i2 < 4; i2++) {
            z |= composer.changed(objArr[i2]);
        }
        Object rememberedValue = composer.rememberedValue();
        if (z || rememberedValue == Composer.Companion.getEmpty()) {
            RequestBuilder m3068load = requestManager.m3068load(obj);
            Intrinsics.checkNotNullExpressionValue(m3068load, "requestManager.load(model)");
            rememberedValue = (RequestBuilder) function1.invoke(contentScaleTransform(m3068load, contentScale));
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        RequestBuilder requestBuilder = (RequestBuilder) rememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return requestBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RequestBuilder contentScaleTransform(RequestBuilder requestBuilder, ContentScale contentScale) {
        ContentScale.Companion companion = ContentScale.Companion;
        if (Intrinsics.areEqual(contentScale, companion.getCrop())) {
            BaseRequestOptions optionalCenterCrop = requestBuilder.optionalCenterCrop();
            Intrinsics.checkNotNullExpressionValue(optionalCenterCrop, "{\n      optionalCenterCrop()\n    }");
            return (RequestBuilder) optionalCenterCrop;
        }
        if (!(Intrinsics.areEqual(contentScale, companion.getInside()) ? true : Intrinsics.areEqual(contentScale, companion.getFit()))) {
            return requestBuilder;
        }
        BaseRequestOptions optionalCenterInside = requestBuilder.optionalCenterInside();
        Intrinsics.checkNotNullExpressionValue(optionalCenterInside, "{\n      // Outside compo…ionalCenterInside()\n    }");
        return (RequestBuilder) optionalCenterInside;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void SimpleLayout(final Modifier modifier, Composer composer, final int i) {
        int i2;
        Composer startRestartGroup = composer.startRestartGroup(-1856253139);
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i2 & 11) != 2 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1856253139, i2, -1, "com.bumptech.glide.integration.compose.SimpleLayout (GlideImage.kt:465)");
            }
            GlideImageKt$SimpleLayout$1 glideImageKt$SimpleLayout$1 = new MeasurePolicy() { // from class: com.bumptech.glide.integration.compose.GlideImageKt$SimpleLayout$1
                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i3) {
                    return MeasurePolicy.CC.$default$maxIntrinsicHeight(this, intrinsicMeasureScope, list, i3);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i3) {
                    return MeasurePolicy.CC.$default$maxIntrinsicWidth(this, intrinsicMeasureScope, list, i3);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i3) {
                    return MeasurePolicy.CC.$default$minIntrinsicHeight(this, intrinsicMeasureScope, list, i3);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i3) {
                    return MeasurePolicy.CC.$default$minIntrinsicWidth(this, intrinsicMeasureScope, list, i3);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                /* renamed from: measure-3p2s80s */
                public final MeasureResult mo21measure3p2s80s(MeasureScope Layout, List list, long j) {
                    Intrinsics.checkNotNullParameter(Layout, "$this$Layout");
                    Intrinsics.checkNotNullParameter(list, "<anonymous parameter 0>");
                    return MeasureScope.CC.layout$default(Layout, Constraints.m2399getMinWidthimpl(j), Constraints.m2398getMinHeightimpl(j), null, new Function1() { // from class: com.bumptech.glide.integration.compose.GlideImageKt$SimpleLayout$1$measure$1
                        public final void invoke(Placeable.PlacementScope layout) {
                            Intrinsics.checkNotNullParameter(layout, "$this$layout");
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            invoke((Placeable.PlacementScope) obj);
                            return Unit.INSTANCE;
                        }
                    }, 4, null);
                }
            };
            startRestartGroup.startReplaceableGroup(544976794);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
            Modifier materializeModifier = ComposedModifierKt.materializeModifier(startRestartGroup, modifier);
            CompositionLocalMap currentCompositionLocalMap = startRestartGroup.getCurrentCompositionLocalMap();
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            final Function0 constructor = companion.getConstructor();
            startRestartGroup.startReplaceableGroup(1405779621);
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(new Function0() { // from class: com.bumptech.glide.integration.compose.GlideImageKt$SimpleLayout$$inlined$Layout$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Function0.this.invoke();
                    }
                });
            } else {
                startRestartGroup.useNode();
            }
            Composer m1043constructorimpl = Updater.m1043constructorimpl(startRestartGroup);
            Updater.m1044setimpl(m1043constructorimpl, glideImageKt$SimpleLayout$1, companion.getSetMeasurePolicy());
            Updater.m1044setimpl(m1043constructorimpl, currentCompositionLocalMap, companion.getSetResolvedCompositionLocals());
            Updater.m1044setimpl(m1043constructorimpl, materializeModifier, companion.getSetModifier());
            Function2 setCompositeKeyHash = companion.getSetCompositeKeyHash();
            if (m1043constructorimpl.getInserting() || !Intrinsics.areEqual(m1043constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                m1043constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                m1043constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2() { // from class: com.bumptech.glide.integration.compose.GlideImageKt$SimpleLayout$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((Composer) obj, ((Number) obj2).intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i3) {
                GlideImageKt.SimpleLayout(Modifier.this, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }
}
