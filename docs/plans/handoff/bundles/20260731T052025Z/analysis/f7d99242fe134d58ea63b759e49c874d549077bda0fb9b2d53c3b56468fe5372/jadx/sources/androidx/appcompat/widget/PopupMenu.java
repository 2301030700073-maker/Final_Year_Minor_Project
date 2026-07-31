package androidx.appcompat.widget;

import android.content.Context;
import android.view.MenuItem;
import android.view.View;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.biometric.BiometricPrompt;
import com.fsck.k9.R;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PopupMenu {
    public final MenuBuilder mMenu;
    public OnMenuItemClickListener mMenuItemClickListener;
    public final MenuPopupHelper mPopup;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnMenuItemClickListener {
        void onMenuItemClick(MenuItem menuItem);
    }

    public PopupMenu(Context context, View view) {
        MenuBuilder menuBuilder = new MenuBuilder(context);
        this.mMenu = menuBuilder;
        menuBuilder.mCallback = new BiometricPrompt(9, this);
        MenuPopupHelper menuPopupHelper = new MenuPopupHelper(context, menuBuilder, view, false, R.attr.popupMenuStyle, 0);
        this.mPopup = menuPopupHelper;
        menuPopupHelper.mDropDownGravity = 0;
        menuPopupHelper.mOnDismissListener = new AnonymousClass2();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.appcompat.widget.PopupMenu$2, reason: invalid class name */
    public final class AnonymousClass2 implements PopupWindow.OnDismissListener {
        @Override // android.widget.PopupWindow.OnDismissListener
        public final void onDismiss() {
        }
    }
}
