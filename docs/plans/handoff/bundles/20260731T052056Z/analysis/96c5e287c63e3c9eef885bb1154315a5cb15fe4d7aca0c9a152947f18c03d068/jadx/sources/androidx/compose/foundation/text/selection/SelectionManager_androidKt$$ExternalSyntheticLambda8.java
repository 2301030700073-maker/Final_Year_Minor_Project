package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SelectionManager_androidKt$$ExternalSyntheticLambda8 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function0 f$0;
    public final /* synthetic */ Function0 f$1;

    public /* synthetic */ SelectionManager_androidKt$$ExternalSyntheticLambda8(Function0 function0, Function0 function02, int i) {
        this.$r8$classId = i;
        this.f$0 = function0;
        this.f$1 = function02;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function0 function0 = this.f$1;
        Function0 function02 = this.f$0;
        TextContextMenuSession textContextMenuSession = (TextContextMenuSession) obj;
        switch (i) {
            case 0:
                function02.invoke();
                if (function0 != null ? ((Boolean) function0.invoke()).booleanValue() : true) {
                    textContextMenuSession.close();
                    break;
                }
                break;
            default:
                function02.invoke();
                if (function0 != null ? ((Boolean) function0.invoke()).booleanValue() : true) {
                    textContextMenuSession.close();
                    break;
                }
                break;
        }
        return unit;
    }
}
