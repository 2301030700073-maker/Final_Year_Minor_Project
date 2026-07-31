package androidx.compose.material3;

import android.graphics.drawable.Drawable;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.minidns.dnsqueryresult.DnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TooltipKt$animateTooltip$2 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $transition;

    public /* synthetic */ TooltipKt$animateTooltip$2(int i, Object obj) {
        this.$r8$classId = i;
        this.$transition = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.$transition;
        switch (i) {
            case 0:
                Modifier modifier = (Modifier) obj;
                ((Number) obj3).intValue();
                GapComposer gapComposer = (GapComposer) ((Composer) obj2);
                gapComposer.startReplaceGroup(-1498516085);
                SpringSpec value = CardKt.value(MotionSchemeKeyTokens.FastSpatial, gapComposer);
                SpringSpec value2 = CardKt.value(MotionSchemeKeyTokens.FastEffects, gapComposer);
                Transition transition = (Transition) obj4;
                TwoWayConverterImpl twoWayConverterImpl = ArcSplineKt.FloatToVector;
                DnsQueryResult dnsQueryResult = transition.transitionState;
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = transition.targetState$delegate;
                boolean booleanValue = ((Boolean) dnsQueryResult.getCurrentState()).booleanValue();
                gapComposer.startReplaceGroup(-1553362193);
                float f = booleanValue ? 1.0f : 0.8f;
                gapComposer.end(false);
                Float valueOf = Float.valueOf(f);
                boolean booleanValue2 = ((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue();
                gapComposer.startReplaceGroup(-1553362193);
                float f2 = booleanValue2 ? 1.0f : 0.8f;
                gapComposer.end(false);
                Float valueOf2 = Float.valueOf(f2);
                transition.getSegment();
                gapComposer.startReplaceGroup(386845748);
                gapComposer.end(false);
                Transition.TransitionAnimationState createTransitionAnimation = ArcSplineKt.createTransitionAnimation(transition, valueOf, valueOf2, value, twoWayConverterImpl, gapComposer, 196608);
                boolean booleanValue3 = ((Boolean) transition.transitionState.getCurrentState()).booleanValue();
                gapComposer.startReplaceGroup(2073045083);
                float f3 = booleanValue3 ? 1.0f : 0.0f;
                gapComposer.end(false);
                Float valueOf3 = Float.valueOf(f3);
                boolean booleanValue4 = ((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue();
                gapComposer.startReplaceGroup(2073045083);
                float f4 = booleanValue4 ? 1.0f : 0.0f;
                gapComposer.end(false);
                Float valueOf4 = Float.valueOf(f4);
                transition.getSegment();
                gapComposer.startReplaceGroup(-281714272);
                gapComposer.end(false);
                Modifier m493graphicsLayerAp8cVGQ$default = ColorKt.m493graphicsLayerAp8cVGQ$default(modifier, ((Number) createTransitionAnimation.value$delegate.getValue()).floatValue(), ((Number) createTransitionAnimation.value$delegate.getValue()).floatValue(), ((Number) ArcSplineKt.createTransitionAnimation(transition, valueOf3, valueOf4, value2, twoWayConverterImpl, gapComposer, 196608).value$delegate.getValue()).floatValue(), 0.0f, null, 131064);
                gapComposer.end(false);
                break;
            case 1:
                long j = ((Color) obj).value;
                Composer composer = (Composer) obj2;
                int intValue = ((Number) obj3).intValue();
                if ((intValue & 6) == 0) {
                    intValue |= ((GapComposer) composer).changed(j) ? 4 : 2;
                }
                GapComposer gapComposer2 = (GapComposer) composer;
                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    DefaultTextContextMenuDropdownProvider_androidKt.m286IconBoxRPmYEkk(((TextContextMenuItem) obj4).leadingIcon, j, gapComposer2, (intValue << 3) & 112);
                    break;
                }
            case 2:
                long j2 = ((Color) obj).value;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Number) obj3).intValue();
                GapComposer gapComposer3 = (GapComposer) composer2;
                if (!gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    TextContextMenuHelperApi28.INSTANCE.IconBox((Drawable) obj4, gapComposer3, 48);
                    break;
                }
            case 3:
                Composer composer3 = (Composer) obj2;
                int intValue3 = ((Number) obj3).intValue();
                GapComposer gapComposer4 = (GapComposer) composer3;
                if (!gapComposer4.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    ((Function2) obj4).invoke(gapComposer4, 0);
                    break;
                }
            case 4:
                TooltipScopeImpl tooltipScopeImpl = (TooltipScopeImpl) obj;
                Composer composer4 = (Composer) obj2;
                int intValue4 = ((Number) obj3).intValue();
                if ((intValue4 & 6) == 0) {
                    intValue4 |= (intValue4 & 8) == 0 ? ((GapComposer) composer4).changed(tooltipScopeImpl) : ((GapComposer) composer4).changedInstance(tooltipScopeImpl) ? 4 : 2;
                }
                GapComposer gapComposer5 = (GapComposer) composer4;
                if (!gapComposer5.shouldExecute(intValue4 & 1, (intValue4 & 19) != 18)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    TooltipKt.m364PlainTooltipgv3ox5I(tooltipScopeImpl, null, 0.0f, null, 0L, 0L, Expect_jvmKt.rememberComposableLambda(-999924215, new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(null == true ? 1 : 0, (String) obj4), gapComposer5), gapComposer5, (intValue4 & 14) | 805306368);
                    break;
                }
            default:
                ((Number) obj3).intValue();
                ((ComposableLambdaImpl) obj4).invoke(obj2, (Object) 0);
                break;
        }
        return unit;
    }
}
