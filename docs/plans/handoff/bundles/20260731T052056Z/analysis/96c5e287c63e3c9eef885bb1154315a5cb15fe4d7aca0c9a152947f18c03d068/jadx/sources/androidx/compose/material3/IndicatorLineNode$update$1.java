package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.SnapSpec;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.unit.Dp;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IndicatorLineNode$update$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ IndicatorLineNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ IndicatorLineNode$update$1(IndicatorLineNode indicatorLineNode, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = indicatorLineNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        IndicatorLineNode indicatorLineNode = this.this$0;
        switch (i) {
            case 0:
                return new IndicatorLineNode$update$1(indicatorLineNode, continuation, 0);
            case 1:
                return new IndicatorLineNode$update$1(indicatorLineNode, continuation, 1);
            case 2:
                return new IndicatorLineNode$update$1(indicatorLineNode, continuation, 2);
            default:
                return new IndicatorLineNode$update$1(indicatorLineNode, continuation, 3);
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
        return ((IndicatorLineNode$update$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        IndicatorLineNode indicatorLineNode = this.this$0;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    return indicatorLineNode.trackFocusState(this) == coroutineSingletons ? coroutineSingletons : unit;
                }
                if (i2 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return unit;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Animatable animatable = indicatorLineNode.colorAnimatable;
                    if (animatable == null) {
                        return unit;
                    }
                    TextFieldColors textFieldColors = indicatorLineNode._colors;
                    if (textFieldColors == null) {
                        textFieldColors = TextFieldDefaults.defaultTextFieldColors$material3((ColorScheme) HitTestResultKt.currentValueOf(indicatorLineNode, ColorSchemeKt.LocalColorScheme), (TextSelectionColors) HitTestResultKt.currentValueOf(indicatorLineNode, TextSelectionColorsKt.LocalTextSelectionColors));
                    }
                    Color color = new Color(textFieldColors.m303indicatorColorXeAY9LY$material3(indicatorLineNode.enabled, false, indicatorLineNode.focused));
                    AnimationSpec fromToken = indicatorLineNode.enabled ? CardKt.fromToken((MotionScheme$StandardMotionSchemeImpl) HitTestResultKt.currentValueOf(indicatorLineNode, MaterialThemeKt._localMotionScheme), MotionSchemeKeyTokens.FastEffects) : new SnapSpec();
                    this.label = 1;
                    obj = Animatable.animateTo$default(animatable, color, fromToken, null, this, 12);
                    if (obj == coroutineSingletons2) {
                        return coroutineSingletons2;
                    }
                } else {
                    if (i3 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return unit;
            case 2:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 != 0) {
                    if (i4 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                Animatable animatable2 = indicatorLineNode.widthAnimatable;
                Dp dp = new Dp((indicatorLineNode.focused && indicatorLineNode.enabled) ? indicatorLineNode.focusedIndicatorWidth : indicatorLineNode.unfocusedIndicatorWidth);
                AnimationSpec fromToken2 = indicatorLineNode.enabled ? CardKt.fromToken((MotionScheme$StandardMotionSchemeImpl) HitTestResultKt.currentValueOf(indicatorLineNode, MaterialThemeKt._localMotionScheme), MotionSchemeKeyTokens.FastSpatial) : new SnapSpec();
                this.label = 1;
                return Animatable.animateTo$default(animatable2, dp, fromToken2, null, this, 12) == coroutineSingletons3 ? coroutineSingletons3 : unit;
            default:
                CoroutineSingletons coroutineSingletons4 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i5 = this.label;
                if (i5 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    return indicatorLineNode.trackFocusState(this) == coroutineSingletons4 ? coroutineSingletons4 : unit;
                }
                if (i5 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return unit;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }
}
