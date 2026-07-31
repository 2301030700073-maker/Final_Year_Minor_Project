package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Updater;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AnimatedContentKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:144:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b7  */
    /* JADX WARN: Type inference failed for: r14v12, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void AnimatedContent(final androidx.compose.animation.core.Transition r22, androidx.compose.ui.Modifier r23, kotlin.jvm.functions.Function1 r24, androidx.compose.ui.Alignment r25, kotlin.jvm.functions.Function1 r26, final kotlin.jvm.functions.Function4 r27, androidx.compose.runtime.Composer r28, final int r29, final int r30) {
        /*
            Method dump skipped, instructions count: 1021
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.AnimatedContentKt.AnimatedContent(androidx.compose.animation.core.Transition, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function1, androidx.compose.ui.Alignment, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function4, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0378  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0425  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0454  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0513  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0539  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0554  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x053d  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x046f  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x035f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void AnimatedEnterExitImpl(final androidx.compose.animation.core.Transition r28, final kotlin.jvm.functions.Function1 r29, final androidx.compose.ui.Modifier r30, final androidx.compose.animation.EnterTransition r31, final androidx.compose.animation.ExitTransition r32, final kotlin.jvm.functions.Function2 r33, kotlin.jvm.functions.Function3 r34, androidx.compose.runtime.Composer r35, final int r36, final int r37) {
        /*
            Method dump skipped, instructions count: 1433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.AnimatedContentKt.AnimatedEnterExitImpl(androidx.compose.animation.core.Transition, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, androidx.compose.animation.EnterTransition, androidx.compose.animation.ExitTransition, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final EnterExitState targetEnterExit(Transition transition, Function1 function1, Object obj, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startMovableGroup(-422486745, transition);
        boolean isSeeking = transition.isSeeking();
        TransitionState transitionState = transition.transitionState;
        EnterExitState enterExitState = EnterExitState.PreEnter;
        EnterExitState enterExitState2 = EnterExitState.PostExit;
        EnterExitState enterExitState3 = EnterExitState.Visible;
        if (isSeeking) {
            gapComposer.startReplaceGroup(-212166497);
            gapComposer.end(false);
            if (((Boolean) function1.invoke(obj)).booleanValue()) {
                enterExitState = enterExitState3;
            } else if (((Boolean) function1.invoke(transitionState.getCurrentState())).booleanValue()) {
                enterExitState = enterExitState2;
            }
        } else {
            gapComposer.startReplaceGroup(-211892364);
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            if (((Boolean) function1.invoke(transitionState.getCurrentState())).booleanValue()) {
                mutableState.setValue(Boolean.TRUE);
            }
            if (((Boolean) function1.invoke(obj)).booleanValue()) {
                enterExitState = enterExitState3;
            } else if (((Boolean) mutableState.getValue()).booleanValue()) {
                enterExitState = enterExitState2;
            }
            gapComposer.end(false);
        }
        gapComposer.end(false);
        return enterExitState;
    }
}
