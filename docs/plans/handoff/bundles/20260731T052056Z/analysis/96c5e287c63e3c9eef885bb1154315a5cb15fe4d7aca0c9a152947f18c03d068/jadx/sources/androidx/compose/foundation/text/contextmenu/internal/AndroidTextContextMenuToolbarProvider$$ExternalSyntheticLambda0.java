package androidx.compose.foundation.text.contextmenu.internal;

import android.os.Handler;
import android.os.Looper;
import android.view.ActionMode;
import android.view.View;
import androidx.compose.ui.window.AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.wikipedia.views.ViewAnimations$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AndroidTextContextMenuToolbarProvider f$0;

    public /* synthetic */ AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda0(AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider, int i) {
        this.$r8$classId = i;
        this.f$0 = androidTextContextMenuToolbarProvider;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider = this.f$0;
        switch (i) {
            case 0:
                Function0 function0 = (Function0) obj;
                View view = androidTextContextMenuToolbarProvider.view;
                Handler handler = view.getHandler();
                if ((handler != null ? handler.getLooper() : null) == Looper.myLooper()) {
                    function0.invoke();
                } else {
                    Handler handler2 = view.getHandler();
                    if (handler2 != null) {
                        handler2.post(new ViewAnimations$$ExternalSyntheticLambda0(1, function0));
                    }
                }
                return unit;
            case 1:
                ActionMode actionMode = androidTextContextMenuToolbarProvider.actionMode;
                if (actionMode != null) {
                    actionMode.invalidate();
                }
                return unit;
            case 2:
                ActionMode actionMode2 = androidTextContextMenuToolbarProvider.actionMode;
                if (actionMode2 != null) {
                    actionMode2.invalidateContentRect();
                }
                return unit;
            default:
                androidTextContextMenuToolbarProvider.snapshotStateObserver.start();
                return new AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1(7, androidTextContextMenuToolbarProvider);
        }
    }
}
