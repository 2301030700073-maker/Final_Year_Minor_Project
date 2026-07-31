package androidx.compose.material3;

import androidx.compose.animation.AnimatedContentKt$AnimatedContent$4$1;
import androidx.compose.animation.ColorVectorConverterKt$ColorToVector$1$2;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.selection.SelectableKt;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.material3.tokens.PrimaryNavigationTabTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticBUOutline0;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.util.ListUtilsKt;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class TabKt {
    public static final float DoubleLineTextBaselineWithIcon;
    public static final float HorizontalTextPadding;
    public static final long IconDistanceFromBaseline;
    public static final float SingleLineTextBaselineWithIcon;
    public static final float SmallTabHeight;

    static {
        ColorSchemeKeyTokens colorSchemeKeyTokens = PrimaryNavigationTabTokens.ActiveIndicatorColor;
        SmallTabHeight = PrimaryNavigationTabTokens.ContainerHeight;
        HorizontalTextPadding = 16.0f;
        SingleLineTextBaselineWithIcon = 14.0f;
        DoubleLineTextBaselineWithIcon = 6.0f;
        IconDistanceFromBaseline = MathKt.getSp(20);
    }

    /* renamed from: Tab-bogVsAg, reason: not valid java name */
    public static final void m160TabbogVsAg(final boolean z, final Function0 function0, final Modifier modifier, final boolean z2, final long j, final long j2, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        int i2;
        Function0 function02;
        GapComposer gapComposer;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-1573136853);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changed(z) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            function02 = function0;
            i2 |= gapComposer2.changedInstance(function02) ? 32 : 16;
        } else {
            function02 = function0;
        }
        if ((i & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            i2 |= gapComposer2.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changed(z2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer2.changed(j) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer2.changed(j2) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= gapComposer2.changed((Object) null) ? ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= gapComposer2.changedInstance(composableLambdaImpl) ? 8388608 : 4194304;
        }
        if (gapComposer2.shouldExecute(i2 & 1, (4793491 & i2) != 4793490)) {
            gapComposer2.startDefaults();
            if ((i & 1) != 0 && !gapComposer2.getDefaultsInvalid()) {
                gapComposer2.skipToGroupEnd();
            }
            gapComposer2.endDefaults();
            final RippleNodeFactory m156rippleH2RKhps$default = RippleKt.m156rippleH2RKhps$default(2, j);
            final Function0 function03 = function02;
            int i3 = i2 >> 12;
            gapComposer = gapComposer2;
            m162TabTransitionKlgxPg(j, j2, z, Expect_jvmKt.rememberComposableLambda(1128552423, new Function2() { // from class: androidx.compose.material3.TabKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    GapComposer gapComposer3 = (GapComposer) composer2;
                    if (gapComposer3.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        Modifier then = SelectableKt.m114selectableO2vRcR0(Modifier.this, z, m156rippleH2RKhps$default, z2, new Role(4), function03).then(SizeKt.FillWholeMaxWidth);
                        ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(SpacerKt.Center, Alignment.Companion.CenterHorizontally, gapComposer3, 54);
                        long j3 = gapComposer3.compositeKeyHashCode;
                        int i4 = (int) (j3 ^ (j3 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer3.currentCompositionLocalScope();
                        Modifier materializeModifier = RangesKt.materializeModifier(gapComposer3, then);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                        gapComposer3.startReusableNode();
                        if (gapComposer3.inserting) {
                            gapComposer3.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer3.useNode();
                        }
                        Updater.m170setimpl(gapComposer3, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m170setimpl(gapComposer3, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        Updater.m170setimpl(gapComposer3, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
                        Updater.m169reconcileimpl(gapComposer3, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                        Updater.m170setimpl(gapComposer3, materializeModifier, ComposeUiNode.Companion.SetModifier);
                        composableLambdaImpl.invoke((Object) ColumnScopeInstance.INSTANCE, (Object) gapComposer3, (Object) 6);
                        gapComposer3.end(true);
                    } else {
                        gapComposer3.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer2), gapComposer, ((i2 << 6) & 896) | (i3 & Token.ASSIGN_MOD) | (i3 & 14) | 3072);
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.TabKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    TabKt.m160TabbogVsAg(z, function0, modifier, z2, j, j2, composableLambdaImpl, (Composer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: Tab-wqdebIU, reason: not valid java name */
    public static final void m161TabwqdebIU(final boolean z, final Function0 function0, Modifier modifier, boolean z2, final Function2 function2, long j, long j2, Composer composer, final int i) {
        final Modifier modifier2;
        final boolean z3;
        final long j3;
        final long j4;
        int i2;
        Modifier modifier3;
        long j5;
        long j6;
        boolean z4;
        ComposableLambdaImpl rememberComposableLambda;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1015017965);
        int i3 = i | (gapComposer.changed(z) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | 105581952;
        byte b = 0;
        if (gapComposer.shouldExecute(i3 & 1, (38347923 & i3) != 38347922)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                long j7 = ((Color) gapComposer.consume(ContentColorKt.LocalContentColor)).value;
                i2 = i3 & (-33030145);
                modifier3 = Modifier.Companion.$$INSTANCE;
                j5 = j7;
                j6 = j5;
                z4 = true;
            } else {
                gapComposer.skipToGroupEnd();
                i2 = i3 & (-33030145);
                modifier3 = modifier;
                z4 = z2;
                j5 = j;
                j6 = j2;
            }
            gapComposer.endDefaults();
            if (function2 == null) {
                gapComposer.startReplaceGroup(1830887765);
                gapComposer.end(false);
                rememberComposableLambda = null;
            } else {
                gapComposer.startReplaceGroup(1830887766);
                rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-1745256900, new TabKt$$ExternalSyntheticLambda0(function2, b, b), gapComposer);
                gapComposer.end(false);
            }
            m160TabbogVsAg(z, function0, RulerKt.layout(modifier3, new BadgeKt$$ExternalSyntheticLambda0(0)), z4, j5, j6, Expect_jvmKt.rememberComposableLambda(-906085472, new TabKt$$ExternalSyntheticLambda1(rememberComposableLambda, b), gapComposer), gapComposer, (i2 & Token.ASSIGN_MOD) | (i2 & 14) | 12582912 | 1575936);
            modifier2 = modifier3;
            z3 = z4;
            j3 = j5;
            j4 = j6;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            z3 = z2;
            j3 = j;
            j4 = j2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(z, function0, modifier2, z3, function2, j3, j4, i) { // from class: androidx.compose.material3.TabKt$$ExternalSyntheticLambda2
                public final /* synthetic */ boolean f$0;
                public final /* synthetic */ Function0 f$1;
                public final /* synthetic */ Modifier f$2;
                public final /* synthetic */ boolean f$3;
                public final /* synthetic */ Function2 f$4;
                public final /* synthetic */ long f$6;
                public final /* synthetic */ long f$7;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(24577);
                    TabKt.m161TabwqdebIU(this.f$0, this.f$1, this.f$2, this.f$3, this.f$4, this.f$6, this.f$7, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void TabBaselineLayout(final Function2 function2, Composer composer, int i) {
        boolean z;
        boolean z2;
        Modifier then;
        BiasAlignment biasAlignment = Alignment.Companion.TopStart;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1349901398);
        int i2 = (gapComposer.changedInstance(function2) ? 4 : 2) | i | (gapComposer.changedInstance(null) ? 32 : 16);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            int i3 = i2 & 14;
            boolean z3 = ((i2 & Token.ASSIGN_MOD) == 32) | (i3 == 4);
            Object rememberedValue = gapComposer.rememberedValue();
            if (z3 || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new MeasurePolicy() { // from class: androidx.compose.material3.TabKt$TabBaselineLayout$2$1
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public final /* synthetic */ int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i4) {
                        return Owner.CC.$default$maxIntrinsicHeight(this, intrinsicMeasureScope, list, i4);
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public final /* synthetic */ int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i4) {
                        return Owner.CC.$default$maxIntrinsicWidth(this, intrinsicMeasureScope, list, i4);
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    /* renamed from: measure-3p2s80s */
                    public final MeasureResult mo8measure3p2s80s(final MeasureScope measureScope, List list, long j) {
                        final Placeable placeable;
                        final Placeable placeable2 = null;
                        if (Function2.this != null) {
                            int size = list.size();
                            for (int i4 = 0; i4 < size; i4++) {
                                Measurable measurable = (Measurable) list.get(i4);
                                if (Intrinsics.areEqual(RulerKt.getLayoutId(measurable), "text")) {
                                    placeable = measurable.mo292measureBRTryo0(Constraints.m427copyZbe2FdA$default(0, 0, 0, j, 11));
                                }
                            }
                            ListUtilsKt.throwNoSuchElementException("Collection contains no element matching the predicate.");
                            LayoutNode$$ExternalSyntheticBUOutline0.m322m();
                            return null;
                        }
                        placeable = null;
                        final int max = Math.max(placeable != null ? placeable.width : 0, 0);
                        final int max2 = Math.max(measureScope.mo58roundToPx0680j_4(TabKt.SmallTabHeight), measureScope.mo57roundToPxR2X_6o(TabKt.IconDistanceFromBaseline) + 0 + (placeable != null ? placeable.height : 0));
                        final Integer valueOf = placeable != null ? Integer.valueOf(placeable.get(AlignmentLineKt.FirstBaseline)) : null;
                        final Integer valueOf2 = placeable != null ? Integer.valueOf(placeable.get(AlignmentLineKt.LastBaseline)) : null;
                        return measureScope.layout(max, max2, EmptyMap.INSTANCE, new Function1() { // from class: androidx.compose.material3.TabKt$TabBaselineLayout$2$1$$ExternalSyntheticLambda0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                                Placeable placeable3 = Placeable.this;
                                Placeable placeable4 = placeable2;
                                int i5 = max2;
                                if (placeable3 != null && placeable4 != null) {
                                    Integer num = valueOf;
                                    num.getClass();
                                    int intValue = num.intValue();
                                    Integer num2 = valueOf2;
                                    num2.getClass();
                                    int intValue2 = num2.intValue();
                                    float f = intValue == intValue2 ? TabKt.SingleLineTextBaselineWithIcon : TabKt.DoubleLineTextBaselineWithIcon;
                                    MeasureScope measureScope2 = measureScope;
                                    int mo58roundToPx0680j_4 = measureScope2.mo58roundToPx0680j_4(PrimaryNavigationTabTokens.ActiveIndicatorHeight) + measureScope2.mo58roundToPx0680j_4(f);
                                    int mo57roundToPxR2X_6o = (measureScope2.mo57roundToPxR2X_6o(TabKt.IconDistanceFromBaseline) + placeable4.height) - intValue;
                                    int i6 = placeable3.width;
                                    int i7 = max;
                                    int i8 = (i5 - intValue2) - mo58roundToPx0680j_4;
                                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, (i7 - i6) / 2, i8);
                                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable4, (i7 - placeable4.width) / 2, i8 - mo57roundToPxR2X_6o);
                                } else if (placeable3 != null) {
                                    float f2 = TabKt.SmallTabHeight;
                                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, 0, (i5 - placeable3.height) / 2);
                                } else if (placeable4 != null) {
                                    float f3 = TabKt.SmallTabHeight;
                                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable4, 0, (i5 - placeable4.height) / 2);
                                }
                                return Unit.INSTANCE;
                            }
                        });
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public final /* synthetic */ int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i4) {
                        return Owner.CC.$default$minIntrinsicHeight(this, intrinsicMeasureScope, list, i4);
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public final /* synthetic */ int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i4) {
                        return Owner.CC.$default$minIntrinsicWidth(this, intrinsicMeasureScope, list, i4);
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue;
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = RangesKt.materializeModifier(gapComposer, Modifier.Companion.$$INSTANCE);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m170setimpl(gapComposer, measurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m170setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i4);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m170setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m169reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m170setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
            if (function2 != null) {
                gapComposer.startReplaceGroup(870361332);
                then = RulerKt.layoutId("text").then(new PaddingElement(HorizontalTextPadding, 0.0f, r15, 0.0f));
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                long j2 = gapComposer.compositeKeyHashCode;
                int i5 = (int) (j2 ^ (j2 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier2 = RangesKt.materializeModifier(gapComposer, then);
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer.useNode();
                }
                Updater.m170setimpl(gapComposer, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                Updater.m170setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                Updater.m170setimpl(gapComposer, Integer.valueOf(i5), composeUiNode$Companion$SetModifier$13);
                Updater.m169reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m170setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                function2.invoke(gapComposer, Integer.valueOf(i3));
                z2 = true;
                gapComposer.end(true);
                z = false;
                gapComposer.end(false);
            } else {
                z = false;
                z2 = true;
                gapComposer.startReplaceGroup(870466081);
                gapComposer.end(false);
            }
            gapComposer.startReplaceGroup(870557345);
            gapComposer.end(z);
            gapComposer.end(z2);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TabKt$$ExternalSyntheticLambda0(i, function2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* renamed from: TabTransition-Klgx-Pg, reason: not valid java name */
    public static final void m162TabTransitionKlgxPg(final long j, final long j2, final boolean z, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        int i2;
        ?? r2;
        Object currentState;
        boolean z2;
        FiniteAnimationSpec value;
        boolean z3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-833145221);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(j) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(j2) ? 32 : 16;
        }
        if ((i & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            i2 |= gapComposer.changed(z) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 2048 : 1024;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            int i3 = i2 >> 6;
            Transition updateTransition = ArcSplineKt.updateTransition(i3 & 14, 2, gapComposer, Boolean.valueOf(z));
            TransitionState transitionState = updateTransition.transitionState;
            boolean booleanValue = ((Boolean) updateTransition.targetState$delegate.getValue()).booleanValue();
            gapComposer.startReplaceGroup(-1069234984);
            long j3 = booleanValue ? j : j2;
            gapComposer.end(false);
            ColorSpace m247getColorSpaceimpl = Color.m247getColorSpaceimpl(j3);
            boolean changed = gapComposer.changed(m247getColorSpaceimpl);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (changed || rememberedValue == neverEqualPolicy) {
                TwoWayConverterImpl twoWayConverterImpl = new TwoWayConverterImpl(AnimatedContentKt$AnimatedContent$4$1.INSTANCE$2, new ColorVectorConverterKt$ColorToVector$1$2(m247getColorSpaceimpl));
                gapComposer.updateRememberedValue(twoWayConverterImpl);
                rememberedValue = twoWayConverterImpl;
            }
            TwoWayConverterImpl twoWayConverterImpl2 = (TwoWayConverterImpl) rememberedValue;
            if (updateTransition.isSeeking()) {
                r2 = 0;
                gapComposer.startReplaceGroup(1666827533);
                gapComposer.end(false);
                currentState = transitionState.getCurrentState();
            } else {
                gapComposer.startReplaceGroup(1666573488);
                boolean changed2 = gapComposer.changed(updateTransition);
                currentState = gapComposer.rememberedValue();
                if (changed2 || currentState == neverEqualPolicy) {
                    Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
                    Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
                    Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
                    try {
                        Object currentState2 = transitionState.getCurrentState();
                        SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                        gapComposer.updateRememberedValue(currentState2);
                        currentState = currentState2;
                        z3 = false;
                    } catch (Throwable th) {
                        SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                        throw th;
                    }
                } else {
                    z3 = false;
                }
                gapComposer.end(z3);
                r2 = z3;
            }
            boolean booleanValue2 = ((Boolean) currentState).booleanValue();
            gapComposer.startReplaceGroup(-1069234984);
            long j4 = booleanValue2 ? j : j2;
            gapComposer.end(r2);
            Color color = new Color(j4);
            boolean changed3 = gapComposer.changed(updateTransition);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed3 || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = Updater.derivedStateOf(new TabKt$TabTransitionKlgxPg$$inlined$animateColor$1(updateTransition, r2));
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            boolean booleanValue3 = ((Boolean) ((State) rememberedValue2).getValue()).booleanValue();
            gapComposer.startReplaceGroup(-1069234984);
            long j5 = booleanValue3 ? j : j2;
            gapComposer.end(false);
            Color color2 = new Color(j5);
            boolean changed4 = gapComposer.changed(updateTransition);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed4 || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = Updater.derivedStateOf(new TabKt$TabTransitionKlgxPg$$inlined$animateColor$1(updateTransition, 13));
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Transition.Segment segment = (Transition.Segment) ((State) rememberedValue3).getValue();
            gapComposer.startReplaceGroup(1058649156);
            if (segment.isTransitioningTo(Boolean.FALSE, Boolean.TRUE)) {
                gapComposer.startReplaceGroup(272207019);
                value = BadgeKt.value(MotionSchemeKeyTokens.DefaultEffects, gapComposer);
                z2 = false;
                gapComposer.end(false);
            } else {
                z2 = false;
                gapComposer.startReplaceGroup(272326989);
                value = BadgeKt.value(MotionSchemeKeyTokens.FastEffects, gapComposer);
                gapComposer.end(false);
            }
            gapComposer.end(z2);
            Updater.CompositionLocalProvider(ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(((Color) ArcSplineKt.createTransitionAnimation(updateTransition, color, color2, value, twoWayConverterImpl2, gapComposer).value$delegate.getValue()).value)), composableLambdaImpl, gapComposer, (i3 & Token.ASSIGN_MOD) | 8);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.TabKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    TabKt.m162TabTransitionKlgxPg(j, j2, z, composableLambdaImpl, (Composer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
