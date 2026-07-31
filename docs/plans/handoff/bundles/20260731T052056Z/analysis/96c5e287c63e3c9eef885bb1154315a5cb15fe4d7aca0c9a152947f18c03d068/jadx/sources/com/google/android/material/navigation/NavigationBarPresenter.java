package com.google.android.material.navigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.MenuItem;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.transition.AutoTransition;
import androidx.transition.TransitionManager;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.BadgeState;
import com.google.android.material.bottomnavigation.BottomNavigationMenuView;
import com.google.android.material.internal.ParcelableSparseArray;
import org.maplibre.android.util.DefaultStyle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NavigationBarPresenter implements MenuPresenter {
    public int id;
    public BottomNavigationMenuView menuView;
    public boolean updateSuspended;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new DefaultStyle.AnonymousClass1(4);
        public ParcelableSparseArray badgeSavedStates;
        public int selectedItemId;

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.selectedItemId);
            parcel.writeParcelable(this.badgeSavedStates, 0);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean collapseItemActionView(MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean expandItemActionView(MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final int getId() {
        return this.id;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void initForMenu(Context context, MenuBuilder menuBuilder) {
        this.menuView.initialize(menuBuilder);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            BottomNavigationMenuView bottomNavigationMenuView = this.menuView;
            SavedState savedState = (SavedState) parcelable;
            int i = savedState.selectedItemId;
            int size = bottomNavigationMenuView.menu.items.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    break;
                }
                MenuItem itemAt = bottomNavigationMenuView.menu.getItemAt(i2);
                if (i == itemAt.getItemId()) {
                    bottomNavigationMenuView.selectedItemId = i;
                    bottomNavigationMenuView.selectedItemPosition = i2;
                    bottomNavigationMenuView.setCheckedItem(itemAt);
                    break;
                }
                i2++;
            }
            Context context = this.menuView.getContext();
            ParcelableSparseArray parcelableSparseArray = savedState.badgeSavedStates;
            SparseArray sparseArray = new SparseArray(parcelableSparseArray.size());
            for (int i3 = 0; i3 < parcelableSparseArray.size(); i3++) {
                int keyAt = parcelableSparseArray.keyAt(i3);
                BadgeState.State state = (BadgeState.State) parcelableSparseArray.valueAt(i3);
                sparseArray.put(keyAt, state != null ? new BadgeDrawable(context, state) : null);
            }
            BottomNavigationMenuView bottomNavigationMenuView2 = this.menuView;
            SparseArray sparseArray2 = bottomNavigationMenuView2.badgeDrawables;
            for (int i4 = 0; i4 < sparseArray.size(); i4++) {
                int keyAt2 = sparseArray.keyAt(i4);
                if (sparseArray2.indexOfKey(keyAt2) < 0) {
                    sparseArray2.append(keyAt2, (BadgeDrawable) sparseArray.get(keyAt2));
                }
            }
            NavigationBarMenuItemView[] navigationBarMenuItemViewArr = bottomNavigationMenuView2.buttons;
            if (navigationBarMenuItemViewArr != null) {
                for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                    if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                        NavigationBarItemView navigationBarItemView = (NavigationBarItemView) navigationBarMenuItemView;
                        BadgeDrawable badgeDrawable = (BadgeDrawable) sparseArray2.get(navigationBarItemView.getId());
                        if (badgeDrawable != null) {
                            navigationBarItemView.setBadge(badgeDrawable);
                        }
                    }
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.selectedItemId = this.menuView.getSelectedItemId();
        SparseArray<BadgeDrawable> badgeDrawables = this.menuView.getBadgeDrawables();
        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        for (int i = 0; i < badgeDrawables.size(); i++) {
            int keyAt = badgeDrawables.keyAt(i);
            BadgeDrawable valueAt = badgeDrawables.valueAt(i);
            parcelableSparseArray.put(keyAt, valueAt != null ? valueAt.state.overridingState : null);
        }
        savedState.badgeSavedStates = parcelableSparseArray;
        return savedState;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void updateMenuView(boolean z) {
        NavigationBarMenuBuilder navigationBarMenuBuilder;
        int i;
        AutoTransition autoTransition;
        if (this.updateSuspended) {
            return;
        }
        BottomNavigationMenuView bottomNavigationMenuView = this.menuView;
        if (z) {
            bottomNavigationMenuView.buildMenuView();
            return;
        }
        NavigationBarMenuBuilder navigationBarMenuBuilder2 = bottomNavigationMenuView.menu;
        if (navigationBarMenuBuilder2 == null || bottomNavigationMenuView.buttons == null) {
            return;
        }
        bottomNavigationMenuView.presenter.updateSuspended = true;
        navigationBarMenuBuilder2.refreshItems();
        bottomNavigationMenuView.presenter.updateSuspended = false;
        if (bottomNavigationMenuView.buttons != null && (navigationBarMenuBuilder = bottomNavigationMenuView.menu) != null && navigationBarMenuBuilder.items.size() == bottomNavigationMenuView.buttons.length) {
            for (0; i < bottomNavigationMenuView.buttons.length; i + 1) {
                if (!(bottomNavigationMenuView.menu.getItemAt(i) instanceof DividerMenuItem) || (bottomNavigationMenuView.buttons[i] instanceof NavigationBarDividerView)) {
                    i = ((bottomNavigationMenuView.menu.getItemAt(i) instanceof DividerMenuItem) || !((bottomNavigationMenuView.menu.getItemAt(i).hasSubMenu() && !(bottomNavigationMenuView.buttons[i] instanceof NavigationBarSubheaderView)) || ((bottomNavigationMenuView.menu.getItemAt(i).hasSubMenu() || (bottomNavigationMenuView.buttons[i] instanceof NavigationBarItemView)) ? false : true))) ? i + 1 : 0;
                }
            }
            int i2 = bottomNavigationMenuView.selectedItemId;
            int size = bottomNavigationMenuView.menu.items.size();
            for (int i3 = 0; i3 < size; i3++) {
                MenuItem itemAt = bottomNavigationMenuView.menu.getItemAt(i3);
                if (itemAt.isChecked()) {
                    bottomNavigationMenuView.setCheckedItem(itemAt);
                    bottomNavigationMenuView.selectedItemId = itemAt.getItemId();
                    bottomNavigationMenuView.selectedItemPosition = i3;
                }
            }
            if (i2 != bottomNavigationMenuView.selectedItemId && (autoTransition = bottomNavigationMenuView.set) != null) {
                TransitionManager.beginDelayedTransition(bottomNavigationMenuView, autoTransition);
            }
            int i4 = bottomNavigationMenuView.labelVisibilityMode;
            boolean z2 = i4 != -1 ? i4 == 0 : bottomNavigationMenuView.getCurrentVisibleContentItemCount() > 3;
            for (int i5 = 0; i5 < size; i5++) {
                bottomNavigationMenuView.presenter.updateSuspended = true;
                bottomNavigationMenuView.buttons[i5].setExpanded(bottomNavigationMenuView.expanded);
                NavigationBarMenuItemView navigationBarMenuItemView = bottomNavigationMenuView.buttons[i5];
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    NavigationBarItemView navigationBarItemView = (NavigationBarItemView) navigationBarMenuItemView;
                    navigationBarItemView.setLabelVisibilityMode(bottomNavigationMenuView.labelVisibilityMode);
                    navigationBarItemView.setItemIconGravity(bottomNavigationMenuView.itemIconGravity);
                    navigationBarItemView.setItemGravity(bottomNavigationMenuView.itemGravity);
                    navigationBarItemView.setShifting(z2);
                }
                if (bottomNavigationMenuView.menu.getItemAt(i5) instanceof MenuItemImpl) {
                    bottomNavigationMenuView.buttons[i5].initialize((MenuItemImpl) bottomNavigationMenuView.menu.getItemAt(i5));
                }
                bottomNavigationMenuView.presenter.updateSuspended = false;
            }
            return;
        }
        bottomNavigationMenuView.buildMenuView();
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
    }
}
