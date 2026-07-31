package androidx.compose.material3.pulltorefresh;

import androidx.compose.animation.CrossfadeKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ChipKt$$ExternalSyntheticLambda2;
import androidx.compose.material3.ChipKt$AnimatingChipContent$1$2$1;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
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
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PullToRefreshDefaults {
    public static final PullToRefreshDefaults INSTANCE = new PullToRefreshDefaults();
    public static final RoundedCornerShape indicatorShape = RoundedCornerShapeKt.CircleShape;
    public static final float PositionalThreshold = 80.0f;
    public static final float IndicatorMaxDistance = 80.0f;
    public static final float Elevation = 3.0f;

    /* renamed from: Indicator-2poqoh4, reason: not valid java name */
    public final void m319Indicator2poqoh4(final PullToRefreshStateImpl pullToRefreshStateImpl, final boolean z, final Modifier modifier, long j, long j2, float f, GapComposer gapComposer, final int i, final int i2) {
        final float f2;
        int i3;
        float f3;
        gapComposer.startRestartGroup(-1076870256);
        final long j3 = j;
        final long j4 = j2;
        int i4 = i | (gapComposer.changed(pullToRefreshStateImpl) ? 4 : 2) | (gapComposer.changed(z) ? 32 : 16) | (gapComposer.changed(modifier) ? 256 : 128) | (((i2 & 8) == 0 && gapComposer.changed(j3)) ? 2048 : 1024) | (((i2 & 16) == 0 && gapComposer.changed(j4)) ? 16384 : 8192) | 65536;
        if ((i & 1572864) == 0) {
            i4 |= gapComposer.changed(this) ? 1048576 : 524288;
        }
        if (gapComposer.shouldExecute(i4 & 1, (599187 & i4) != 599186)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                if ((i2 & 8) != 0) {
                    j3 = ((ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme)).surfaceContainerHigh;
                    i4 &= -7169;
                }
                if ((i2 & 16) != 0) {
                    j4 = ((ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme)).onSurfaceVariant;
                    i4 &= -57345;
                }
                i3 = i4 & (-458753);
                f3 = IndicatorMaxDistance;
            } else {
                gapComposer.skipToGroupEnd();
                if ((i2 & 8) != 0) {
                    i4 &= -7169;
                }
                if ((i2 & 16) != 0) {
                    i4 &= -57345;
                }
                i3 = i4 & (-458753);
                f3 = f;
            }
            final long j5 = j4;
            long j6 = j3;
            gapComposer.endDefaults();
            int i5 = (i3 & 14) | 12582912 | (i3 & 112) | (i3 & 896);
            int i6 = i3 << 6;
            m320IndicatorBox1CPYgEU(pullToRefreshStateImpl, z, modifier, f3, null, j6, RecyclerView.DECELERATION_RATE, Expect_jvmKt.rememberComposableLambda(298232649, new Function3() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshDefaults$Indicator$1
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    GapComposer gapComposer2 = (GapComposer) obj2;
                    int intValue = ((Number) obj3).intValue();
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                        CrossfadeKt.Crossfade(Boolean.valueOf(z), (Modifier) null, CardKt.value(MotionSchemeKeyTokens.DefaultEffects, gapComposer2), (String) null, Expect_jvmKt.rememberComposableLambda(-2064098104, new ChipKt$AnimatingChipContent$1$2$1(j5, pullToRefreshStateImpl), gapComposer2), gapComposer2, 24576);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, i5 | (458752 & i6) | (i6 & 234881024));
            f2 = f3;
            j3 = j6;
            j4 = j5;
        } else {
            gapComposer.skipToGroupEnd();
            f2 = f;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshDefaults$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    PullToRefreshDefaults.this.m319Indicator2poqoh4(pullToRefreshStateImpl, z, modifier, j3, j4, f2, (GapComposer) obj, Updater.updateChangedFlags(i | 1), i2);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: IndicatorBox-1CPYgEU, reason: not valid java name */
    public final void m320IndicatorBox1CPYgEU(final PullToRefreshStateImpl pullToRefreshStateImpl, final boolean z, final Modifier modifier, final float f, Shape shape, final long j, float f2, final ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, final int i) {
        final PullToRefreshStateImpl pullToRefreshStateImpl2;
        int i2;
        PullToRefreshDefaults pullToRefreshDefaults;
        final Shape shape2;
        final float f3;
        int i3;
        Shape shape3;
        final Shape shape4;
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
            Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(modifier, 40.0f);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new ChipKt$$ExternalSyntheticLambda2(29);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Modifier drawWithContent = ClipKt.drawWithContent(m145size3ABfNKs, (Function1) rememberedValue);
            boolean changed = ((i4 & 112) == 32) | ((i4 & 14) == 4) | ((((i4 & 7168) ^ 3072) > 2048 && gapComposer.changed(f)) || (i4 & 3072) == 2048) | gapComposer.changed(f3) | gapComposer.changed(shape3);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == neverEqualPolicy) {
                shape4 = shape3;
                Function3 function3 = new Function3() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshDefaults$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        final Placeable mo512measureBRTryo0 = ((Measurable) obj2).mo512measureBRTryo0(((Constraints) obj3).value);
                        int i5 = mo512measureBRTryo0.width;
                        int i6 = mo512measureBRTryo0.height;
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
                                        float floatValue = ((Number) pullToRefreshStateImpl5.anim.getValue()).floatValue();
                                        float f8 = RecyclerView.DECELERATION_RATE;
                                        boolean z4 = floatValue > RecyclerView.DECELERATION_RATE || z3;
                                        float floatValue2 = ((Number) pullToRefreshStateImpl5.anim.getValue()).floatValue();
                                        reusableGraphicsLayerScope.getClass();
                                        reusableGraphicsLayerScope.setTranslationY((floatValue2 * Modifier.CC.m334$default$roundToPx0680j_4(reusableGraphicsLayerScope, f6)) - Float.intBitsToFloat((int) (reusableGraphicsLayerScope.size & 4294967295L)));
                                        if (z4) {
                                            f8 = reusableGraphicsLayerScope.graphicsDensity.getDensity() * f7;
                                        }
                                        reusableGraphicsLayerScope.setShadowElevation(f8);
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
            Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(RulerKt.layout(drawWithContent, (Function3) rememberedValue2), j, shape4);
            int i5 = ((i4 >> 12) & 7168) | 48;
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m46backgroundbw27NRU);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
            }
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
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
                    PullToRefreshDefaults.this.m320IndicatorBox1CPYgEU(pullToRefreshStateImpl, z, modifier, f, shape2, j, f3, composableLambdaImpl, (GapComposer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
