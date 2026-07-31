package androidx.compose.ui.window;

import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.compose.runtime.StaticProvidableCompositionLocal;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AndroidPopup_androidKt {
    public static final StaticProvidableCompositionLocal LocalPopupTestTag = new StaticProvidableCompositionLocal(1, AndroidPopup_androidKt$Popup$popupId$1$1.INSTANCE$3);
    public static final StaticProvidableCompositionLocal LocalIsInPopupLayout = new StaticProvidableCompositionLocal(1, AndroidPopup_androidKt$Popup$popupId$1$1.INSTANCE$2);

    /* JADX WARN: Removed duplicated region for block: B:13:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Popup(androidx.compose.ui.window.PopupPositionProvider r24, kotlin.jvm.functions.Function0 r25, final androidx.compose.ui.window.PopupProperties r26, final androidx.compose.runtime.internal.ComposableLambdaImpl r27, androidx.compose.runtime.GapComposer r28, final int r29, final int r30) {
        /*
            Method dump skipped, instructions count: 616
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.window.AndroidPopup_androidKt.Popup(androidx.compose.ui.window.PopupPositionProvider, kotlin.jvm.functions.Function0, androidx.compose.ui.window.PopupProperties, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final boolean isFlagSecureEnabled(View view) {
        ViewGroup.LayoutParams layoutParams = view.getRootView().getLayoutParams();
        WindowManager.LayoutParams layoutParams2 = layoutParams instanceof WindowManager.LayoutParams ? (WindowManager.LayoutParams) layoutParams : null;
        return (layoutParams2 == null || (layoutParams2.flags & 8192) == 0) ? false : true;
    }
}
