package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.ViewPropertyAnimatorCompatSet;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.DecorToolbar;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ToolbarWidgetWrapper;
import androidx.cardview.widget.CardView;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0;
import androidx.room.Room;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.WeakHashMap;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Options;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class WindowDecorActionBar extends Options.Companion implements ActionBarOverlayLayout.ActionBarVisibilityCallback {
    public static final AccelerateInterpolator sHideInterpolator = new AccelerateInterpolator();
    public static final DecelerateInterpolator sShowInterpolator = new DecelerateInterpolator();
    public ActionModeImpl mActionMode;
    public ActionBarContainer mContainerView;
    public boolean mContentAnimations;
    public final View mContentView;
    public Context mContext;
    public ActionBarContextView mContextView;
    public int mCurWindowVisibility;
    public ViewPropertyAnimatorCompatSet mCurrentShowAnim;
    public DecorToolbar mDecorToolbar;
    public ActionModeImpl mDeferredDestroyActionMode;
    public CardView.AnonymousClass1 mDeferredModeDestroyCallback;
    public boolean mDisplayHomeAsUpSet;
    public boolean mHiddenBySystem;
    public final AnonymousClass1 mHideListener;
    public boolean mHideOnContentScroll;
    public boolean mLastMenuVisibility;
    public final ArrayList mMenuVisibilityListeners;
    public boolean mNowShowing;
    public ActionBarOverlayLayout mOverlayLayout;
    public boolean mShowHideAnimationEnabled;
    public final AnonymousClass1 mShowListener;
    public boolean mShowingForMode;
    public Context mThemedContext;
    public final PopupMenu$1 mUpdateListener;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.appcompat.app.WindowDecorActionBar$1, reason: invalid class name */
    public final class AnonymousClass1 extends Room {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ WindowDecorActionBar this$0;

        public /* synthetic */ AnonymousClass1(WindowDecorActionBar windowDecorActionBar, int i) {
            this.$r8$classId = i;
            this.this$0 = windowDecorActionBar;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public final void onAnimationEnd() {
            View view;
            int i = this.$r8$classId;
            WindowDecorActionBar windowDecorActionBar = this.this$0;
            switch (i) {
                case 0:
                    if (windowDecorActionBar.mContentAnimations && (view = windowDecorActionBar.mContentView) != null) {
                        view.setTranslationY(0.0f);
                        windowDecorActionBar.mContainerView.setTranslationY(0.0f);
                    }
                    windowDecorActionBar.mContainerView.setVisibility(8);
                    windowDecorActionBar.mContainerView.setTransitioning(false);
                    windowDecorActionBar.mCurrentShowAnim = null;
                    CardView.AnonymousClass1 anonymousClass1 = windowDecorActionBar.mDeferredModeDestroyCallback;
                    if (anonymousClass1 != null) {
                        anonymousClass1.onDestroyActionMode(windowDecorActionBar.mDeferredDestroyActionMode);
                        windowDecorActionBar.mDeferredDestroyActionMode = null;
                        windowDecorActionBar.mDeferredModeDestroyCallback = null;
                    }
                    ActionBarOverlayLayout actionBarOverlayLayout = windowDecorActionBar.mOverlayLayout;
                    if (actionBarOverlayLayout != null) {
                        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                        actionBarOverlayLayout.requestApplyInsets();
                        break;
                    }
                    break;
                default:
                    windowDecorActionBar.mCurrentShowAnim = null;
                    windowDecorActionBar.mContainerView.requestLayout();
                    break;
            }
        }
    }

    public WindowDecorActionBar(Activity activity, boolean z) {
        new ArrayList();
        this.mMenuVisibilityListeners = new ArrayList();
        this.mCurWindowVisibility = 0;
        this.mContentAnimations = true;
        this.mNowShowing = true;
        this.mHideListener = new AnonymousClass1(this, 0);
        this.mShowListener = new AnonymousClass1(this, 1);
        this.mUpdateListener = new PopupMenu$1(this, 2);
        View decorView = activity.getWindow().getDecorView();
        init(decorView);
        if (z) {
            return;
        }
        this.mContentView = decorView.findViewById(R.id.content);
    }

    public final void animateToMode(boolean z) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat;
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2;
        boolean z2 = this.mShowingForMode;
        if (z) {
            if (!z2) {
                this.mShowingForMode = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.mOverlayLayout;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                updateVisibility(false);
            }
        } else if (z2) {
            this.mShowingForMode = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.mOverlayLayout;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            updateVisibility(false);
        }
        boolean isLaidOut = this.mContainerView.isLaidOut();
        DecorToolbar decorToolbar = this.mDecorToolbar;
        if (!isLaidOut) {
            if (z) {
                ((ToolbarWidgetWrapper) decorToolbar).mToolbar.setVisibility(4);
                this.mContextView.setVisibility(0);
                return;
            } else {
                ((ToolbarWidgetWrapper) decorToolbar).mToolbar.setVisibility(0);
                this.mContextView.setVisibility(8);
                return;
            }
        }
        if (z) {
            ToolbarWidgetWrapper toolbarWidgetWrapper = (ToolbarWidgetWrapper) decorToolbar;
            viewPropertyAnimatorCompat = ViewCompat.animate(toolbarWidgetWrapper.mToolbar);
            viewPropertyAnimatorCompat.alpha(0.0f);
            viewPropertyAnimatorCompat.setDuration(100L);
            viewPropertyAnimatorCompat.setListener(new ToolbarWidgetWrapper.AnonymousClass2(toolbarWidgetWrapper, 4));
            viewPropertyAnimatorCompat2 = this.mContextView.setupAnimatorToVisibility(0, 200L);
        } else {
            ToolbarWidgetWrapper toolbarWidgetWrapper2 = (ToolbarWidgetWrapper) decorToolbar;
            ViewPropertyAnimatorCompat animate = ViewCompat.animate(toolbarWidgetWrapper2.mToolbar);
            animate.alpha(1.0f);
            animate.setDuration(200L);
            animate.setListener(new ToolbarWidgetWrapper.AnonymousClass2(toolbarWidgetWrapper2, 0));
            viewPropertyAnimatorCompat = this.mContextView.setupAnimatorToVisibility(8, 100L);
            viewPropertyAnimatorCompat2 = animate;
        }
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
        ArrayList arrayList = viewPropertyAnimatorCompatSet.mAnimators;
        arrayList.add(viewPropertyAnimatorCompat);
        View view = (View) viewPropertyAnimatorCompat.mView.get();
        long duration = view != null ? view.animate().getDuration() : 0L;
        View view2 = (View) viewPropertyAnimatorCompat2.mView.get();
        if (view2 != null) {
            view2.animate().setStartDelay(duration);
        }
        arrayList.add(viewPropertyAnimatorCompat2);
        viewPropertyAnimatorCompatSet.start();
    }

    @Override // okio.Options.Companion
    public final boolean collapseActionView() {
        Toolbar.ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter;
        DecorToolbar decorToolbar = this.mDecorToolbar;
        if (decorToolbar == null || (expandedActionViewMenuPresenter = ((ToolbarWidgetWrapper) decorToolbar).mToolbar.mExpandedMenuPresenter) == null || expandedActionViewMenuPresenter.mCurrentExpandedItem == null) {
            return false;
        }
        Toolbar.ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter2 = ((ToolbarWidgetWrapper) decorToolbar).mToolbar.mExpandedMenuPresenter;
        MenuItemImpl menuItemImpl = expandedActionViewMenuPresenter2 == null ? null : expandedActionViewMenuPresenter2.mCurrentExpandedItem;
        if (menuItemImpl == null) {
            return true;
        }
        menuItemImpl.collapseActionView();
        return true;
    }

    @Override // okio.Options.Companion
    public final void dispatchMenuVisibilityChanged(boolean z) {
        if (z == this.mLastMenuVisibility) {
            return;
        }
        this.mLastMenuVisibility = z;
        ArrayList arrayList = this.mMenuVisibilityListeners;
        if (arrayList.size() <= 0) {
            return;
        }
        arrayList.get(0).getClass();
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
    }

    @Override // okio.Options.Companion
    public final int getDisplayOptions() {
        return ((ToolbarWidgetWrapper) this.mDecorToolbar).mDisplayOpts;
    }

    @Override // okio.Options.Companion
    public final CharSequence getSubtitle() {
        return ((ToolbarWidgetWrapper) this.mDecorToolbar).mToolbar.getSubtitle();
    }

    @Override // okio.Options.Companion
    public final Context getThemedContext() {
        if (this.mThemedContext == null) {
            TypedValue typedValue = new TypedValue();
            this.mContext.getTheme().resolveAttribute(org.schabi.newpipe.R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.mThemedContext = new ContextThemeWrapper(this.mContext, i);
            } else {
                this.mThemedContext = this.mContext;
            }
        }
        return this.mThemedContext;
    }

    public final void init(View view) {
        DecorToolbar wrapper;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(org.schabi.newpipe.R.id.decor_content_parent);
        this.mOverlayLayout = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        KeyEvent.Callback findViewById = view.findViewById(org.schabi.newpipe.R.id.action_bar);
        if (findViewById instanceof DecorToolbar) {
            wrapper = (DecorToolbar) findViewById;
        } else {
            if (!(findViewById instanceof Toolbar)) {
                throw new IllegalStateException("Can't make a decor toolbar out of ".concat(findViewById != null ? findViewById.getClass().getSimpleName() : "null"));
            }
            wrapper = ((Toolbar) findViewById).getWrapper();
        }
        this.mDecorToolbar = wrapper;
        this.mContextView = (ActionBarContextView) view.findViewById(org.schabi.newpipe.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(org.schabi.newpipe.R.id.action_bar_container);
        this.mContainerView = actionBarContainer;
        DecorToolbar decorToolbar = this.mDecorToolbar;
        if (decorToolbar == null || this.mContextView == null || actionBarContainer == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("WindowDecorActionBar can only be used with a compatible window decor layout");
            return;
        }
        Context context = ((ToolbarWidgetWrapper) decorToolbar).mToolbar.getContext();
        this.mContext = context;
        if ((((ToolbarWidgetWrapper) this.mDecorToolbar).mDisplayOpts & 4) != 0) {
            this.mDisplayHomeAsUpSet = true;
        }
        int i = context.getApplicationInfo().targetSdkVersion;
        this.mDecorToolbar.getClass();
        setHasEmbeddedTabs(context.getResources().getBoolean(org.schabi.newpipe.R.bool.abc_action_bar_embed_tabs));
        TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(null, R$styleable.ActionBar, org.schabi.newpipe.R.attr.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(14, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.mOverlayLayout;
            if (!actionBarOverlayLayout2.mOverlayMode) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
                return;
            } else {
                this.mHideOnContentScroll = true;
                actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
            }
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(12, 0);
        if (dimensionPixelSize != 0) {
            ActionBarContainer actionBarContainer2 = this.mContainerView;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            actionBarContainer2.setElevation(dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    @Override // okio.Options.Companion
    public final void onConfigurationChanged() {
        setHasEmbeddedTabs(this.mContext.getResources().getBoolean(org.schabi.newpipe.R.bool.abc_action_bar_embed_tabs));
    }

    @Override // okio.Options.Companion
    public final boolean onKeyShortcut(int i, KeyEvent keyEvent) {
        MenuBuilder menuBuilder;
        ActionModeImpl actionModeImpl = this.mActionMode;
        if (actionModeImpl == null || (menuBuilder = actionModeImpl.mMenu) == null) {
            return false;
        }
        menuBuilder.setQwertyMode(KeyCharacterMap.load(keyEvent.getDeviceId()).getKeyboardType() != 1);
        return menuBuilder.performShortcut(i, keyEvent, 0);
    }

    @Override // okio.Options.Companion
    public final void setDefaultDisplayHomeAsUpEnabled(boolean z) {
        if (this.mDisplayHomeAsUpSet) {
            return;
        }
        setDisplayHomeAsUpEnabled(z);
    }

    @Override // okio.Options.Companion
    public final void setDisplayHomeAsUpEnabled(boolean z) {
        int i = z ? 4 : 0;
        ToolbarWidgetWrapper toolbarWidgetWrapper = (ToolbarWidgetWrapper) this.mDecorToolbar;
        int i2 = toolbarWidgetWrapper.mDisplayOpts;
        this.mDisplayHomeAsUpSet = true;
        toolbarWidgetWrapper.setDisplayOptions((i & 4) | (i2 & (-5)));
    }

    @Override // okio.Options.Companion
    public final void setDisplayShowTitleEnabled(boolean z) {
        int i = z ? 8 : 0;
        ToolbarWidgetWrapper toolbarWidgetWrapper = (ToolbarWidgetWrapper) this.mDecorToolbar;
        toolbarWidgetWrapper.setDisplayOptions((i & 8) | (toolbarWidgetWrapper.mDisplayOpts & (-9)));
    }

    public final void setHasEmbeddedTabs(boolean z) {
        if (z) {
            this.mContainerView.setTabContainer(null);
            ((ToolbarWidgetWrapper) this.mDecorToolbar).getClass();
        } else {
            ((ToolbarWidgetWrapper) this.mDecorToolbar).getClass();
            this.mContainerView.setTabContainer(null);
        }
        this.mDecorToolbar.getClass();
        ((ToolbarWidgetWrapper) this.mDecorToolbar).mToolbar.setCollapsible(false);
        this.mOverlayLayout.setHasNonEmbeddedTabs(false);
    }

    @Override // okio.Options.Companion
    public final void setShowHideAnimationEnabled(boolean z) {
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet;
        this.mShowHideAnimationEnabled = z;
        if (z || (viewPropertyAnimatorCompatSet = this.mCurrentShowAnim) == null) {
            return;
        }
        viewPropertyAnimatorCompatSet.cancel();
    }

    @Override // okio.Options.Companion
    public final void setSubtitle() {
        setSubtitle(this.mContext.getString(org.schabi.newpipe.R.string.subtitle_activity_recaptcha));
    }

    @Override // okio.Options.Companion
    public final void setTitle(CharSequence charSequence) {
        ToolbarWidgetWrapper toolbarWidgetWrapper = (ToolbarWidgetWrapper) this.mDecorToolbar;
        toolbarWidgetWrapper.mTitleSet = true;
        Toolbar toolbar = toolbarWidgetWrapper.mToolbar;
        toolbarWidgetWrapper.mTitle = charSequence;
        if ((toolbarWidgetWrapper.mDisplayOpts & 8) != 0) {
            toolbar.setTitle(charSequence);
            if (toolbarWidgetWrapper.mTitleSet) {
                ViewCompat.setAccessibilityPaneTitle(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // okio.Options.Companion
    public final void setWindowTitle(CharSequence charSequence) {
        ToolbarWidgetWrapper toolbarWidgetWrapper = (ToolbarWidgetWrapper) this.mDecorToolbar;
        if (toolbarWidgetWrapper.mTitleSet) {
            return;
        }
        Toolbar toolbar = toolbarWidgetWrapper.mToolbar;
        toolbarWidgetWrapper.mTitle = charSequence;
        if ((toolbarWidgetWrapper.mDisplayOpts & 8) != 0) {
            toolbar.setTitle(charSequence);
            if (toolbarWidgetWrapper.mTitleSet) {
                ViewCompat.setAccessibilityPaneTitle(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // okio.Options.Companion
    public final ActionMode startActionMode(CardView.AnonymousClass1 anonymousClass1) {
        ActionModeImpl actionModeImpl = this.mActionMode;
        if (actionModeImpl != null) {
            actionModeImpl.finish();
        }
        this.mOverlayLayout.setHideOnContentScrollEnabled(false);
        this.mContextView.killMode();
        ActionModeImpl actionModeImpl2 = new ActionModeImpl(this.mContextView.getContext(), anonymousClass1);
        MenuBuilder menuBuilder = actionModeImpl2.mMenu;
        menuBuilder.stopDispatchingItemsChanged();
        try {
            if (!((Dispatcher) actionModeImpl2.mCallback.mCardBackground).onCreateActionMode(actionModeImpl2, menuBuilder)) {
                return null;
            }
            this.mActionMode = actionModeImpl2;
            actionModeImpl2.invalidate();
            this.mContextView.initForMode(actionModeImpl2);
            animateToMode(true);
            return actionModeImpl2;
        } finally {
            menuBuilder.startDispatchingItemsChanged();
        }
    }

    public final void updateVisibility(boolean z) {
        int i = 0;
        boolean z2 = this.mShowingForMode || !this.mHiddenBySystem;
        boolean z3 = this.mNowShowing;
        PopupMenu$1 popupMenu$1 = this.mUpdateListener;
        View view = this.mContentView;
        if (!z2) {
            if (z3) {
                this.mNowShowing = false;
                ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = this.mCurrentShowAnim;
                if (viewPropertyAnimatorCompatSet != null) {
                    viewPropertyAnimatorCompatSet.cancel();
                }
                int i2 = this.mCurWindowVisibility;
                AnonymousClass1 anonymousClass1 = this.mHideListener;
                if (i2 != 0 || (!this.mShowHideAnimationEnabled && !z)) {
                    anonymousClass1.onAnimationEnd();
                    return;
                }
                this.mContainerView.setAlpha(1.0f);
                this.mContainerView.setTransitioning(true);
                ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet2 = new ViewPropertyAnimatorCompatSet();
                float f = -this.mContainerView.getHeight();
                if (z) {
                    this.mContainerView.getLocationInWindow(new int[]{0, 0});
                    f -= r12[1];
                }
                ViewPropertyAnimatorCompat animate = ViewCompat.animate(this.mContainerView);
                animate.translationY(f);
                View view2 = (View) animate.mView.get();
                if (view2 != null) {
                    view2.animate().setUpdateListener(popupMenu$1 != null ? new ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0(popupMenu$1, view2, i) : null);
                }
                boolean z4 = viewPropertyAnimatorCompatSet2.mIsStarted;
                ArrayList arrayList = viewPropertyAnimatorCompatSet2.mAnimators;
                if (!z4) {
                    arrayList.add(animate);
                }
                if (this.mContentAnimations && view != null) {
                    ViewPropertyAnimatorCompat animate2 = ViewCompat.animate(view);
                    animate2.translationY(f);
                    if (!viewPropertyAnimatorCompatSet2.mIsStarted) {
                        arrayList.add(animate2);
                    }
                }
                boolean z5 = viewPropertyAnimatorCompatSet2.mIsStarted;
                if (!z5) {
                    viewPropertyAnimatorCompatSet2.mInterpolator = sHideInterpolator;
                }
                if (!z5) {
                    viewPropertyAnimatorCompatSet2.mDuration = 250L;
                }
                if (!z5) {
                    viewPropertyAnimatorCompatSet2.mListener = anonymousClass1;
                }
                this.mCurrentShowAnim = viewPropertyAnimatorCompatSet2;
                viewPropertyAnimatorCompatSet2.start();
                return;
            }
            return;
        }
        if (z3) {
            return;
        }
        this.mNowShowing = true;
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet3 = this.mCurrentShowAnim;
        if (viewPropertyAnimatorCompatSet3 != null) {
            viewPropertyAnimatorCompatSet3.cancel();
        }
        this.mContainerView.setVisibility(0);
        int i3 = this.mCurWindowVisibility;
        AnonymousClass1 anonymousClass12 = this.mShowListener;
        if (i3 == 0 && (this.mShowHideAnimationEnabled || z)) {
            this.mContainerView.setTranslationY(0.0f);
            float f2 = -this.mContainerView.getHeight();
            if (z) {
                this.mContainerView.getLocationInWindow(new int[]{0, 0});
                f2 -= r12[1];
            }
            this.mContainerView.setTranslationY(f2);
            ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet4 = new ViewPropertyAnimatorCompatSet();
            ViewPropertyAnimatorCompat animate3 = ViewCompat.animate(this.mContainerView);
            animate3.translationY(0.0f);
            View view3 = (View) animate3.mView.get();
            if (view3 != null) {
                view3.animate().setUpdateListener(popupMenu$1 != null ? new ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0(popupMenu$1, view3, i) : null);
            }
            boolean z6 = viewPropertyAnimatorCompatSet4.mIsStarted;
            ArrayList arrayList2 = viewPropertyAnimatorCompatSet4.mAnimators;
            if (!z6) {
                arrayList2.add(animate3);
            }
            if (this.mContentAnimations && view != null) {
                view.setTranslationY(f2);
                ViewPropertyAnimatorCompat animate4 = ViewCompat.animate(view);
                animate4.translationY(0.0f);
                if (!viewPropertyAnimatorCompatSet4.mIsStarted) {
                    arrayList2.add(animate4);
                }
            }
            boolean z7 = viewPropertyAnimatorCompatSet4.mIsStarted;
            if (!z7) {
                viewPropertyAnimatorCompatSet4.mInterpolator = sShowInterpolator;
            }
            if (!z7) {
                viewPropertyAnimatorCompatSet4.mDuration = 250L;
            }
            if (!z7) {
                viewPropertyAnimatorCompatSet4.mListener = anonymousClass12;
            }
            this.mCurrentShowAnim = viewPropertyAnimatorCompatSet4;
            viewPropertyAnimatorCompatSet4.start();
        } else {
            this.mContainerView.setAlpha(1.0f);
            this.mContainerView.setTranslationY(0.0f);
            if (this.mContentAnimations && view != null) {
                view.setTranslationY(0.0f);
            }
            anonymousClass12.onAnimationEnd();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.mOverlayLayout;
        if (actionBarOverlayLayout != null) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            actionBarOverlayLayout.requestApplyInsets();
        }
    }

    @Override // okio.Options.Companion
    public final void setSubtitle(CharSequence charSequence) {
        ((ToolbarWidgetWrapper) this.mDecorToolbar).setSubtitle(charSequence);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ActionModeImpl extends ActionMode implements MenuBuilder.Callback {
        public final Context mActionModeContext;
        public CardView.AnonymousClass1 mCallback;
        public WeakReference mCustomView;
        public final MenuBuilder mMenu;

        public ActionModeImpl(Context context, CardView.AnonymousClass1 anonymousClass1) {
            this.mActionModeContext = context;
            this.mCallback = anonymousClass1;
            MenuBuilder menuBuilder = new MenuBuilder(context);
            menuBuilder.mDefaultShowAsAction = 1;
            this.mMenu = menuBuilder;
            menuBuilder.mCallback = this;
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void finish() {
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            if (windowDecorActionBar.mActionMode != this) {
                return;
            }
            if (windowDecorActionBar.mHiddenBySystem) {
                windowDecorActionBar.mDeferredDestroyActionMode = this;
                windowDecorActionBar.mDeferredModeDestroyCallback = this.mCallback;
            } else {
                this.mCallback.onDestroyActionMode(this);
            }
            this.mCallback = null;
            windowDecorActionBar.animateToMode(false);
            ActionBarContextView actionBarContextView = windowDecorActionBar.mContextView;
            if (actionBarContextView.mClose == null) {
                actionBarContextView.killMode();
            }
            windowDecorActionBar.mOverlayLayout.setHideOnContentScrollEnabled(windowDecorActionBar.mHideOnContentScroll);
            windowDecorActionBar.mActionMode = null;
        }

        @Override // androidx.appcompat.view.ActionMode
        public final View getCustomView() {
            WeakReference weakReference = this.mCustomView;
            if (weakReference != null) {
                return (View) weakReference.get();
            }
            return null;
        }

        @Override // androidx.appcompat.view.ActionMode
        public final MenuBuilder getMenu() {
            return this.mMenu;
        }

        @Override // androidx.appcompat.view.ActionMode
        public final MenuInflater getMenuInflater() {
            return new SupportMenuInflater(this.mActionModeContext);
        }

        @Override // androidx.appcompat.view.ActionMode
        public final CharSequence getSubtitle() {
            return WindowDecorActionBar.this.mContextView.getSubtitle();
        }

        @Override // androidx.appcompat.view.ActionMode
        public final CharSequence getTitle() {
            return WindowDecorActionBar.this.mContextView.getTitle();
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void invalidate() {
            if (WindowDecorActionBar.this.mActionMode != this) {
                return;
            }
            MenuBuilder menuBuilder = this.mMenu;
            menuBuilder.stopDispatchingItemsChanged();
            try {
                this.mCallback.onPrepareActionMode(this, menuBuilder);
            } finally {
                menuBuilder.startDispatchingItemsChanged();
            }
        }

        @Override // androidx.appcompat.view.ActionMode
        public final boolean isTitleOptional() {
            return WindowDecorActionBar.this.mContextView.mTitleOptional;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public final boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            CardView.AnonymousClass1 anonymousClass1 = this.mCallback;
            if (anonymousClass1 != null) {
                return ((Dispatcher) anonymousClass1.mCardBackground).onActionItemClicked(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public final void onMenuModeChange(MenuBuilder menuBuilder) {
            if (this.mCallback == null) {
                return;
            }
            invalidate();
            ActionMenuPresenter actionMenuPresenter = WindowDecorActionBar.this.mContextView.mActionMenuPresenter;
            if (actionMenuPresenter != null) {
                actionMenuPresenter.showOverflowMenu();
            }
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void setCustomView(View view) {
            WindowDecorActionBar.this.mContextView.setCustomView(view);
            this.mCustomView = new WeakReference(view);
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void setSubtitle(int i) {
            setSubtitle(WindowDecorActionBar.this.mContext.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void setTitle(int i) {
            setTitle(WindowDecorActionBar.this.mContext.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void setTitleOptionalHint(boolean z) {
            this.mTitleOptionalHint = z;
            WindowDecorActionBar.this.mContextView.setTitleOptional(z);
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void setSubtitle(CharSequence charSequence) {
            WindowDecorActionBar.this.mContextView.setSubtitle(charSequence);
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void setTitle(CharSequence charSequence) {
            WindowDecorActionBar.this.mContextView.setTitle(charSequence);
        }
    }

    @Override // okio.Options.Companion
    public final void setTitle(int i) {
        setTitle(this.mContext.getString(i));
    }

    public WindowDecorActionBar(Dialog dialog) {
        new ArrayList();
        this.mMenuVisibilityListeners = new ArrayList();
        this.mCurWindowVisibility = 0;
        this.mContentAnimations = true;
        this.mNowShowing = true;
        this.mHideListener = new AnonymousClass1(this, 0);
        this.mShowListener = new AnonymousClass1(this, 1);
        this.mUpdateListener = new PopupMenu$1(this, 2);
        init(dialog.getWindow().getDecorView());
    }
}
