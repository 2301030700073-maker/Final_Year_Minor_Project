package androidx.appcompat.widget;

import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.compose.foundation.text.TextLinkScope$$ExternalSyntheticLambda3;
import okhttp3.Request;
import org.wikipedia.edit.EditHandler;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PopupMenu$2 implements PopupWindow.OnDismissListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public /* synthetic */ PopupMenu$2(int i, Object obj) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 0:
                TextLinkScope$$ExternalSyntheticLambda3 textLinkScope$$ExternalSyntheticLambda3 = (TextLinkScope$$ExternalSyntheticLambda3) ((Request.Builder) obj).tags;
                if (textLinkScope$$ExternalSyntheticLambda3 != null) {
                    EditHandler editHandler = (EditHandler) textLinkScope$$ExternalSyntheticLambda3.f$0;
                    View view = (View) textLinkScope$$ExternalSyntheticLambda3.f$1;
                    View view2 = editHandler.fragment.mView;
                    ViewGroup viewGroup = view2 instanceof ViewGroup ? (ViewGroup) view2 : null;
                    if (viewGroup != null) {
                        viewGroup.removeView(view);
                        break;
                    }
                }
                break;
            default:
                ((MenuPopupHelper) obj).onDismiss();
                break;
        }
    }
}
