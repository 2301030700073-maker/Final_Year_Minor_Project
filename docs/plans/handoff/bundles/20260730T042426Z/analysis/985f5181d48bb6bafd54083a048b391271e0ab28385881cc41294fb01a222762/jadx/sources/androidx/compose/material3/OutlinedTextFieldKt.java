package androidx.compose.material3;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.material3.tokens.TypeScaleTokens;
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
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.Unit;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* compiled from: OutlinedTextField.kt */
/* loaded from: classes.dex */
public abstract class OutlinedTextFieldKt {
    private static final float OutlinedTextFieldInnerPadding = Dp.m2424constructorimpl(4);
    private static final long OutlinedTextFieldTopPadding;

    /* JADX INFO: Access modifiers changed from: private */
    public static final int substractConstraintSafely(int i, int i2) {
        return i == Integer.MAX_VALUE ? i : i - i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0586  */
    /* JADX WARN: Removed duplicated region for block: B:113:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0459  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0472  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0559  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x04a0  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0488  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0466  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0367  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0376  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0393  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x03a1  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x03a8  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x03b6  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x03bd  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x03e4  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0409  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0423  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x044b  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x03fd  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x03e7  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x03d5  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x03ca  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x03ab  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x038f  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0369  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void OutlinedTextField(final androidx.compose.ui.text.input.TextFieldValue r83, final kotlin.jvm.functions.Function1 r84, androidx.compose.ui.Modifier r85, boolean r86, boolean r87, androidx.compose.ui.text.TextStyle r88, kotlin.jvm.functions.Function2 r89, kotlin.jvm.functions.Function2 r90, kotlin.jvm.functions.Function2 r91, kotlin.jvm.functions.Function2 r92, kotlin.jvm.functions.Function2 r93, kotlin.jvm.functions.Function2 r94, kotlin.jvm.functions.Function2 r95, boolean r96, androidx.compose.ui.text.input.VisualTransformation r97, androidx.compose.foundation.text.KeyboardOptions r98, androidx.compose.foundation.text.KeyboardActions r99, boolean r100, int r101, int r102, androidx.compose.foundation.interaction.MutableInteractionSource r103, androidx.compose.ui.graphics.Shape r104, androidx.compose.material3.TextFieldColors r105, androidx.compose.runtime.Composer r106, final int r107, final int r108, final int r109, final int r110) {
        /*
            Method dump skipped, instructions count: 1444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.OutlinedTextFieldKt.OutlinedTextField(androidx.compose.ui.text.input.TextFieldValue, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, boolean, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, androidx.compose.ui.text.input.VisualTransformation, androidx.compose.foundation.text.KeyboardOptions, androidx.compose.foundation.text.KeyboardActions, boolean, int, int, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.ui.graphics.Shape, androidx.compose.material3.TextFieldColors, androidx.compose.runtime.Composer, int, int, int, int):void");
    }

    public static final void OutlinedTextFieldLayout(final Modifier modifier, final Function2 function2, final Function3 function3, final Function2 function22, final Function2 function23, final Function2 function24, final Function2 function25, final Function2 function26, final boolean z, final float f, final Function1 function1, final Function2 function27, final Function2 function28, final PaddingValues paddingValues, Composer composer, final int i, final int i2) {
        int i3;
        int i4;
        PaddingValues paddingValues2;
        int i5;
        float f2;
        Composer startRestartGroup = composer.startRestartGroup(1408290209);
        if ((i & 6) == 0) {
            i3 = i | (startRestartGroup.changed(modifier) ? 4 : 2);
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= startRestartGroup.changedInstance(function2) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i3 |= startRestartGroup.changedInstance(function3) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= startRestartGroup.changedInstance(function22) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i3 |= startRestartGroup.changedInstance(function23) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i3 |= startRestartGroup.changedInstance(function24) ? PKIFailureInfo.unsupportedVersion : PKIFailureInfo.notAuthorized;
        }
        if ((1572864 & i) == 0) {
            i3 |= startRestartGroup.changedInstance(function25) ? PKIFailureInfo.badCertTemplate : PKIFailureInfo.signerNotTrusted;
        }
        if ((12582912 & i) == 0) {
            i3 |= startRestartGroup.changedInstance(function26) ? 8388608 : 4194304;
        }
        if ((100663296 & i) == 0) {
            i3 |= startRestartGroup.changed(z) ? 67108864 : 33554432;
        }
        if ((805306368 & i) == 0) {
            i3 |= startRestartGroup.changed(f) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        int i6 = i3;
        if ((i2 & 6) == 0) {
            i4 = i2 | (startRestartGroup.changedInstance(function1) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= startRestartGroup.changedInstance(function27) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i4 |= startRestartGroup.changedInstance(function28) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            paddingValues2 = paddingValues;
            i4 |= startRestartGroup.changed(paddingValues2) ? 2048 : 1024;
        } else {
            paddingValues2 = paddingValues;
        }
        int i7 = i4;
        if ((i6 & 306783379) == 306783378 && (i7 & 1171) == 1170 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1408290209, i6, i7, "androidx.compose.material3.OutlinedTextFieldLayout (OutlinedTextField.kt:468)");
            }
            boolean z2 = ((i7 & 14) == 4) | ((234881024 & i6) == 67108864) | ((1879048192 & i6) == 536870912) | ((i7 & 7168) == 2048);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (z2 || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new OutlinedTextFieldMeasurePolicy(function1, z, f, paddingValues2);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            OutlinedTextFieldMeasurePolicy outlinedTextFieldMeasurePolicy = (OutlinedTextFieldMeasurePolicy) rememberedValue;
            LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = startRestartGroup.getCurrentCompositionLocalMap();
            Modifier materializeModifier = ComposedModifierKt.materializeModifier(startRestartGroup, modifier);
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
            Updater.m1044setimpl(m1043constructorimpl, outlinedTextFieldMeasurePolicy, companion.getSetMeasurePolicy());
            Updater.m1044setimpl(m1043constructorimpl, currentCompositionLocalMap, companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash = companion.getSetCompositeKeyHash();
            if (m1043constructorimpl.getInserting() || !Intrinsics.areEqual(m1043constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                m1043constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                m1043constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            Updater.m1044setimpl(m1043constructorimpl, materializeModifier, companion.getSetModifier());
            function27.invoke(startRestartGroup, Integer.valueOf((i7 >> 3) & 14));
            startRestartGroup.startReplaceGroup(250370369);
            if (function23 != null) {
                Modifier then = LayoutIdKt.layoutId(Modifier.Companion, "Leading").then(TextFieldImplKt.getIconDefaultSizeModifier());
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), false);
                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap2 = startRestartGroup.getCurrentCompositionLocalMap();
                Modifier materializeModifier2 = ComposedModifierKt.materializeModifier(startRestartGroup, then);
                Function0 constructor2 = companion.getConstructor();
                if (!(startRestartGroup.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                startRestartGroup.startReusableNode();
                if (startRestartGroup.getInserting()) {
                    startRestartGroup.createNode(constructor2);
                } else {
                    startRestartGroup.useNode();
                }
                Composer m1043constructorimpl2 = Updater.m1043constructorimpl(startRestartGroup);
                Updater.m1044setimpl(m1043constructorimpl2, maybeCachedBoxMeasurePolicy, companion.getSetMeasurePolicy());
                Updater.m1044setimpl(m1043constructorimpl2, currentCompositionLocalMap2, companion.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash2 = companion.getSetCompositeKeyHash();
                if (m1043constructorimpl2.getInserting() || !Intrinsics.areEqual(m1043constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                    m1043constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                    m1043constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                }
                Updater.m1044setimpl(m1043constructorimpl2, materializeModifier2, companion.getSetModifier());
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                function23.invoke(startRestartGroup, Integer.valueOf((i6 >> 12) & 14));
                startRestartGroup.endNode();
            }
            startRestartGroup.endReplaceGroup();
            startRestartGroup.startReplaceGroup(250379492);
            if (function24 != null) {
                Modifier then2 = LayoutIdKt.layoutId(Modifier.Companion, "Trailing").then(TextFieldImplKt.getIconDefaultSizeModifier());
                MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), false);
                int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap3 = startRestartGroup.getCurrentCompositionLocalMap();
                Modifier materializeModifier3 = ComposedModifierKt.materializeModifier(startRestartGroup, then2);
                Function0 constructor3 = companion.getConstructor();
                if (!(startRestartGroup.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                startRestartGroup.startReusableNode();
                if (startRestartGroup.getInserting()) {
                    startRestartGroup.createNode(constructor3);
                } else {
                    startRestartGroup.useNode();
                }
                Composer m1043constructorimpl3 = Updater.m1043constructorimpl(startRestartGroup);
                Updater.m1044setimpl(m1043constructorimpl3, maybeCachedBoxMeasurePolicy2, companion.getSetMeasurePolicy());
                Updater.m1044setimpl(m1043constructorimpl3, currentCompositionLocalMap3, companion.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash3 = companion.getSetCompositeKeyHash();
                if (m1043constructorimpl3.getInserting() || !Intrinsics.areEqual(m1043constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                    m1043constructorimpl3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash3));
                    m1043constructorimpl3.apply(Integer.valueOf(currentCompositeKeyHash3), setCompositeKeyHash3);
                }
                Updater.m1044setimpl(m1043constructorimpl3, materializeModifier3, companion.getSetModifier());
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                function24.invoke(startRestartGroup, Integer.valueOf((i6 >> 15) & 14));
                startRestartGroup.endNode();
            }
            startRestartGroup.endReplaceGroup();
            float calculateStartPadding = PaddingKt.calculateStartPadding(paddingValues2, layoutDirection);
            float calculateEndPadding = PaddingKt.calculateEndPadding(paddingValues2, layoutDirection);
            if (function23 != null) {
                i5 = 0;
                calculateStartPadding = Dp.m2424constructorimpl(RangesKt.coerceAtLeast(Dp.m2424constructorimpl(calculateStartPadding - TextFieldImplKt.getHorizontalIconPadding()), Dp.m2424constructorimpl(0)));
            } else {
                i5 = 0;
            }
            if (function24 != null) {
                calculateEndPadding = Dp.m2424constructorimpl(RangesKt.coerceAtLeast(Dp.m2424constructorimpl(calculateEndPadding - TextFieldImplKt.getHorizontalIconPadding()), Dp.m2424constructorimpl(i5)));
            }
            startRestartGroup.startReplaceGroup(250410106);
            if (function25 != null) {
                Modifier m269paddingqDBjuR0$default = PaddingKt.m269paddingqDBjuR0$default(SizeKt.wrapContentHeight$default(SizeKt.m281heightInVpY3zN4$default(LayoutIdKt.layoutId(Modifier.Companion, "Prefix"), TextFieldImplKt.getMinTextLineHeight(), 0.0f, 2, null), null, false, 3, null), calculateStartPadding, 0.0f, TextFieldImplKt.getPrefixSuffixTextPadding(), 0.0f, 10, null);
                MeasurePolicy maybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                int currentCompositeKeyHash4 = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap4 = startRestartGroup.getCurrentCompositionLocalMap();
                Modifier materializeModifier4 = ComposedModifierKt.materializeModifier(startRestartGroup, m269paddingqDBjuR0$default);
                Function0 constructor4 = companion.getConstructor();
                if (!(startRestartGroup.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                startRestartGroup.startReusableNode();
                if (startRestartGroup.getInserting()) {
                    startRestartGroup.createNode(constructor4);
                } else {
                    startRestartGroup.useNode();
                }
                Composer m1043constructorimpl4 = Updater.m1043constructorimpl(startRestartGroup);
                Updater.m1044setimpl(m1043constructorimpl4, maybeCachedBoxMeasurePolicy3, companion.getSetMeasurePolicy());
                Updater.m1044setimpl(m1043constructorimpl4, currentCompositionLocalMap4, companion.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash4 = companion.getSetCompositeKeyHash();
                if (m1043constructorimpl4.getInserting() || !Intrinsics.areEqual(m1043constructorimpl4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash4))) {
                    m1043constructorimpl4.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash4));
                    m1043constructorimpl4.apply(Integer.valueOf(currentCompositeKeyHash4), setCompositeKeyHash4);
                }
                Updater.m1044setimpl(m1043constructorimpl4, materializeModifier4, companion.getSetModifier());
                BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                function25.invoke(startRestartGroup, Integer.valueOf((i6 >> 18) & 14));
                startRestartGroup.endNode();
            }
            startRestartGroup.endReplaceGroup();
            startRestartGroup.startReplaceGroup(250422072);
            if (function26 != null) {
                Modifier m269paddingqDBjuR0$default2 = PaddingKt.m269paddingqDBjuR0$default(SizeKt.wrapContentHeight$default(SizeKt.m281heightInVpY3zN4$default(LayoutIdKt.layoutId(Modifier.Companion, "Suffix"), TextFieldImplKt.getMinTextLineHeight(), 0.0f, 2, null), null, false, 3, null), TextFieldImplKt.getPrefixSuffixTextPadding(), 0.0f, calculateEndPadding, 0.0f, 10, null);
                MeasurePolicy maybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                int currentCompositeKeyHash5 = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap5 = startRestartGroup.getCurrentCompositionLocalMap();
                Modifier materializeModifier5 = ComposedModifierKt.materializeModifier(startRestartGroup, m269paddingqDBjuR0$default2);
                Function0 constructor5 = companion.getConstructor();
                f2 = calculateStartPadding;
                if (!(startRestartGroup.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                startRestartGroup.startReusableNode();
                if (startRestartGroup.getInserting()) {
                    startRestartGroup.createNode(constructor5);
                } else {
                    startRestartGroup.useNode();
                }
                Composer m1043constructorimpl5 = Updater.m1043constructorimpl(startRestartGroup);
                Updater.m1044setimpl(m1043constructorimpl5, maybeCachedBoxMeasurePolicy4, companion.getSetMeasurePolicy());
                Updater.m1044setimpl(m1043constructorimpl5, currentCompositionLocalMap5, companion.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash5 = companion.getSetCompositeKeyHash();
                if (m1043constructorimpl5.getInserting() || !Intrinsics.areEqual(m1043constructorimpl5.rememberedValue(), Integer.valueOf(currentCompositeKeyHash5))) {
                    m1043constructorimpl5.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash5));
                    m1043constructorimpl5.apply(Integer.valueOf(currentCompositeKeyHash5), setCompositeKeyHash5);
                }
                Updater.m1044setimpl(m1043constructorimpl5, materializeModifier5, companion.getSetModifier());
                BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
                function26.invoke(startRestartGroup, Integer.valueOf((i6 >> 21) & 14));
                startRestartGroup.endNode();
            } else {
                f2 = calculateStartPadding;
            }
            startRestartGroup.endReplaceGroup();
            Modifier.Companion companion2 = Modifier.Companion;
            Modifier wrapContentHeight$default = SizeKt.wrapContentHeight$default(SizeKt.m281heightInVpY3zN4$default(companion2, TextFieldImplKt.getMinTextLineHeight(), 0.0f, 2, null), null, false, 3, null);
            float m2424constructorimpl = function25 == null ? f2 : Dp.m2424constructorimpl(0);
            if (function26 != null) {
                calculateEndPadding = Dp.m2424constructorimpl(0);
            }
            Modifier m269paddingqDBjuR0$default3 = PaddingKt.m269paddingqDBjuR0$default(wrapContentHeight$default, m2424constructorimpl, 0.0f, calculateEndPadding, 0.0f, 10, null);
            startRestartGroup.startReplaceGroup(250444361);
            if (function3 != null) {
                function3.invoke(LayoutIdKt.layoutId(companion2, "Hint").then(m269paddingqDBjuR0$default3), startRestartGroup, Integer.valueOf((i6 >> 3) & 112));
            }
            startRestartGroup.endReplaceGroup();
            Modifier then3 = LayoutIdKt.layoutId(companion2, "TextField").then(m269paddingqDBjuR0$default3);
            Alignment.Companion companion3 = Alignment.Companion;
            MeasurePolicy maybeCachedBoxMeasurePolicy5 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), true);
            int currentCompositeKeyHash6 = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap6 = startRestartGroup.getCurrentCompositionLocalMap();
            Modifier materializeModifier6 = ComposedModifierKt.materializeModifier(startRestartGroup, then3);
            Function0 constructor6 = companion.getConstructor();
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor6);
            } else {
                startRestartGroup.useNode();
            }
            Composer m1043constructorimpl6 = Updater.m1043constructorimpl(startRestartGroup);
            Updater.m1044setimpl(m1043constructorimpl6, maybeCachedBoxMeasurePolicy5, companion.getSetMeasurePolicy());
            Updater.m1044setimpl(m1043constructorimpl6, currentCompositionLocalMap6, companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash6 = companion.getSetCompositeKeyHash();
            if (m1043constructorimpl6.getInserting() || !Intrinsics.areEqual(m1043constructorimpl6.rememberedValue(), Integer.valueOf(currentCompositeKeyHash6))) {
                m1043constructorimpl6.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash6));
                m1043constructorimpl6.apply(Integer.valueOf(currentCompositeKeyHash6), setCompositeKeyHash6);
            }
            Updater.m1044setimpl(m1043constructorimpl6, materializeModifier6, companion.getSetModifier());
            BoxScopeInstance boxScopeInstance5 = BoxScopeInstance.INSTANCE;
            function2.invoke(startRestartGroup, Integer.valueOf((i6 >> 3) & 14));
            startRestartGroup.endNode();
            startRestartGroup.startReplaceGroup(250455481);
            if (function22 != null) {
                Modifier layoutId = LayoutIdKt.layoutId(SizeKt.wrapContentHeight$default(SizeKt.m281heightInVpY3zN4$default(companion2, DpKt.m2436lerpMdfbLM(TextFieldImplKt.getMinTextLineHeight(), TextFieldImplKt.getMinFocusedLabelLineHeight(), f), 0.0f, 2, null), null, false, 3, null), "Label");
                MeasurePolicy maybeCachedBoxMeasurePolicy6 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                int currentCompositeKeyHash7 = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap7 = startRestartGroup.getCurrentCompositionLocalMap();
                Modifier materializeModifier7 = ComposedModifierKt.materializeModifier(startRestartGroup, layoutId);
                Function0 constructor7 = companion.getConstructor();
                if (!(startRestartGroup.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                startRestartGroup.startReusableNode();
                if (startRestartGroup.getInserting()) {
                    startRestartGroup.createNode(constructor7);
                } else {
                    startRestartGroup.useNode();
                }
                Composer m1043constructorimpl7 = Updater.m1043constructorimpl(startRestartGroup);
                Updater.m1044setimpl(m1043constructorimpl7, maybeCachedBoxMeasurePolicy6, companion.getSetMeasurePolicy());
                Updater.m1044setimpl(m1043constructorimpl7, currentCompositionLocalMap7, companion.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash7 = companion.getSetCompositeKeyHash();
                if (m1043constructorimpl7.getInserting() || !Intrinsics.areEqual(m1043constructorimpl7.rememberedValue(), Integer.valueOf(currentCompositeKeyHash7))) {
                    m1043constructorimpl7.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash7));
                    m1043constructorimpl7.apply(Integer.valueOf(currentCompositeKeyHash7), setCompositeKeyHash7);
                }
                Updater.m1044setimpl(m1043constructorimpl7, materializeModifier7, companion.getSetModifier());
                function22.invoke(startRestartGroup, Integer.valueOf((i6 >> 9) & 14));
                startRestartGroup.endNode();
            }
            startRestartGroup.endReplaceGroup();
            startRestartGroup.startReplaceGroup(250473414);
            if (function28 != null) {
                Modifier padding = PaddingKt.padding(SizeKt.wrapContentHeight$default(SizeKt.m281heightInVpY3zN4$default(LayoutIdKt.layoutId(companion2, "Supporting"), TextFieldImplKt.getMinSupportingTextLineHeight(), 0.0f, 2, null), null, false, 3, null), TextFieldDefaults.m766supportingTextPaddinga9UjIt4$material3_release$default(TextFieldDefaults.INSTANCE, 0.0f, 0.0f, 0.0f, 0.0f, 15, null));
                MeasurePolicy maybeCachedBoxMeasurePolicy7 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                int currentCompositeKeyHash8 = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap8 = startRestartGroup.getCurrentCompositionLocalMap();
                Modifier materializeModifier8 = ComposedModifierKt.materializeModifier(startRestartGroup, padding);
                Function0 constructor8 = companion.getConstructor();
                if (!(startRestartGroup.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                startRestartGroup.startReusableNode();
                if (startRestartGroup.getInserting()) {
                    startRestartGroup.createNode(constructor8);
                } else {
                    startRestartGroup.useNode();
                }
                Composer m1043constructorimpl8 = Updater.m1043constructorimpl(startRestartGroup);
                Updater.m1044setimpl(m1043constructorimpl8, maybeCachedBoxMeasurePolicy7, companion.getSetMeasurePolicy());
                Updater.m1044setimpl(m1043constructorimpl8, currentCompositionLocalMap8, companion.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash8 = companion.getSetCompositeKeyHash();
                if (m1043constructorimpl8.getInserting() || !Intrinsics.areEqual(m1043constructorimpl8.rememberedValue(), Integer.valueOf(currentCompositeKeyHash8))) {
                    m1043constructorimpl8.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash8));
                    m1043constructorimpl8.apply(Integer.valueOf(currentCompositeKeyHash8), setCompositeKeyHash8);
                }
                Updater.m1044setimpl(m1043constructorimpl8, materializeModifier8, companion.getSetModifier());
                function28.invoke(startRestartGroup, Integer.valueOf((i7 >> 6) & 14));
                startRestartGroup.endNode();
            }
            startRestartGroup.endReplaceGroup();
            startRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.material3.OutlinedTextFieldKt$OutlinedTextFieldLayout$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i8) {
                    OutlinedTextFieldKt.OutlinedTextFieldLayout(Modifier.this, function2, function3, function22, function23, function24, function25, function26, z, f, function1, function27, function28, paddingValues, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: calculateWidth-DHJA7U0, reason: not valid java name */
    public static final int m719calculateWidthDHJA7U0(int i, int i2, int i3, int i4, int i5, int i6, int i7, float f, long j, float f2, PaddingValues paddingValues) {
        int i8 = i3 + i4;
        int max = i + Math.max(i5 + i8, Math.max(i7 + i8, MathHelpersKt.lerp(i6, 0, f))) + i2;
        LayoutDirection layoutDirection = LayoutDirection.Ltr;
        return Math.max(max, Math.max(MathKt.roundToInt((i6 + (Dp.m2424constructorimpl(paddingValues.mo257calculateLeftPaddingu2uoSUM(layoutDirection) + paddingValues.mo258calculateRightPaddingu2uoSUM(layoutDirection)) * f2)) * f), Constraints.m2399getMinWidthimpl(j)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: calculateHeight-mKXJcVc, reason: not valid java name */
    public static final int m718calculateHeightmKXJcVc(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, float f, long j, float f2, PaddingValues paddingValues) {
        int maxOf = ComparisonsKt.maxOf(i5, i7, i3, i4, MathHelpersKt.lerp(i6, 0, f));
        float mo259calculateTopPaddingD9Ej5fM = paddingValues.mo259calculateTopPaddingD9Ej5fM() * f2;
        return Math.max(Constraints.m2398getMinHeightimpl(j), Math.max(i, Math.max(i2, MathKt.roundToInt(MathHelpersKt.lerp(mo259calculateTopPaddingD9Ej5fM, Math.max(mo259calculateTopPaddingD9Ej5fM, i6 / 2.0f), f) + maxOf + (paddingValues.mo256calculateBottomPaddingD9Ej5fM() * f2)))) + i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void place(Placeable.PlacementScope placementScope, int i, int i2, Placeable placeable, Placeable placeable2, Placeable placeable3, Placeable placeable4, Placeable placeable5, Placeable placeable6, Placeable placeable7, Placeable placeable8, Placeable placeable9, float f, boolean z, float f2, LayoutDirection layoutDirection, PaddingValues paddingValues) {
        Placeable.PlacementScope.m1773place70tqf50$default(placementScope, placeable8, IntOffset.Companion.m2472getZeronOccac(), 0.0f, 2, null);
        int heightOrZero = i - TextFieldImplKt.heightOrZero(placeable9);
        int roundToInt = MathKt.roundToInt(paddingValues.mo259calculateTopPaddingD9Ej5fM() * f2);
        int roundToInt2 = MathKt.roundToInt(PaddingKt.calculateStartPadding(paddingValues, layoutDirection) * f2);
        float horizontalIconPadding = TextFieldImplKt.getHorizontalIconPadding() * f2;
        if (placeable != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, Alignment.Companion.getCenterVertically().align(placeable.getHeight(), heightOrZero), 0.0f, 4, null);
        }
        if (placeable6 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable6, MathKt.roundToInt(placeable == null ? 0.0f : (TextFieldImplKt.widthOrZero(placeable) - horizontalIconPadding) * (1 - f)) + roundToInt2, MathHelpersKt.lerp(z ? Alignment.Companion.getCenterVertically().align(placeable6.getHeight(), heightOrZero) : roundToInt, -(placeable6.getHeight() / 2), f), 0.0f, 4, null);
        }
        if (placeable3 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, TextFieldImplKt.widthOrZero(placeable), place$calculateVerticalPosition(z, heightOrZero, roundToInt, placeable6, placeable3), 0.0f, 4, null);
        }
        int widthOrZero = TextFieldImplKt.widthOrZero(placeable) + TextFieldImplKt.widthOrZero(placeable3);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable5, widthOrZero, place$calculateVerticalPosition(z, heightOrZero, roundToInt, placeable6, placeable5), 0.0f, 4, null);
        if (placeable7 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable7, widthOrZero, place$calculateVerticalPosition(z, heightOrZero, roundToInt, placeable6, placeable7), 0.0f, 4, null);
        }
        if (placeable4 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable4, (i2 - TextFieldImplKt.widthOrZero(placeable2)) - placeable4.getWidth(), place$calculateVerticalPosition(z, heightOrZero, roundToInt, placeable6, placeable4), 0.0f, 4, null);
        }
        if (placeable2 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i2 - placeable2.getWidth(), Alignment.Companion.getCenterVertically().align(placeable2.getHeight(), heightOrZero), 0.0f, 4, null);
        }
        if (placeable9 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable9, 0, heightOrZero, 0.0f, 4, null);
        }
    }

    private static final int place$calculateVerticalPosition(boolean z, int i, int i2, Placeable placeable, Placeable placeable2) {
        if (z) {
            i2 = Alignment.Companion.getCenterVertically().align(placeable2.getHeight(), i);
        }
        return Math.max(i2, TextFieldImplKt.heightOrZero(placeable) / 2);
    }

    public static final Modifier outlineCutout(Modifier modifier, final Function0 function0, final PaddingValues paddingValues) {
        return DrawModifierKt.drawWithContent(modifier, new Function1() { // from class: androidx.compose.material3.OutlinedTextFieldKt$outlineCutout$1

            /* compiled from: OutlinedTextField.kt */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[LayoutDirection.values().length];
                    try {
                        iArr[LayoutDirection.Rtl.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((ContentDrawScope) obj);
                return Unit.INSTANCE;
            }

            public final void invoke(ContentDrawScope contentDrawScope) {
                float f;
                float coerceAtLeast;
                long m1208unboximpl = ((Size) Function0.this.invoke()).m1208unboximpl();
                float m1204getWidthimpl = Size.m1204getWidthimpl(m1208unboximpl);
                if (m1204getWidthimpl > 0.0f) {
                    f = OutlinedTextFieldKt.OutlinedTextFieldInnerPadding;
                    float mo213toPx0680j_4 = contentDrawScope.mo213toPx0680j_4(f);
                    float mo213toPx0680j_42 = contentDrawScope.mo213toPx0680j_4(paddingValues.mo257calculateLeftPaddingu2uoSUM(contentDrawScope.getLayoutDirection())) - mo213toPx0680j_4;
                    float f2 = 2;
                    float f3 = m1204getWidthimpl + mo213toPx0680j_42 + (mo213toPx0680j_4 * f2);
                    LayoutDirection layoutDirection = contentDrawScope.getLayoutDirection();
                    int[] iArr = WhenMappings.$EnumSwitchMapping$0;
                    if (iArr[layoutDirection.ordinal()] == 1) {
                        coerceAtLeast = Size.m1204getWidthimpl(contentDrawScope.mo1491getSizeNHjbRc()) - f3;
                    } else {
                        coerceAtLeast = RangesKt.coerceAtLeast(mo213toPx0680j_42, 0.0f);
                    }
                    float f4 = coerceAtLeast;
                    if (iArr[contentDrawScope.getLayoutDirection().ordinal()] == 1) {
                        f3 = Size.m1204getWidthimpl(contentDrawScope.mo1491getSizeNHjbRc()) - RangesKt.coerceAtLeast(mo213toPx0680j_42, 0.0f);
                    }
                    float f5 = f3;
                    float m1202getHeightimpl = Size.m1202getHeightimpl(m1208unboximpl);
                    float f6 = (-m1202getHeightimpl) / f2;
                    float f7 = m1202getHeightimpl / f2;
                    int m1296getDifferencertfAjoo = ClipOp.Companion.m1296getDifferencertfAjoo();
                    DrawContext drawContext = contentDrawScope.getDrawContext();
                    long mo1495getSizeNHjbRc = drawContext.mo1495getSizeNHjbRc();
                    drawContext.getCanvas().save();
                    try {
                        drawContext.getTransform().mo1498clipRectN_I0leg(f4, f6, f5, f7, m1296getDifferencertfAjoo);
                        contentDrawScope.drawContent();
                        return;
                    } finally {
                        drawContext.getCanvas().restore();
                        drawContext.mo1496setSizeuvyYCjk(mo1495getSizeNHjbRc);
                    }
                }
                contentDrawScope.drawContent();
            }
        });
    }

    public static final long getOutlinedTextFieldTopPadding() {
        return OutlinedTextFieldTopPadding;
    }

    static {
        long m976getBodySmallLineHeightXSAIIZE = TypeScaleTokens.INSTANCE.m976getBodySmallLineHeightXSAIIZE();
        TextUnitKt.m2504checkArithmeticR2X_6o(m976getBodySmallLineHeightXSAIIZE);
        OutlinedTextFieldTopPadding = TextUnitKt.pack(TextUnit.m2496getRawTypeimpl(m976getBodySmallLineHeightXSAIIZE), TextUnit.m2498getValueimpl(m976getBodySmallLineHeightXSAIIZE) / 2);
    }
}
