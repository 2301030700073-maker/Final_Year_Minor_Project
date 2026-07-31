package androidx.core.view;

import android.content.Context;
import android.util.Log;
import android.view.View;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.PopupMenu$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ActionProvider {
    public final Context mContext;
    public PopupMenu$1 mVisibilityListener;

    public ActionProvider(Context context) {
        this.mContext = context;
    }

    public boolean hasSubMenu() {
        return false;
    }

    public boolean isVisible() {
        return true;
    }

    public abstract View onCreateActionView();

    public View onCreateActionView(MenuItemImpl menuItemImpl) {
        return onCreateActionView();
    }

    public boolean onPerformDefaultAction() {
        return false;
    }

    public abstract boolean overridesItemVisibility();

    public void setVisibilityListener(PopupMenu$1 popupMenu$1) {
        if (this.mVisibilityListener != null) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.mVisibilityListener = popupMenu$1;
    }

    public void onPrepareSubMenu(SubMenuBuilder subMenuBuilder) {
    }
}
