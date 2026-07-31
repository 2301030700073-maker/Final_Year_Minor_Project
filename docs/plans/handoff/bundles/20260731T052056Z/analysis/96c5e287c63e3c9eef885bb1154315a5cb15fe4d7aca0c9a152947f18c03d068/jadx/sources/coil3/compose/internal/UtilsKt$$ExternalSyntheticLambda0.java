package coil3.compose.internal;

import coil3.compose.AsyncImagePainter;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class UtilsKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;
    public final /* synthetic */ Function1 f$1;

    public /* synthetic */ UtilsKt$$ExternalSyntheticLambda0(Function1 function1, Function1 function12, int i) {
        this.$r8$classId = i;
        this.f$0 = function1;
        this.f$1 = function12;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function1 function1 = this.f$1;
        Function1 function12 = this.f$0;
        switch (i) {
            case 0:
                AsyncImagePainter.State state = (AsyncImagePainter.State) obj;
                if (!(state instanceof AsyncImagePainter.State.Loading)) {
                    if (!(state instanceof AsyncImagePainter.State.Success)) {
                        if (!(state instanceof AsyncImagePainter.State.Error) && !(state instanceof AsyncImagePainter.State.Empty)) {
                            ContextsKt$$ExternalSyntheticBUOutline0.m();
                            break;
                        }
                    } else if (function1 != null) {
                        function1.invoke(state);
                        break;
                    }
                } else if (function12 != null) {
                    function12.invoke(state);
                    break;
                }
                break;
            case 1:
                function12.invoke(obj);
                function1.invoke(obj);
                break;
            default:
                function12.invoke(obj);
                function1.invoke(obj);
                break;
        }
        return unit;
    }
}
