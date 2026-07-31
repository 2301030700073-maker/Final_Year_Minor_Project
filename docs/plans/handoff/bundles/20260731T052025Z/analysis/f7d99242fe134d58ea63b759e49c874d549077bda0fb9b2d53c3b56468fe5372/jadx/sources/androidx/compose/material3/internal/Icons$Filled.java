package androidx.compose.material3.internal;

import android.content.Context;
import androidx.activity.compose.PredictiveBackHandlerKt$$ExternalSyntheticLambda3;
import androidx.camera.core.impl.Config;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.ButtonKt$Button$2;
import androidx.compose.material3.ContentColorKt;
import androidx.compose.material3.InteractiveComponentSizeKt;
import androidx.compose.material3.MenuKt$$ExternalSyntheticLambda2;
import androidx.compose.material3.TextFieldLabelPosition$Attached;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.material3.tokens.TypeScaleTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Latch$await$2$2;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusTraversalKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.layout.LayoutIdModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.PlatformParagraphStyle;
import androidx.compose.ui.text.PlatformTextStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.compose.ui.window.PopupProperties;
import androidx.core.util.DebugUtils;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.lifecycle.compose.LifecycleEffectKt$$ExternalSyntheticLambda0;
import androidx.navigation.Navigator$$ExternalSyntheticLambda1;
import androidx.work.Operation$State;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.fsck.k9.R;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Icons$Filled {
    public static final PlatformTextStyle DefaultPlatformTextStyle = new PlatformTextStyle(null, new PlatformParagraphStyle());
    public static final StackTraceElement[] EmptyStackTraceElements = new StackTraceElement[0];
    public static ImageVector _arrowDropDown;
    public static ImageVector _check;

    public static final void BackHandler(boolean z, Function0 function0, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1339183247);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(z) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 32 : 16;
        }
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            DebugUtils.BackHandler(z, function0, gapComposer, i2 & 126, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new PredictiveBackHandlerKt$$ExternalSyntheticLambda3(z, function0, i, i3);
        }
    }

    public static final void BasicTooltipBox(PopupPositionProvider popupPositionProvider, ComposableLambdaImpl composableLambdaImpl, TooltipStateImpl tooltipStateImpl, ComposableLambdaImpl composableLambdaImpl2, Composer composer, int i) {
        PopupPositionProvider popupPositionProvider2;
        int i2;
        MutableState mutableState;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1221877520);
        if ((i & 6) == 0) {
            popupPositionProvider2 = popupPositionProvider;
            i2 = (gapComposer.changed(popupPositionProvider2) ? 4 : 2) | i;
        } else {
            popupPositionProvider2 = popupPositionProvider;
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= (i & 512) == 0 ? gapComposer.changed(tooltipStateImpl) : gapComposer.changedInstance(tooltipStateImpl) ? 256 : 128;
        }
        int i3 = i & 3072;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        if (i3 == 0) {
            i2 |= gapComposer.changed(companion) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changedInstance(null) ? 16384 : 8192;
        }
        if ((i & 196608) == 0) {
            i2 |= gapComposer.changed(false) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= gapComposer.changed(true) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= gapComposer.changed(false) ? 8388608 : 4194304;
        }
        if ((100663296 & i) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl2) ? 67108864 : 33554432;
        }
        int i4 = i2;
        if (gapComposer.shouldExecute(i4 & 1, (38347923 & i4) != 38347922)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.createCompositionCoroutineScope(gapComposer);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            CoroutineScope coroutineScope = (CoroutineScope) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState2 = (MutableState) rememberedValue2;
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
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
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
            }
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            if (tooltipStateImpl.isVisible()) {
                gapComposer.startReplaceGroup(-1891243071);
                mutableState = mutableState2;
                TooltipPopup(popupPositionProvider2, tooltipStateImpl, coroutineScope, false, mutableState, composableLambdaImpl, gapComposer, (i4 & 14) | 196608 | ((i4 >> 3) & 112) | ((i4 >> 6) & 896) | ((i4 << 15) & 3670016));
                z = false;
                gapComposer.end(false);
            } else {
                mutableState = mutableState2;
                z = false;
                gapComposer.startReplaceGroup(-1890863476);
                gapComposer.end(false);
            }
            WrappedAnchor(tooltipStateImpl, mutableState, composableLambdaImpl2, gapComposer, ((i4 >> 18) & 14) | 384 | ((i4 >> 3) & 112) | ((i4 >> 12) & 7168) | (57344 & (i4 << 3)) | ((i4 >> 9) & 458752));
            gapComposer.end(true);
            boolean z2 = ((i4 & 896) == 256 || ((i4 & 512) != 0 && gapComposer.changedInstance(tooltipStateImpl))) ? true : z;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (z2 || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new DiskLruCache$$ExternalSyntheticLambda0(5, tooltipStateImpl);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Updater.DisposableEffect(tooltipStateImpl, (Function1) rememberedValue3, gapComposer);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LifecycleEffectKt$$ExternalSyntheticLambda0(popupPositionProvider, composableLambdaImpl, tooltipStateImpl, composableLambdaImpl2, i, 1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:209:0x039f, code lost:
    
        if (r32 != false) goto L253;
     */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x031d, code lost:
    
        if (r32 != false) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x02ed, code lost:
    
        if (r32 != false) goto L204;
     */
    /* JADX WARN: Removed duplicated region for block: B:161:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0391  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x03f4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0485 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:231:0x04e0  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x04ee  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0536  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0556  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0585  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0596  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x05ce  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0614  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0622 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:262:0x05a3  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0588  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0503  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0445  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x02f3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CommonDecorationBox(final java.lang.CharSequence r45, final kotlin.jvm.functions.Function2 r46, final androidx.compose.material3.TextFieldLabelPosition$Attached r47, final kotlin.jvm.functions.Function3 r48, final kotlin.jvm.functions.Function2 r49, final boolean r50, final boolean r51, final boolean r52, final androidx.compose.foundation.interaction.MutableInteractionSourceImpl r53, final androidx.compose.foundation.layout.PaddingValues r54, final androidx.compose.material3.TextFieldColors r55, final androidx.compose.runtime.internal.ComposableLambdaImpl r56, androidx.compose.runtime.Composer r57, final int r58, final int r59) {
        /*
            Method dump skipped, instructions count: 1683
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.Icons$Filled.CommonDecorationBox(java.lang.CharSequence, kotlin.jvm.functions.Function2, androidx.compose.material3.TextFieldLabelPosition$Attached, kotlin.jvm.functions.Function3, kotlin.jvm.functions.Function2, boolean, boolean, boolean, androidx.compose.foundation.interaction.MutableInteractionSourceImpl, androidx.compose.foundation.layout.PaddingValues, androidx.compose.material3.TextFieldColors, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
    }

    /* renamed from: Decoration-3J-VO9M, reason: not valid java name */
    public static final void m368Decoration3JVO9M(long j, TextStyle textStyle, Function2 function2, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(396611577);
        int i2 = (gapComposer.changed(j) ? 4 : 2) | i | (gapComposer.changed(textStyle) ? 32 : 16);
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function2) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            m370ProvideContentColorTextStyle3JVO9M(j, textStyle, function2, gapComposer, i2 & 1022);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextFieldImplKt$$ExternalSyntheticLambda7(j, textStyle, function2, i, 0);
        }
    }

    /* renamed from: Decoration-Iv8Zu3U, reason: not valid java name */
    public static final void m369DecorationIv8Zu3U(long j, Function2 function2, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(590397809);
        int i2 = (gapComposer.changed(j) ? 4 : 2) | i | (gapComposer.changedInstance(function2) ? 32 : 16);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Updater.CompositionLocalProvider(ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(j)), function2, gapComposer, (i2 & 112) | 8);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextFieldImplKt$$ExternalSyntheticLambda8(j, function2, i);
        }
    }

    /* renamed from: ProvideContentColorTextStyle-3J-VO9M, reason: not valid java name */
    public static final void m370ProvideContentColorTextStyle3JVO9M(long j, TextStyle textStyle, Function2 function2, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-684938728);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(j) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(textStyle) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function2) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = TextKt.LocalTextStyle;
            Updater.CompositionLocalProvider(new ProvidedValue[]{ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(j)), dynamicProvidableCompositionLocal.defaultProvidedValue$runtime(((TextStyle) gapComposer.consume(dynamicProvidableCompositionLocal)).merge(textStyle))}, function2, gapComposer, ((i2 >> 3) & 112) | 8);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextFieldImplKt$$ExternalSyntheticLambda7(j, textStyle, function2, i, 1);
        }
    }

    public static final void TooltipPopup(PopupPositionProvider popupPositionProvider, TooltipStateImpl tooltipStateImpl, CoroutineScope coroutineScope, boolean z, MutableState mutableState, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        PopupPositionProvider popupPositionProvider2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1413720282);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(popupPositionProvider) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? gapComposer.changed(tooltipStateImpl) : gapComposer.changedInstance(tooltipStateImpl) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(null) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(coroutineScope) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changed(z) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changed(mutableState) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 1048576 : 524288;
        }
        if (gapComposer.shouldExecute(i2 & 1, (599187 & i2) != 599186)) {
            String stringResource = Operation$State.stringResource(gapComposer, R.string.tooltip_description);
            boolean changedInstance = ((i2 & 112) == 32 || ((i2 & 64) != 0 && gapComposer.changedInstance(tooltipStateImpl))) | ((i2 & 896) == 256) | gapComposer.changedInstance(coroutineScope) | ((458752 & i2) == 131072);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new ConnectPlan$$ExternalSyntheticLambda0(tooltipStateImpl, coroutineScope, mutableState, 6);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            popupPositionProvider2 = popupPositionProvider;
            AndroidPopup_androidKt.Popup(popupPositionProvider2, (Function0) rememberedValue, new PopupProperties(z), Expect_jvmKt.rememberComposableLambda(-1287705660, new ButtonKt$Button$2.AnonymousClass1(5, stringResource, composableLambdaImpl), gapComposer), gapComposer, (i2 & 14) | 3072, 0);
        } else {
            popupPositionProvider2 = popupPositionProvider;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MenuKt$$ExternalSyntheticLambda2(popupPositionProvider2, tooltipStateImpl, coroutineScope, z, mutableState, composableLambdaImpl, i);
        }
    }

    public static final void WrappedAnchor(final TooltipStateImpl tooltipStateImpl, MutableState mutableState, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1873232064);
        final int i3 = 1;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(true) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i4 = 16;
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? gapComposer.changed(tooltipStateImpl) : gapComposer.changedInstance(tooltipStateImpl) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(mutableState) ? 256 : 128;
        }
        final int i5 = 0;
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(false) ? 2048 : 1024;
        }
        int i6 = i & 24576;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        if (i6 == 0) {
            i2 |= gapComposer.changed(companion) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 131072 : 65536;
        }
        if (gapComposer.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = Updater.createCompositionCoroutineScope(gapComposer);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            CoroutineScope coroutineScope = (CoroutineScope) rememberedValue;
            Modifier onPreviewKeyEvent = Key_androidKt.onPreviewKeyEvent(FocusTraversalKt.onFocusChanged(SuspendingPointerInputFilterKt.pointerInput(SuspendingPointerInputFilterKt.pointerInput(companion, tooltipStateImpl, new PointerInputEventHandler() { // from class: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1

                /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
                /* renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1, reason: invalid class name */
                public final class AnonymousClass1 extends SuspendLambda implements Function2 {
                    public final /* synthetic */ int $r8$classId;
                    public final /* synthetic */ TooltipStateImpl $state;
                    public final /* synthetic */ PointerInputScope $this_pointerInput;
                    public /* synthetic */ Object L$0;
                    public int label;

                    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
                    /* renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1, reason: invalid class name and collision with other inner class name */
                    public final class C00021 extends RestrictedSuspendLambda implements Function2 {
                        public final /* synthetic */ CoroutineScope $$this$coroutineScope;
                        public final /* synthetic */ TooltipStateImpl $state;
                        public long J$0;
                        public /* synthetic */ Object L$0;
                        public MutableStateFlow L$1;
                        public PointerEventPass L$2;
                        public int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public C00021(CoroutineScope coroutineScope, TooltipStateImpl tooltipStateImpl, Continuation continuation) {
                            super(2, continuation);
                            this.$$this$coroutineScope = coroutineScope;
                            this.$state = tooltipStateImpl;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation create(Object obj, Continuation continuation) {
                            C00021 c00021 = new C00021(this.$$this$coroutineScope, this.$state, continuation);
                            c00021.L$0 = obj;
                            return c00021;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return ((C00021) create((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Removed duplicated region for block: B:12:0x00c8 A[Catch: all -> 0x0019, TRY_LEAVE, TryCatch #3 {all -> 0x0019, blocks: (B:9:0x0014, B:10:0x00c4, B:12:0x00c8), top: B:8:0x0014 }] */
                        /* JADX WARN: Removed duplicated region for block: B:31:0x00c3  */
                        /* JADX WARN: Type inference failed for: r0v0, types: [int] */
                        /* JADX WARN: Type inference failed for: r0v1 */
                        /* JADX WARN: Type inference failed for: r0v12 */
                        /* JADX WARN: Type inference failed for: r0v13 */
                        /* JADX WARN: Type inference failed for: r0v6 */
                        /* JADX WARN: Type inference failed for: r1v1 */
                        /* JADX WARN: Type inference failed for: r1v3 */
                        /* JADX WARN: Type inference failed for: r1v5, types: [kotlinx.coroutines.flow.MutableStateFlow] */
                        /* JADX WARN: Type inference failed for: r8v3, types: [kotlinx.coroutines.flow.MutableStateFlow] */
                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final java.lang.Object invokeSuspend(java.lang.Object r14) {
                            /*
                                Method dump skipped, instructions count: 228
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1.AnonymousClass1.C00021.invokeSuspend(java.lang.Object):java.lang.Object");
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public /* synthetic */ AnonymousClass1(PointerInputScope pointerInputScope, TooltipStateImpl tooltipStateImpl, Continuation continuation, int i) {
                        super(2, continuation);
                        this.$r8$classId = i;
                        this.$this_pointerInput = pointerInputScope;
                        this.$state = tooltipStateImpl;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation create(Object obj, Continuation continuation) {
                        switch (this.$r8$classId) {
                            case 0:
                                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_pointerInput, this.$state, continuation, 0);
                                anonymousClass1.L$0 = obj;
                                return anonymousClass1;
                            default:
                                AnonymousClass1 anonymousClass12 = new AnonymousClass1(this.$this_pointerInput, this.$state, continuation, 1);
                                anonymousClass12.L$0 = obj;
                                return anonymousClass12;
                        }
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i = this.$r8$classId;
                        Unit unit = Unit.INSTANCE;
                        CoroutineScope coroutineScope = (CoroutineScope) obj;
                        Continuation continuation = (Continuation) obj2;
                        switch (i) {
                        }
                        return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(unit);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        int i = this.$r8$classId;
                        Unit unit = Unit.INSTANCE;
                        TooltipStateImpl tooltipStateImpl = this.$state;
                        PointerInputScope pointerInputScope = this.$this_pointerInput;
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                        switch (i) {
                            case 0:
                                int i2 = this.label;
                                if (i2 == 0) {
                                    ResultKt.throwOnFailure(obj);
                                    C00021 c00021 = new C00021((CoroutineScope) this.L$0, tooltipStateImpl, null);
                                    this.label = 1;
                                    if (ScrollableKt.awaitEachGesture(pointerInputScope, c00021, this) == coroutineSingletons) {
                                        break;
                                    }
                                } else if (i2 != 1) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                                    break;
                                } else {
                                    ResultKt.throwOnFailure(obj);
                                    break;
                                }
                                break;
                            default:
                                int i3 = this.label;
                                if (i3 == 0) {
                                    ResultKt.throwOnFailure(obj);
                                    BasicTooltipKt$handleGestures$2$1$1 basicTooltipKt$handleGestures$2$1$1 = new BasicTooltipKt$handleGestures$2$1$1((CoroutineScope) this.L$0, tooltipStateImpl, null);
                                    this.label = 1;
                                    if (((SuspendingPointerInputModifierNodeImpl) pointerInputScope).awaitPointerEventScope(basicTooltipKt$handleGestures$2$1$1, this) == coroutineSingletons) {
                                        break;
                                    }
                                } else if (i3 != 1) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                                    break;
                                } else {
                                    ResultKt.throwOnFailure(obj);
                                    break;
                                }
                                break;
                        }
                        return coroutineSingletons;
                    }
                }

                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                    int i7 = i5;
                    Unit unit = Unit.INSTANCE;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    Continuation continuation2 = null;
                    TooltipStateImpl tooltipStateImpl2 = tooltipStateImpl;
                    switch (i7) {
                        case 0:
                            Object coroutineScope2 = JobKt.coroutineScope(new AnonymousClass1(pointerInputScope, tooltipStateImpl2, continuation2, 0), continuation);
                            return coroutineScope2 == coroutineSingletons ? coroutineScope2 : unit;
                        default:
                            Object coroutineScope3 = JobKt.coroutineScope(new AnonymousClass1(pointerInputScope, tooltipStateImpl2, continuation2, 1), continuation);
                            return coroutineScope3 == coroutineSingletons ? coroutineScope3 : unit;
                    }
                }
            }), tooltipStateImpl, new PointerInputEventHandler() { // from class: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1

                /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
                /* renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1, reason: invalid class name */
                public final class AnonymousClass1 extends SuspendLambda implements Function2 {
                    public final /* synthetic */ int $r8$classId;
                    public final /* synthetic */ TooltipStateImpl $state;
                    public final /* synthetic */ PointerInputScope $this_pointerInput;
                    public /* synthetic */ Object L$0;
                    public int label;

                    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
                    /* renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1, reason: invalid class name and collision with other inner class name */
                    public final class C00021 extends RestrictedSuspendLambda implements Function2 {
                        public final /* synthetic */ CoroutineScope $$this$coroutineScope;
                        public final /* synthetic */ TooltipStateImpl $state;
                        public long J$0;
                        public /* synthetic */ Object L$0;
                        public MutableStateFlow L$1;
                        public PointerEventPass L$2;
                        public int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public C00021(CoroutineScope coroutineScope, TooltipStateImpl tooltipStateImpl, Continuation continuation) {
                            super(2, continuation);
                            this.$$this$coroutineScope = coroutineScope;
                            this.$state = tooltipStateImpl;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation create(Object obj, Continuation continuation) {
                            C00021 c00021 = new C00021(this.$$this$coroutineScope, this.$state, continuation);
                            c00021.L$0 = obj;
                            return c00021;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return ((C00021) create((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            /*
                                Method dump skipped, instructions count: 228
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1.AnonymousClass1.C00021.invokeSuspend(java.lang.Object):java.lang.Object");
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public /* synthetic */ AnonymousClass1(PointerInputScope pointerInputScope, TooltipStateImpl tooltipStateImpl, Continuation continuation, int i) {
                        super(2, continuation);
                        this.$r8$classId = i;
                        this.$this_pointerInput = pointerInputScope;
                        this.$state = tooltipStateImpl;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation create(Object obj, Continuation continuation) {
                        switch (this.$r8$classId) {
                            case 0:
                                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_pointerInput, this.$state, continuation, 0);
                                anonymousClass1.L$0 = obj;
                                return anonymousClass1;
                            default:
                                AnonymousClass1 anonymousClass12 = new AnonymousClass1(this.$this_pointerInput, this.$state, continuation, 1);
                                anonymousClass12.L$0 = obj;
                                return anonymousClass12;
                        }
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i = this.$r8$classId;
                        Unit unit = Unit.INSTANCE;
                        CoroutineScope coroutineScope = (CoroutineScope) obj;
                        Continuation continuation = (Continuation) obj2;
                        switch (i) {
                        }
                        return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(unit);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        int i = this.$r8$classId;
                        Unit unit = Unit.INSTANCE;
                        TooltipStateImpl tooltipStateImpl = this.$state;
                        PointerInputScope pointerInputScope = this.$this_pointerInput;
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                        switch (i) {
                            case 0:
                                int i2 = this.label;
                                if (i2 == 0) {
                                    ResultKt.throwOnFailure(obj);
                                    C00021 c00021 = new C00021((CoroutineScope) this.L$0, tooltipStateImpl, null);
                                    this.label = 1;
                                    if (ScrollableKt.awaitEachGesture(pointerInputScope, c00021, this) == coroutineSingletons) {
                                        break;
                                    }
                                } else if (i2 != 1) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                                    break;
                                } else {
                                    ResultKt.throwOnFailure(obj);
                                    break;
                                }
                                break;
                            default:
                                int i3 = this.label;
                                if (i3 == 0) {
                                    ResultKt.throwOnFailure(obj);
                                    BasicTooltipKt$handleGestures$2$1$1 basicTooltipKt$handleGestures$2$1$1 = new BasicTooltipKt$handleGestures$2$1$1((CoroutineScope) this.L$0, tooltipStateImpl, null);
                                    this.label = 1;
                                    if (((SuspendingPointerInputModifierNodeImpl) pointerInputScope).awaitPointerEventScope(basicTooltipKt$handleGestures$2$1$1, this) == coroutineSingletons) {
                                        break;
                                    }
                                } else if (i3 != 1) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                                    break;
                                } else {
                                    ResultKt.throwOnFailure(obj);
                                    break;
                                }
                                break;
                        }
                        return coroutineSingletons;
                    }
                }

                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                    int i7 = i3;
                    Unit unit = Unit.INSTANCE;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    Continuation continuation2 = null;
                    TooltipStateImpl tooltipStateImpl2 = tooltipStateImpl;
                    switch (i7) {
                        case 0:
                            Object coroutineScope2 = JobKt.coroutineScope(new AnonymousClass1(pointerInputScope, tooltipStateImpl2, continuation2, 0), continuation);
                            return coroutineScope2 == coroutineSingletons ? coroutineScope2 : unit;
                        default:
                            Object coroutineScope3 = JobKt.coroutineScope(new AnonymousClass1(pointerInputScope, tooltipStateImpl2, continuation2, 1), continuation);
                            return coroutineScope3 == coroutineSingletons ? coroutineScope3 : unit;
                    }
                }
            }).then(new ParentSemanticsNodeElement(new SimpleActor$$ExternalSyntheticLambda0(Operation$State.stringResource(gapComposer, R.string.tooltip_label), coroutineScope, tooltipStateImpl, i4))), new Navigator$$ExternalSyntheticLambda1(19, coroutineScope, tooltipStateImpl)), new Latch$await$2$2(5, tooltipStateImpl, mutableState));
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, onPreviewKeyEvent);
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
            Config.CC.m((i2 >> 15) & 14, composableLambdaImpl, gapComposer, true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3(tooltipStateImpl, mutableState, composableLambdaImpl, i, 11);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:0|1|(2:3|(7:5|6|7|(1:(1:10)(2:16|17))(4:18|19|20|(1:22))|11|12|13))|24|6|7|(0)(0)|11|12|13) */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$restartable(kotlin.jvm.functions.Function0 r4, kotlin.jvm.functions.Function2 r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            boolean r0 = r6 instanceof androidx.compose.material3.internal.AnchoredDraggableKt$restartable$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.compose.material3.internal.AnchoredDraggableKt$restartable$1 r0 = (androidx.compose.material3.internal.AnchoredDraggableKt$restartable$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.material3.internal.AnchoredDraggableKt$restartable$1 r0 = new androidx.compose.material3.internal.AnchoredDraggableKt$restartable$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2c
            if (r1 != r3) goto L26
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: androidx.compose.material3.internal.AnchoredDragFinishedSignal -> L41
            goto L41
        L26:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r2
        L2c:
            kotlin.ResultKt.throwOnFailure(r6)
            androidx.compose.foundation.gestures.DraggableNode$drag$2 r6 = new androidx.compose.foundation.gestures.DraggableNode$drag$2     // Catch: androidx.compose.material3.internal.AnchoredDragFinishedSignal -> L41
            r1 = 25
            r6.<init>(r4, r5, r2, r1)     // Catch: androidx.compose.material3.internal.AnchoredDragFinishedSignal -> L41
            r0.label = r3     // Catch: androidx.compose.material3.internal.AnchoredDragFinishedSignal -> L41
            java.lang.Object r4 = kotlinx.coroutines.JobKt.coroutineScope(r6, r0)     // Catch: androidx.compose.material3.internal.AnchoredDragFinishedSignal -> L41
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r4 != r5) goto L41
            return r5
        L41:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.Icons$Filled.access$restartable(kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final Modifier draggableAnchors(Modifier modifier, AnchoredDraggableState anchoredDraggableState, Function2 function2) {
        return modifier.then(new DraggableAnchorsElement(anchoredDraggableState, function2));
    }

    public static final Object getLayoutId(Measurable measurable) {
        Object parentData = measurable.getParentData();
        LayoutIdModifier layoutIdModifier = parentData instanceof LayoutIdModifier ? (LayoutIdModifier) parentData : null;
        if (layoutIdModifier != null) {
            return layoutIdModifier.layoutId;
        }
        return null;
    }

    public static final Alignment.Horizontal getMinimizedAlignment(TextFieldLabelPosition$Attached textFieldLabelPosition$Attached) {
        if (textFieldLabelPosition$Attached instanceof TextFieldLabelPosition$Attached) {
            return textFieldLabelPosition$Attached.minimizedAlignment;
        }
        Regex$$ExternalSyntheticBUOutline0.m$2(textFieldLabelPosition$Attached, "Unknown position: ");
        return null;
    }

    /* renamed from: getString-2EP1pXo, reason: not valid java name */
    public static final String m371getString2EP1pXo(Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.consume(AndroidCompositionLocals_androidKt.LocalConfiguration);
        return ((Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext)).getResources().getString(i);
    }

    public static final float minimizedLabelHalfHeight(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        long j = ((Typography) gapComposer.consume(TypographyKt.LocalTypography)).bodySmall.paragraphStyle.lineHeight;
        long j2 = TypeScaleTokens.BodySmallLineHeight;
        if ((1095216660480L & j) != 4294967296L) {
            j = j2;
        }
        return ((Density) gapComposer.consume(CompositionLocalsKt.LocalDensity)).mo172toDpGaN1DYA(j) / 2.0f;
    }

    public static final int subtractConstraintSafely(int i, int i2) {
        if (i == Integer.MAX_VALUE) {
            return i;
        }
        int i3 = i - i2;
        if (i3 < 0) {
            return 0;
        }
        return i3;
    }

    public static final float textFieldHorizontalIconPadding(Composer composer) {
        float f = ((Dp) ((GapComposer) composer).consume(InteractiveComponentSizeKt.LocalMinimumInteractiveComponentSize)).value;
        if (Float.isNaN(f)) {
            f = 0.0f;
        }
        float f2 = (f - ListTokens.IconSize$2) / 2.0f;
        if (f2 < 0.0f) {
            return 0.0f;
        }
        return f2;
    }
}
