package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import coil3.Extras;
import java.util.ArrayList;
import java.util.WeakHashMap;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NavigationMenuPresenter implements MenuPresenter {
    public NavigationMenuAdapter adapter;
    public int dividerInsetEnd;
    public int dividerInsetStart;
    public boolean hasCustomItemIconSize;
    public LinearLayout headerLayout;
    public ColorStateList iconTintList;
    public int id;
    public Drawable itemBackground;
    public RippleDrawable itemForeground;
    public int itemHorizontalPadding;
    public int itemIconPadding;
    public int itemIconSize;
    public int itemMaxLines;
    public int itemVerticalPadding;
    public LayoutInflater layoutInflater;
    public MenuBuilder menu;
    public NavigationMenuView menuView;
    public int paddingSeparator;
    public int paddingTopDefault;
    public ColorStateList subheaderColor;
    public int subheaderInsetEnd;
    public int subheaderInsetStart;
    public ColorStateList textColor;
    public int subheaderTextAppearance = 0;
    public int textAppearance = 0;
    public boolean textAppearanceActiveBoldEnabled = true;
    public boolean isBehindStatusBar = true;
    public int overScrollMode = -1;
    public final Preference.AnonymousClass1 onClickListener = new Preference.AnonymousClass1(this, 5);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class HeaderViewHolder extends ViewHolder {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class NavigationMenuAdapter extends RecyclerView.Adapter {
        public MenuItemImpl checkedItem;
        public final ArrayList items = new ArrayList();
        public boolean updateSuspended;

        public NavigationMenuAdapter() {
            prepareMenuItems();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            return this.items.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemViewType(int i) {
            NavigationMenuItem navigationMenuItem = (NavigationMenuItem) this.items.get(i);
            if (navigationMenuItem instanceof NavigationMenuSeparatorItem) {
                return 2;
            }
            if (navigationMenuItem instanceof NavigationMenuHeaderItem) {
                return 3;
            }
            if (navigationMenuItem instanceof NavigationMenuTextItem) {
                return ((NavigationMenuTextItem) navigationMenuItem).menuItem.hasSubMenu() ? 1 : 0;
            }
            Node$$ExternalSyntheticBUOutline0.m811m("Unknown item type.");
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, final int i) {
            ViewHolder viewHolder2 = (ViewHolder) viewHolder;
            int itemViewType = getItemViewType(i);
            ArrayList arrayList = this.items;
            NavigationMenuPresenter navigationMenuPresenter = NavigationMenuPresenter.this;
            if (itemViewType != 0) {
                final boolean z = true;
                if (itemViewType != 1) {
                    if (itemViewType != 2) {
                        return;
                    }
                    NavigationMenuSeparatorItem navigationMenuSeparatorItem = (NavigationMenuSeparatorItem) arrayList.get(i);
                    viewHolder2.itemView.setPadding(navigationMenuPresenter.dividerInsetStart, navigationMenuSeparatorItem.paddingTop, navigationMenuPresenter.dividerInsetEnd, navigationMenuSeparatorItem.paddingBottom);
                    return;
                }
                TextView textView = (TextView) viewHolder2.itemView;
                textView.setText(((NavigationMenuTextItem) arrayList.get(i)).menuItem.mTitle);
                textView.setTextAppearance(navigationMenuPresenter.subheaderTextAppearance);
                textView.setPadding(navigationMenuPresenter.subheaderInsetStart, textView.getPaddingTop(), navigationMenuPresenter.subheaderInsetEnd, textView.getPaddingBottom());
                ColorStateList colorStateList = navigationMenuPresenter.subheaderColor;
                if (colorStateList != null) {
                    textView.setTextColor(colorStateList);
                }
                ViewCompat.setAccessibilityDelegate(textView, new AccessibilityDelegateCompat() { // from class: com.google.android.material.internal.NavigationMenuPresenter.NavigationMenuAdapter.1
                    @Override // androidx.core.view.AccessibilityDelegateCompat
                    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                        this.mOriginalDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.mInfo);
                        NavigationMenuPresenter navigationMenuPresenter2 = NavigationMenuPresenter.this;
                        int i2 = i;
                        int i3 = i2;
                        for (int i4 = 0; i4 < i2; i4++) {
                            if (navigationMenuPresenter2.adapter.getItemViewType(i4) == 2 || navigationMenuPresenter2.adapter.getItemViewType(i4) == 3) {
                                i3--;
                            }
                        }
                        accessibilityNodeInfoCompat.setCollectionItemInfo(Extras.Key.obtain(i3, 1, 1, 1, z, view.isSelected()));
                    }
                });
                return;
            }
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) viewHolder2.itemView;
            navigationMenuItemView.setIconTintList(navigationMenuPresenter.iconTintList);
            navigationMenuItemView.setTextAppearance(navigationMenuPresenter.textAppearance);
            ColorStateList colorStateList2 = navigationMenuPresenter.textColor;
            if (colorStateList2 != null) {
                navigationMenuItemView.setTextColor(colorStateList2);
            }
            Drawable drawable = navigationMenuPresenter.itemBackground;
            Drawable newDrawable = drawable != null ? drawable.getConstantState().newDrawable() : null;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            navigationMenuItemView.setBackground(newDrawable);
            RippleDrawable rippleDrawable = navigationMenuPresenter.itemForeground;
            if (rippleDrawable != null) {
                navigationMenuItemView.setForeground(rippleDrawable.getConstantState().newDrawable());
            }
            NavigationMenuTextItem navigationMenuTextItem = (NavigationMenuTextItem) arrayList.get(i);
            navigationMenuItemView.setNeedsEmptyIcon(navigationMenuTextItem.needsEmptyIcon);
            int i2 = navigationMenuPresenter.itemHorizontalPadding;
            int i3 = navigationMenuPresenter.itemVerticalPadding;
            navigationMenuItemView.setPadding(i2, i3, i2, i3);
            navigationMenuItemView.setIconPadding(navigationMenuPresenter.itemIconPadding);
            if (navigationMenuPresenter.hasCustomItemIconSize) {
                navigationMenuItemView.setIconSize(navigationMenuPresenter.itemIconSize);
            }
            navigationMenuItemView.setMaxLines(navigationMenuPresenter.itemMaxLines);
            MenuItemImpl menuItemImpl = navigationMenuTextItem.menuItem;
            navigationMenuItemView.isBold = navigationMenuPresenter.textAppearanceActiveBoldEnabled;
            navigationMenuItemView.initialize(menuItemImpl);
            final boolean z2 = false;
            ViewCompat.setAccessibilityDelegate(navigationMenuItemView, new AccessibilityDelegateCompat() { // from class: com.google.android.material.internal.NavigationMenuPresenter.NavigationMenuAdapter.1
                @Override // androidx.core.view.AccessibilityDelegateCompat
                public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                    this.mOriginalDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.mInfo);
                    NavigationMenuPresenter navigationMenuPresenter2 = NavigationMenuPresenter.this;
                    int i22 = i;
                    int i32 = i22;
                    for (int i4 = 0; i4 < i22; i4++) {
                        if (navigationMenuPresenter2.adapter.getItemViewType(i4) == 2 || navigationMenuPresenter2.adapter.getItemViewType(i4) == 3) {
                            i32--;
                        }
                    }
                    accessibilityNodeInfoCompat.setCollectionItemInfo(Extras.Key.obtain(i32, 1, 1, 1, z2, view.isSelected()));
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            NavigationMenuPresenter navigationMenuPresenter = NavigationMenuPresenter.this;
            if (i == 0) {
                LayoutInflater layoutInflater = navigationMenuPresenter.layoutInflater;
                Preference.AnonymousClass1 anonymousClass1 = navigationMenuPresenter.onClickListener;
                NormalViewHolder normalViewHolder = new NormalViewHolder(layoutInflater.inflate(R.layout.design_navigation_item, viewGroup, false));
                normalViewHolder.itemView.setOnClickListener(anonymousClass1);
                return normalViewHolder;
            }
            if (i == 1) {
                return new HeaderViewHolder(navigationMenuPresenter.layoutInflater.inflate(R.layout.design_navigation_item_subheader, viewGroup, false));
            }
            if (i == 2) {
                return new HeaderViewHolder(navigationMenuPresenter.layoutInflater.inflate(R.layout.design_navigation_item_separator, viewGroup, false));
            }
            if (i != 3) {
                return null;
            }
            return new HeaderViewHolder(navigationMenuPresenter.headerLayout);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
            ViewHolder viewHolder2 = (ViewHolder) viewHolder;
            if (viewHolder2 instanceof NormalViewHolder) {
                NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) viewHolder2.itemView;
                FrameLayout frameLayout = navigationMenuItemView.actionArea;
                if (frameLayout != null) {
                    frameLayout.removeAllViews();
                }
                navigationMenuItemView.textView.setCompoundDrawables(null, null, null, null);
            }
        }

        public final void prepareMenuItems() {
            boolean z;
            if (this.updateSuspended) {
                return;
            }
            this.updateSuspended = true;
            ArrayList arrayList = this.items;
            arrayList.clear();
            arrayList.add(new NavigationMenuHeaderItem());
            NavigationMenuPresenter navigationMenuPresenter = NavigationMenuPresenter.this;
            int size = navigationMenuPresenter.menu.getVisibleItems().size();
            boolean z2 = false;
            int i = -1;
            int i2 = 0;
            boolean z3 = false;
            int i3 = 0;
            while (i2 < size) {
                MenuItemImpl menuItemImpl = (MenuItemImpl) navigationMenuPresenter.menu.getVisibleItems().get(i2);
                if (menuItemImpl.isChecked()) {
                    setCheckedItem(menuItemImpl);
                }
                if (menuItemImpl.isCheckable()) {
                    menuItemImpl.setExclusiveCheckable(z2);
                }
                if (menuItemImpl.hasSubMenu()) {
                    SubMenuBuilder subMenuBuilder = menuItemImpl.mSubMenu;
                    if (subMenuBuilder.hasVisibleItems()) {
                        if (i2 != 0) {
                            arrayList.add(new NavigationMenuSeparatorItem(navigationMenuPresenter.paddingSeparator, z2 ? 1 : 0));
                        }
                        arrayList.add(new NavigationMenuTextItem(menuItemImpl));
                        int size2 = subMenuBuilder.mItems.size();
                        int i4 = z2 ? 1 : 0;
                        int i5 = i4;
                        while (i4 < size2) {
                            MenuItemImpl menuItemImpl2 = (MenuItemImpl) subMenuBuilder.getItem(i4);
                            if (menuItemImpl2.isVisible()) {
                                if (i5 == 0 && menuItemImpl2.getIcon() != null) {
                                    i5 = 1;
                                }
                                if (menuItemImpl2.isCheckable()) {
                                    menuItemImpl2.setExclusiveCheckable(z2);
                                }
                                if (menuItemImpl.isChecked()) {
                                    setCheckedItem(menuItemImpl);
                                }
                                arrayList.add(new NavigationMenuTextItem(menuItemImpl2));
                            }
                            i4++;
                            z2 = false;
                        }
                        if (i5 != 0) {
                            int size3 = arrayList.size();
                            for (int size4 = arrayList.size(); size4 < size3; size4++) {
                                ((NavigationMenuTextItem) arrayList.get(size4)).needsEmptyIcon = true;
                            }
                        }
                    }
                    z = true;
                } else {
                    int i6 = menuItemImpl.mGroup;
                    if (i6 != i) {
                        i3 = arrayList.size();
                        z3 = menuItemImpl.getIcon() != null;
                        if (i2 != 0) {
                            i3++;
                            int i7 = navigationMenuPresenter.paddingSeparator;
                            arrayList.add(new NavigationMenuSeparatorItem(i7, i7));
                        }
                    } else if (!z3 && menuItemImpl.getIcon() != null) {
                        int size5 = arrayList.size();
                        for (int i8 = i3; i8 < size5; i8++) {
                            ((NavigationMenuTextItem) arrayList.get(i8)).needsEmptyIcon = true;
                        }
                        z = true;
                        z3 = true;
                        NavigationMenuTextItem navigationMenuTextItem = new NavigationMenuTextItem(menuItemImpl);
                        navigationMenuTextItem.needsEmptyIcon = z3;
                        arrayList.add(navigationMenuTextItem);
                        i = i6;
                    }
                    z = true;
                    NavigationMenuTextItem navigationMenuTextItem2 = new NavigationMenuTextItem(menuItemImpl);
                    navigationMenuTextItem2.needsEmptyIcon = z3;
                    arrayList.add(navigationMenuTextItem2);
                    i = i6;
                }
                i2++;
                z2 = false;
            }
            this.updateSuspended = z2 ? 1 : 0;
        }

        public final void setCheckedItem(MenuItemImpl menuItemImpl) {
            if (this.checkedItem == menuItemImpl || !menuItemImpl.isCheckable()) {
                return;
            }
            MenuItemImpl menuItemImpl2 = this.checkedItem;
            if (menuItemImpl2 != null) {
                menuItemImpl2.setChecked(false);
            }
            this.checkedItem = menuItemImpl;
            menuItemImpl.setChecked(true);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class NavigationMenuHeaderItem implements NavigationMenuItem {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface NavigationMenuItem {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class NavigationMenuSeparatorItem implements NavigationMenuItem {
        public final int paddingBottom;
        public final int paddingTop;

        public NavigationMenuSeparatorItem(int i, int i2) {
            this.paddingTop = i;
            this.paddingBottom = i2;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class NavigationMenuTextItem implements NavigationMenuItem {
        public final MenuItemImpl menuItem;
        public boolean needsEmptyIcon;

        public NavigationMenuTextItem(MenuItemImpl menuItemImpl) {
            this.menuItem = menuItemImpl;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class NavigationMenuViewAccessibilityDelegate extends RecyclerViewAccessibilityDelegate {
        public NavigationMenuViewAccessibilityDelegate(NavigationMenuView navigationMenuView) {
            super(navigationMenuView);
        }

        @Override // androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate, androidx.core.view.AccessibilityDelegateCompat
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            NavigationMenuPresenter navigationMenuPresenter = NavigationMenuPresenter.this;
            int i = 0;
            for (int i2 = 0; i2 < navigationMenuPresenter.adapter.items.size(); i2++) {
                int itemViewType = navigationMenuPresenter.adapter.getItemViewType(i2);
                if (itemViewType == 0 || itemViewType == 1) {
                    i++;
                }
            }
            accessibilityNodeInfoCompat.mInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(i, 1, false));
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class NormalViewHolder extends ViewHolder {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class ViewHolder extends RecyclerView.ViewHolder {
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
        this.layoutInflater = LayoutInflater.from(context);
        this.menu = menuBuilder;
        this.paddingSeparator = context.getResources().getDimensionPixelOffset(R.dimen.design_navigation_separator_vertical_padding);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void onRestoreInstanceState(Parcelable parcelable) {
        MenuItemImpl menuItemImpl;
        View actionView;
        ParcelableSparseArray parcelableSparseArray;
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.menuView.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle("android:menu:adapter");
            if (bundle2 != null) {
                NavigationMenuAdapter navigationMenuAdapter = this.adapter;
                ArrayList arrayList = navigationMenuAdapter.items;
                int i = bundle2.getInt("android:menu:checked", 0);
                if (i != 0) {
                    navigationMenuAdapter.updateSuspended = true;
                    int size = arrayList.size();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= size) {
                            break;
                        }
                        NavigationMenuItem navigationMenuItem = (NavigationMenuItem) arrayList.get(i2);
                        if (navigationMenuItem instanceof NavigationMenuTextItem) {
                            MenuItemImpl menuItemImpl2 = ((NavigationMenuTextItem) navigationMenuItem).menuItem;
                            if (menuItemImpl2.mId == i) {
                                navigationMenuAdapter.setCheckedItem(menuItemImpl2);
                                break;
                            }
                        }
                        i2++;
                    }
                    navigationMenuAdapter.updateSuspended = false;
                    navigationMenuAdapter.prepareMenuItems();
                }
                SparseArray sparseParcelableArray2 = bundle2.getSparseParcelableArray("android:menu:action_views");
                if (sparseParcelableArray2 != null) {
                    int size2 = arrayList.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        NavigationMenuItem navigationMenuItem2 = (NavigationMenuItem) arrayList.get(i3);
                        if ((navigationMenuItem2 instanceof NavigationMenuTextItem) && (actionView = (menuItemImpl = ((NavigationMenuTextItem) navigationMenuItem2).menuItem).getActionView()) != null && (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray2.get(menuItemImpl.mId)) != null) {
                            actionView.restoreHierarchyState(parcelableSparseArray);
                        }
                    }
                }
            }
            SparseArray<Parcelable> sparseParcelableArray3 = bundle.getSparseParcelableArray("android:menu:header");
            if (sparseParcelableArray3 != null) {
                this.headerLayout.restoreHierarchyState(sparseParcelableArray3);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final Parcelable onSaveInstanceState() {
        MenuItemImpl menuItemImpl;
        View actionView;
        Bundle bundle = new Bundle();
        if (this.menuView != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.menuView.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        NavigationMenuAdapter navigationMenuAdapter = this.adapter;
        if (navigationMenuAdapter != null) {
            ArrayList arrayList = navigationMenuAdapter.items;
            Bundle bundle2 = new Bundle();
            MenuItemImpl menuItemImpl2 = navigationMenuAdapter.checkedItem;
            if (menuItemImpl2 != null) {
                bundle2.putInt("android:menu:checked", menuItemImpl2.mId);
            }
            SparseArray<? extends Parcelable> sparseArray2 = new SparseArray<>();
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                NavigationMenuItem navigationMenuItem = (NavigationMenuItem) arrayList.get(i);
                if ((navigationMenuItem instanceof NavigationMenuTextItem) && (actionView = (menuItemImpl = ((NavigationMenuTextItem) navigationMenuItem).menuItem).getActionView()) != null) {
                    ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                    actionView.saveHierarchyState(parcelableSparseArray);
                    sparseArray2.put(menuItemImpl.mId, parcelableSparseArray);
                }
            }
            bundle2.putSparseParcelableArray("android:menu:action_views", sparseArray2);
            bundle.putBundle("android:menu:adapter", bundle2);
        }
        if (this.headerLayout != null) {
            SparseArray<Parcelable> sparseArray3 = new SparseArray<>();
            this.headerLayout.saveHierarchyState(sparseArray3);
            bundle.putSparseParcelableArray("android:menu:header", sparseArray3);
        }
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void updateMenuView() {
        NavigationMenuAdapter navigationMenuAdapter = this.adapter;
        if (navigationMenuAdapter != null) {
            navigationMenuAdapter.prepareMenuItems();
            navigationMenuAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
    }
}
