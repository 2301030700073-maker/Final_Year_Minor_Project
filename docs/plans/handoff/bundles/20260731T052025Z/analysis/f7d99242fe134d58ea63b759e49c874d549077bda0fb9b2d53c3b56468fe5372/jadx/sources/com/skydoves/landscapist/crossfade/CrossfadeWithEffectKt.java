package com.skydoves.landscapist.crossfade;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.material3.SwitchKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import com.fsck.k9.ui.settings.SettingsViewModel$moveAccount$1;
import com.skydoves.landscapist.ImageLoadKt$ImageLoad$2$1$1;
import java.util.List;
import java.util.ListIterator;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CrossfadeWithEffectKt {
    public static final void CrossfadeWithEffect(Object obj, Modifier modifier, int i, boolean z, Function1 function1, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        Modifier modifier2;
        Object imageLoadKt$ImageLoad$2$1$1;
        boolean z2;
        NeverEqualPolicy neverEqualPolicy;
        SnapshotStateList snapshotStateList;
        boolean z3;
        boolean z4;
        Modifier modifier3;
        NeverEqualPolicy neverEqualPolicy2;
        Object obj2 = obj;
        int i3 = i;
        BiasAlignment biasAlignment = Alignment.Companion.TopStart;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(38925516);
        int i4 = i2 | (gapComposer.changed(obj2) ? 4 : 2) | 48 | (gapComposer.changed(i3) ? 256 : 128) | (gapComposer.changed(z) ? 2048 : 1024) | (gapComposer.changedInstance(function1) ? 16384 : 8192);
        if (gapComposer.shouldExecute(i4 & 1, (74899 & i4) != 74898)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy3 = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy3) {
                rememberedValue = new SnapshotStateList();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            SnapshotStateList snapshotStateList2 = (SnapshotStateList) rememberedValue;
            int i5 = i4 & 57344;
            int i6 = i4 & 14;
            boolean z5 = (i5 == 16384) | (i6 == 4);
            Object rememberedValue2 = gapComposer.rememberedValue();
            Continuation continuation = null;
            if (z5 || rememberedValue2 == neverEqualPolicy3) {
                z2 = true;
                neverEqualPolicy = neverEqualPolicy3;
                imageLoadKt$ImageLoad$2$1$1 = new ImageLoadKt$ImageLoad$2$1$1(snapshotStateList2, obj, function1, continuation, 7);
                snapshotStateList = snapshotStateList2;
                obj2 = obj;
                gapComposer.updateRememberedValue(imageLoadKt$ImageLoad$2$1$1);
            } else {
                neverEqualPolicy = neverEqualPolicy3;
                z2 = true;
                snapshotStateList = snapshotStateList2;
                imageLoadKt$ImageLoad$2$1$1 = rememberedValue2;
            }
            Updater.LaunchedEffect(gapComposer, obj2, (Function2) imageLoadKt$ImageLoad$2$1$1);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, z2);
            long j = gapComposer.compositeKeyHashCode;
            int i7 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, companion);
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
            Updater.m380setimpl(gapComposer, Integer.valueOf(i7), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            if (z) {
                gapComposer.startReplaceGroup(-1440366619);
                ListIterator listIterator = snapshotStateList.listIterator();
                while (true) {
                    ListBuilder.Itr itr = (ListBuilder.Itr) listIterator;
                    if (!itr.hasNext()) {
                        break;
                    }
                    Object next = itr.next();
                    gapComposer.startMovableGroup(916700222, function1.invoke(next));
                    boolean areEqual = Intrinsics.areEqual(function1.invoke(next), function1.invoke(obj2));
                    Unit unit = Unit.INSTANCE;
                    if (areEqual) {
                        gapComposer.startReplaceGroup(-1646938297);
                        Object invoke = function1.invoke(next);
                        if (invoke == null) {
                            invoke = unit;
                        }
                        modifier3 = new FadeInEffectElement(Updater.rememberUpdatedState(invoke, gapComposer), i3);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(-1646824837);
                        FadeOutEffectElement fadeOutEffectElement = new FadeOutEffectElement(Updater.rememberUpdatedState(unit, gapComposer), i3);
                        gapComposer.end(false);
                        modifier3 = fadeOutEffectElement;
                    }
                    if (areEqual) {
                        neverEqualPolicy2 = neverEqualPolicy;
                        gapComposer.startReplaceGroup(-1646560748);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(-1646707781);
                        boolean changedInstance = ((i4 & 896) == 256) | gapComposer.changedInstance(next);
                        Object rememberedValue3 = gapComposer.rememberedValue();
                        if (changedInstance) {
                            neverEqualPolicy2 = neverEqualPolicy;
                        } else {
                            neverEqualPolicy2 = neverEqualPolicy;
                            if (rememberedValue3 != neverEqualPolicy2) {
                                Updater.LaunchedEffect(gapComposer, unit, (Function2) rememberedValue3);
                                gapComposer.end(false);
                            }
                        }
                        rememberedValue3 = new SettingsViewModel$moveAccount$1(i3, snapshotStateList, next, (Continuation) null);
                        gapComposer.updateRememberedValue(rememberedValue3);
                        Updater.LaunchedEffect(gapComposer, unit, (Function2) rememberedValue3);
                        gapComposer.end(false);
                    }
                    MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, true);
                    long j2 = gapComposer.compositeKeyHashCode;
                    int i8 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, modifier3);
                    ComposeUiNode.Companion.getClass();
                    ListIterator listIterator2 = listIterator;
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer, Integer.valueOf(i8), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                    composableLambdaImpl.invoke(next, (Object) gapComposer, (Object) 48);
                    gapComposer.end(true);
                    gapComposer.end(false);
                    listIterator = listIterator2;
                    i3 = i;
                    neverEqualPolicy = neverEqualPolicy2;
                }
                z4 = true;
                gapComposer.end(false);
            } else {
                NeverEqualPolicy neverEqualPolicy4 = neverEqualPolicy;
                gapComposer.startReplaceGroup(-1439648070);
                if (snapshotStateList.size() > 1 || !Intrinsics.areEqual(CollectionsKt.firstOrNull((List) snapshotStateList), obj2)) {
                    gapComposer.startReplaceGroup(-1439558573);
                    boolean z6 = (i6 == 4) | (i5 == 16384);
                    Object rememberedValue4 = gapComposer.rememberedValue();
                    if (z6 || rememberedValue4 == neverEqualPolicy4) {
                        rememberedValue4 = new DI$$ExternalSyntheticLambda0(28, function1, obj2);
                        gapComposer.updateRememberedValue(rememberedValue4);
                    }
                    Function1 function12 = (Function1) rememberedValue4;
                    function12.getClass();
                    z3 = false;
                    CollectionsKt.filterInPlace$CollectionsKt__MutableCollectionsKt(snapshotStateList, function12, false);
                    if (snapshotStateList.isEmpty()) {
                        snapshotStateList.add(obj2);
                    }
                    gapComposer.end(false);
                } else {
                    gapComposer.startReplaceGroup(-1439365412);
                    z3 = false;
                    gapComposer.end(false);
                }
                gapComposer.startMovableGroup(369213417, function1.invoke(obj2));
                composableLambdaImpl.invoke(obj2, gapComposer, Integer.valueOf(i6 | 48));
                gapComposer.end(z3);
                gapComposer.end(z3);
                z4 = true;
            }
            gapComposer.end(z4);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SwitchKt$$ExternalSyntheticLambda1(obj2, modifier2, i, z, function1, composableLambdaImpl, i2);
        }
    }

    /* renamed from: updateSaturation-RaGpIIw, reason: not valid java name */
    public static final void m968updateSaturationRaGpIIw(float[] fArr, float f) {
        fArr.getClass();
        float f2 = 1.0f - f;
        float f3 = 0.213f * f2;
        float f4 = 0.715f * f2;
        float f5 = f2 * 0.072f;
        fArr[0] = f3 + f;
        fArr[1] = f4;
        fArr[2] = f5;
        fArr[5] = f3;
        fArr[6] = f4 + f;
        fArr[7] = f5;
        fArr[10] = f3;
        fArr[11] = f4;
        fArr[12] = f5 + f;
    }
}
