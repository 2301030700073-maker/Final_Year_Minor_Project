package androidx.compose.material3.pulltorefresh;

import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.unit.Constraints;
import androidx.work.Operation$State;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PullToRefreshDefaults {
    public static final PullToRefreshDefaults INSTANCE = new PullToRefreshDefaults();
    public static final RoundedCornerShape indicatorShape = RoundedCornerShapeKt.CircleShape;
    public static final float PositionalThreshold = 80.0f;
    public static final float IndicatorMaxDistance = 80.0f;
    public static final float Elevation = 3.0f;

    /* renamed from: Indicator-2poqoh4, reason: not valid java name */
    public final void m372Indicator2poqoh4(final PullToRefreshStateImpl pullToRefreshStateImpl, final boolean z, final Modifier modifier, long j, long j2, float f, Composer composer, final int i) {
        final long j3;
        final long j4;
        final float f2;
        int i2;
        float f3;
        final long j5;
        long j6;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1076870256);
        int i3 = i | (gapComposer.changed(pullToRefreshStateImpl) ? 4 : 2) | (gapComposer.changed(z) ? 32 : 16) | (gapComposer.changed(modifier) ? 256 : 128) | 74752;
        if (gapComposer.shouldExecute(i3 & 1, (599187 & i3) != 599186)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ColorSchemeKt.LocalColorScheme;
                long j7 = ((ColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).surfaceContainerHigh;
                long j8 = ((ColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).onSurfaceVariant;
                i2 = i3 & (-523265);
                f3 = IndicatorMaxDistance;
                j5 = j8;
                j6 = j7;
            } else {
                gapComposer.skipToGroupEnd();
                i2 = i3 & (-523265);
                j6 = j;
                j5 = j2;
                f3 = f;
            }
            gapComposer.endDefaults();
            m373IndicatorBox1CPYgEU(pullToRefreshStateImpl, z, modifier, f3, null, j6, 0.0f, Expect_jvmKt.rememberComposableLambda(298232649, new Function3() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshDefaults$Indicator$1
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    int intValue = ((Number) obj3).intValue();
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                        Boolean valueOf = Boolean.valueOf(z);
                        SpringSpec value = CardKt.value(MotionSchemeKeyTokens.DefaultEffects, gapComposer2);
                        final long j9 = j5;
                        final PullToRefreshStateImpl pullToRefreshStateImpl2 = pullToRefreshStateImpl;
                        CrossfadeKt.Crossfade(valueOf, null, value, null, Expect_jvmKt.rememberComposableLambda(-2064098104, new Function3() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshDefaults$Indicator$1.1
                            @Override // kotlin.jvm.functions.Function3
                            public final Object invoke(Object obj4, Object obj5, Object obj6) {
                                boolean booleanValue = ((Boolean) obj4).booleanValue();
                                Composer composer3 = (Composer) obj5;
                                int intValue2 = ((Number) obj6).intValue();
                                if ((intValue2 & 6) == 0) {
                                    intValue2 |= ((GapComposer) composer3).changed(booleanValue) ? 4 : 2;
                                }
                                GapComposer gapComposer3 = (GapComposer) composer3;
                                if (!gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                                    gapComposer3.skipToGroupEnd();
                                } else if (booleanValue) {
                                    gapComposer3.startReplaceGroup(-499784343);
                                    ProgressIndicatorKt.m353CircularProgressIndicator4lLiAd8(SizeKt.m234size3ABfNKs(Modifier.Companion.$$INSTANCE, 16.0f), j9, 2.5f, 0L, 0, 0.0f, gapComposer3, 390, 56);
                                    gapComposer3.end(false);
                                } else {
                                    gapComposer3.startReplaceGroup(-499540745);
                                    final PullToRefreshStateImpl pullToRefreshStateImpl3 = pullToRefreshStateImpl2;
                                    boolean changed = gapComposer3.changed(pullToRefreshStateImpl3);
                                    Object rememberedValue = gapComposer3.rememberedValue();
                                    if (changed || rememberedValue == Composer.Companion.Empty) {
                                        rememberedValue = new FloatProducer() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshDefaults$Indicator$1$1$$ExternalSyntheticLambda0
                                            @Override // androidx.compose.material3.internal.FloatProducer
                                            public final float invoke() {
                                                return ((Number) PullToRefreshStateImpl.this.anim.getValue()).floatValue();
                                            }
                                        };
                                        gapComposer3.updateRememberedValue(rememberedValue);
                                    }
                                    Operation$State.m826CircularArrowProgressIndicatorRPmYEkk((FloatProducer) rememberedValue, j9, gapComposer3, 0);
                                    gapComposer3.end(false);
                                }
                                return Unit.INSTANCE;
                            }
                        }, gapComposer2), gapComposer2, 24576, 10);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, (i2 & 896) | (i2 & 14) | 12582912 | (i2 & 112) | 100663296);
            f2 = f3;
            j3 = j6;
            j4 = j5;
        } else {
            gapComposer.skipToGroupEnd();
            j3 = j;
            j4 = j2;
            f2 = f;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(pullToRefreshStateImpl, z, modifier, j3, j4, f2, i) { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshDefaults$$ExternalSyntheticLambda0
                public final /* synthetic */ PullToRefreshStateImpl f$1;
                public final /* synthetic */ boolean f$2;
                public final /* synthetic */ Modifier f$3;
                public final /* synthetic */ long f$4;
                public final /* synthetic */ long f$5;
                public final /* synthetic */ float f$6;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1572865);
                    PullToRefreshDefaults.this.m372Indicator2poqoh4(this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: IndicatorBox-1CPYgEU, reason: not valid java name */
    public final void m373IndicatorBox1CPYgEU(final PullToRefreshStateImpl pullToRefreshStateImpl, final boolean z, final Modifier modifier, final float f, Shape shape, final long j, float f2, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        final PullToRefreshStateImpl pullToRefreshStateImpl2;
        int i2;
        PullToRefreshDefaults pullToRefreshDefaults;
        final Shape shape2;
        final float f3;
        int i3;
        Shape shape3;
        final Shape shape4;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1341144489);
        if ((i & 6) == 0) {
            pullToRefreshStateImpl2 = pullToRefreshStateImpl;
            i2 = (gapComposer.changed(pullToRefreshStateImpl2) ? 4 : 2) | i;
        } else {
            pullToRefreshStateImpl2 = pullToRefreshStateImpl;
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(z) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(f) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changed(j) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 8388608 : 4194304;
        }
        if ((100663296 & i) == 0) {
            pullToRefreshDefaults = this;
            i2 |= gapComposer.changed(pullToRefreshDefaults) ? 67108864 : 33554432;
        } else {
            pullToRefreshDefaults = this;
        }
        if (gapComposer.shouldExecute(i2 & 1, (38347923 & i2) != 38347922)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                i3 = i2 & (-3727361);
                shape3 = indicatorShape;
                f3 = Elevation;
            } else {
                gapComposer.skipToGroupEnd();
                i3 = i2 & (-3727361);
                shape3 = shape;
                f3 = f2;
            }
            int i4 = i3;
            gapComposer.endDefaults();
            Modifier m234size3ABfNKs = SizeKt.m234size3ABfNKs(modifier, 40.0f);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new TextKt$$ExternalSyntheticLambda1(17);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Modifier drawWithContent = ClipKt.drawWithContent(m234size3ABfNKs, (Function1) rememberedValue);
            boolean changed = ((i4 & 112) == 32) | ((i4 & 14) == 4) | ((((i4 & 7168) ^ 3072) > 2048 && gapComposer.changed(f)) || (i4 & 3072) == 2048) | gapComposer.changed(f3) | gapComposer.changed(shape3);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == neverEqualPolicy) {
                shape4 = shape3;
                Function3 function3 = new Function3() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshDefaults$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        final Placeable mo571measureBRTryo0 = ((Measurable) obj2).mo571measureBRTryo0(((Constraints) obj3).value);
                        int i5 = mo571measureBRTryo0.width;
                        int i6 = mo571measureBRTryo0.height;
                        final PullToRefreshStateImpl pullToRefreshStateImpl3 = PullToRefreshStateImpl.this;
                        final boolean z2 = z;
                        final float f4 = f;
                        final float f5 = f3;
                        final Shape shape5 = shape4;
                        return ((MeasureScope) obj).layout(i5, i6, EmptyMap.INSTANCE, new Function1() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshDefaults$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj4) {
                                final PullToRefreshStateImpl pullToRefreshStateImpl4 = pullToRefreshStateImpl3;
                                final boolean z3 = z2;
                                final float f6 = f4;
                                final float f7 = f5;
                                final Shape shape6 = shape5;
                                Placeable.PlacementScope.placeWithLayer$default((Placeable.PlacementScope) obj4, Placeable.this, 0, 0, new Function1() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshDefaults$$ExternalSyntheticLambda5
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj5) {
                                        ReusableGraphicsLayerScope reusableGraphicsLayerScope = (ReusableGraphicsLayerScope) obj5;
                                        PullToRefreshStateImpl pullToRefreshStateImpl5 = PullToRefreshStateImpl.this;
                                        boolean z4 = ((Number) pullToRefreshStateImpl5.anim.getValue()).floatValue() > 0.0f || z3;
                                        float floatValue = ((Number) pullToRefreshStateImpl5.anim.getValue()).floatValue();
                                        reusableGraphicsLayerScope.getClass();
                                        reusableGraphicsLayerScope.setTranslationY((floatValue * Modifier.CC.m388$default$roundToPx0680j_4(reusableGraphicsLayerScope, f6)) - Float.intBitsToFloat((int) (reusableGraphicsLayerScope.size & 4294967295L)));
                                        reusableGraphicsLayerScope.setShadowElevation(z4 ? reusableGraphicsLayerScope.graphicsDensity.getDensity() * f7 : 0.0f);
                                        reusableGraphicsLayerScope.setShape(shape6);
                                        reusableGraphicsLayerScope.setClip(true);
                                        return Unit.INSTANCE;
                                    }
                                }, 4);
                                return Unit.INSTANCE;
                            }
                        });
                    }
                };
                gapComposer.updateRememberedValue(function3);
                rememberedValue2 = function3;
            } else {
                shape4 = shape3;
            }
            Modifier m132backgroundbw27NRU = ImageKt.m132backgroundbw27NRU(RulerKt.layout(drawWithContent, (Function3) rememberedValue2), j, shape4);
            int i5 = ((i4 >> 12) & 7168) | 48;
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m132backgroundbw27NRU);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
            }
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            composableLambdaImpl.invoke(BoxScopeInstance.INSTANCE, gapComposer, Integer.valueOf(((i5 >> 6) & 112) | 6));
            gapComposer.end(true);
            shape2 = shape4;
        } else {
            gapComposer.skipToGroupEnd();
            shape2 = shape;
            f3 = f2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            final PullToRefreshDefaults pullToRefreshDefaults2 = pullToRefreshDefaults;
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshDefaults$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    PullToRefreshDefaults.this.m373IndicatorBox1CPYgEU(pullToRefreshStateImpl, z, modifier, f, shape2, j, f3, composableLambdaImpl, (Composer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
