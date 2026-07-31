package androidx.compose.foundation.text.selection;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TextFieldSelectionManagerKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ int f$3;

    public /* synthetic */ TextFieldSelectionManagerKt$$ExternalSyntheticLambda0(Modifier modifier, Function0 function0, boolean z, int i) {
        this.f$1 = modifier;
        this.f$2 = function0;
        this.f$0 = z;
        this.f$3 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$3;
        boolean z = this.f$0;
        Object obj3 = this.f$2;
        Object obj4 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                SimpleLayoutKt.TextFieldSelectionHandle(z, (ResolvedTextDirection) obj4, (TextFieldSelectionManager) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                SimpleLayoutKt.SelectionHandleIcon((Modifier) obj4, (Function0) obj3, z, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }

    public /* synthetic */ TextFieldSelectionManagerKt$$ExternalSyntheticLambda0(boolean z, ResolvedTextDirection resolvedTextDirection, TextFieldSelectionManager textFieldSelectionManager, int i) {
        this.f$0 = z;
        this.f$1 = resolvedTextDirection;
        this.f$2 = textFieldSelectionManager;
        this.f$3 = i;
    }
}
