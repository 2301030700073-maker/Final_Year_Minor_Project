package androidx.compose.material3.internal;

import android.content.Context;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.material3.ButtonKt$Button$2;
import androidx.compose.material3.ContentColorKt;
import androidx.compose.material3.IconButtonKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.InteractiveComponentSizeKt;
import androidx.compose.material3.TextFieldLabelPosition$Attached;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.material3.tokens.SmallIconButtonTokens;
import androidx.compose.material3.tokens.TypeScaleTokens;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Latch$await$2$2;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusTraversalKt;
import androidx.compose.ui.graphics.Color;
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
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavController$$ExternalSyntheticLambda3;
import androidx.recyclerview.widget.RecyclerView;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.util.UtilsKt;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
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
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda27;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda29;
import org.wikipedia.feed.wikigames.OnThisDayGameKt$$ExternalSyntheticLambda0;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda4;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda9;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LayoutUtilKt {
    public static final PlatformTextStyle DefaultPlatformTextStyle = new PlatformTextStyle(null, new PlatformParagraphStyle());

    public static final void BasicTooltipBox(PopupPositionProvider popupPositionProvider, ComposableLambdaImpl composableLambdaImpl, TooltipStateImpl tooltipStateImpl, ComposableLambdaImpl composableLambdaImpl2, GapComposer gapComposer, int i) {
        PopupPositionProvider popupPositionProvider2;
        int i2;
        MutableState mutableState;
        boolean z;
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
            Object obj = Composer$Companion.Empty;
            if (rememberedValue == obj) {
                rememberedValue = Updater.createCompositionCoroutineScope(gapComposer);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            CoroutineScope coroutineScope = (CoroutineScope) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == obj) {
                rememberedValue2 = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState2 = (MutableState) rememberedValue2;
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, companion);
            ComposeUiNode.Companion.getClass();
            Function0 function0 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(function0);
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
            WrappedAnchor(tooltipStateImpl, mutableState, composableLambdaImpl2, gapComposer, ((i4 >> 18) & 14) | 384 | ((i4 >> 3) & 112) | ((i4 >> 12) & 7168) | ((i4 << 3) & 57344) | ((i4 >> 9) & 458752));
            gapComposer.end(true);
            boolean z2 = ((i4 & 896) == 256 || ((i4 & 512) != 0 && gapComposer.changedInstance(tooltipStateImpl))) ? true : z;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (z2 || rememberedValue3 == obj) {
                rememberedValue3 = new DiskLruCache$$ExternalSyntheticLambda0(3, tooltipStateImpl);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Updater.DisposableEffect(tooltipStateImpl, (Function1) rememberedValue3, gapComposer);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda27(popupPositionProvider, composableLambdaImpl, tooltipStateImpl, composableLambdaImpl2, i, 3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:208:0x03f2, code lost:
    
        if (r4 != false) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x035b, code lost:
    
        if (r4 != false) goto L222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x0329, code lost:
    
        if (r4 != false) goto L209;
     */
    /* JADX WARN: Removed duplicated region for block: B:160:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x034d  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x03b8  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x03e4  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0430  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x044a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0476  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x049c  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x04ef A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:232:0x054d  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x055d  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x059c  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x05b1  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x05c6  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0619  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x062e  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0643  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x068e  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x069f  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x06db  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x06ec  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0715  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0728  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0758  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x080d  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x0734  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0719  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x06fa  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x06de  */
    /* JADX WARN: Removed duplicated region for block: B:311:0x0691  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x061c  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x059f  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x0572  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x04a5  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x047b  */
    /* JADX WARN: Removed duplicated region for block: B:333:0x0434  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x0381  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CommonDecorationBox(final androidx.compose.material3.internal.TextFieldType r50, final java.lang.CharSequence r51, final kotlin.jvm.functions.Function2 r52, final androidx.compose.material3.TextFieldLabelPosition$Attached r53, final kotlin.jvm.functions.Function3 r54, final kotlin.jvm.functions.Function2 r55, final kotlin.jvm.functions.Function2 r56, final kotlin.jvm.functions.Function2 r57, final kotlin.jvm.functions.Function2 r58, final kotlin.jvm.functions.Function2 r59, final boolean r60, final boolean r61, final boolean r62, final androidx.compose.foundation.interaction.MutableInteractionSourceImpl r63, final androidx.compose.foundation.layout.PaddingValues r64, final androidx.compose.material3.TextFieldColors r65, final kotlin.jvm.functions.Function2 r66, androidx.compose.runtime.GapComposer r67, final int r68, final int r69) {
        /*
            Method dump skipped, instructions count: 2225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.LayoutUtilKt.CommonDecorationBox(androidx.compose.material3.internal.TextFieldType, java.lang.CharSequence, kotlin.jvm.functions.Function2, androidx.compose.material3.TextFieldLabelPosition$Attached, kotlin.jvm.functions.Function3, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, boolean, boolean, androidx.compose.foundation.interaction.MutableInteractionSourceImpl, androidx.compose.foundation.layout.PaddingValues, androidx.compose.material3.TextFieldColors, kotlin.jvm.functions.Function2, androidx.compose.runtime.GapComposer, int, int):void");
    }

    /* renamed from: Decoration-3J-VO9M, reason: not valid java name */
    public static final void m315Decoration3JVO9M(long j, TextStyle textStyle, Function2 function2, GapComposer gapComposer, int i) {
        long j2;
        TextStyle textStyle2;
        Function2 function22;
        GapComposer gapComposer2;
        gapComposer.startRestartGroup(396611577);
        int i2 = (gapComposer.changed(j) ? 4 : 2) | i | (gapComposer.changed(textStyle) ? 32 : 16);
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function2) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            gapComposer2 = gapComposer;
            m317ProvideContentColorTextStyle3JVO9M(j, textStyle, function2, gapComposer2, i2 & 1022);
            j2 = j;
            textStyle2 = textStyle;
            function22 = function2;
        } else {
            j2 = j;
            textStyle2 = textStyle;
            function22 = function2;
            gapComposer2 = gapComposer;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new OnThisDayGameKt$$ExternalSyntheticLambda0(j2, textStyle2, function22, i, 2);
        }
    }

    /* renamed from: Decoration-Iv8Zu3U, reason: not valid java name */
    public static final void m316DecorationIv8Zu3U(long j, Function2 function2, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(590397809);
        int i2 = (gapComposer.changed(j) ? 4 : 2) | i | (gapComposer.changedInstance(function2) ? 32 : 16);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Updater.CompositionLocalProvider(ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(j)), function2, gapComposer, (i2 & 112) | 8);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GamesHubScreenKt$$ExternalSyntheticLambda4(j, function2, i);
        }
    }

    public static final void ObserveState(LifecycleOwner lifecycleOwner, Function1 function1, Function0 function0, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(-1868327245);
        int i2 = (gapComposer.changedInstance(lifecycleOwner) ? 4 : 2) | i | (gapComposer.changedInstance(function1) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            boolean changedInstance = ((i2 & 112) == 32) | gapComposer.changedInstance(lifecycleOwner) | ((i2 & 896) == 256);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new UtilsKt$$ExternalSyntheticLambda1(lifecycleOwner, function1, function0, 12);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Updater.DisposableEffect(lifecycleOwner, (Function1) rememberedValue, gapComposer);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda18((Object) lifecycleOwner, function1, (Object) function0, i, 5);
        }
    }

    /* renamed from: ProvideContentColorTextStyle-3J-VO9M, reason: not valid java name */
    public static final void m317ProvideContentColorTextStyle3JVO9M(long j, TextStyle textStyle, Function2 function2, GapComposer gapComposer, int i) {
        int i2;
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
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = TextKt.LocalTextStyle;
            Updater.CompositionLocalProvider(new ProvidedValue[]{ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(j)), staticProvidableCompositionLocal.defaultProvidedValue$runtime(((TextStyle) gapComposer.consume(staticProvidableCompositionLocal)).merge(textStyle))}, function2, gapComposer, ((i2 >> 3) & 112) | 8);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new OnThisDayGameKt$$ExternalSyntheticLambda0(j, textStyle, function2, i, 1);
        }
    }

    public static final void TooltipPopup(PopupPositionProvider popupPositionProvider, TooltipStateImpl tooltipStateImpl, CoroutineScope coroutineScope, boolean z, MutableState mutableState, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        PopupPositionProvider popupPositionProvider2;
        int i2;
        gapComposer.startRestartGroup(-1413720282);
        if ((i & 6) == 0) {
            popupPositionProvider2 = popupPositionProvider;
            i2 = (gapComposer.changed(popupPositionProvider2) ? 4 : 2) | i;
        } else {
            popupPositionProvider2 = popupPositionProvider;
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
            String stringResource = UtilsKt.stringResource(R.string.tooltip_description, gapComposer);
            boolean changedInstance = ((i2 & 112) == 32 || ((i2 & 64) != 0 && gapComposer.changedInstance(tooltipStateImpl))) | ((i2 & 896) == 256) | gapComposer.changedInstance(coroutineScope) | ((458752 & i2) == 131072);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new HomeScreenKt$$ExternalSyntheticLambda29(tooltipStateImpl, coroutineScope, mutableState, 5);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            int i3 = (i2 & 14) | 3072;
            AndroidPopup_androidKt.Popup(popupPositionProvider2, (Function0) rememberedValue, new PopupProperties(z), Expect_jvmKt.rememberComposableLambda(-1287705660, new ButtonKt$Button$2.AnonymousClass1(6, stringResource, composableLambdaImpl), gapComposer), gapComposer, i3, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new IconButtonKt$$ExternalSyntheticLambda1(popupPositionProvider, tooltipStateImpl, coroutineScope, z, mutableState, composableLambdaImpl, i);
        }
    }

    public static final void WrappedAnchor(final TooltipStateImpl tooltipStateImpl, MutableState mutableState, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        int i2;
        gapComposer.startRestartGroup(1873232064);
        final int i3 = 1;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(true) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? gapComposer.changed(tooltipStateImpl) : gapComposer.changedInstance(tooltipStateImpl) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(mutableState) ? 256 : 128;
        }
        final int i4 = 0;
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(false) ? 2048 : 1024;
        }
        int i5 = i & 24576;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        if (i5 == 0) {
            i2 |= gapComposer.changed(companion) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 131072 : 65536;
        }
        if (gapComposer.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = Updater.createCompositionCoroutineScope(gapComposer);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            CoroutineScope coroutineScope = (CoroutineScope) rememberedValue;
            Modifier onPreviewKeyEvent = Key_androidKt.onPreviewKeyEvent(FocusTraversalKt.onFocusChanged(SuspendingPointerInputFilterKt.pointerInput(SuspendingPointerInputFilterKt.pointerInput(companion, tooltipStateImpl, new PointerInputEventHandler() { // from class: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1

                /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
                /* renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1, reason: invalid class name */
                public final class AnonymousClass1 extends SuspendLambda implements Function2 {
                    public final /* synthetic */ int $r8$classId;
                    public final /* synthetic */ TooltipStateImpl $state;
                    public final /* synthetic */ PointerInputScope $this_pointerInput;
                    public /* synthetic */ Object L$0;
                    public int label;

                    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
                    /* renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1, reason: invalid class name and collision with other inner class name */
                    public final class C00001 extends RestrictedSuspendLambda implements Function2 {
                        public final /* synthetic */ CoroutineScope $$this$coroutineScope;
                        public final /* synthetic */ TooltipStateImpl $state;
                        public long J$0;
                        public /* synthetic */ Object L$0;
                        public StateFlowImpl L$1;
                        public PointerEventPass L$2;
                        public int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public C00001(CoroutineScope coroutineScope, TooltipStateImpl tooltipStateImpl, Continuation continuation) {
                            super(2, continuation);
                            this.$$this$coroutineScope = coroutineScope;
                            this.$state = tooltipStateImpl;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation create(Object obj, Continuation continuation) {
                            C00001 c00001 = new C00001(this.$$this$coroutineScope, this.$state, continuation);
                            c00001.L$0 = obj;
                            return c00001;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return ((C00001) create((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
                        }

                        /* JADX WARN: Removed duplicated region for block: B:11:0x00c5 A[Catch: all -> 0x0019, TRY_LEAVE, TryCatch #1 {all -> 0x0019, blocks: (B:8:0x0014, B:9:0x00c1, B:11:0x00c5), top: B:7:0x0014 }] */
                        /* JADX WARN: Removed duplicated region for block: B:31:0x00c0  */
                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final java.lang.Object invokeSuspend(java.lang.Object r14) {
                            /*
                                Method dump skipped, instructions count: 221
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1.AnonymousClass1.C00001.invokeSuspend(java.lang.Object):java.lang.Object");
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
                        switch (i) {
                            case 0:
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                                int i2 = this.label;
                                if (i2 == 0) {
                                    ResultKt.throwOnFailure(obj);
                                    C00001 c00001 = new C00001((CoroutineScope) this.L$0, tooltipStateImpl, null);
                                    this.label = 1;
                                    return ScrollableKt.awaitEachGesture(pointerInputScope, c00001, this) == coroutineSingletons ? coroutineSingletons : unit;
                                }
                                if (i2 == 1) {
                                    ResultKt.throwOnFailure(obj);
                                    return unit;
                                }
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            default:
                                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                                int i3 = this.label;
                                if (i3 == 0) {
                                    ResultKt.throwOnFailure(obj);
                                    BasicTooltipKt$handleGestures$2$1$1 basicTooltipKt$handleGestures$2$1$1 = new BasicTooltipKt$handleGestures$2$1$1((CoroutineScope) this.L$0, tooltipStateImpl, (Continuation) null);
                                    this.label = 1;
                                    return ((SuspendingPointerInputModifierNodeImpl) pointerInputScope).awaitPointerEventScope(basicTooltipKt$handleGestures$2$1$1, this) == coroutineSingletons2 ? coroutineSingletons2 : unit;
                                }
                                if (i3 == 1) {
                                    ResultKt.throwOnFailure(obj);
                                    return unit;
                                }
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                                return null;
                        }
                    }
                }

                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                    int i6 = i4;
                    Unit unit = Unit.INSTANCE;
                    Continuation continuation2 = null;
                    TooltipStateImpl tooltipStateImpl2 = tooltipStateImpl;
                    switch (i6) {
                        case 0:
                            Object coroutineScope2 = AwaitKt.coroutineScope(new AnonymousClass1(pointerInputScope, tooltipStateImpl2, continuation2, 0), continuation);
                            return coroutineScope2 == CoroutineSingletons.COROUTINE_SUSPENDED ? coroutineScope2 : unit;
                        default:
                            Object coroutineScope3 = AwaitKt.coroutineScope(new AnonymousClass1(pointerInputScope, tooltipStateImpl2, continuation2, 1), continuation);
                            return coroutineScope3 == CoroutineSingletons.COROUTINE_SUSPENDED ? coroutineScope3 : unit;
                    }
                }
            }), tooltipStateImpl, new PointerInputEventHandler() { // from class: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1

                /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
                /* renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1, reason: invalid class name */
                public final class AnonymousClass1 extends SuspendLambda implements Function2 {
                    public final /* synthetic */ int $r8$classId;
                    public final /* synthetic */ TooltipStateImpl $state;
                    public final /* synthetic */ PointerInputScope $this_pointerInput;
                    public /* synthetic */ Object L$0;
                    public int label;

                    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
                    /* renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1, reason: invalid class name and collision with other inner class name */
                    public final class C00001 extends RestrictedSuspendLambda implements Function2 {
                        public final /* synthetic */ CoroutineScope $$this$coroutineScope;
                        public final /* synthetic */ TooltipStateImpl $state;
                        public long J$0;
                        public /* synthetic */ Object L$0;
                        public StateFlowImpl L$1;
                        public PointerEventPass L$2;
                        public int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public C00001(CoroutineScope coroutineScope, TooltipStateImpl tooltipStateImpl, Continuation continuation) {
                            super(2, continuation);
                            this.$$this$coroutineScope = coroutineScope;
                            this.$state = tooltipStateImpl;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation create(Object obj, Continuation continuation) {
                            C00001 c00001 = new C00001(this.$$this$coroutineScope, this.$state, continuation);
                            c00001.L$0 = obj;
                            return c00001;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return ((C00001) create((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            /*
                                Method dump skipped, instructions count: 221
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1.AnonymousClass1.C00001.invokeSuspend(java.lang.Object):java.lang.Object");
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
                        switch (i) {
                            case 0:
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                                int i2 = this.label;
                                if (i2 == 0) {
                                    ResultKt.throwOnFailure(obj);
                                    C00001 c00001 = new C00001((CoroutineScope) this.L$0, tooltipStateImpl, null);
                                    this.label = 1;
                                    return ScrollableKt.awaitEachGesture(pointerInputScope, c00001, this) == coroutineSingletons ? coroutineSingletons : unit;
                                }
                                if (i2 == 1) {
                                    ResultKt.throwOnFailure(obj);
                                    return unit;
                                }
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            default:
                                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                                int i3 = this.label;
                                if (i3 == 0) {
                                    ResultKt.throwOnFailure(obj);
                                    BasicTooltipKt$handleGestures$2$1$1 basicTooltipKt$handleGestures$2$1$1 = new BasicTooltipKt$handleGestures$2$1$1((CoroutineScope) this.L$0, tooltipStateImpl, (Continuation) null);
                                    this.label = 1;
                                    return ((SuspendingPointerInputModifierNodeImpl) pointerInputScope).awaitPointerEventScope(basicTooltipKt$handleGestures$2$1$1, this) == coroutineSingletons2 ? coroutineSingletons2 : unit;
                                }
                                if (i3 == 1) {
                                    ResultKt.throwOnFailure(obj);
                                    return unit;
                                }
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                                return null;
                        }
                    }
                }

                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                    int i6 = i3;
                    Unit unit = Unit.INSTANCE;
                    Continuation continuation2 = null;
                    TooltipStateImpl tooltipStateImpl2 = tooltipStateImpl;
                    switch (i6) {
                        case 0:
                            Object coroutineScope2 = AwaitKt.coroutineScope(new AnonymousClass1(pointerInputScope, tooltipStateImpl2, continuation2, 0), continuation);
                            return coroutineScope2 == CoroutineSingletons.COROUTINE_SUSPENDED ? coroutineScope2 : unit;
                        default:
                            Object coroutineScope3 = AwaitKt.coroutineScope(new AnonymousClass1(pointerInputScope, tooltipStateImpl2, continuation2, 1), continuation);
                            return coroutineScope3 == CoroutineSingletons.COROUTINE_SUSPENDED ? coroutineScope3 : unit;
                    }
                }
            }).then(new ParentSemanticsNodeElement(new UtilsKt$$ExternalSyntheticLambda1(UtilsKt.stringResource(R.string.tooltip_label, gapComposer), coroutineScope, tooltipStateImpl, 13))), new NavController$$ExternalSyntheticLambda3(14, coroutineScope, tooltipStateImpl)), new Latch$await$2$2(3, tooltipStateImpl, mutableState));
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, onPreviewKeyEvent);
            ComposeUiNode.Companion.getClass();
            Function0 function0 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(function0);
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
            composableLambdaImpl.invoke(gapComposer, Integer.valueOf((i2 >> 15) & 14));
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9((Object) tooltipStateImpl, (Object) mutableState, (Object) composableLambdaImpl, i, 10);
        }
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
            return Alignment.Companion.Start;
        }
        Gson$$ExternalSyntheticBUOutline0.m("Unknown position: ", textFieldLabelPosition$Attached);
        return null;
    }

    /* renamed from: getString-2EP1pXo, reason: not valid java name */
    public static final String m318getString2EP1pXo(int i, GapComposer gapComposer) {
        gapComposer.consume(AndroidCompositionLocals_androidKt.LocalConfiguration);
        return ((Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext)).getResources().getString(i);
    }

    public static final float minimizedLabelHalfHeight(GapComposer gapComposer) {
        long j = ((Typography) gapComposer.consume(TypographyKt.LocalTypography)).bodySmall.paragraphStyle.lineHeight;
        long j2 = TypeScaleTokens.BodySmallLineHeight;
        if ((1095216660480L & j) != 4294967296L) {
            j = j2;
        }
        return ((Density) gapComposer.consume(CompositionLocalsKt.LocalDensity)).mo82toDpGaN1DYA(j) / 2.0f;
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

    public static final float textFieldHorizontalIconPadding(GapComposer gapComposer) {
        float f = ((Dp) gapComposer.consume(InteractiveComponentSizeKt.LocalMinimumInteractiveComponentSize)).value;
        if (Float.isNaN(f)) {
            f = 0.0f;
        }
        float f2 = (f - SmallIconButtonTokens.IconSize) / 2.0f;
        return f2 < RecyclerView.DECELERATION_RATE ? RecyclerView.DECELERATION_RATE : f2;
    }
}
