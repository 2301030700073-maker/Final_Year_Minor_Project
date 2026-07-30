package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.IntrinsicKt;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* compiled from: Menu.kt */
/* loaded from: classes.dex */
public abstract class MenuKt {
    private static final float MenuListItemContainerHeight;
    private static final float MenuVerticalMargin;
    private static final float DropdownMenuItemHorizontalPadding = Dp.m2424constructorimpl(12);
    private static final float DropdownMenuVerticalPadding = Dp.m2424constructorimpl(8);
    private static final float DropdownMenuItemDefaultMinWidth = Dp.m2424constructorimpl(112);
    private static final float DropdownMenuItemDefaultMaxWidth = Dp.m2424constructorimpl(280);

    /* JADX INFO: Access modifiers changed from: private */
    public static final float DropdownMenuContent_Qj0Zi0g$lambda$1(State state) {
        return ((Number) state.getValue()).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float DropdownMenuContent_Qj0Zi0g$lambda$3(State state) {
        return ((Number) state.getValue()).floatValue();
    }

    /* renamed from: DropdownMenuContent-Qj0Zi0g, reason: not valid java name */
    public static final void m707DropdownMenuContentQj0Zi0g(final Modifier modifier, final MutableTransitionState mutableTransitionState, final MutableState mutableState, final ScrollState scrollState, final Shape shape, final long j, final float f, final float f2, final BorderStroke borderStroke, final Function3 function3, Composer composer, final int i) {
        int i2;
        int i3;
        Composer startRestartGroup = composer.startRestartGroup(-151448888);
        if ((i & 6) == 0) {
            i2 = (startRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? startRestartGroup.changed(mutableTransitionState) : startRestartGroup.changedInstance(mutableTransitionState) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= startRestartGroup.changed(mutableState) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= startRestartGroup.changed(scrollState) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= startRestartGroup.changed(shape) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= startRestartGroup.changed(j) ? PKIFailureInfo.unsupportedVersion : PKIFailureInfo.notAuthorized;
        }
        if ((1572864 & i) == 0) {
            i2 |= startRestartGroup.changed(f) ? PKIFailureInfo.badCertTemplate : PKIFailureInfo.signerNotTrusted;
        }
        if ((i & 12582912) == 0) {
            i2 |= startRestartGroup.changed(f2) ? 8388608 : 4194304;
        }
        if ((i & 100663296) == 0) {
            i2 |= startRestartGroup.changed(borderStroke) ? 67108864 : 33554432;
        }
        if ((i & 805306368) == 0) {
            i2 |= startRestartGroup.changedInstance(function3) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i2 & 306783379) != 306783378 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-151448888, i2, -1, "androidx.compose.material3.DropdownMenuContent (Menu.kt:374)");
            }
            Transition updateTransition = TransitionKt.updateTransition(mutableTransitionState, "DropDownMenu", startRestartGroup, MutableTransitionState.$stable | 48 | ((i2 >> 3) & 14), 0);
            MenuKt$DropdownMenuContent$scale$2 menuKt$DropdownMenuContent$scale$2 = new Function3() { // from class: androidx.compose.material3.MenuKt$DropdownMenuContent$scale$2
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                    return invoke((Transition.Segment) obj, (Composer) obj2, ((Number) obj3).intValue());
                }

                public final FiniteAnimationSpec invoke(Transition.Segment segment, Composer composer2, int i4) {
                    TweenSpec tween$default;
                    composer2.startReplaceGroup(1033023423);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1033023423, i4, -1, "androidx.compose.material3.DropdownMenuContent.<anonymous> (Menu.kt:381)");
                    }
                    if (segment.isTransitioningTo(Boolean.FALSE, Boolean.TRUE)) {
                        tween$default = AnimationSpecKt.tween$default(120, 0, EasingKt.getLinearOutSlowInEasing(), 2, null);
                    } else {
                        tween$default = AnimationSpecKt.tween$default(1, 74, null, 4, null);
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    composer2.endReplaceGroup();
                    return tween$default;
                }
            };
            FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
            TwoWayConverter vectorConverter = VectorConvertersKt.getVectorConverter(floatCompanionObject);
            boolean booleanValue = ((Boolean) updateTransition.getCurrentState()).booleanValue();
            startRestartGroup.startReplaceGroup(2139028452);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2139028452, 0, -1, "androidx.compose.material3.DropdownMenuContent.<anonymous> (Menu.kt:390)");
            }
            float f3 = booleanValue ? 1.0f : 0.8f;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            startRestartGroup.endReplaceGroup();
            Float valueOf = Float.valueOf(f3);
            boolean booleanValue2 = ((Boolean) updateTransition.getTargetState()).booleanValue();
            startRestartGroup.startReplaceGroup(2139028452);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2139028452, 0, -1, "androidx.compose.material3.DropdownMenuContent.<anonymous> (Menu.kt:390)");
            }
            float f4 = booleanValue2 ? 1.0f : 0.8f;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            startRestartGroup.endReplaceGroup();
            final State createTransitionAnimation = TransitionKt.createTransitionAnimation(updateTransition, valueOf, Float.valueOf(f4), (FiniteAnimationSpec) menuKt$DropdownMenuContent$scale$2.invoke((Object) updateTransition.getSegment(), (Object) startRestartGroup, (Object) 0), vectorConverter, "FloatAnimation", startRestartGroup, 0);
            MenuKt$DropdownMenuContent$alpha$2 menuKt$DropdownMenuContent$alpha$2 = new Function3() { // from class: androidx.compose.material3.MenuKt$DropdownMenuContent$alpha$2
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                    return invoke((Transition.Segment) obj, (Composer) obj2, ((Number) obj3).intValue());
                }

                public final FiniteAnimationSpec invoke(Transition.Segment segment, Composer composer2, int i4) {
                    TweenSpec tween$default;
                    composer2.startReplaceGroup(-1355418157);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1355418157, i4, -1, "androidx.compose.material3.DropdownMenuContent.<anonymous> (Menu.kt:396)");
                    }
                    if (segment.isTransitioningTo(Boolean.FALSE, Boolean.TRUE)) {
                        tween$default = AnimationSpecKt.tween$default(30, 0, null, 6, null);
                    } else {
                        tween$default = AnimationSpecKt.tween$default(75, 0, null, 6, null);
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    composer2.endReplaceGroup();
                    return tween$default;
                }
            };
            TwoWayConverter vectorConverter2 = VectorConvertersKt.getVectorConverter(floatCompanionObject);
            boolean booleanValue3 = ((Boolean) updateTransition.getCurrentState()).booleanValue();
            startRestartGroup.startReplaceGroup(-249413128);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-249413128, 0, -1, "androidx.compose.material3.DropdownMenuContent.<anonymous> (Menu.kt:405)");
            }
            float f5 = booleanValue3 ? 1.0f : 0.0f;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            startRestartGroup.endReplaceGroup();
            Float valueOf2 = Float.valueOf(f5);
            boolean booleanValue4 = ((Boolean) updateTransition.getTargetState()).booleanValue();
            startRestartGroup.startReplaceGroup(-249413128);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-249413128, 0, -1, "androidx.compose.material3.DropdownMenuContent.<anonymous> (Menu.kt:405)");
            }
            float f6 = booleanValue4 ? 1.0f : 0.0f;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            startRestartGroup.endReplaceGroup();
            final State createTransitionAnimation2 = TransitionKt.createTransitionAnimation(updateTransition, valueOf2, Float.valueOf(f6), (FiniteAnimationSpec) menuKt$DropdownMenuContent$alpha$2.invoke((Object) updateTransition.getSegment(), (Object) startRestartGroup, (Object) 0), vectorConverter2, "FloatAnimation", startRestartGroup, 0);
            final boolean booleanValue5 = ((Boolean) startRestartGroup.consume(InspectionModeKt.getLocalInspectionMode())).booleanValue();
            Modifier.Companion companion = Modifier.Companion;
            boolean changed = startRestartGroup.changed(booleanValue5) | startRestartGroup.changed(createTransitionAnimation) | ((i2 & 112) == 32 || ((i2 & 64) != 0 && startRestartGroup.changedInstance(mutableTransitionState))) | startRestartGroup.changed(createTransitionAnimation2) | ((i2 & 896) == 256);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                i3 = i2;
                Function1 function1 = new Function1() { // from class: androidx.compose.material3.MenuKt$DropdownMenuContent$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                        invoke((GraphicsLayerScope) obj);
                        return Unit.INSTANCE;
                    }

                    public final void invoke(GraphicsLayerScope graphicsLayerScope) {
                        float f7;
                        float f8 = 0.8f;
                        float f9 = 1.0f;
                        if (!booleanValue5) {
                            f7 = MenuKt.DropdownMenuContent_Qj0Zi0g$lambda$1(createTransitionAnimation);
                        } else {
                            f7 = ((Boolean) mutableTransitionState.getTargetState()).booleanValue() ? 1.0f : 0.8f;
                        }
                        graphicsLayerScope.setScaleX(f7);
                        if (!booleanValue5) {
                            f8 = MenuKt.DropdownMenuContent_Qj0Zi0g$lambda$1(createTransitionAnimation);
                        } else if (((Boolean) mutableTransitionState.getTargetState()).booleanValue()) {
                            f8 = 1.0f;
                        }
                        graphicsLayerScope.setScaleY(f8);
                        if (!booleanValue5) {
                            f9 = MenuKt.DropdownMenuContent_Qj0Zi0g$lambda$3(createTransitionAnimation2);
                        } else if (!((Boolean) mutableTransitionState.getTargetState()).booleanValue()) {
                            f9 = 0.0f;
                        }
                        graphicsLayerScope.setAlpha(f9);
                        graphicsLayerScope.mo1347setTransformOrigin__ExYCQ(((TransformOrigin) mutableState.getValue()).m1441unboximpl());
                    }
                };
                startRestartGroup.updateRememberedValue(function1);
                rememberedValue = function1;
            } else {
                i3 = i2;
            }
            int i4 = i3 >> 9;
            int i5 = i3 >> 6;
            SurfaceKt.m741SurfaceT9BRK9s(GraphicsLayerModifierKt.graphicsLayer(companion, (Function1) rememberedValue), shape, j, 0L, f, f2, borderStroke, ComposableLambdaKt.rememberComposableLambda(1573559053, true, new Function2() { // from class: androidx.compose.material3.MenuKt$DropdownMenuContent$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i6) {
                    if ((i6 & 3) != 2 || !composer2.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1573559053, i6, -1, "androidx.compose.material3.DropdownMenuContent.<anonymous> (Menu.kt:429)");
                        }
                        Modifier verticalScroll$default = ScrollKt.verticalScroll$default(IntrinsicKt.width(PaddingKt.m267paddingVpY3zN4$default(Modifier.this, 0.0f, MenuKt.getDropdownMenuVerticalPadding(), 1, null), IntrinsicSize.Max), scrollState, false, null, false, 14, null);
                        Function3 function32 = function3;
                        MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composer2, 0);
                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                        CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                        Modifier materializeModifier = ComposedModifierKt.materializeModifier(composer2, verticalScroll$default);
                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                        Function0 constructor = companion2.getConstructor();
                        if (!(composer2.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composer2.startReusableNode();
                        if (composer2.getInserting()) {
                            composer2.createNode(constructor);
                        } else {
                            composer2.useNode();
                        }
                        Composer m1043constructorimpl = Updater.m1043constructorimpl(composer2);
                        Updater.m1044setimpl(m1043constructorimpl, columnMeasurePolicy, companion2.getSetMeasurePolicy());
                        Updater.m1044setimpl(m1043constructorimpl, currentCompositionLocalMap, companion2.getSetResolvedCompositionLocals());
                        Function2 setCompositeKeyHash = companion2.getSetCompositeKeyHash();
                        if (m1043constructorimpl.getInserting() || !Intrinsics.areEqual(m1043constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            m1043constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                            m1043constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                        }
                        Updater.m1044setimpl(m1043constructorimpl, materializeModifier, companion2.getSetModifier());
                        function32.invoke(ColumnScopeInstance.INSTANCE, composer2, 6);
                        composer2.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer2.skipToGroupEnd();
                }
            }, startRestartGroup, 54), startRestartGroup, (i4 & 896) | (i4 & 112) | 12582912 | (57344 & i5) | (458752 & i5) | (i5 & 3670016), 8);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.material3.MenuKt$DropdownMenuContent$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i6) {
                    MenuKt.m707DropdownMenuContentQj0Zi0g(Modifier.this, mutableTransitionState, mutableState, scrollState, shape, j, f, f2, borderStroke, function3, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
                }
            });
        }
    }

    public static final void DropdownMenuItemContent(final Function2 function2, final Function0 function0, final Modifier modifier, final Function2 function22, final Function2 function23, final boolean z, final MenuItemColors menuItemColors, final PaddingValues paddingValues, final MutableInteractionSource mutableInteractionSource, Composer composer, final int i) {
        int i2;
        Composer startRestartGroup = composer.startRestartGroup(-1564716777);
        if ((i & 6) == 0) {
            i2 = (startRestartGroup.changedInstance(function2) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= startRestartGroup.changedInstance(function0) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= startRestartGroup.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= startRestartGroup.changedInstance(function22) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= startRestartGroup.changedInstance(function23) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= startRestartGroup.changed(z) ? PKIFailureInfo.unsupportedVersion : PKIFailureInfo.notAuthorized;
        }
        if ((1572864 & i) == 0) {
            i2 |= startRestartGroup.changed(menuItemColors) ? PKIFailureInfo.badCertTemplate : PKIFailureInfo.signerNotTrusted;
        }
        if ((12582912 & i) == 0) {
            i2 |= startRestartGroup.changed(paddingValues) ? 8388608 : 4194304;
        }
        if ((100663296 & i) == 0) {
            i2 |= startRestartGroup.changed(mutableInteractionSource) ? 67108864 : 33554432;
        }
        if ((38347923 & i2) != 38347922 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1564716777, i2, -1, "androidx.compose.material3.DropdownMenuItemContent (Menu.kt:451)");
            }
            Modifier padding = PaddingKt.padding(SizeKt.m288sizeInqDBjuR0$default(SizeKt.fillMaxWidth$default(ClickableKt.m117clickableO2vRcR0$default(modifier, mutableInteractionSource, RippleKt.m736rippleOrFallbackImplementation9IZ8Weo(true, 0.0f, 0L, startRestartGroup, 6, 6), z, null, null, function0, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, MenuListItemContainerHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues);
            MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getCenterVertically(), startRestartGroup, 48);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = startRestartGroup.getCurrentCompositionLocalMap();
            Modifier materializeModifier = ComposedModifierKt.materializeModifier(startRestartGroup, padding);
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            Function0 constructor = companion.getConstructor();
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor);
            } else {
                startRestartGroup.useNode();
            }
            Composer m1043constructorimpl = Updater.m1043constructorimpl(startRestartGroup);
            Updater.m1044setimpl(m1043constructorimpl, rowMeasurePolicy, companion.getSetMeasurePolicy());
            Updater.m1044setimpl(m1043constructorimpl, currentCompositionLocalMap, companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash = companion.getSetCompositeKeyHash();
            if (m1043constructorimpl.getInserting() || !Intrinsics.areEqual(m1043constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                m1043constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                m1043constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            Updater.m1044setimpl(m1043constructorimpl, materializeModifier, companion.getSetModifier());
            final RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            TextKt.ProvideTextStyle(MaterialTheme.INSTANCE.getTypography(startRestartGroup, 6).getLabelLarge(), ComposableLambdaKt.rememberComposableLambda(1065051884, true, new Function2() { // from class: androidx.compose.material3.MenuKt$DropdownMenuItemContent$1$1
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
                    if ((i3 & 3) != 2 || !composer2.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1065051884, i3, -1, "androidx.compose.material3.DropdownMenuItemContent.<anonymous>.<anonymous> (Menu.kt:473)");
                        }
                        composer2.startReplaceGroup(1264683960);
                        if (Function2.this != null) {
                            ProvidedValue provides = ContentColorKt.getLocalContentColor().provides(Color.m1298boximpl(menuItemColors.m704leadingIconColorvNxB06k$material3_release(z)));
                            final Function2 function24 = Function2.this;
                            CompositionLocalKt.CompositionLocalProvider(provides, ComposableLambdaKt.rememberComposableLambda(2035552199, true, new Function2() { // from class: androidx.compose.material3.MenuKt$DropdownMenuItemContent$1$1.1
                                {
                                    super(2);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                    invoke((Composer) obj, ((Number) obj2).intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(Composer composer3, int i4) {
                                    if ((i4 & 3) != 2 || !composer3.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(2035552199, i4, -1, "androidx.compose.material3.DropdownMenuItemContent.<anonymous>.<anonymous>.<anonymous> (Menu.kt:477)");
                                        }
                                        Modifier m278defaultMinSizeVpY3zN4$default = SizeKt.m278defaultMinSizeVpY3zN4$default(Modifier.Companion, ListTokens.INSTANCE.m902getListItemLeadingIconSizeD9Ej5fM(), 0.0f, 2, null);
                                        Function2 function25 = Function2.this;
                                        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                                        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                        Modifier materializeModifier2 = ComposedModifierKt.materializeModifier(composer3, m278defaultMinSizeVpY3zN4$default);
                                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                        Function0 constructor2 = companion2.getConstructor();
                                        if (!(composer3.getApplier() instanceof Applier)) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor2);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer m1043constructorimpl2 = Updater.m1043constructorimpl(composer3);
                                        Updater.m1044setimpl(m1043constructorimpl2, maybeCachedBoxMeasurePolicy, companion2.getSetMeasurePolicy());
                                        Updater.m1044setimpl(m1043constructorimpl2, currentCompositionLocalMap2, companion2.getSetResolvedCompositionLocals());
                                        Function2 setCompositeKeyHash2 = companion2.getSetCompositeKeyHash();
                                        if (m1043constructorimpl2.getInserting() || !Intrinsics.areEqual(m1043constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                            m1043constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                                            m1043constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                                        }
                                        Updater.m1044setimpl(m1043constructorimpl2, materializeModifier2, companion2.getSetModifier());
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                        function25.invoke(composer3, 0);
                                        composer3.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    composer3.skipToGroupEnd();
                                }
                            }, composer2, 54), composer2, ProvidedValue.$stable | 48);
                        }
                        composer2.endReplaceGroup();
                        ProvidedValue provides2 = ContentColorKt.getLocalContentColor().provides(Color.m1298boximpl(menuItemColors.m705textColorvNxB06k$material3_release(z)));
                        final RowScope rowScope = rowScopeInstance;
                        final Function2 function25 = Function2.this;
                        final Function2 function26 = function23;
                        final Function2 function27 = function2;
                        ComposableLambda rememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1728894036, true, new Function2() { // from class: androidx.compose.material3.MenuKt$DropdownMenuItemContent$1$1.2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                invoke((Composer) obj, ((Number) obj2).intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Composer composer3, int i4) {
                                float m2424constructorimpl;
                                float m2424constructorimpl2;
                                if ((i4 & 3) != 2 || !composer3.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1728894036, i4, -1, "androidx.compose.material3.DropdownMenuItemContent.<anonymous>.<anonymous>.<anonymous> (Menu.kt:483)");
                                    }
                                    Modifier weight$default = RowScope.CC.weight$default(RowScope.this, Modifier.Companion, 1.0f, false, 2, null);
                                    if (function25 != null) {
                                        m2424constructorimpl = MenuKt.DropdownMenuItemHorizontalPadding;
                                    } else {
                                        m2424constructorimpl = Dp.m2424constructorimpl(0);
                                    }
                                    float f = m2424constructorimpl;
                                    if (function26 != null) {
                                        m2424constructorimpl2 = MenuKt.DropdownMenuItemHorizontalPadding;
                                    } else {
                                        m2424constructorimpl2 = Dp.m2424constructorimpl(0);
                                    }
                                    Modifier m269paddingqDBjuR0$default = PaddingKt.m269paddingqDBjuR0$default(weight$default, f, 0.0f, m2424constructorimpl2, 0.0f, 10, null);
                                    Function2 function28 = function27;
                                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                                    int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                    Modifier materializeModifier2 = ComposedModifierKt.materializeModifier(composer3, m269paddingqDBjuR0$default);
                                    ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                    Function0 constructor2 = companion2.getConstructor();
                                    if (!(composer3.getApplier() instanceof Applier)) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor2);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer m1043constructorimpl2 = Updater.m1043constructorimpl(composer3);
                                    Updater.m1044setimpl(m1043constructorimpl2, maybeCachedBoxMeasurePolicy, companion2.getSetMeasurePolicy());
                                    Updater.m1044setimpl(m1043constructorimpl2, currentCompositionLocalMap2, companion2.getSetResolvedCompositionLocals());
                                    Function2 setCompositeKeyHash2 = companion2.getSetCompositeKeyHash();
                                    if (m1043constructorimpl2.getInserting() || !Intrinsics.areEqual(m1043constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                        m1043constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                                        m1043constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                                    }
                                    Updater.m1044setimpl(m1043constructorimpl2, materializeModifier2, companion2.getSetModifier());
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                    function28.invoke(composer3, 0);
                                    composer3.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                composer3.skipToGroupEnd();
                            }
                        }, composer2, 54);
                        int i4 = ProvidedValue.$stable;
                        CompositionLocalKt.CompositionLocalProvider(provides2, rememberComposableLambda, composer2, i4 | 48);
                        if (function23 != null) {
                            ProvidedValue provides3 = ContentColorKt.getLocalContentColor().provides(Color.m1298boximpl(menuItemColors.m706trailingIconColorvNxB06k$material3_release(z)));
                            final Function2 function28 = function23;
                            CompositionLocalKt.CompositionLocalProvider(provides3, ComposableLambdaKt.rememberComposableLambda(580312062, true, new Function2() { // from class: androidx.compose.material3.MenuKt$DropdownMenuItemContent$1$1.3
                                {
                                    super(2);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                    invoke((Composer) obj, ((Number) obj2).intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(Composer composer3, int i5) {
                                    if ((i5 & 3) != 2 || !composer3.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(580312062, i5, -1, "androidx.compose.material3.DropdownMenuItemContent.<anonymous>.<anonymous>.<anonymous> (Menu.kt:507)");
                                        }
                                        Modifier m278defaultMinSizeVpY3zN4$default = SizeKt.m278defaultMinSizeVpY3zN4$default(Modifier.Companion, ListTokens.INSTANCE.m903getListItemTrailingIconSizeD9Ej5fM(), 0.0f, 2, null);
                                        Function2 function29 = Function2.this;
                                        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                                        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                        Modifier materializeModifier2 = ComposedModifierKt.materializeModifier(composer3, m278defaultMinSizeVpY3zN4$default);
                                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                        Function0 constructor2 = companion2.getConstructor();
                                        if (!(composer3.getApplier() instanceof Applier)) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor2);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer m1043constructorimpl2 = Updater.m1043constructorimpl(composer3);
                                        Updater.m1044setimpl(m1043constructorimpl2, maybeCachedBoxMeasurePolicy, companion2.getSetMeasurePolicy());
                                        Updater.m1044setimpl(m1043constructorimpl2, currentCompositionLocalMap2, companion2.getSetResolvedCompositionLocals());
                                        Function2 setCompositeKeyHash2 = companion2.getSetCompositeKeyHash();
                                        if (m1043constructorimpl2.getInserting() || !Intrinsics.areEqual(m1043constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                            m1043constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                                            m1043constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                                        }
                                        Updater.m1044setimpl(m1043constructorimpl2, materializeModifier2, companion2.getSetModifier());
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                        function29.invoke(composer3, 0);
                                        composer3.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    composer3.skipToGroupEnd();
                                }
                            }, composer2, 54), composer2, i4 | 48);
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer2.skipToGroupEnd();
                }
            }, startRestartGroup, 54), startRestartGroup, 48);
            startRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.material3.MenuKt$DropdownMenuItemContent$2
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
                    MenuKt.DropdownMenuItemContent(Function2.this, function0, modifier, function22, function23, z, menuItemColors, paddingValues, mutableInteractionSource, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long calculateTransformOrigin(androidx.compose.ui.unit.IntRect r5, androidx.compose.ui.unit.IntRect r6) {
        /*
            int r0 = r6.getLeft()
            int r1 = r5.getRight()
            r2 = 1065353216(0x3f800000, float:1.0)
            r3 = 0
            if (r0 < r1) goto Lf
        Ld:
            r0 = r3
            goto L49
        Lf:
            int r0 = r6.getRight()
            int r1 = r5.getLeft()
            if (r0 > r1) goto L1b
            r0 = r2
            goto L49
        L1b:
            int r0 = r6.getWidth()
            if (r0 != 0) goto L22
            goto Ld
        L22:
            int r0 = r5.getLeft()
            int r1 = r6.getLeft()
            int r0 = java.lang.Math.max(r0, r1)
            int r1 = r5.getRight()
            int r4 = r6.getRight()
            int r1 = java.lang.Math.min(r1, r4)
            int r0 = r0 + r1
            int r0 = r0 / 2
            int r1 = r6.getLeft()
            int r0 = r0 - r1
            float r0 = (float) r0
            int r1 = r6.getWidth()
            float r1 = (float) r1
            float r0 = r0 / r1
        L49:
            int r1 = r6.getTop()
            int r4 = r5.getBottom()
            if (r1 < r4) goto L55
        L53:
            r2 = r3
            goto L8f
        L55:
            int r1 = r6.getBottom()
            int r4 = r5.getTop()
            if (r1 > r4) goto L60
            goto L8f
        L60:
            int r1 = r6.getHeight()
            if (r1 != 0) goto L67
            goto L53
        L67:
            int r1 = r5.getTop()
            int r2 = r6.getTop()
            int r1 = java.lang.Math.max(r1, r2)
            int r5 = r5.getBottom()
            int r2 = r6.getBottom()
            int r5 = java.lang.Math.min(r5, r2)
            int r1 = r1 + r5
            int r1 = r1 / 2
            int r5 = r6.getTop()
            int r1 = r1 - r5
            float r5 = (float) r1
            int r6 = r6.getHeight()
            float r6 = (float) r6
            float r2 = r5 / r6
        L8f:
            long r5 = androidx.compose.ui.graphics.TransformOriginKt.TransformOrigin(r0, r2)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.MenuKt.calculateTransformOrigin(androidx.compose.ui.unit.IntRect, androidx.compose.ui.unit.IntRect):long");
    }

    public static final float getMenuVerticalMargin() {
        return MenuVerticalMargin;
    }

    public static final float getDropdownMenuVerticalPadding() {
        return DropdownMenuVerticalPadding;
    }

    static {
        float f = 48;
        MenuVerticalMargin = Dp.m2424constructorimpl(f);
        MenuListItemContainerHeight = Dp.m2424constructorimpl(f);
    }
}
