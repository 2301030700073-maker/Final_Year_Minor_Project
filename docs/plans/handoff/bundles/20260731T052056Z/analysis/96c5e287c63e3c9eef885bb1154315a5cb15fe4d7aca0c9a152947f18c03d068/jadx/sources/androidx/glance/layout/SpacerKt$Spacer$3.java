package androidx.glance.layout;

import androidx.compose.animation.EnterExitState;
import androidx.compose.animation.ExitTransitionImpl;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.ComposedModifier;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.semantics.AppendedSemanticsElement;
import androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5$1$1;
import androidx.compose.ui.window.DialogLayout;
import androidx.compose.ui.window.PopupLayout;
import androidx.glance.GlanceModifier;
import androidx.glance.appwidget.lazy.LazyListKt$applyListScope$1$1$2$1;
import androidx.work.Operation$State;
import coil3.util.UtilsKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SpacerKt$Spacer$3 extends Lambda implements Function2 {
    public final /* synthetic */ Object $modifier;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SpacerKt$Spacer$3(int i, int i2, Object obj) {
        super(2);
        this.$r8$classId = i2;
        this.$modifier = obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        boolean z = false;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.$modifier;
        switch (i) {
            case 0:
                ((Number) obj2).intValue();
                Operation$State.Spacer((GlanceModifier) obj3, (GapComposer) obj, 1);
                break;
            case 1:
                EnterExitState enterExitState = (EnterExitState) obj;
                EnterExitState enterExitState2 = (EnterExitState) obj2;
                EnterExitState enterExitState3 = EnterExitState.PostExit;
                if (enterExitState == enterExitState3 && enterExitState2 == enterExitState3 && !((ExitTransitionImpl) obj3).data.hold) {
                    z = true;
                }
                break;
            case 2:
                Modifier modifier = (Modifier) obj;
                Modifier modifier2 = (Modifier.Element) obj2;
                GapComposer gapComposer = (GapComposer) obj3;
                if (modifier2 instanceof ComposedModifier) {
                    Function3 function3 = ((ComposedModifier) modifier2).factory;
                    TypeIntrinsics.beforeCheckcastToFunctionOfArity(3, function3);
                    modifier2 = AbsoluteAlignment.materializeImpl(gapComposer, (Modifier) function3.invoke(Modifier.Companion.$$INSTANCE, gapComposer, 0));
                }
                break;
            case 3:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue = ((Number) obj2).intValue();
                if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    List list = (List) obj3;
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        Function2 function2 = (Function2) list.get(i2);
                        long j = gapComposer2.compositeKeyHashCode;
                        int i3 = (int) (j ^ (j >>> 32));
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.VirtualConstructor;
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m327setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                        function2.invoke(gapComposer2, 0);
                        gapComposer2.end(true);
                    }
                    break;
                } else {
                    gapComposer2.skipToGroupEnd();
                    break;
                }
            case 4:
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue2 = ((Number) obj2).intValue();
                if (gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    ((AbstractComposeView) obj3).Content(0, gapComposer3);
                    break;
                } else {
                    gapComposer3.skipToGroupEnd();
                    break;
                }
            case 5:
                ((Number) obj2).intValue();
                ((ComposeView) obj3).Content(Updater.updateChangedFlags(1), (GapComposer) obj);
                break;
            case 6:
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue3 = ((Number) obj2).intValue();
                if (gapComposer4.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    Object rememberedValue = gapComposer4.rememberedValue();
                    if (rememberedValue == Composer$Companion.Empty) {
                        rememberedValue = AndroidPopup_androidKt$Popup$5$1$1.INSTANCE$1;
                        gapComposer4.updateRememberedValue(rememberedValue);
                    }
                    UtilsKt.DialogLayout(0, gapComposer4, new AppendedSemanticsElement((Function1) rememberedValue, false), (Function2) ((MutableState) obj3).getValue());
                    break;
                } else {
                    gapComposer4.skipToGroupEnd();
                    break;
                }
            case 7:
                ((Number) obj2).intValue();
                ((DialogLayout) obj3).Content(Updater.updateChangedFlags(1), (GapComposer) obj);
                break;
            case 8:
                ((Number) obj2).intValue();
                ((PopupLayout) obj3).Content(Updater.updateChangedFlags(1), (GapComposer) obj);
                break;
            default:
                GapComposer gapComposer5 = (GapComposer) obj;
                if ((((Number) obj2).intValue() & 3) != 2 || !gapComposer5.getSkipping()) {
                    ((Function3) obj3).invoke(new LazyListKt$applyListScope$1$1$2$1(), gapComposer5, 0);
                    break;
                } else {
                    gapComposer5.skipToGroupEnd();
                    break;
                }
                break;
        }
        return unit;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SpacerKt$Spacer$3(int i, Object obj) {
        super(2);
        this.$r8$classId = i;
        this.$modifier = obj;
    }
}
