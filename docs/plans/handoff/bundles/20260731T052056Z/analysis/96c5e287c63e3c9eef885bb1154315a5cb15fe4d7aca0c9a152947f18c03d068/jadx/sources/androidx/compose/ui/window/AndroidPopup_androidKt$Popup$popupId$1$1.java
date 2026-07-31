package androidx.compose.ui.window;

import java.util.UUID;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidPopup_androidKt$Popup$popupId$1$1 extends Lambda implements Function0 {
    public static final AndroidPopup_androidKt$Popup$popupId$1$1 INSTANCE;
    public static final AndroidPopup_androidKt$Popup$popupId$1$1 INSTANCE$1;
    public static final AndroidPopup_androidKt$Popup$popupId$1$1 INSTANCE$2;
    public static final AndroidPopup_androidKt$Popup$popupId$1$1 INSTANCE$3;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 0;
        INSTANCE$1 = new AndroidPopup_androidKt$Popup$popupId$1$1(i, 1);
        INSTANCE$2 = new AndroidPopup_androidKt$Popup$popupId$1$1(i, 2);
        INSTANCE$3 = new AndroidPopup_androidKt$Popup$popupId$1$1(i, 3);
        INSTANCE = new AndroidPopup_androidKt$Popup$popupId$1$1(i, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AndroidPopup_androidKt$Popup$popupId$1$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.$r8$classId) {
            case 0:
                return UUID.randomUUID();
            case 1:
                return UUID.randomUUID();
            case 2:
                return Boolean.FALSE;
            default:
                return "DEFAULT_TEST_TAG";
        }
    }
}
