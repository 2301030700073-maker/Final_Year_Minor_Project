package com.google.android.apps.nexuslauncher.qsb.longpopup;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import b.l.W;
import c.b.a.b.b.l.X;
import c.b.a.b.b.l.Y.h;
import c.b.a.b.b.l.Y.i;
import c.b.a.b.b.l.Y.j;
import c.b.a.b.b.l.Y.k;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.Launcher;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.model.AppLaunchTracker;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.shortcuts.DeepShortcutView;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.touch.ItemClickHandler;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.views.BaseDragLayer;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.qsb.longpopup.SearchOptionsPopup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class SearchOptionsPopup extends PopupContainerWithArrow implements PopupContainerWithArrow.PopupItemDragHandler {

    /* renamed from: a, reason: collision with root package name */
    public final Point f3312a;

    /* renamed from: b, reason: collision with root package name */
    public i f3313b;

    /* renamed from: c, reason: collision with root package name */
    public Rect f3314c;

    /* renamed from: d, reason: collision with root package name */
    public h f3315d;

    public SearchOptionsPopup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static void f(SearchOptionsPopup searchOptionsPopup, View view) {
        Objects.requireNonNull(searchOptionsPopup);
        if (view.getWindowToken() == null) {
            return;
        }
        Object tag = view.getTag();
        if (tag instanceof WorkspaceItemInfo) {
            searchOptionsPopup.f3315d.a();
            ItemClickHandler.onClickAppShortcut(null, (WorkspaceItemInfo) tag, (Launcher) searchOptionsPopup.mLauncher, AppLaunchTracker.CONTAINER_SEARCH);
        }
    }

    public static SearchOptionsPopup g(BubbleTextView bubbleTextView, i iVar, h hVar, Rect rect) {
        Launcher launcher = Launcher.getLauncher(bubbleTextView.getContext());
        ItemInfo itemInfo = (ItemInfo) bubbleTextView.getTag();
        if (!W.supportsShortcuts(itemInfo)) {
            return null;
        }
        PopupDataProvider popupDataProvider = launcher.mPopupDataProvider;
        int shortcutCountForItem = popupDataProvider.getShortcutCountForItem(itemInfo);
        DotInfo dotInfoForItem = popupDataProvider.getDotInfoForItem(itemInfo);
        List notificationsForItem = dotInfoForItem == null ? Collections.EMPTY_LIST : PopupDataProvider.getNotificationsForItem(itemInfo, dotInfoForItem.mNotificationKeys);
        SearchOptionsPopup searchOptionsPopup = (SearchOptionsPopup) LayoutInflater.from(iVar.getContext()).inflate(R.layout.search_options_popup, (ViewGroup) iVar, false);
        searchOptionsPopup.f3313b = iVar;
        searchOptionsPopup.f3314c = rect;
        searchOptionsPopup.f3315d = hVar;
        searchOptionsPopup.mPopupItemDragHandler = searchOptionsPopup;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new j(searchOptionsPopup.mLauncher, itemInfo));
        if (launcher.mPopupDataProvider.getWidgetsForPackageUser(new PackageUserKey(itemInfo.getTargetComponent().getPackageName(), itemInfo.user)) != null) {
            arrayList.add(new k(searchOptionsPopup, itemInfo));
        }
        searchOptionsPopup.populateAndShow(bubbleTextView, shortcutCountForItem, notificationsForItem, arrayList);
        return searchOptionsPopup;
    }

    @Override // com.android.launcher3.popup.PopupContainerWithArrow
    public View.OnClickListener getItemClickListener() {
        return new View.OnClickListener() { // from class: c.b.a.b.b.l.Y.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchOptionsPopup.f(SearchOptionsPopup.this, view);
            }
        };
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public BaseDragLayer getPopupContainer() {
        return this.f3313b;
    }

    @Override // com.android.launcher3.popup.PopupContainerWithArrow, com.android.launcher3.popup.ArrowPopup
    public void getTargetObjectLocation(Rect rect) {
        rect.set(this.f3314c);
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (!ItemLongClickListener.canStartDrag((Launcher) this.mLauncher) || !(view.getParent() instanceof DeepShortcutView)) {
            return false;
        }
        DeepShortcutView deepShortcutView = (DeepShortcutView) view.getParent();
        View view2 = deepShortcutView.mIconView;
        Rect rect = new Rect(0, 0, view2.getWidth(), view2.getHeight());
        Point point = this.f3312a;
        rect.offset(-point.x, -point.y);
        this.f3315d.c(new X(this.mLauncher, ShortcutKey.fromInfo(deepShortcutView.mDetail), deepShortcutView.mDetail, rect), view);
        return true;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0 && action != 2) {
            return false;
        }
        this.f3312a.set((int) motionEvent.getX(), (int) motionEvent.getY());
        return false;
    }

    public SearchOptionsPopup(Context context) {
        this(context, null, 0);
    }

    public SearchOptionsPopup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3312a = new Point();
    }
}
