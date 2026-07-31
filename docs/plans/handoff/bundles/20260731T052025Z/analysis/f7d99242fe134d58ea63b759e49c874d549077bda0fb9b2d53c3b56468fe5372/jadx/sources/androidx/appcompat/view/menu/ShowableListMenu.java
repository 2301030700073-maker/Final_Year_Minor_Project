package androidx.appcompat.view.menu;

import androidx.appcompat.widget.DropDownListView;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ShowableListMenu {
    void dismiss();

    DropDownListView getListView();

    boolean isShowing();

    void show();
}
