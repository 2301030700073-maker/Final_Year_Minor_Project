package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.activity.ComponentDialog;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.view.menu.MenuDialogHelper;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.NestedScrollView;
import androidx.preference.Preference;
import androidx.room.TransactionExecutor;
import androidx.sqlite.SQLite;
import java.util.WeakHashMap;
import okio.Options;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AlertDialog extends ComponentDialog implements DialogInterface, AppCompatCallback {
    public final AlertController mAlert;
    public AppCompatDelegateImpl mDelegate;
    public final AppCompatDialog$$ExternalSyntheticLambda0 mKeyDispatcher;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.appcompat.app.AppCompatDialog$$ExternalSyntheticLambda0] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AlertDialog(android.view.ContextThemeWrapper r5, int r6) {
        /*
            r4 = this;
            int r6 = resolveDialogTheme(r5, r6)
            r0 = 1
            r1 = 2130968987(0x7f04019b, float:1.7546643E38)
            if (r6 != 0) goto L19
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            android.content.res.Resources$Theme r3 = r5.getTheme()
            r3.resolveAttribute(r1, r2, r0)
            int r2 = r2.resourceId
            goto L1a
        L19:
            r2 = r6
        L1a:
            r4.<init>(r5, r2)
            androidx.appcompat.app.AppCompatDialog$$ExternalSyntheticLambda0 r2 = new androidx.appcompat.app.AppCompatDialog$$ExternalSyntheticLambda0
            r2.<init>()
            r4.mKeyDispatcher = r2
            androidx.appcompat.app.AppCompatDelegate r2 = r4.getDelegate()
            if (r6 != 0) goto L38
            android.util.TypedValue r6 = new android.util.TypedValue
            r6.<init>()
            android.content.res.Resources$Theme r5 = r5.getTheme()
            r5.resolveAttribute(r1, r6, r0)
            int r6 = r6.resourceId
        L38:
            r5 = r2
            androidx.appcompat.app.AppCompatDelegateImpl r5 = (androidx.appcompat.app.AppCompatDelegateImpl) r5
            r5.mThemeResId = r6
            r2.onCreate()
            androidx.appcompat.app.AlertController r5 = new androidx.appcompat.app.AlertController
            android.content.Context r6 = r4.getContext()
            android.view.Window r0 = r4.getWindow()
            r5.<init>(r6, r4, r0)
            r4.mAlert = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AlertDialog.<init>(android.view.ContextThemeWrapper, int):void");
    }

    public static int resolveDialogTheme(Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        appCompatDelegateImpl.ensureSubDecor();
        ((ViewGroup) appCompatDelegateImpl.mSubDecor.findViewById(android.R.id.content)).addView(view, layoutParams);
        appCompatDelegateImpl.mAppCompatWindowCallback.bypassOnContentChanged(appCompatDelegateImpl.mWindow.getCallback());
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        getDelegate().onDestroy();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return SQLite.dispatchKeyEvent(this.mKeyDispatcher, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public final View findViewById(int i) {
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        appCompatDelegateImpl.ensureSubDecor();
        return appCompatDelegateImpl.mWindow.findViewById(i);
    }

    public final Button getButton(int i) {
        AlertController alertController = this.mAlert;
        if (i == -3) {
            return alertController.mButtonNeutral;
        }
        if (i == -2) {
            return alertController.mButtonNegative;
        }
        if (i == -1) {
            return alertController.mButtonPositive;
        }
        alertController.getClass();
        return null;
    }

    public final AppCompatDelegate getDelegate() {
        if (this.mDelegate == null) {
            TransactionExecutor transactionExecutor = AppCompatDelegate.sSerialExecutorForLocalesStorage;
            this.mDelegate = new AppCompatDelegateImpl(getContext(), getWindow(), this, this);
        }
        return this.mDelegate;
    }

    @Override // android.app.Dialog
    public final void invalidateOptionsMenu() {
        getDelegate().invalidateOptionsMenu();
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        int i;
        ListAdapter listAdapter;
        View findViewById;
        onCreate$androidx$appcompat$app$AppCompatDialog(bundle);
        AlertController alertController = this.mAlert;
        alertController.mDialog.setContentView(alertController.mAlertDialogLayout);
        Context context = alertController.mContext;
        Window window = alertController.mWindow;
        View findViewById2 = window.findViewById(R.id.parentPanel);
        View findViewById3 = findViewById2.findViewById(R.id.topPanel);
        View findViewById4 = findViewById2.findViewById(R.id.contentPanel);
        View findViewById5 = findViewById2.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById2.findViewById(R.id.customPanel);
        View view = alertController.mView;
        if (view == null) {
            view = alertController.mViewLayoutResId != 0 ? LayoutInflater.from(context).inflate(alertController.mViewLayoutResId, viewGroup, false) : null;
        }
        boolean z = view != null;
        if (!z || !AlertController.canTextInput(view)) {
            window.setFlags(131072, 131072);
        }
        if (z) {
            FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.custom);
            frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
            if (alertController.mViewSpacingSpecified) {
                frameLayout.setPadding(0, 0, 0, 0);
            }
            if (alertController.mListView != null) {
                ((LinearLayout.LayoutParams) ((LinearLayoutCompat.LayoutParams) viewGroup.getLayoutParams())).weight = 0.0f;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View findViewById6 = viewGroup.findViewById(R.id.topPanel);
        View findViewById7 = viewGroup.findViewById(R.id.contentPanel);
        View findViewById8 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup resolvePanel = AlertController.resolvePanel(findViewById6, findViewById3);
        ViewGroup resolvePanel2 = AlertController.resolvePanel(findViewById7, findViewById4);
        ViewGroup resolvePanel3 = AlertController.resolvePanel(findViewById8, findViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) window.findViewById(R.id.scrollView);
        alertController.mScrollView = nestedScrollView;
        nestedScrollView.setFocusable(false);
        alertController.mScrollView.setNestedScrollingEnabled(false);
        TextView textView = (TextView) resolvePanel2.findViewById(android.R.id.message);
        alertController.mMessageView = textView;
        if (textView != null) {
            CharSequence charSequence = alertController.mMessage;
            if (charSequence != null) {
                textView.setText(charSequence);
            } else {
                textView.setVisibility(8);
                alertController.mScrollView.removeView(alertController.mMessageView);
                if (alertController.mListView != null) {
                    ViewGroup viewGroup2 = (ViewGroup) alertController.mScrollView.getParent();
                    int indexOfChild = viewGroup2.indexOfChild(alertController.mScrollView);
                    viewGroup2.removeViewAt(indexOfChild);
                    viewGroup2.addView(alertController.mListView, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    resolvePanel2.setVisibility(8);
                }
            }
        }
        Button button = (Button) resolvePanel3.findViewById(android.R.id.button1);
        alertController.mButtonPositive = button;
        Preference.AnonymousClass1 anonymousClass1 = alertController.mButtonHandler;
        button.setOnClickListener(anonymousClass1);
        boolean isEmpty = TextUtils.isEmpty(alertController.mButtonPositiveText);
        Button button2 = alertController.mButtonPositive;
        if (isEmpty) {
            button2.setVisibility(8);
            i = 0;
        } else {
            button2.setText(alertController.mButtonPositiveText);
            alertController.mButtonPositive.setVisibility(0);
            i = 1;
        }
        Button button3 = (Button) resolvePanel3.findViewById(android.R.id.button2);
        alertController.mButtonNegative = button3;
        button3.setOnClickListener(anonymousClass1);
        boolean isEmpty2 = TextUtils.isEmpty(alertController.mButtonNegativeText);
        Button button4 = alertController.mButtonNegative;
        if (isEmpty2) {
            button4.setVisibility(8);
        } else {
            button4.setText(alertController.mButtonNegativeText);
            alertController.mButtonNegative.setVisibility(0);
            i |= 2;
        }
        Button button5 = (Button) resolvePanel3.findViewById(android.R.id.button3);
        alertController.mButtonNeutral = button5;
        button5.setOnClickListener(anonymousClass1);
        boolean isEmpty3 = TextUtils.isEmpty(alertController.mButtonNeutralText);
        Button button6 = alertController.mButtonNeutral;
        if (isEmpty3) {
            button6.setVisibility(8);
        } else {
            button6.setText(alertController.mButtonNeutralText);
            alertController.mButtonNeutral.setVisibility(0);
            i |= 4;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (i == 1) {
                Button button7 = alertController.mButtonPositive;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button7.getLayoutParams();
                layoutParams.gravity = 1;
                layoutParams.weight = 0.5f;
                button7.setLayoutParams(layoutParams);
            } else if (i == 2) {
                Button button8 = alertController.mButtonNegative;
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) button8.getLayoutParams();
                layoutParams2.gravity = 1;
                layoutParams2.weight = 0.5f;
                button8.setLayoutParams(layoutParams2);
            } else if (i == 4) {
                Button button9 = alertController.mButtonNeutral;
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) button9.getLayoutParams();
                layoutParams3.gravity = 1;
                layoutParams3.weight = 0.5f;
                button9.setLayoutParams(layoutParams3);
            }
        }
        if (i == 0) {
            resolvePanel3.setVisibility(8);
        }
        if (alertController.mCustomTitleView != null) {
            resolvePanel.addView(alertController.mCustomTitleView, 0, new ViewGroup.LayoutParams(-1, -2));
            window.findViewById(R.id.title_template).setVisibility(8);
        } else {
            alertController.mIconView = (ImageView) window.findViewById(android.R.id.icon);
            if (TextUtils.isEmpty(alertController.mTitle) || !alertController.mShowTitle) {
                window.findViewById(R.id.title_template).setVisibility(8);
                alertController.mIconView.setVisibility(8);
                resolvePanel.setVisibility(8);
            } else {
                TextView textView2 = (TextView) window.findViewById(R.id.alertTitle);
                alertController.mTitleView = textView2;
                textView2.setText(alertController.mTitle);
                int i2 = alertController.mIconId;
                if (i2 != 0) {
                    alertController.mIconView.setImageResource(i2);
                } else {
                    Drawable drawable = alertController.mIcon;
                    if (drawable != null) {
                        alertController.mIconView.setImageDrawable(drawable);
                    } else {
                        alertController.mTitleView.setPadding(alertController.mIconView.getPaddingLeft(), alertController.mIconView.getPaddingTop(), alertController.mIconView.getPaddingRight(), alertController.mIconView.getPaddingBottom());
                        alertController.mIconView.setVisibility(8);
                    }
                }
            }
        }
        boolean z2 = viewGroup.getVisibility() != 8;
        int i3 = (resolvePanel == null || resolvePanel.getVisibility() == 8) ? 0 : 1;
        boolean z3 = resolvePanel3.getVisibility() != 8;
        if (!z3 && (findViewById = resolvePanel2.findViewById(R.id.textSpacerNoButtons)) != null) {
            findViewById.setVisibility(0);
        }
        if (i3 != 0) {
            NestedScrollView nestedScrollView2 = alertController.mScrollView;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            View findViewById9 = (alertController.mMessage == null && alertController.mListView == null) ? null : resolvePanel.findViewById(R.id.titleDividerNoCustom);
            if (findViewById9 != null) {
                findViewById9.setVisibility(0);
            }
        } else {
            View findViewById10 = resolvePanel2.findViewById(R.id.textSpacerNoTitle);
            if (findViewById10 != null) {
                findViewById10.setVisibility(0);
            }
        }
        AlertController.RecycleListView recycleListView = alertController.mListView;
        if (recycleListView != null) {
            recycleListView.getClass();
            if (!z3 || i3 == 0) {
                recycleListView.setPadding(recycleListView.getPaddingLeft(), i3 != 0 ? recycleListView.getPaddingTop() : recycleListView.mPaddingTopNoTitle, recycleListView.getPaddingRight(), z3 ? recycleListView.getPaddingBottom() : recycleListView.mPaddingBottomNoButtons);
            }
        }
        if (!z2) {
            View view2 = alertController.mListView;
            if (view2 == null) {
                view2 = alertController.mScrollView;
            }
            if (view2 != null) {
                int i4 = z3 ? 2 : 0;
                View findViewById11 = window.findViewById(R.id.scrollIndicatorUp);
                View findViewById12 = window.findViewById(R.id.scrollIndicatorDown);
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                view2.setScrollIndicators(i3 | i4, 3);
                if (findViewById11 != null) {
                    resolvePanel2.removeView(findViewById11);
                }
                if (findViewById12 != null) {
                    resolvePanel2.removeView(findViewById12);
                }
            }
        }
        AlertController.RecycleListView recycleListView2 = alertController.mListView;
        if (recycleListView2 == null || (listAdapter = alertController.mAdapter) == null) {
            return;
        }
        recycleListView2.setAdapter(listAdapter);
        int i5 = alertController.mCheckedItem;
        if (i5 > -1) {
            recycleListView2.setItemChecked(i5, true);
            recycleListView2.setSelection(i5);
        }
    }

    public final void onCreate$androidx$appcompat$app$AppCompatDialog(Bundle bundle) {
        getDelegate().installViewFactory();
        super.onCreate(bundle);
        getDelegate().onCreate();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.mAlert.mScrollView;
        if (nestedScrollView == null || !nestedScrollView.executeKeyEvent(keyEvent)) {
            return super.onKeyDown(i, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.mAlert.mScrollView;
        if (nestedScrollView == null || !nestedScrollView.executeKeyEvent(keyEvent)) {
            return super.onKeyUp(i, keyEvent);
        }
        return true;
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public final void onStop() {
        super.onStop();
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        appCompatDelegateImpl.initWindowDecorActionBar();
        Options.Companion companion = appCompatDelegateImpl.mActionBar;
        if (companion != null) {
            companion.setShowHideAnimationEnabled(false);
        }
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public final void setContentView(int i) {
        initializeViewTreeOwners();
        getDelegate().setContentView(i);
    }

    @Override // android.app.Dialog
    public final void setTitle(int i) {
        super.setTitle(i);
        getDelegate().setTitle(getContext().getString(i));
    }

    public final void setTitle$androidx$appcompat$app$AppCompatDialog(CharSequence charSequence) {
        super.setTitle(charSequence);
        getDelegate().setTitle(charSequence);
    }

    public final boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class Builder {
        public final AlertController.AlertParams P;
        public final int mTheme;

        public Builder(Context context, int i) {
            this.P = new AlertController.AlertParams(new ContextThemeWrapper(context, AlertDialog.resolveDialogTheme(context, i)));
            this.mTheme = i;
        }

        public AlertDialog create() {
            ListAdapter listAdapter;
            final AlertController.AlertParams alertParams = this.P;
            ContextThemeWrapper contextThemeWrapper = alertParams.mContext;
            ContextThemeWrapper contextThemeWrapper2 = alertParams.mContext;
            AlertDialog alertDialog = new AlertDialog(contextThemeWrapper, this.mTheme);
            View view = alertParams.mCustomTitleView;
            final AlertController alertController = alertDialog.mAlert;
            if (view != null) {
                alertController.mCustomTitleView = view;
            } else {
                CharSequence charSequence = alertParams.mTitle;
                if (charSequence != null) {
                    alertController.mTitle = charSequence;
                    TextView textView = alertController.mTitleView;
                    if (textView != null) {
                        textView.setText(charSequence);
                    }
                }
                Drawable drawable = alertParams.mIcon;
                if (drawable != null) {
                    alertController.mIcon = drawable;
                    alertController.mIconId = 0;
                    ImageView imageView = alertController.mIconView;
                    if (imageView != null) {
                        imageView.setVisibility(0);
                        alertController.mIconView.setImageDrawable(drawable);
                    }
                }
                int i = alertParams.mIconId;
                if (i != 0) {
                    alertController.mIcon = null;
                    alertController.mIconId = i;
                    ImageView imageView2 = alertController.mIconView;
                    if (imageView2 != null) {
                        if (i != 0) {
                            imageView2.setVisibility(0);
                            alertController.mIconView.setImageResource(alertController.mIconId);
                        } else {
                            imageView2.setVisibility(8);
                        }
                    }
                }
            }
            CharSequence charSequence2 = alertParams.mMessage;
            if (charSequence2 != null) {
                alertController.mMessage = charSequence2;
                TextView textView2 = alertController.mMessageView;
                if (textView2 != null) {
                    textView2.setText(charSequence2);
                }
            }
            CharSequence charSequence3 = alertParams.mPositiveButtonText;
            if (charSequence3 != null) {
                alertController.setButton(-1, charSequence3, alertParams.mPositiveButtonListener);
            }
            CharSequence charSequence4 = alertParams.mNegativeButtonText;
            if (charSequence4 != null) {
                alertController.setButton(-2, charSequence4, alertParams.mNegativeButtonListener);
            }
            CharSequence charSequence5 = alertParams.mNeutralButtonText;
            if (charSequence5 != null) {
                alertController.setButton(-3, charSequence5, alertParams.mNeutralButtonListener);
            }
            if (alertParams.mItems != null || alertParams.mAdapter != null) {
                final AlertController.RecycleListView recycleListView = (AlertController.RecycleListView) alertParams.mInflater.inflate(alertController.mListLayout, (ViewGroup) null);
                if (alertParams.mIsMultiChoice) {
                    listAdapter = new ArrayAdapter(contextThemeWrapper2, alertController.mMultiChoiceItemLayout, alertParams.mItems) { // from class: androidx.appcompat.app.AlertController.AlertParams.1
                        public final /* synthetic */ RecycleListView val$listView;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public AnonymousClass1(ContextThemeWrapper contextThemeWrapper22, int i2, CharSequence[] charSequenceArr, final RecycleListView recycleListView2) {
                            super(contextThemeWrapper22, i2, android.R.id.text1, charSequenceArr);
                            r5 = recycleListView2;
                        }

                        @Override // android.widget.ArrayAdapter, android.widget.Adapter
                        public final View getView(int i2, View view2, ViewGroup viewGroup) {
                            View view3 = super.getView(i2, view2, viewGroup);
                            boolean[] zArr = AlertParams.this.mCheckedItems;
                            if (zArr != null && zArr[i2]) {
                                r5.setItemChecked(i2, true);
                            }
                            return view3;
                        }
                    };
                } else {
                    int i2 = alertParams.mIsSingleChoice ? alertController.mSingleChoiceItemLayout : alertController.mListItemLayout;
                    listAdapter = alertParams.mAdapter;
                    if (listAdapter == null) {
                        listAdapter = new AlertController.CheckedItemAdapter(contextThemeWrapper22, i2, android.R.id.text1, alertParams.mItems);
                    }
                }
                alertController.mAdapter = listAdapter;
                alertController.mCheckedItem = alertParams.mCheckedItem;
                if (alertParams.mOnClickListener != null) {
                    recycleListView2.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.AlertParams.3
                        public final /* synthetic */ AlertController val$dialog;

                        public AnonymousClass3(final AlertController alertController2) {
                            r2 = alertController2;
                        }

                        @Override // android.widget.AdapterView.OnItemClickListener
                        public final void onItemClick(AdapterView adapterView, View view2, int i3, long j) {
                            AlertParams alertParams2 = AlertParams.this;
                            DialogInterface.OnClickListener onClickListener = alertParams2.mOnClickListener;
                            AlertController alertController2 = r2;
                            onClickListener.onClick(alertController2.mDialog, i3);
                            if (alertParams2.mIsSingleChoice) {
                                return;
                            }
                            alertController2.mDialog.dismiss();
                        }
                    });
                } else if (alertParams.mOnCheckboxClickListener != null) {
                    recycleListView2.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.AlertParams.4
                        public final /* synthetic */ AlertController val$dialog;
                        public final /* synthetic */ RecycleListView val$listView;

                        public AnonymousClass4(final RecycleListView recycleListView2, final AlertController alertController2) {
                            r2 = recycleListView2;
                            r3 = alertController2;
                        }

                        @Override // android.widget.AdapterView.OnItemClickListener
                        public final void onItemClick(AdapterView adapterView, View view2, int i3, long j) {
                            AlertParams alertParams2 = AlertParams.this;
                            boolean[] zArr = alertParams2.mCheckedItems;
                            RecycleListView recycleListView2 = r2;
                            if (zArr != null) {
                                zArr[i3] = recycleListView2.isItemChecked(i3);
                            }
                            alertParams2.mOnCheckboxClickListener.onClick(r3.mDialog, i3, recycleListView2.isItemChecked(i3));
                        }
                    });
                }
                if (alertParams.mIsSingleChoice) {
                    recycleListView2.setChoiceMode(1);
                } else if (alertParams.mIsMultiChoice) {
                    recycleListView2.setChoiceMode(2);
                }
                alertController2.mListView = recycleListView2;
            }
            View view2 = alertParams.mView;
            if (view2 != null) {
                alertController2.mView = view2;
                alertController2.mViewLayoutResId = 0;
                alertController2.mViewSpacingSpecified = false;
            } else {
                int i3 = alertParams.mViewLayoutResId;
                if (i3 != 0) {
                    alertController2.mView = null;
                    alertController2.mViewLayoutResId = i3;
                    alertController2.mViewSpacingSpecified = false;
                }
            }
            alertDialog.setCancelable(alertParams.mCancelable);
            if (alertParams.mCancelable) {
                alertDialog.setCanceledOnTouchOutside(true);
            }
            alertDialog.setOnCancelListener(null);
            alertDialog.setOnDismissListener(alertParams.mOnDismissListener);
            MenuDialogHelper menuDialogHelper = alertParams.mOnKeyListener;
            if (menuDialogHelper != null) {
                alertDialog.setOnKeyListener(menuDialogHelper);
            }
            return alertDialog;
        }

        public Context getContext() {
            return this.P.mContext;
        }

        public final void setMessage(int i) {
            AlertController.AlertParams alertParams = this.P;
            alertParams.mMessage = alertParams.mContext.getText(i);
        }

        public Builder setNegativeButton(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.P;
            alertParams.mNegativeButtonText = alertParams.mContext.getText(i);
            alertParams.mNegativeButtonListener = onClickListener;
            return this;
        }

        public final void setNeutralButton(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.P;
            alertParams.mNeutralButtonText = alertParams.mContext.getText(i);
            alertParams.mNeutralButtonListener = onClickListener;
        }

        public Builder setPositiveButton(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.P;
            alertParams.mPositiveButtonText = alertParams.mContext.getText(i);
            alertParams.mPositiveButtonListener = onClickListener;
            return this;
        }

        public final void setTitle(int i) {
            AlertController.AlertParams alertParams = this.P;
            alertParams.mTitle = alertParams.mContext.getText(i);
        }

        public Builder setView(View view) {
            AlertController.AlertParams alertParams = this.P;
            alertParams.mView = view;
            alertParams.mViewLayoutResId = 0;
            return this;
        }

        public final void show() {
            create().show();
        }

        public Builder setTitle(CharSequence charSequence) {
            this.P.mTitle = charSequence;
            return this;
        }

        public Builder(Context context) {
            this(context, AlertDialog.resolveDialogTheme(context, 0));
        }
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public final void setContentView(View view) {
        initializeViewTreeOwners();
        getDelegate().setContentView(view);
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        getDelegate().setContentView(view, layoutParams);
    }

    @Override // android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        setTitle$androidx$appcompat$app$AppCompatDialog(charSequence);
        AlertController alertController = this.mAlert;
        alertController.mTitle = charSequence;
        TextView textView = alertController.mTitleView;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
