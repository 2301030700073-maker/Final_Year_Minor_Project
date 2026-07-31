package net.thunderbird.core.common.state.debug;

import androidx.compose.ui.unit.IntOffsetKt;
import com.google.zxing.BinaryBitmap;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.internal.MapEntrySerializer$$ExternalSyntheticLambda0;
import net.thunderbird.core.common.state.StateMachine;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CommonStatePrettyPrinter$$ExternalSyntheticLambda1 implements Function0 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ ArrayDeque f$0;
    public final /* synthetic */ CommonStatePrettyPrinter f$1;

    public /* synthetic */ CommonStatePrettyPrinter$$ExternalSyntheticLambda1(ArrayDeque arrayDeque, CommonStatePrettyPrinter commonStatePrettyPrinter) {
        this.f$0 = arrayDeque;
        this.f$1 = commonStatePrettyPrinter;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        int i2 = 1;
        ArrayDeque arrayDeque = this.f$0;
        CommonStatePrettyPrinter commonStatePrettyPrinter = this.f$1;
        switch (i) {
            case 0:
                StateMachine.StateTransitionRecord stateTransitionRecord = (StateMachine.StateTransitionRecord) arrayDeque.last();
                StringBuilder sb = new StringBuilder();
                String str = (String) commonStatePrettyPrinter.logTag;
                str.getClass();
                sb.append("── " + str + ": Latest transition ──");
                sb.append('\n');
                int lastIndex = IntOffsetKt.getLastIndex(arrayDeque);
                sb.append(((BinaryBitmap) commonStatePrettyPrinter.formatter).buildTransitionRecord(stateTransitionRecord, lastIndex == 0 ? null : ((StateMachine.StateTransitionRecord) arrayDeque.get(lastIndex - 1)).timestamp));
                return sb.toString();
            default:
                StringBuilder sb2 = new StringBuilder();
                MapEntrySerializer$$ExternalSyntheticLambda0 mapEntrySerializer$$ExternalSyntheticLambda0 = new MapEntrySerializer$$ExternalSyntheticLambda0(i2, arrayDeque, commonStatePrettyPrinter);
                commonStatePrettyPrinter.getClass();
                sb2.append("══ State machine history dump ══");
                sb2.append('\n');
                sb2.append("BEGINNING OF HISTORY DUMP:");
                sb2.append('\n');
                sb2.append("---");
                sb2.append('\n');
                mapEntrySerializer$$ExternalSyntheticLambda0.invoke(sb2);
                sb2.append("---");
                sb2.append('\n');
                sb2.append("END OF HISTORY DUMP");
                sb2.append('\n');
                return sb2.toString();
        }
    }

    public /* synthetic */ CommonStatePrettyPrinter$$ExternalSyntheticLambda1(CommonStatePrettyPrinter commonStatePrettyPrinter, ArrayDeque arrayDeque) {
        this.f$1 = commonStatePrettyPrinter;
        this.f$0 = arrayDeque;
    }
}
