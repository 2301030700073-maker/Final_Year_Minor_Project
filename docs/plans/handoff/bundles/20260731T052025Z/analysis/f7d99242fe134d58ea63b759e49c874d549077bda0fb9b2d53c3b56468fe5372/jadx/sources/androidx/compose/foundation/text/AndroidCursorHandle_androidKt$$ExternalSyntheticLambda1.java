package androidx.compose.foundation.text;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeElement;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.unit.DpSize;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.thunderbird.feature.mail.message.list.ui.component.molecule.MessageBodyContentKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AndroidCursorHandle_androidKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ long f$0;
    public final /* synthetic */ Modifier f$1;

    public /* synthetic */ AndroidCursorHandle_androidKt$$ExternalSyntheticLambda1(long j, Modifier modifier) {
        this.f$0 = j;
        this.f$1 = modifier;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Modifier then;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        long j = this.f$0;
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (i) {
            case 0:
                int intValue = num.intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Modifier modifier = this.f$1;
                    if (j == 9205357640488583168L) {
                        gapComposer.startReplaceGroup(-1243644858);
                        AndroidCursorHandle_androidKt.DefaultCursorHandle(0, 0, gapComposer, modifier);
                        gapComposer.end(false);
                        break;
                    } else {
                        gapComposer.startReplaceGroup(-1244013944);
                        then = modifier.then(new SizeElement(DpSize.m749getWidthD9Ej5fM(j), (r13 & 2) != 0 ? Float.NaN : DpSize.m748getHeightD9Ej5fM(j), (r13 & 4) != 0 ? Float.NaN : 0.0f, (r13 & 8) != 0 ? Float.NaN : 0.0f, false));
                        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopCenter, false);
                        long j2 = gapComposer.compositeKeyHashCode;
                        int i2 = (int) (j2 ^ (j2 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                        Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, then);
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
                        Updater.m380setimpl(gapComposer, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                        Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                        Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                        AndroidCursorHandle_androidKt.DefaultCursorHandle(0, 1, gapComposer, null);
                        gapComposer.end(true);
                        gapComposer.end(false);
                        break;
                    }
                }
            default:
                num.getClass();
                MessageBodyContentKt.m1037AccountIndicatorIcon3JVO9M(Updater.updateChangedFlags(1), j, composer, this.f$1);
                break;
        }
        return unit;
    }

    public /* synthetic */ AndroidCursorHandle_androidKt$$ExternalSyntheticLambda1(long j, Modifier modifier, int i) {
        this.f$0 = j;
        this.f$1 = modifier;
    }
}
