package androidx.compose.ui.window;

import android.os.Handler;
import android.os.Looper;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.AndroidComposeView$$ExternalSyntheticLambda4;
import androidx.compose.ui.unit.IntSize;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidPopup_androidKt$Popup$7$1 extends Lambda implements Function1 {
    public final /* synthetic */ PopupLayout $popupLayout;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AndroidPopup_androidKt$Popup$7$1(PopupLayout popupLayout, int i) {
        super(1);
        this.$r8$classId = i;
        this.$popupLayout = popupLayout;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        PopupLayout popupLayout = this.$popupLayout;
        switch (i) {
            case 0:
                LayoutCoordinates parentLayoutCoordinates = ((LayoutCoordinates) obj).getParentLayoutCoordinates();
                parentLayoutCoordinates.getClass();
                popupLayout.updateParentLayoutCoordinates(parentLayoutCoordinates);
                break;
            case 1:
                popupLayout.m786setPopupContentSizefhxjrPA(new IntSize(((IntSize) obj).packedValue));
                popupLayout.updatePosition();
                break;
            default:
                Function0 function0 = (Function0) obj;
                Handler handler = popupLayout.getHandler();
                if ((handler != null ? handler.getLooper() : null) != Looper.myLooper()) {
                    Handler handler2 = popupLayout.getHandler();
                    if (handler2 != null) {
                        handler2.post(new AndroidComposeView$$ExternalSyntheticLambda4(5, function0));
                        break;
                    }
                } else {
                    function0.invoke();
                    break;
                }
                break;
        }
        return unit;
    }
}
