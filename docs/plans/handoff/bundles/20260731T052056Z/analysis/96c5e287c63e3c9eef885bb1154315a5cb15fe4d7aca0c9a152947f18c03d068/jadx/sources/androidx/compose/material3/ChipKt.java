package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.interaction.DragInteraction$Start;
import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.tokens.AssistChipTokens;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.material3.tokens.FilterChipTokens;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ChipKt {
    public static final PaddingValuesImpl AssistChipPadding = OffsetKt.m125PaddingValuesYgX7TsA$default(2, 8.0f);
    public static final PaddingValuesImpl FilterChipPadding = OffsetKt.m125PaddingValuesYgX7TsA$default(2, 8.0f);

    static {
        OffsetKt.m125PaddingValuesYgX7TsA$default(2, 8.0f);
    }

    /* renamed from: AnimatingChipContent-fe0OD_I, reason: not valid java name */
    public static final void m278AnimatingChipContentfe0OD_I(final ComposableLambdaImpl composableLambdaImpl, final TextStyle textStyle, final long j, final Function2 function2, final long j2, final long j3, final float f, final PaddingValues paddingValues, GapComposer gapComposer, final int i) {
        gapComposer.startRestartGroup(-2070754602);
        int i2 = i | (gapComposer.changedInstance(composableLambdaImpl) ? 4 : 2) | (gapComposer.changed(textStyle) ? 32 : 16) | (gapComposer.changed(j) ? 256 : 128) | (gapComposer.changedInstance(function2) ? 2048 : 1024) | (gapComposer.changedInstance(null) ? 16384 : 8192) | (gapComposer.changedInstance(null) ? 131072 : 65536) | (gapComposer.changed(j2) ? 1048576 : 524288) | (gapComposer.changed(j3) ? 8388608 : 4194304) | (gapComposer.changed(f) ? 67108864 : 33554432) | (gapComposer.changed(paddingValues) ? 536870912 : 268435456);
        if (gapComposer.shouldExecute(i2 & 1, (306783379 & i2) != 306783378)) {
            Updater.CompositionLocalProvider(new ProvidedValue[]{ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(j)), TextKt.LocalTextStyle.defaultProvidedValue$runtime(textStyle)}, Expect_jvmKt.rememberComposableLambda(-668234218, new Function2() { // from class: androidx.compose.material3.ChipKt$AnimatingChipContent$1
                /* JADX WARN: Code restructure failed: missing block: B:15:0x0094, code lost:
                
                    if (kotlin.jvm.internal.Intrinsics.areEqual(r6.rememberedValue(), java.lang.Integer.valueOf(r5)) == false) goto L21;
                 */
                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function2
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invoke(java.lang.Object r26, java.lang.Object r27) {
                    /*
                        Method dump skipped, instructions count: 440
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ChipKt$AnimatingChipContent$1.invoke(java.lang.Object, java.lang.Object):java.lang.Object");
                }
            }, gapComposer), gapComposer, 56);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(textStyle, j, function2, j2, j3, f, paddingValues, i) { // from class: androidx.compose.material3.ChipKt$$ExternalSyntheticLambda4
                public final /* synthetic */ TextStyle f$1;
                public final /* synthetic */ long f$2;
                public final /* synthetic */ Function2 f$3;
                public final /* synthetic */ long f$6;
                public final /* synthetic */ long f$7;
                public final /* synthetic */ float f$8;
                public final /* synthetic */ PaddingValues f$9;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    ChipKt.m278AnimatingChipContentfe0OD_I(ComposableLambdaImpl.this, this.f$1, this.f$2, this.f$3, this.f$6, this.f$7, this.f$8, this.f$9, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void AssistChip(Function0 function0, ComposableLambdaImpl composableLambdaImpl, Modifier modifier, boolean z, Shape shape, ChipColors chipColors, ChipElevation chipElevation, BorderStroke borderStroke, GapComposer gapComposer, int i) {
        Modifier modifier2;
        boolean z2;
        Shape shape2;
        ChipColors chipColors2;
        ChipElevation chipElevation2;
        BorderStroke borderStroke2;
        int i2;
        Modifier modifier3;
        BorderStroke borderStroke3;
        ChipColors chipColors3;
        ChipElevation chipElevation3;
        Shape shape3;
        boolean z3;
        long Color;
        long Color2;
        long Color3;
        gapComposer.startRestartGroup(1192083339);
        int i3 = i | (gapComposer.changedInstance(function0) ? 4 : 2) | 306933120;
        if (gapComposer.shouldExecute(i3 & 1, (306783379 & i3) != 306783378)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                float f = AssistChipDefaults.Height;
                Shape value = ShapesKt.getValue(AssistChipTokens.ContainerShape, gapComposer);
                ColorScheme colorScheme = (ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme);
                ChipColors chipColors4 = colorScheme.defaultAssistChipColorsCached;
                if (chipColors4 == null) {
                    long j = Color.Transparent;
                    long fromToken = ColorSchemeKt.fromToken(colorScheme, AssistChipTokens.LabelTextColor);
                    ColorSchemeKeyTokens colorSchemeKeyTokens = AssistChipTokens.IconColor;
                    long fromToken2 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens);
                    long fromToken3 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens);
                    Color = ColorKt.Color(Color.m433getRedimpl(r6), Color.m432getGreenimpl(r6), Color.m430getBlueimpl(r6), AssistChipTokens.DisabledLabelTextOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, AssistChipTokens.DisabledLabelTextColor)));
                    ColorSchemeKeyTokens colorSchemeKeyTokens2 = AssistChipTokens.DisabledIconColor;
                    long fromToken4 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2);
                    float f2 = AssistChipTokens.DisabledIconOpacity;
                    Color2 = ColorKt.Color(Color.m433getRedimpl(fromToken4), Color.m432getGreenimpl(fromToken4), Color.m430getBlueimpl(fromToken4), f2, Color.m431getColorSpaceimpl(fromToken4));
                    Color3 = ColorKt.Color(Color.m433getRedimpl(r6), Color.m432getGreenimpl(r6), Color.m430getBlueimpl(r6), f2, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2)));
                    ChipColors chipColors5 = new ChipColors(j, fromToken, fromToken2, fromToken3, j, Color, Color2, Color3);
                    colorScheme.defaultAssistChipColorsCached = chipColors5;
                    chipColors4 = chipColors5;
                }
                ChipElevation chipElevation4 = new ChipElevation(AssistChipTokens.DraggedContainerElevation);
                long value2 = ColorSchemeKt.getValue(AssistChipTokens.FlatOutlineColor, gapComposer);
                ColorKt.Color(Color.m433getRedimpl(r10), Color.m432getGreenimpl(r10), Color.m430getBlueimpl(r10), AssistChipTokens.FlatDisabledOutlineOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.getValue(AssistChipTokens.FlatDisabledOutlineColor, gapComposer)));
                BorderStroke m45BorderStrokecXLIe8U = ImageKt.m45BorderStrokecXLIe8U(AssistChipTokens.FlatOutlineWidth, value2);
                i2 = i3 & (-2146959361);
                modifier3 = Modifier.Companion.$$INSTANCE;
                borderStroke3 = m45BorderStrokecXLIe8U;
                chipColors3 = chipColors4;
                chipElevation3 = chipElevation4;
                shape3 = value;
                z3 = true;
            } else {
                gapComposer.skipToGroupEnd();
                z3 = z;
                shape3 = shape;
                chipColors3 = chipColors;
                chipElevation3 = chipElevation;
                borderStroke3 = borderStroke;
                i2 = i3 & (-2146959361);
                modifier3 = modifier;
            }
            gapComposer.endDefaults();
            m279ChipnkUnTEs(modifier3, function0, z3, composableLambdaImpl, TypographyKt.getValue(AssistChipTokens.LabelTextFont, gapComposer), z3 ? chipColors3.labelColor : chipColors3.disabledLabelColor, shape3, chipColors3, chipElevation3, borderStroke3, AssistChipDefaults.Height, AssistChipPadding, gapComposer, ((i2 << 3) & 112) | 14159238, 28032);
            modifier2 = modifier3;
            z2 = z3;
            shape2 = shape3;
            chipColors2 = chipColors3;
            chipElevation2 = chipElevation3;
            borderStroke2 = borderStroke3;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            z2 = z;
            shape2 = shape;
            chipColors2 = chipColors;
            chipElevation2 = chipElevation;
            borderStroke2 = borderStroke;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ChipKt$$ExternalSyntheticLambda5(function0, composableLambdaImpl, modifier2, z2, shape2, chipColors2, chipElevation2, borderStroke2, i);
        }
    }

    /* renamed from: Chip-nkUnTEs, reason: not valid java name */
    public static final void m279ChipnkUnTEs(final Modifier modifier, final Function0 function0, final boolean z, final ComposableLambdaImpl composableLambdaImpl, final TextStyle textStyle, final long j, final Shape shape, final ChipColors chipColors, final ChipElevation chipElevation, final BorderStroke borderStroke, final float f, final PaddingValues paddingValues, GapComposer gapComposer, final int i, final int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z2;
        float f2;
        boolean changedInstance;
        Object rememberedValue;
        Dp dp;
        MutableInteractionSourceImpl mutableInteractionSourceImpl;
        int i7;
        boolean z3;
        AnimationState animationState;
        gapComposer.startRestartGroup(892465622);
        if ((i & 6) == 0) {
            i3 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= gapComposer.changedInstance(function0) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i3 |= gapComposer.changed(z) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= gapComposer.changedInstance(composableLambdaImpl) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i3 |= gapComposer.changed(textStyle) ? 16384 : 8192;
        }
        if ((i & 196608) == 0) {
            i3 |= gapComposer.changed(j) ? 131072 : 65536;
        }
        Continuation continuation = null;
        if ((i & 1572864) == 0) {
            i3 |= gapComposer.changedInstance(null) ? 1048576 : 524288;
        }
        if ((i & 12582912) == 0) {
            i3 |= gapComposer.changedInstance(null) ? 8388608 : 4194304;
        }
        if ((i & 100663296) == 0) {
            i3 |= gapComposer.changed(shape) ? 67108864 : 33554432;
        }
        if ((805306368 & i) == 0) {
            i3 |= gapComposer.changed(chipColors) ? 536870912 : 268435456;
        }
        if ((i2 & 6) == 0) {
            i4 = i2 | (gapComposer.changed(chipElevation) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposer.changed(borderStroke) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i4 |= gapComposer.changed(f) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposer.changed(paddingValues) ? 2048 : 1024;
        }
        int i8 = i3;
        if ((i2 & 24576) == 0) {
            i4 |= gapComposer.changed((Object) null) ? 16384 : 8192;
        }
        int i9 = i4;
        boolean z4 = true;
        if (gapComposer.shouldExecute(i8 & 1, ((i8 & 306783379) == 306783378 && (i9 & 9363) == 9362) ? false : true)) {
            gapComposer.startReplaceGroup(1596346437);
            Object rememberedValue2 = gapComposer.rememberedValue();
            Object obj = Composer$Companion.Empty;
            if (rememberedValue2 == obj) {
                rememberedValue2 = new MutableInteractionSourceImpl();
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            MutableInteractionSourceImpl mutableInteractionSourceImpl2 = (MutableInteractionSourceImpl) rememberedValue2;
            gapComposer.end(false);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (rememberedValue3 == obj) {
                i5 = i9;
                rememberedValue3 = new ChipKt$$ExternalSyntheticLambda2(17);
                gapComposer.updateRememberedValue(rememberedValue3);
            } else {
                i5 = i9;
            }
            Modifier semantics = SemanticsModifierKt.semantics(modifier, false, (Function1) rememberedValue3);
            long j2 = z ? chipColors.containerColor : chipColors.disabledContainerColor;
            float f3 = RecyclerView.DECELERATION_RATE;
            if (chipElevation == null) {
                gapComposer.startReplaceGroup(1596621344);
                gapComposer.end(false);
                mutableInteractionSourceImpl = mutableInteractionSourceImpl2;
                i7 = i8;
                animationState = null;
            } else {
                gapComposer.startReplaceGroup(-1333969407);
                int i10 = ((i8 >> 6) & 14) | ((i5 << 6) & 896);
                Object rememberedValue4 = gapComposer.rememberedValue();
                if (rememberedValue4 == obj) {
                    rememberedValue4 = new SnapshotStateList();
                    gapComposer.updateRememberedValue(rememberedValue4);
                }
                SnapshotStateList snapshotStateList = (SnapshotStateList) rememberedValue4;
                Object rememberedValue5 = gapComposer.rememberedValue();
                if (rememberedValue5 == obj) {
                    rememberedValue5 = Updater.mutableStateOf$default(null);
                    gapComposer.updateRememberedValue(rememberedValue5);
                }
                MutableState mutableState = (MutableState) rememberedValue5;
                boolean changed = gapComposer.changed(mutableInteractionSourceImpl2);
                Object rememberedValue6 = gapComposer.rememberedValue();
                if (changed || rememberedValue6 == obj) {
                    i6 = i10;
                    rememberedValue6 = new ChipElevation$animateElevation$1$1(mutableInteractionSourceImpl2, snapshotStateList, continuation, 0);
                    gapComposer.updateRememberedValue(rememberedValue6);
                } else {
                    i6 = i10;
                }
                Updater.LaunchedEffect(gapComposer, mutableInteractionSourceImpl2, (Function2) rememberedValue6);
                Interaction interaction = (Interaction) CollectionsKt.lastOrNull(snapshotStateList);
                float f4 = (!z || (interaction instanceof PressInteraction.Press) || (interaction instanceof HoverInteraction$Enter) || (interaction instanceof FocusInteraction$Focus) || !(interaction instanceof DragInteraction$Start)) ? 0.0f : chipElevation.draggedElevation;
                Object rememberedValue7 = gapComposer.rememberedValue();
                if (rememberedValue7 == obj) {
                    rememberedValue7 = new Animatable(new Dp(f4), ArcSplineKt.DpToVector, null, 12);
                    gapComposer.updateRememberedValue(rememberedValue7);
                }
                Animatable animatable = (Animatable) rememberedValue7;
                Dp dp2 = new Dp(f4);
                boolean changedInstance2 = gapComposer.changedInstance(animatable) | gapComposer.changed(f4);
                if (((i6 & 14) ^ 6) > 4) {
                    z2 = z;
                    if (gapComposer.changed(z2)) {
                        f2 = f4;
                        changedInstance = changedInstance2 | z4 | gapComposer.changedInstance(interaction);
                        rememberedValue = gapComposer.rememberedValue();
                        if (!changedInstance || rememberedValue == obj) {
                            dp = dp2;
                            mutableInteractionSourceImpl = mutableInteractionSourceImpl2;
                            i7 = i8;
                            z3 = false;
                            Object chipElevation$animateElevation$2$1 = new ChipElevation$animateElevation$2$1(animatable, f2, z2, interaction, mutableState, null, 0);
                            gapComposer.updateRememberedValue(chipElevation$animateElevation$2$1);
                            rememberedValue = chipElevation$animateElevation$2$1;
                        } else {
                            dp = dp2;
                            mutableInteractionSourceImpl = mutableInteractionSourceImpl2;
                            i7 = i8;
                            z3 = false;
                        }
                        Updater.LaunchedEffect(gapComposer, dp, (Function2) rememberedValue);
                        animationState = animatable.internalState;
                        gapComposer.end(z3);
                    }
                } else {
                    z2 = z;
                }
                f2 = f4;
                if ((i6 & 6) != 4) {
                    z4 = false;
                }
                changedInstance = changedInstance2 | z4 | gapComposer.changedInstance(interaction);
                rememberedValue = gapComposer.rememberedValue();
                if (changedInstance) {
                }
                dp = dp2;
                mutableInteractionSourceImpl = mutableInteractionSourceImpl2;
                i7 = i8;
                z3 = false;
                Object chipElevation$animateElevation$2$12 = new ChipElevation$animateElevation$2$1(animatable, f2, z2, interaction, mutableState, null, 0);
                gapComposer.updateRememberedValue(chipElevation$animateElevation$2$12);
                rememberedValue = chipElevation$animateElevation$2$12;
                Updater.LaunchedEffect(gapComposer, dp, (Function2) rememberedValue);
                animationState = animatable.internalState;
                gapComposer.end(z3);
            }
            if (animationState != null) {
                f3 = ((Dp) animationState.value$delegate.getValue()).value;
            }
            SurfaceKt.m298Surfaceo_FOJdg(function0, semantics, z, shape, j2, 0L, f3, borderStroke, mutableInteractionSourceImpl, Expect_jvmKt.rememberComposableLambda(-70915349, new Function2() { // from class: androidx.compose.material3.ChipKt$Chip$2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    GapComposer gapComposer2 = (GapComposer) obj2;
                    int intValue = ((Number) obj3).intValue();
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        ChipColors chipColors2 = chipColors;
                        boolean z5 = z;
                        ChipKt.m280ChipContentfe0OD_I(ComposableLambdaImpl.this, textStyle, j, z5 ? chipColors2.leadingIconContentColor : chipColors2.disabledLeadingIconContentColor, z5 ? chipColors2.trailingIconContentColor : chipColors2.disabledTrailingIconContentColor, f, paddingValues, gapComposer2, 24576);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, ((i7 >> 15) & 7168) | ((i7 >> 3) & 14) | (i7 & 896) | ((i5 << 21) & 234881024), 96);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.ChipKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(i | 1);
                    int updateChangedFlags2 = Updater.updateChangedFlags(i2);
                    ChipKt.m279ChipnkUnTEs(Modifier.this, function0, z, composableLambdaImpl, textStyle, j, shape, chipColors, chipElevation, borderStroke, f, paddingValues, (GapComposer) obj2, updateChangedFlags, updateChangedFlags2);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: ChipContent-fe0OD_I, reason: not valid java name */
    public static final void m280ChipContentfe0OD_I(final ComposableLambdaImpl composableLambdaImpl, final TextStyle textStyle, final long j, final long j2, final long j3, final float f, final PaddingValues paddingValues, GapComposer gapComposer, final int i) {
        gapComposer.startRestartGroup(1105630840);
        int i2 = i | (gapComposer.changedInstance(composableLambdaImpl) ? 4 : 2) | (gapComposer.changed(textStyle) ? 32 : 16) | (gapComposer.changed(j) ? 256 : 128) | (gapComposer.changedInstance(null) ? 2048 : 1024) | (gapComposer.changedInstance(null) ? 131072 : 65536) | (gapComposer.changed(j2) ? 1048576 : 524288) | (gapComposer.changed(j3) ? 8388608 : 4194304) | (gapComposer.changed(f) ? 67108864 : 33554432) | (gapComposer.changed(paddingValues) ? 536870912 : 268435456);
        if (gapComposer.shouldExecute(i2 & 1, (306783379 & i2) != 306783378)) {
            Updater.CompositionLocalProvider(new ProvidedValue[]{ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(j)), TextKt.LocalTextStyle.defaultProvidedValue$runtime(textStyle)}, Expect_jvmKt.rememberComposableLambda(-2130105544, new Function2(f, paddingValues, j2, composableLambdaImpl, j3) { // from class: androidx.compose.material3.ChipKt$ChipContent$1
                public final /* synthetic */ ComposableLambdaImpl $label;
                public final /* synthetic */ float $minHeight;
                public final /* synthetic */ PaddingValues $paddingValues;

                {
                    this.$label = composableLambdaImpl;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    GapComposer gapComposer2 = (GapComposer) obj;
                    int intValue = ((Number) obj2).intValue();
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        Modifier padding = OffsetKt.padding(SizeKt.m139defaultMinSizeVpY3zN4$default(RecyclerView.DECELERATION_RATE, this.$minHeight, 1), this.$paddingValues);
                        Object rememberedValue = gapComposer2.rememberedValue();
                        if (rememberedValue == Composer$Companion.Empty) {
                            rememberedValue = new ChipLayoutMeasurePolicy();
                            gapComposer2.updateRememberedValue(rememberedValue);
                        }
                        ChipLayoutMeasurePolicy chipLayoutMeasurePolicy = (ChipLayoutMeasurePolicy) rememberedValue;
                        int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer2);
                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, padding);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer2.useNode();
                        }
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                        Updater.m327setimpl(gapComposer2, chipLayoutMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                        if (gapComposer2.inserting || !Intrinsics.areEqual(gapComposer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            Modifier.CC.m(currentCompositeKeyHash, gapComposer2, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$13);
                        }
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                        Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
                        gapComposer2.startReplaceGroup(-410471693);
                        gapComposer2.end(false);
                        Modifier layoutId = RulerKt.layoutId(Modifier.Companion.$$INSTANCE, "label");
                        PaddingValuesImpl paddingValuesImpl = ChipKt.AssistChipPadding;
                        Modifier m133paddingVpY3zN4 = OffsetKt.m133paddingVpY3zN4(layoutId, 8.0f, RecyclerView.DECELERATION_RATE);
                        RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.CenterVertically, gapComposer2, 54);
                        int currentCompositeKeyHash2 = Updater.getCurrentCompositeKeyHash(gapComposer2);
                        PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m133paddingVpY3zN4);
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m327setimpl(gapComposer2, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                        if (gapComposer2.inserting || !Intrinsics.areEqual(gapComposer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                            Modifier.CC.m(currentCompositeKeyHash2, gapComposer2, currentCompositeKeyHash2, composeUiNode$Companion$SetModifier$13);
                        }
                        Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                        this.$label.invoke((Object) gapComposer2, (Object) 0);
                        gapComposer2.end(true);
                        gapComposer2.startReplaceGroup(-409588813);
                        gapComposer2.end(false);
                        gapComposer2.end(true);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, 56);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(textStyle, j, j2, j3, f, paddingValues, i) { // from class: androidx.compose.material3.ChipKt$$ExternalSyntheticLambda0
                public final /* synthetic */ TextStyle f$1;
                public final /* synthetic */ long f$2;
                public final /* synthetic */ long f$6;
                public final /* synthetic */ long f$7;
                public final /* synthetic */ float f$8;
                public final /* synthetic */ PaddingValues f$9;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(24577);
                    ChipKt.m280ChipContentfe0OD_I(ComposableLambdaImpl.this, this.f$1, this.f$2, this.f$6, this.f$7, this.f$8, this.f$9, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void FilterChip(boolean z, Function0 function0, ComposableLambdaImpl composableLambdaImpl, Modifier modifier, boolean z2, Function2 function2, Shape shape, SelectableChipColors selectableChipColors, SelectableChipElevation selectableChipElevation, BorderStroke borderStroke, GapComposer gapComposer, int i) {
        Modifier modifier2;
        boolean z3;
        Shape shape2;
        SelectableChipElevation selectableChipElevation2;
        int i2;
        Modifier modifier3;
        Shape shape3;
        boolean z4;
        SelectableChipElevation selectableChipElevation3;
        gapComposer.startRestartGroup(-1385473344);
        int i3 = i | (gapComposer.changed(z) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | 5794816 | (gapComposer.changed(selectableChipColors) ? 67108864 : 33554432) | 268435456;
        int i4 = (gapComposer.changed(borderStroke) ? 4 : 2) | 48;
        if (gapComposer.shouldExecute(i3 & 1, ((306783379 & i3) == 306783378 && (i4 & 19) == 18) ? false : true)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                float f = FilterChipDefaults.Height;
                Shape value = ShapesKt.getValue(FilterChipTokens.ContainerShape, gapComposer);
                SelectableChipElevation selectableChipElevation4 = new SelectableChipElevation(FilterChipTokens.FlatSelectedHoverContainerElevation, FilterChipTokens.DraggedContainerElevation);
                i2 = i3 & (-1908408321);
                modifier3 = Modifier.Companion.$$INSTANCE;
                shape3 = value;
                z4 = true;
                selectableChipElevation3 = selectableChipElevation4;
            } else {
                gapComposer.skipToGroupEnd();
                z4 = z2;
                shape3 = shape;
                selectableChipElevation3 = selectableChipElevation;
                i2 = i3 & (-1908408321);
                modifier3 = modifier;
            }
            gapComposer.endDefaults();
            m281SelectableChipu0RnIRE(z, modifier3, function0, z4, composableLambdaImpl, TypographyKt.getValue(FilterChipTokens.LabelTextFont, gapComposer), function2, shape3, selectableChipColors, selectableChipElevation3, borderStroke, FilterChipDefaults.Height, FilterChipPadding, gapComposer, 102263808 | (i2 & 14) | 12582960 | ((i2 << 3) & 896), ((i4 << 6) & 896) | ((i2 >> 24) & 14) | 27648 | 196608);
            modifier2 = modifier3;
            z3 = z4;
            shape2 = shape3;
            selectableChipElevation2 = selectableChipElevation3;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            z3 = z2;
            shape2 = shape;
            selectableChipElevation2 = selectableChipElevation;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ChipKt$$ExternalSyntheticLambda1(z, function0, composableLambdaImpl, modifier2, z3, function2, shape2, selectableChipColors, selectableChipElevation2, borderStroke, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:158:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x026a  */
    /* renamed from: SelectableChip-u0RnIRE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m281SelectableChipu0RnIRE(final boolean r29, final androidx.compose.ui.Modifier r30, final kotlin.jvm.functions.Function0 r31, final boolean r32, final androidx.compose.runtime.internal.ComposableLambdaImpl r33, final androidx.compose.ui.text.TextStyle r34, final kotlin.jvm.functions.Function2 r35, final androidx.compose.ui.graphics.Shape r36, final androidx.compose.material3.SelectableChipColors r37, final androidx.compose.material3.SelectableChipElevation r38, final androidx.compose.foundation.BorderStroke r39, final float r40, final androidx.compose.foundation.layout.PaddingValues r41, androidx.compose.runtime.GapComposer r42, final int r43, final int r44) {
        /*
            Method dump skipped, instructions count: 928
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ChipKt.m281SelectableChipu0RnIRE(boolean, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function0, boolean, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function2, androidx.compose.ui.graphics.Shape, androidx.compose.material3.SelectableChipColors, androidx.compose.material3.SelectableChipElevation, androidx.compose.foundation.BorderStroke, float, androidx.compose.foundation.layout.PaddingValues, androidx.compose.runtime.GapComposer, int, int):void");
    }

    /* renamed from: leadingContent-XO-JAsU, reason: not valid java name */
    public static final Function2 m282leadingContentXOJAsU(Function2 function2, long j, GapComposer gapComposer) {
        int i = 0;
        if (function2 == null) {
            gapComposer.startReplaceGroup(1575618259);
            gapComposer.end(false);
            return null;
        }
        gapComposer.startReplaceGroup(1575390813);
        ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-237350650, new ChipKt$leadingContent$1(j, function2, i), gapComposer);
        gapComposer.end(false);
        return rememberComposableLambda;
    }

    /* renamed from: trailingContent-RPmYEkk, reason: not valid java name */
    public static final ComposableLambdaImpl m283trailingContentRPmYEkk(GapComposer gapComposer) {
        gapComposer.startReplaceGroup(-1218863531);
        gapComposer.end(false);
        return null;
    }
}
