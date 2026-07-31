package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.ContextMenu_androidKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SelectionContainerKt$$ExternalSyntheticLambda6 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ SelectionManager f$0;
    public final /* synthetic */ SelectionRegistrarImpl f$1;
    public final /* synthetic */ ComposableLambdaImpl f$2;

    public /* synthetic */ SelectionContainerKt$$ExternalSyntheticLambda6(SelectionManager selectionManager, SelectionRegistrarImpl selectionRegistrarImpl, ComposableLambdaImpl composableLambdaImpl) {
        this.f$0 = selectionManager;
        this.f$1 = selectionRegistrarImpl;
        this.f$2 = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        SelectionManager selectionManager = this.f$0;
        ComposableLambdaImpl composableLambdaImpl = this.f$2;
        SelectionRegistrarImpl selectionRegistrarImpl = this.f$1;
        GapComposer gapComposer = (GapComposer) obj;
        int intValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    BasicTextKt.ContextMenuArea(selectionManager, Expect_jvmKt.rememberComposableLambda(-284825865, new SelectionContainerKt$$ExternalSyntheticLambda6(selectionRegistrarImpl, composableLambdaImpl, selectionManager), gapComposer), gapComposer, 48);
                    break;
                }
            default:
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Updater.CompositionLocalProvider(SelectionRegistrarKt.LocalSelectionRegistrar.defaultProvidedValue$runtime(selectionRegistrarImpl), Expect_jvmKt.rememberComposableLambda(610483127, new ContextMenu_androidKt$$ExternalSyntheticLambda1(composableLambdaImpl, selectionManager), gapComposer), gapComposer, 56);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ SelectionContainerKt$$ExternalSyntheticLambda6(SelectionRegistrarImpl selectionRegistrarImpl, ComposableLambdaImpl composableLambdaImpl, SelectionManager selectionManager) {
        this.f$1 = selectionRegistrarImpl;
        this.f$2 = composableLambdaImpl;
        this.f$0 = selectionManager;
    }
}
