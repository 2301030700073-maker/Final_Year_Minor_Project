package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Parcelable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.AppCompatPopupWindow;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.DropDownListView;
import androidx.appcompat.widget.MenuPopupWindow;
import androidx.compose.ui.graphics.AndroidGraphicsContext;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;
import com.google.android.material.textfield.EndCompoundLayout;
import java.util.WeakHashMap;
import kotlinx.coroutines.StandaloneCoroutine;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StandardMenuPopup extends MenuPopup implements PopupWindow.OnDismissListener, View.OnKeyListener {
    public final MenuAdapter mAdapter;
    public View mAnchorView;
    public int mContentWidth;
    public final Context mContext;
    public boolean mHasContentWidth;
    public final MenuBuilder mMenu;
    public PopupWindow.OnDismissListener mOnDismissListener;
    public final boolean mOverflowOnly;
    public final MenuPopupWindow mPopup;
    public final int mPopupMaxWidth;
    public final int mPopupStyleAttr;
    public MenuPresenter.Callback mPresenterCallback;
    public boolean mShowTitle;
    public View mShownAnchorView;
    public ViewTreeObserver mTreeObserver;
    public boolean mWasDismissed;
    public final AppCompatSpinner.AnonymousClass2 mGlobalLayoutListener = new AppCompatSpinner.AnonymousClass2(this, 2);
    public final AnonymousClass2 mAttachStateChangeListener = new AnonymousClass2(this, 0);
    public int mDropDownGravity = 0;

    public StandardMenuPopup(Context context, MenuBuilder menuBuilder, View view, int i, boolean z) {
        this.mContext = context;
        this.mMenu = menuBuilder;
        this.mOverflowOnly = z;
        this.mAdapter = new MenuAdapter(menuBuilder, LayoutInflater.from(context), z, R.layout.abc_popup_menu_item_layout);
        this.mPopupStyleAttr = i;
        Resources resources = context.getResources();
        this.mPopupMaxWidth = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.mAnchorView = view;
        this.mPopup = new MenuPopupWindow(context, null, i, 0);
        menuBuilder.addMenuPresenter(this, context);
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void dismiss() {
        if (isShowing()) {
            this.mPopup.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final DropDownListView getListView() {
        return this.mPopup.mDropDownList;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final boolean isShowing() {
        return !this.mWasDismissed && this.mPopup.mPopup.isShowing();
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (menuBuilder != this.mMenu) {
            return;
        }
        dismiss();
        MenuPresenter.Callback callback = this.mPresenterCallback;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z);
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.mWasDismissed = true;
        this.mMenu.close(true);
        ViewTreeObserver viewTreeObserver = this.mTreeObserver;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.mTreeObserver = this.mShownAnchorView.getViewTreeObserver();
            }
            this.mTreeObserver.removeGlobalOnLayoutListener(this.mGlobalLayoutListener);
            this.mTreeObserver = null;
        }
        this.mShownAnchorView.removeOnAttachStateChangeListener(this.mAttachStateChangeListener);
        PopupWindow.OnDismissListener onDismissListener = this.mOnDismissListener;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final Parcelable onSaveInstanceState() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        boolean z;
        if (subMenuBuilder.hasVisibleItems()) {
            MenuPopupHelper menuPopupHelper = new MenuPopupHelper(this.mContext, subMenuBuilder, this.mShownAnchorView, this.mOverflowOnly, this.mPopupStyleAttr, 0);
            MenuPresenter.Callback callback = this.mPresenterCallback;
            menuPopupHelper.mPresenterCallback = callback;
            MenuPopup menuPopup = menuPopupHelper.mPopup;
            if (menuPopup != null) {
                menuPopup.setCallback(callback);
            }
            int size = subMenuBuilder.mItems.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    z = false;
                    break;
                }
                MenuItem item = subMenuBuilder.getItem(i);
                if (item.isVisible() && item.getIcon() != null) {
                    z = true;
                    break;
                }
                i++;
            }
            menuPopupHelper.mForceShowIcon = z;
            MenuPopup menuPopup2 = menuPopupHelper.mPopup;
            if (menuPopup2 != null) {
                menuPopup2.setForceShowIcon(z);
            }
            menuPopupHelper.mOnDismissListener = this.mOnDismissListener;
            this.mOnDismissListener = null;
            this.mMenu.close(false);
            MenuPopupWindow menuPopupWindow = this.mPopup;
            int i2 = menuPopupWindow.mDropDownHorizontalOffset;
            int verticalOffset = menuPopupWindow.getVerticalOffset();
            if ((Gravity.getAbsoluteGravity(this.mDropDownGravity, this.mAnchorView.getLayoutDirection()) & 7) == 5) {
                i2 += this.mAnchorView.getWidth();
            }
            if (!menuPopupHelper.isShowing()) {
                if (menuPopupHelper.mAnchorView != null) {
                    menuPopupHelper.showPopup(i2, verticalOffset, true, true);
                }
            }
            MenuPresenter.Callback callback2 = this.mPresenterCallback;
            if (callback2 != null) {
                callback2.onOpenSubMenu(subMenuBuilder);
            }
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void setAnchorView(View view) {
        this.mAnchorView = view;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void setCallback(MenuPresenter.Callback callback) {
        this.mPresenterCallback = callback;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void setForceShowIcon(boolean z) {
        this.mAdapter.mForceShowIcon = z;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void setGravity(int i) {
        this.mDropDownGravity = i;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void setHorizontalOffset(int i) {
        this.mPopup.mDropDownHorizontalOffset = i;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.mOnDismissListener = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void setShowTitle(boolean z) {
        this.mShowTitle = z;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void setVerticalOffset(int i) {
        this.mPopup.setVerticalOffset(i);
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void show() {
        View view;
        if (isShowing()) {
            return;
        }
        if (this.mWasDismissed || (view = this.mAnchorView) == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("StandardMenuPopup cannot be used without an anchor");
            return;
        }
        this.mShownAnchorView = view;
        MenuPopupWindow menuPopupWindow = this.mPopup;
        AppCompatPopupWindow appCompatPopupWindow = menuPopupWindow.mPopup;
        AppCompatPopupWindow appCompatPopupWindow2 = menuPopupWindow.mPopup;
        appCompatPopupWindow.setOnDismissListener(this);
        menuPopupWindow.mItemClickListener = this;
        menuPopupWindow.mModal = true;
        appCompatPopupWindow2.setFocusable(true);
        View view2 = this.mShownAnchorView;
        boolean z = this.mTreeObserver == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.mTreeObserver = viewTreeObserver;
        if (z) {
            viewTreeObserver.addOnGlobalLayoutListener(this.mGlobalLayoutListener);
        }
        view2.addOnAttachStateChangeListener(this.mAttachStateChangeListener);
        menuPopupWindow.mDropDownAnchorView = view2;
        menuPopupWindow.mDropDownGravity = this.mDropDownGravity;
        boolean z2 = this.mHasContentWidth;
        Context context = this.mContext;
        MenuAdapter menuAdapter = this.mAdapter;
        if (!z2) {
            this.mContentWidth = MenuPopup.measureIndividualMenuWidth(menuAdapter, context, this.mPopupMaxWidth);
            this.mHasContentWidth = true;
        }
        menuPopupWindow.setContentWidth(this.mContentWidth);
        appCompatPopupWindow2.setInputMethodMode(2);
        Rect rect = this.mEpicenterBounds;
        menuPopupWindow.mEpicenterBounds = rect != null ? new Rect(rect) : null;
        menuPopupWindow.show();
        DropDownListView dropDownListView = menuPopupWindow.mDropDownList;
        dropDownListView.setOnKeyListener(this);
        if (this.mShowTitle) {
            MenuBuilder menuBuilder = this.mMenu;
            if (menuBuilder.mHeaderTitle != null) {
                FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) dropDownListView, false);
                TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                if (textView != null) {
                    textView.setText(menuBuilder.mHeaderTitle);
                }
                frameLayout.setEnabled(false);
                dropDownListView.addHeaderView(frameLayout, null, false);
            }
        }
        menuPopupWindow.setAdapter(menuAdapter);
        menuPopupWindow.show();
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void updateMenuView() {
        this.mHasContentWidth = false;
        MenuAdapter menuAdapter = this.mAdapter;
        if (menuAdapter != null) {
            menuAdapter.notifyDataSetChanged();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.appcompat.view.menu.StandardMenuPopup$2, reason: invalid class name */
    public final class AnonymousClass2 implements View.OnAttachStateChangeListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass2(Object obj, int i) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                case 1:
                    break;
                case 2:
                    AndroidGraphicsContext androidGraphicsContext = (AndroidGraphicsContext) obj;
                    Context context = view.getContext();
                    if (!androidGraphicsContext.componentCallbackRegistered) {
                        context.getApplicationContext().registerComponentCallbacks(androidGraphicsContext.componentCallback);
                        androidGraphicsContext.componentCallbackRegistered = true;
                        break;
                    }
                    break;
                case 3:
                    break;
                default:
                    EndCompoundLayout endCompoundLayout = (EndCompoundLayout) obj;
                    AccessibilityManager accessibilityManager = endCompoundLayout.accessibilityManager;
                    if (endCompoundLayout.touchExplorationStateChangeListener != null && accessibilityManager != null) {
                        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                        if (endCompoundLayout.isAttachedToWindow()) {
                            accessibilityManager.addTouchExplorationStateChangeListener(new AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper(endCompoundLayout.touchExplorationStateChangeListener));
                            break;
                        }
                    }
                    break;
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            AccessibilityManager accessibilityManager;
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    StandardMenuPopup standardMenuPopup = (StandardMenuPopup) obj;
                    ViewTreeObserver viewTreeObserver = standardMenuPopup.mTreeObserver;
                    if (viewTreeObserver != null) {
                        if (!viewTreeObserver.isAlive()) {
                            standardMenuPopup.mTreeObserver = view.getViewTreeObserver();
                        }
                        standardMenuPopup.mTreeObserver.removeGlobalOnLayoutListener(standardMenuPopup.mGlobalLayoutListener);
                    }
                    view.removeOnAttachStateChangeListener(this);
                    break;
                case 1:
                    CascadingMenuPopup cascadingMenuPopup = (CascadingMenuPopup) obj;
                    ViewTreeObserver viewTreeObserver2 = cascadingMenuPopup.mTreeObserver;
                    if (viewTreeObserver2 != null) {
                        if (!viewTreeObserver2.isAlive()) {
                            cascadingMenuPopup.mTreeObserver = view.getViewTreeObserver();
                        }
                        cascadingMenuPopup.mTreeObserver.removeGlobalOnLayoutListener(cascadingMenuPopup.mGlobalLayoutListener);
                    }
                    view.removeOnAttachStateChangeListener(this);
                    break;
                case 2:
                    AndroidGraphicsContext androidGraphicsContext = (AndroidGraphicsContext) obj;
                    Context context = view.getContext();
                    if (androidGraphicsContext.componentCallbackRegistered) {
                        context.getApplicationContext().unregisterComponentCallbacks(androidGraphicsContext.componentCallback);
                        androidGraphicsContext.componentCallbackRegistered = false;
                        break;
                    }
                    break;
                case 3:
                    view.removeOnAttachStateChangeListener(this);
                    ((StandaloneCoroutine) obj).cancel(null);
                    break;
                default:
                    EndCompoundLayout endCompoundLayout = (EndCompoundLayout) obj;
                    OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = endCompoundLayout.touchExplorationStateChangeListener;
                    if (onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 != null && (accessibilityManager = endCompoundLayout.accessibilityManager) != null) {
                        accessibilityManager.removeTouchExplorationStateChangeListener(new AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper(onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0));
                        break;
                    }
                    break;
            }
        }

        private final void onViewAttachedToWindow$androidx$appcompat$view$menu$CascadingMenuPopup$2(View view) {
        }

        private final void onViewAttachedToWindow$androidx$appcompat$view$menu$StandardMenuPopup$2(View view) {
        }

        private final void onViewAttachedToWindow$androidx$compose$ui$platform$WindowRecomposerPolicy$createAndInstallWindowRecomposer$1(View view) {
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void addMenu(MenuBuilder menuBuilder) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void onRestoreInstanceState(Parcelable parcelable) {
    }
}
