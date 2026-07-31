package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.ViewPropertyAnimatorCompatSet;
import androidx.appcompat.view.menu.ActionMenuItem;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.room.Room;
import org.acra.util.ProcessFinisher;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ToolbarWidgetWrapper implements DecorToolbar {
    public ActionMenuPresenter mActionMenuPresenter;
    public final View mCustomView;
    public final int mDefaultNavigationContentDescription;
    public final Drawable mDefaultNavigationIcon;
    public int mDisplayOpts;
    public CharSequence mHomeDescription;
    public Drawable mIcon;
    public Drawable mLogo;
    public boolean mMenuPrepared;
    public final Drawable mNavIcon;
    public CharSequence mSubtitle;
    public CharSequence mTitle;
    public boolean mTitleSet;
    public final Toolbar mToolbar;
    public Window.Callback mWindowCallback;

    public ToolbarWidgetWrapper(Toolbar toolbar, boolean z) {
        Drawable drawable;
        this.mDefaultNavigationContentDescription = 0;
        this.mToolbar = toolbar;
        this.mTitle = toolbar.getTitle();
        this.mSubtitle = toolbar.getSubtitle();
        this.mTitleSet = this.mTitle != null;
        this.mNavIcon = toolbar.getNavigationIcon();
        ProcessFinisher obtainStyledAttributes = ProcessFinisher.obtainStyledAttributes(toolbar.getContext(), null, R$styleable.ActionBar, R.attr.actionBarStyle);
        TypedArray typedArray = (TypedArray) obtainStyledAttributes.config;
        int i = 15;
        this.mDefaultNavigationIcon = obtainStyledAttributes.getDrawable(15);
        if (z) {
            CharSequence text = typedArray.getText(27);
            if (!TextUtils.isEmpty(text)) {
                this.mTitleSet = true;
                this.mTitle = text;
                if ((this.mDisplayOpts & 8) != 0) {
                    toolbar.setTitle(text);
                    if (this.mTitleSet) {
                        ViewCompat.setAccessibilityPaneTitle(toolbar.getRootView(), text);
                    }
                }
            }
            CharSequence text2 = typedArray.getText(25);
            if (!TextUtils.isEmpty(text2)) {
                setSubtitle(text2);
            }
            Drawable drawable2 = obtainStyledAttributes.getDrawable(20);
            if (drawable2 != null) {
                this.mLogo = drawable2;
                updateToolbarLogo();
            }
            Drawable drawable3 = obtainStyledAttributes.getDrawable(17);
            if (drawable3 != null) {
                this.mIcon = drawable3;
                updateToolbarLogo();
            }
            if (this.mNavIcon == null && (drawable = this.mDefaultNavigationIcon) != null) {
                this.mNavIcon = drawable;
                if ((this.mDisplayOpts & 4) != 0) {
                    toolbar.setNavigationIcon(drawable);
                } else {
                    toolbar.setNavigationIcon((Drawable) null);
                }
            }
            setDisplayOptions(typedArray.getInt(10, 0));
            int resourceId = typedArray.getResourceId(9, 0);
            if (resourceId != 0) {
                View inflate = LayoutInflater.from(toolbar.getContext()).inflate(resourceId, (ViewGroup) toolbar, false);
                View view = this.mCustomView;
                if (view != null && (this.mDisplayOpts & 16) != 0) {
                    toolbar.removeView(view);
                }
                this.mCustomView = inflate;
                if (inflate != null && (this.mDisplayOpts & 16) != 0) {
                    toolbar.addView(inflate);
                }
                setDisplayOptions(this.mDisplayOpts | 16);
            }
            int layoutDimension = typedArray.getLayoutDimension(13, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = toolbar.getLayoutParams();
                layoutParams.height = layoutDimension;
                toolbar.setLayoutParams(layoutParams);
            }
            int dimensionPixelOffset = typedArray.getDimensionPixelOffset(7, -1);
            int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(3, -1);
            if (dimensionPixelOffset >= 0 || dimensionPixelOffset2 >= 0) {
                int max = Math.max(dimensionPixelOffset, 0);
                int max2 = Math.max(dimensionPixelOffset2, 0);
                toolbar.ensureContentInsets();
                toolbar.mContentInsets.setRelative(max, max2);
            }
            int resourceId2 = typedArray.getResourceId(28, 0);
            if (resourceId2 != 0) {
                Context context = toolbar.getContext();
                toolbar.mTitleTextAppearance = resourceId2;
                AppCompatTextView appCompatTextView = toolbar.mTitleTextView;
                if (appCompatTextView != null) {
                    appCompatTextView.setTextAppearance(context, resourceId2);
                }
            }
            int resourceId3 = typedArray.getResourceId(26, 0);
            if (resourceId3 != 0) {
                Context context2 = toolbar.getContext();
                toolbar.mSubtitleTextAppearance = resourceId3;
                AppCompatTextView appCompatTextView2 = toolbar.mSubtitleTextView;
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setTextAppearance(context2, resourceId3);
                }
            }
            int resourceId4 = typedArray.getResourceId(22, 0);
            if (resourceId4 != 0) {
                toolbar.setPopupTheme(resourceId4);
            }
        } else {
            if (toolbar.getNavigationIcon() != null) {
                this.mDefaultNavigationIcon = toolbar.getNavigationIcon();
            } else {
                i = 11;
            }
            this.mDisplayOpts = i;
        }
        obtainStyledAttributes.recycle();
        if (R.string.abc_action_bar_up_description != this.mDefaultNavigationContentDescription) {
            this.mDefaultNavigationContentDescription = R.string.abc_action_bar_up_description;
            if (TextUtils.isEmpty(toolbar.getNavigationContentDescription())) {
                int i2 = this.mDefaultNavigationContentDescription;
                this.mHomeDescription = i2 != 0 ? this.mToolbar.getContext().getString(i2) : null;
                updateHomeAccessibility();
            }
        }
        this.mHomeDescription = toolbar.getNavigationContentDescription();
        toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.ToolbarWidgetWrapper.1
            public final ActionMenuItem mNavItem;

            {
                Context context3 = ToolbarWidgetWrapper.this.mToolbar.getContext();
                CharSequence charSequence = ToolbarWidgetWrapper.this.mTitle;
                ActionMenuItem actionMenuItem = new ActionMenuItem();
                actionMenuItem.mShortcutNumericModifiers = 4096;
                actionMenuItem.mShortcutAlphabeticModifiers = 4096;
                actionMenuItem.mIconTintList = null;
                actionMenuItem.mIconTintMode = null;
                actionMenuItem.mHasIconTint = false;
                actionMenuItem.mHasIconTintMode = false;
                actionMenuItem.mFlags = 16;
                actionMenuItem.mContext = context3;
                actionMenuItem.mTitle = charSequence;
                this.mNavItem = actionMenuItem;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ToolbarWidgetWrapper toolbarWidgetWrapper = ToolbarWidgetWrapper.this;
                Window.Callback callback = toolbarWidgetWrapper.mWindowCallback;
                if (callback == null || !toolbarWidgetWrapper.mMenuPrepared) {
                    return;
                }
                callback.onMenuItemSelected(0, this.mNavItem);
            }
        });
    }

    public final void setDisplayOptions(int i) {
        View view;
        int i2 = this.mDisplayOpts ^ i;
        this.mDisplayOpts = i;
        if (i2 != 0) {
            int i3 = i2 & 4;
            Toolbar toolbar = this.mToolbar;
            if (i3 != 0) {
                if ((i & 4) != 0) {
                    updateHomeAccessibility();
                }
                if ((this.mDisplayOpts & 4) != 0) {
                    Drawable drawable = this.mNavIcon;
                    if (drawable == null) {
                        drawable = this.mDefaultNavigationIcon;
                    }
                    toolbar.setNavigationIcon(drawable);
                } else {
                    toolbar.setNavigationIcon((Drawable) null);
                }
            }
            if ((i2 & 3) != 0) {
                updateToolbarLogo();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    toolbar.setTitle(this.mTitle);
                    toolbar.setSubtitle(this.mSubtitle);
                } else {
                    toolbar.setTitle((CharSequence) null);
                    toolbar.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) == 0 || (view = this.mCustomView) == null) {
                return;
            }
            if ((i & 16) != 0) {
                toolbar.addView(view);
            } else {
                toolbar.removeView(view);
            }
        }
    }

    public final void setSubtitle(CharSequence charSequence) {
        this.mSubtitle = charSequence;
        if ((this.mDisplayOpts & 8) != 0) {
            this.mToolbar.setSubtitle(charSequence);
        }
    }

    public final void updateHomeAccessibility() {
        if ((this.mDisplayOpts & 4) != 0) {
            boolean isEmpty = TextUtils.isEmpty(this.mHomeDescription);
            Toolbar toolbar = this.mToolbar;
            if (isEmpty) {
                toolbar.setNavigationContentDescription(this.mDefaultNavigationContentDescription);
            } else {
                toolbar.setNavigationContentDescription(this.mHomeDescription);
            }
        }
    }

    public final void updateToolbarLogo() {
        Drawable drawable;
        int i = this.mDisplayOpts;
        if ((i & 2) == 0) {
            drawable = null;
        } else if ((i & 1) != 0) {
            drawable = this.mLogo;
            if (drawable == null) {
                drawable = this.mIcon;
            }
        } else {
            drawable = this.mIcon;
        }
        this.mToolbar.setLogo(drawable);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.appcompat.widget.ToolbarWidgetWrapper$2, reason: invalid class name */
    public final class AnonymousClass2 extends Room {
        public final /* synthetic */ int $r8$classId;
        public boolean mCanceled;
        public final /* synthetic */ Object this$0;
        public int val$visibility;

        public AnonymousClass2(ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet) {
            this.$r8$classId = 1;
            this.this$0 = viewPropertyAnimatorCompatSet;
            this.mCanceled = false;
            this.val$visibility = 0;
        }

        @Override // androidx.room.Room, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationCancel() {
            switch (this.$r8$classId) {
                case 0:
                    this.mCanceled = true;
                    break;
            }
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public final void onAnimationEnd() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    if (!this.mCanceled) {
                        ((ToolbarWidgetWrapper) obj).mToolbar.setVisibility(this.val$visibility);
                        break;
                    }
                    break;
                default:
                    int i2 = this.val$visibility + 1;
                    this.val$visibility = i2;
                    ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = (ViewPropertyAnimatorCompatSet) obj;
                    if (i2 == viewPropertyAnimatorCompatSet.mAnimators.size()) {
                        ViewPropertyAnimatorListener viewPropertyAnimatorListener = viewPropertyAnimatorCompatSet.mListener;
                        if (viewPropertyAnimatorListener != null) {
                            viewPropertyAnimatorListener.onAnimationEnd();
                        }
                        this.val$visibility = 0;
                        this.mCanceled = false;
                        viewPropertyAnimatorCompatSet.mIsStarted = false;
                        break;
                    }
                    break;
            }
        }

        @Override // androidx.room.Room, androidx.core.view.ViewPropertyAnimatorListener
        public final void onAnimationStart() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    ((ToolbarWidgetWrapper) obj).mToolbar.setVisibility(0);
                    break;
                default:
                    if (!this.mCanceled) {
                        this.mCanceled = true;
                        ViewPropertyAnimatorListener viewPropertyAnimatorListener = ((ViewPropertyAnimatorCompatSet) obj).mListener;
                        if (viewPropertyAnimatorListener != null) {
                            viewPropertyAnimatorListener.onAnimationStart();
                            break;
                        }
                    }
                    break;
            }
        }

        public AnonymousClass2(ToolbarWidgetWrapper toolbarWidgetWrapper, int i) {
            this.$r8$classId = 0;
            this.this$0 = toolbarWidgetWrapper;
            this.val$visibility = i;
            this.mCanceled = false;
        }
    }
}
