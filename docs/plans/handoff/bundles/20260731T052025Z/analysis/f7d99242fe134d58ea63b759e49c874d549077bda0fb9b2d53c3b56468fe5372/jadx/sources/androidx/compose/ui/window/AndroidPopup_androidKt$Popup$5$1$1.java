package androidx.compose.ui.window;

import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidPopup_androidKt$Popup$5$1$1 extends Lambda implements Function1 {
    public static final AndroidPopup_androidKt$Popup$5$1$1 INSTANCE;
    public static final AndroidPopup_androidKt$Popup$5$1$1 INSTANCE$1;
    public static final AndroidPopup_androidKt$Popup$5$1$1 INSTANCE$2;
    public static final AndroidPopup_androidKt$Popup$5$1$1 INSTANCE$3;
    public static final AndroidPopup_androidKt$Popup$5$1$1 INSTANCE$4;
    public static final AndroidPopup_androidKt$Popup$5$1$1 INSTANCE$5;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 1;
        INSTANCE$1 = new AndroidPopup_androidKt$Popup$5$1$1(i, 1);
        INSTANCE = new AndroidPopup_androidKt$Popup$5$1$1(i, 0);
        INSTANCE$2 = new AndroidPopup_androidKt$Popup$5$1$1(i, 2);
        INSTANCE$3 = new AndroidPopup_androidKt$Popup$5$1$1(i, 3);
        INSTANCE$4 = new AndroidPopup_androidKt$Popup$5$1$1(i, 4);
        INSTANCE$5 = new AndroidPopup_androidKt$Popup$5$1$1(i, 5);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AndroidPopup_androidKt$Popup$5$1$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((Number) obj).longValue();
                break;
            case 1:
                KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
                ((SemanticsPropertyReceiver) obj).set(SemanticsProperties.IsDialog, unit);
                break;
            case 2:
                break;
            case 3:
                KProperty[] kPropertyArr2 = SemanticsPropertiesKt.$$delegatedProperties;
                ((SemanticsPropertyReceiver) obj).set(SemanticsProperties.IsPopup, unit);
                break;
            case 4:
                break;
            default:
                PopupLayout popupLayout = (PopupLayout) obj;
                if (popupLayout.isAttachedToWindow()) {
                    popupLayout.updatePosition();
                    break;
                }
                break;
        }
        return unit;
    }
}
