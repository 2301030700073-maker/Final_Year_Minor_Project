package com.google.android.material.navigation;

import android.content.Context;
import android.view.SubMenu;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.compose.animation.core.Animation;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NavigationBarMenu extends MenuBuilder {
    public final int maxItemCount;
    public final Class viewClass;

    public NavigationBarMenu(Context context, Class cls, int i) {
        super(context);
        this.viewClass = cls;
        this.maxItemCount = i;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public final MenuItemImpl addInternal(int i, int i2, int i3, CharSequence charSequence) {
        int size = this.mItems.size() + 1;
        int i4 = this.maxItemCount;
        if (size <= i4) {
            stopDispatchingItemsChanged();
            MenuItemImpl addInternal = super.addInternal(i, i2, i3, charSequence);
            startDispatchingItemsChanged();
            return addInternal;
        }
        String simpleName = this.viewClass.getSimpleName();
        StringBuilder sb = new StringBuilder("Maximum number of items supported by ");
        sb.append(simpleName);
        sb.append(" is ");
        sb.append(i4);
        sb.append(". Limit can be checked with ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(sb, simpleName, "#getMaxItemCount()"));
        return null;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        throw new UnsupportedOperationException(this.viewClass.getSimpleName().concat(" does not support submenus"));
    }
}
