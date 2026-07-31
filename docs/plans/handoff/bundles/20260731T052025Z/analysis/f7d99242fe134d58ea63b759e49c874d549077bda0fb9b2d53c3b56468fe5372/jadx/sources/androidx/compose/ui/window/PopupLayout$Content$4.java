package androidx.compose.ui.window;

import androidx.compose.animation.EnterExitState;
import androidx.compose.animation.ExitTransitionImpl;
import androidx.compose.runtime.Composer;
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
import androidx.core.util.DebugUtils;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PopupLayout$Content$4 extends Lambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $tmp0_rcvr;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PopupLayout$Content$4(int i, Object obj) {
        super(2);
        this.$r8$classId = i;
        this.$tmp0_rcvr = obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        boolean z = false;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.$tmp0_rcvr;
        switch (i) {
            case 0:
                ((Number) obj2).intValue();
                ((PopupLayout) obj3).Content((Composer) obj, Updater.updateChangedFlags(1));
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
                Composer composer = (Composer) obj3;
                if (modifier2 instanceof ComposedModifier) {
                    Function3 function3 = ((ComposedModifier) modifier2).factory;
                    TypeIntrinsics.beforeCheckcastToFunctionOfArity(3, function3);
                    modifier2 = AbsoluteAlignment.materializeImpl(composer, (Modifier) function3.invoke(Modifier.Companion.$$INSTANCE, composer, 0));
                }
                break;
            case 3:
                Composer composer2 = (Composer) obj;
                int intValue = ((Number) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer2;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    List list = (List) obj3;
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        Function2 function2 = (Function2) list.get(i2);
                        long j = gapComposer.compositeKeyHashCode;
                        int i3 = (int) (j ^ (j >>> 32));
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.VirtualConstructor;
                        gapComposer.startReusableNode();
                        if (gapComposer.inserting) {
                            gapComposer.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer.useNode();
                        }
                        Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                        function2.invoke(gapComposer, 0);
                        gapComposer.end(true);
                    }
                    break;
                } else {
                    gapComposer.skipToGroupEnd();
                    break;
                }
            case 4:
                Composer composer3 = (Composer) obj;
                int intValue2 = ((Number) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer3;
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    ((AbstractComposeView) obj3).Content(gapComposer2, 0);
                    break;
                } else {
                    gapComposer2.skipToGroupEnd();
                    break;
                }
            case 5:
                ((Number) obj2).intValue();
                ((ComposeView) obj3).Content((Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 6:
                Composer composer4 = (Composer) obj;
                int intValue3 = ((Number) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) composer4;
                if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    Object rememberedValue = gapComposer3.rememberedValue();
                    if (rememberedValue == Composer.Companion.Empty) {
                        rememberedValue = AndroidPopup_androidKt$Popup$5$1$1.INSTANCE$1;
                        gapComposer3.updateRememberedValue(rememberedValue);
                    }
                    DebugUtils.access$DialogLayout(new AppendedSemanticsElement((Function1) rememberedValue, false), (Function2) ((MutableState) obj3).getValue(), gapComposer3, 0);
                    break;
                } else {
                    gapComposer3.skipToGroupEnd();
                    break;
                }
            default:
                ((Number) obj2).intValue();
                ((DialogLayout) obj3).Content((Composer) obj, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PopupLayout$Content$4(AbstractComposeView abstractComposeView, int i, int i2) {
        super(2);
        this.$r8$classId = i2;
        this.$tmp0_rcvr = abstractComposeView;
    }
}
