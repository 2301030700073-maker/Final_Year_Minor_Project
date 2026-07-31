package com.google.android.material.navigation;

import android.view.MenuItem;
import android.view.SubMenu;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.compose.animation.core.Animation;
import java.util.ArrayList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NavigationBarMenuBuilder {
    public final MenuBuilder menuBuilder;
    public int contentItemCount = 0;
    public int visibleContentItemCount = 0;
    public int visibleMainItemCount = 0;
    public final ArrayList items = new ArrayList();

    public NavigationBarMenuBuilder(MenuBuilder menuBuilder) {
        this.menuBuilder = menuBuilder;
        refreshItems();
    }

    public final MenuItem getItemAt(int i) {
        return (MenuItem) this.items.get(i);
    }

    public final void refreshItems() {
        ArrayList arrayList = this.items;
        arrayList.clear();
        this.contentItemCount = 0;
        this.visibleContentItemCount = 0;
        this.visibleMainItemCount = 0;
        int i = 0;
        while (true) {
            MenuBuilder menuBuilder = this.menuBuilder;
            if (i >= menuBuilder.mItems.size()) {
                break;
            }
            MenuItem item = menuBuilder.getItem(i);
            if (item.hasSubMenu()) {
                if (!arrayList.isEmpty() && !(Animation.CC.m(1, arrayList) instanceof DividerMenuItem) && item.isVisible()) {
                    arrayList.add(new DividerMenuItem());
                }
                arrayList.add(item);
                SubMenu subMenu = item.getSubMenu();
                for (int i2 = 0; i2 < subMenu.size(); i2++) {
                    MenuItem item2 = subMenu.getItem(i2);
                    if (!item.isVisible()) {
                        item2.setVisible(false);
                    }
                    arrayList.add(item2);
                    this.contentItemCount++;
                    if (item2.isVisible()) {
                        this.visibleContentItemCount++;
                    }
                }
                arrayList.add(new DividerMenuItem());
            } else {
                arrayList.add(item);
                this.contentItemCount++;
                if (item.isVisible()) {
                    this.visibleContentItemCount++;
                    this.visibleMainItemCount++;
                }
            }
            i++;
        }
        if (arrayList.isEmpty() || !(Animation.CC.m(1, arrayList) instanceof DividerMenuItem)) {
            return;
        }
        arrayList.remove(arrayList.size() - 1);
    }
}
