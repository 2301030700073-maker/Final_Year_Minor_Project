package androidx.preference;

import android.R;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.compose.animation.core.Animation;
import androidx.core.content.res.CamUtils;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$3;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.fragment.app.FragmentState;
import androidx.lifecycle.LiveData$1;
import com.google.android.material.bottomnavigation.BottomNavigationMenuView;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.datepicker.MaterialCalendar;
import com.google.android.material.navigation.NavigationBarItemView;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.concurrency.FlowEventBus;
import org.wikipedia.edit.insertmedia.InsertMediaActivity;
import org.wikipedia.edit.insertmedia.InsertMediaAdvancedSettingsFragment;
import org.wikipedia.edit.insertmedia.InsertMediaImagePositionDialog;
import org.wikipedia.edit.insertmedia.InsertMediaImageTypeDialog;
import org.wikipedia.edit.insertmedia.InsertMediaViewModel;
import org.wikipedia.events.ThemeFontChangeEvent;
import org.wikipedia.readinglist.AddToReadingListDialog;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.theme.ThemeChooserDialog;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.views.CabSearchView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class Preference implements Comparable<Preference> {
    public final boolean mAllowDividerAbove;
    public final boolean mAllowDividerBelow;
    public boolean mBaseMethodCalled;
    public final AnonymousClass1 mClickListener;
    public final Context mContext;
    public final boolean mCopyingEnabled;
    public final Object mDefaultValue;
    public final String mDependencyKey;
    public boolean mDependencyMet;
    public ArrayList mDependents;
    public final boolean mEnabled;
    public Bundle mExtras;
    public final String mFragment;
    public boolean mHasId;
    public final boolean mHasSingleLineTitleAttr;
    public Drawable mIcon;
    public int mIconResId;
    public final boolean mIconSpaceReserved;
    public long mId;
    public Intent mIntent;
    public final String mKey;
    public int mLayoutResId;
    public PreferenceGroupAdapter mListener;
    public OnPreferenceChangeListener mOnChangeListener;
    public OnPreferenceClickListener mOnClickListener;
    public OnPreferenceCopyListener mOnCopyListener;
    public int mOrder;
    public boolean mParentDependencyMet;
    public PreferenceGroup mParentGroup;
    public final boolean mPersistent;
    public PreferenceManager mPreferenceManager;
    public final boolean mSelectable;
    public final boolean mShouldDisableView;
    public final boolean mSingleLineTitle;
    public CharSequence mSummary;
    public SummaryProvider mSummaryProvider;
    public CharSequence mTitle;
    public boolean mVisible;
    public int mWidgetLayoutResId;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.preference.Preference$1, reason: invalid class name */
    public final class AnonymousClass1 implements View.OnClickListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass1(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Message message;
            Message message2;
            Message message3;
            int i = this.$r8$classId;
            Message message4 = null;
            Fragment fragment = null;
            Fragment fragment2 = null;
            String flattenToShortString = null;
            message4 = null;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    ((Preference) obj).performClick(view);
                    return;
                case 1:
                    AlertController alertController = (AlertController) obj;
                    if (view == alertController.mButtonPositive && (message3 = alertController.mButtonPositiveMessage) != null) {
                        message4 = Message.obtain(message3);
                    } else if (view == alertController.mButtonNegative && (message2 = alertController.mButtonNegativeMessage) != null) {
                        message4 = Message.obtain(message2);
                    } else if (view == alertController.mButtonNeutral && (message = alertController.mButtonNeutralMessage) != null) {
                        message4 = Message.obtain(message);
                    }
                    if (message4 != null) {
                        message4.sendToTarget();
                    }
                    alertController.mHandler.obtainMessage(1, alertController.mDialog).sendToTarget();
                    return;
                case 2:
                    ((ActionMode) obj).finish();
                    return;
                case 3:
                    CabSearchView cabSearchView = (CabSearchView) obj;
                    SearchView.SearchAutoComplete searchAutoComplete = cabSearchView.mSearchSrcTextView;
                    if (view == cabSearchView.mSearchButton) {
                        cabSearchView.updateViewsVisibility(false);
                        searchAutoComplete.requestFocus();
                        searchAutoComplete.setImeVisibility(true);
                        View.OnClickListener onClickListener = cabSearchView.mOnSearchClickListener;
                        if (onClickListener != null) {
                            onClickListener.onClick(cabSearchView);
                            return;
                        }
                        return;
                    }
                    if (view == cabSearchView.mCloseButton) {
                        cabSearchView.onCloseClicked();
                        return;
                    }
                    if (view == cabSearchView.mGoButton) {
                        cabSearchView.onSubmitQuery();
                        return;
                    }
                    if (view != cabSearchView.mVoiceButton) {
                        if (view == searchAutoComplete) {
                            cabSearchView.forceSuggestionQuery();
                            return;
                        }
                        return;
                    }
                    SearchableInfo searchableInfo = cabSearchView.mSearchable;
                    if (searchableInfo == null) {
                        return;
                    }
                    try {
                        if (!searchableInfo.getVoiceSearchLaunchWebSearch()) {
                            if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                                cabSearchView.getContext().startActivity(cabSearchView.createVoiceAppSearchIntent(cabSearchView.mVoiceAppSearchIntent, searchableInfo));
                                return;
                            }
                            return;
                        } else {
                            Intent intent = new Intent(cabSearchView.mVoiceWebSearchIntent);
                            ComponentName searchActivity = searchableInfo.getSearchActivity();
                            if (searchActivity != null) {
                                flattenToShortString = searchActivity.flattenToShortString();
                            }
                            intent.putExtra("calling_package", flattenToShortString);
                            cabSearchView.getContext().startActivity(intent);
                            return;
                        }
                    } catch (ActivityNotFoundException unused) {
                        Log.w("SearchView", "Could not find voice search activity");
                        return;
                    }
                case 4:
                    Toolbar.ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = ((Toolbar) obj).mExpandedMenuPresenter;
                    MenuItemImpl menuItemImpl = expandedActionViewMenuPresenter != null ? expandedActionViewMenuPresenter.mCurrentExpandedItem : null;
                    if (menuItemImpl != null) {
                        menuItemImpl.collapseActionView();
                        return;
                    }
                    return;
                case 5:
                    BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) obj;
                    if (bottomSheetDialog.cancelable && bottomSheetDialog.isShowing()) {
                        if (!bottomSheetDialog.canceledOnTouchOutsideSet) {
                            TypedArray obtainStyledAttributes = bottomSheetDialog.getContext().obtainStyledAttributes(new int[]{R.attr.windowCloseOnTouchOutside});
                            bottomSheetDialog.canceledOnTouchOutside = obtainStyledAttributes.getBoolean(0, true);
                            obtainStyledAttributes.recycle();
                            bottomSheetDialog.canceledOnTouchOutsideSet = true;
                        }
                        if (bottomSheetDialog.canceledOnTouchOutside) {
                            bottomSheetDialog.cancel();
                            return;
                        }
                        return;
                    }
                    return;
                case 6:
                    MaterialCalendar materialCalendar = (MaterialCalendar) obj;
                    MaterialCalendar.CalendarSelector calendarSelector = materialCalendar.calendarSelector;
                    MaterialCalendar.CalendarSelector calendarSelector2 = MaterialCalendar.CalendarSelector.YEAR;
                    if (calendarSelector == calendarSelector2) {
                        materialCalendar.setSelector(MaterialCalendar.CalendarSelector.DAY);
                    } else if (calendarSelector == MaterialCalendar.CalendarSelector.DAY) {
                        materialCalendar.setSelector(calendarSelector2);
                    }
                    materialCalendar.updateAccessibilityPaneTitle(materialCalendar.mView);
                    return;
                case 7:
                    MenuItemImpl itemData = ((NavigationBarItemView) view).getItemData();
                    BottomNavigationMenuView bottomNavigationMenuView = (BottomNavigationMenuView) obj;
                    boolean performItemAction = bottomNavigationMenuView.menu.menuBuilder.performItemAction(itemData, bottomNavigationMenuView.presenter, 0);
                    if (itemData == null || !itemData.isCheckable()) {
                        return;
                    }
                    if (!performItemAction || itemData.isChecked()) {
                        bottomNavigationMenuView.setCheckedItem(itemData);
                        return;
                    }
                    return;
                case 8:
                    view.getClass();
                    InsertMediaImagePositionDialog insertMediaImagePositionDialog = (InsertMediaImagePositionDialog) obj;
                    View[] viewArr = insertMediaImagePositionDialog.imagePositionOptions;
                    if (viewArr == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("imagePositionOptions");
                        throw null;
                    }
                    for (View view2 : viewArr) {
                        InsertMediaImagePositionDialog.updateOptionView(view2, false);
                    }
                    InsertMediaImagePositionDialog.updateOptionView(view, true);
                    InsertMediaViewModel viewModel = ((InsertMediaActivity) insertMediaImagePositionDialog.requireActivity()).getViewModel();
                    String obj2 = view.getTag().toString();
                    obj2.getClass();
                    viewModel.imagePosition = obj2;
                    if (InsertMediaAdvancedSettingsFragment.class.isInstance(insertMediaImagePositionDialog.getTargetFragment(true))) {
                        fragment2 = insertMediaImagePositionDialog.getTargetFragment(true);
                    } else {
                        Fragment fragment3 = insertMediaImagePositionDialog.mParentFragment;
                        if (fragment3 != null) {
                            if (InsertMediaAdvancedSettingsFragment.class.isInstance(fragment3)) {
                                fragment2 = insertMediaImagePositionDialog.mParentFragment;
                            } else if (InsertMediaAdvancedSettingsFragment.class.isInstance(insertMediaImagePositionDialog.requireParentFragment().mParentFragment)) {
                                fragment2 = insertMediaImagePositionDialog.requireParentFragment().mParentFragment;
                            }
                        }
                        if (InsertMediaAdvancedSettingsFragment.class.isInstance(insertMediaImagePositionDialog.getActivity())) {
                            fragment2 = insertMediaImagePositionDialog.getActivity();
                        }
                    }
                    InsertMediaAdvancedSettingsFragment insertMediaAdvancedSettingsFragment = (InsertMediaAdvancedSettingsFragment) fragment2;
                    if (insertMediaAdvancedSettingsFragment != null) {
                        insertMediaAdvancedSettingsFragment.onUpdateImagePosition();
                    }
                    insertMediaImagePositionDialog.dismiss();
                    return;
                case 9:
                    view.getClass();
                    InsertMediaImageTypeDialog insertMediaImageTypeDialog = (InsertMediaImageTypeDialog) obj;
                    View[] viewArr2 = insertMediaImageTypeDialog.imageTypeOptions;
                    if (viewArr2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("imageTypeOptions");
                        throw null;
                    }
                    for (View view3 : viewArr2) {
                        InsertMediaImageTypeDialog.updateOptionView$1(view3, false);
                    }
                    InsertMediaImageTypeDialog.updateOptionView$1(view, true);
                    InsertMediaViewModel viewModel2 = ((InsertMediaActivity) insertMediaImageTypeDialog.requireActivity()).getViewModel();
                    String obj3 = view.getTag().toString();
                    obj3.getClass();
                    viewModel2.imageType = obj3;
                    if (InsertMediaAdvancedSettingsFragment.class.isInstance(insertMediaImageTypeDialog.getTargetFragment(true))) {
                        fragment = insertMediaImageTypeDialog.getTargetFragment(true);
                    } else {
                        Fragment fragment4 = insertMediaImageTypeDialog.mParentFragment;
                        if (fragment4 != null) {
                            if (InsertMediaAdvancedSettingsFragment.class.isInstance(fragment4)) {
                                fragment = insertMediaImageTypeDialog.mParentFragment;
                            } else if (InsertMediaAdvancedSettingsFragment.class.isInstance(insertMediaImageTypeDialog.requireParentFragment().mParentFragment)) {
                                fragment = insertMediaImageTypeDialog.requireParentFragment().mParentFragment;
                            }
                        }
                        if (InsertMediaAdvancedSettingsFragment.class.isInstance(insertMediaImageTypeDialog.getActivity())) {
                            fragment = insertMediaImageTypeDialog.getActivity();
                        }
                    }
                    InsertMediaAdvancedSettingsFragment insertMediaAdvancedSettingsFragment2 = (InsertMediaAdvancedSettingsFragment) fragment;
                    if (insertMediaAdvancedSettingsFragment2 != null) {
                        insertMediaAdvancedSettingsFragment2.onUpdateImageType();
                    }
                    insertMediaImageTypeDialog.dismiss();
                    return;
                case 10:
                    view.getClass();
                    AddToReadingListDialog addToReadingListDialog = (AddToReadingListDialog) obj;
                    if (addToReadingListDialog.readingLists.size() < 100) {
                        addToReadingListDialog.showCreateListDialog();
                        return;
                    }
                    String string = addToReadingListDialog.getString(org.wikipedia.R.string.reading_lists_limit_message);
                    string.getClass();
                    addToReadingListDialog.dismiss();
                    ShareUtil.makeSnackbar$default(addToReadingListDialog.requireActivity(), string, 0, 12).show();
                    return;
                default:
                    ThemeChooserDialog themeChooserDialog = (ThemeChooserDialog) obj;
                    view.getClass();
                    if (view.getTag() != null) {
                        Object tag = view.getTag();
                        tag.getClass();
                        String str = (String) tag;
                        ConnectionPool connectionPool = themeChooserDialog.appearanceSettingInteractionEvent;
                        if (connectionPool == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("appearanceSettingInteractionEvent");
                            throw null;
                        }
                        Prefs prefs = Prefs.INSTANCE;
                        connectionPool.submitEvent("fontThemeChange", Prefs.getFontFamily(), str);
                        themeChooserDialog.app.getClass();
                        if (str.equals(Prefs.getFontFamily())) {
                            return;
                        }
                        PrefsIoUtil.setString(org.wikipedia.R.string.preference_key_font_family, str);
                        FlowEventBus.post(new ThemeFontChangeEvent());
                        return;
                    }
                    return;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnPreferenceChangeListener {
        boolean onPreferenceChange(Preference preference, Object obj);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnPreferenceClickListener {
        boolean onPreferenceClick(Preference preference);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class OnPreferenceCopyListener implements View.OnCreateContextMenuListener, MenuItem.OnMenuItemClickListener {
        public final Preference mPreference;

        public OnPreferenceCopyListener(Preference preference) {
            this.mPreference = preference;
        }

        @Override // android.view.View.OnCreateContextMenuListener
        public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
            Preference preference = this.mPreference;
            CharSequence summary = preference.getSummary();
            if (!preference.mCopyingEnabled || TextUtils.isEmpty(summary)) {
                return;
            }
            contextMenu.setHeaderTitle(summary);
            contextMenu.add(0, 0, 0, org.wikipedia.R.string.copy).setOnMenuItemClickListener(this);
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            Preference preference = this.mPreference;
            Context context = preference.mContext;
            ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
            CharSequence summary = preference.getSummary();
            clipboardManager.setPrimaryClip(ClipData.newPlainText("Preference", summary));
            Toast.makeText(context, context.getString(org.wikipedia.R.string.preference_copied, summary), 0).show();
            return true;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface SummaryProvider {
        CharSequence provideSummary(Preference preference);
    }

    public Preference(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mOrder = Integer.MAX_VALUE;
        this.mEnabled = true;
        this.mSelectable = true;
        this.mPersistent = true;
        this.mDependencyMet = true;
        this.mParentDependencyMet = true;
        this.mVisible = true;
        this.mAllowDividerAbove = true;
        this.mAllowDividerBelow = true;
        this.mSingleLineTitle = true;
        this.mShouldDisableView = true;
        this.mLayoutResId = org.wikipedia.R.layout.preference;
        this.mClickListener = new AnonymousClass1(0, this);
        this.mContext = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Preference, i, i2);
        this.mIconResId = obtainStyledAttributes.getResourceId(23, obtainStyledAttributes.getResourceId(0, 0));
        String string = obtainStyledAttributes.getString(26);
        this.mKey = string == null ? obtainStyledAttributes.getString(6) : string;
        CharSequence text = obtainStyledAttributes.getText(34);
        this.mTitle = text == null ? obtainStyledAttributes.getText(4) : text;
        CharSequence text2 = obtainStyledAttributes.getText(33);
        this.mSummary = text2 == null ? obtainStyledAttributes.getText(7) : text2;
        this.mOrder = obtainStyledAttributes.getInt(28, obtainStyledAttributes.getInt(8, Integer.MAX_VALUE));
        String string2 = obtainStyledAttributes.getString(22);
        this.mFragment = string2 == null ? obtainStyledAttributes.getString(13) : string2;
        this.mLayoutResId = obtainStyledAttributes.getResourceId(27, obtainStyledAttributes.getResourceId(3, org.wikipedia.R.layout.preference));
        this.mWidgetLayoutResId = obtainStyledAttributes.getResourceId(35, obtainStyledAttributes.getResourceId(9, 0));
        this.mEnabled = obtainStyledAttributes.getBoolean(21, obtainStyledAttributes.getBoolean(2, true));
        boolean z = obtainStyledAttributes.getBoolean(30, obtainStyledAttributes.getBoolean(5, true));
        this.mSelectable = z;
        this.mPersistent = obtainStyledAttributes.getBoolean(29, obtainStyledAttributes.getBoolean(1, true));
        String string3 = obtainStyledAttributes.getString(19);
        this.mDependencyKey = string3 == null ? obtainStyledAttributes.getString(10) : string3;
        this.mAllowDividerAbove = obtainStyledAttributes.getBoolean(16, obtainStyledAttributes.getBoolean(16, z));
        this.mAllowDividerBelow = obtainStyledAttributes.getBoolean(17, obtainStyledAttributes.getBoolean(17, z));
        if (obtainStyledAttributes.hasValue(18)) {
            this.mDefaultValue = onGetDefaultValue(obtainStyledAttributes, 18);
        } else if (obtainStyledAttributes.hasValue(11)) {
            this.mDefaultValue = onGetDefaultValue(obtainStyledAttributes, 11);
        }
        this.mShouldDisableView = obtainStyledAttributes.getBoolean(31, obtainStyledAttributes.getBoolean(12, true));
        boolean hasValue = obtainStyledAttributes.hasValue(32);
        this.mHasSingleLineTitleAttr = hasValue;
        if (hasValue) {
            this.mSingleLineTitle = obtainStyledAttributes.getBoolean(32, obtainStyledAttributes.getBoolean(14, true));
        }
        this.mIconSpaceReserved = obtainStyledAttributes.getBoolean(24, obtainStyledAttributes.getBoolean(15, false));
        this.mVisible = obtainStyledAttributes.getBoolean(25, obtainStyledAttributes.getBoolean(25, true));
        this.mCopyingEnabled = obtainStyledAttributes.getBoolean(20, obtainStyledAttributes.getBoolean(20, false));
        obtainStyledAttributes.recycle();
    }

    public static void setEnabledStateOnViews(View view, boolean z) {
        view.setEnabled(z);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                setEnabledStateOnViews(viewGroup.getChildAt(childCount), z);
            }
        }
    }

    public boolean callChangeListener(Object obj) {
        OnPreferenceChangeListener onPreferenceChangeListener = this.mOnChangeListener;
        return onPreferenceChangeListener == null || onPreferenceChangeListener.onPreferenceChange(this, obj);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Preference preference) {
        Preference preference2 = preference;
        int i = this.mOrder;
        int i2 = preference2.mOrder;
        if (i != i2) {
            return i - i2;
        }
        CharSequence charSequence = this.mTitle;
        CharSequence charSequence2 = preference2.mTitle;
        if (charSequence == charSequence2) {
            return 0;
        }
        if (charSequence == null) {
            return 1;
        }
        if (charSequence2 == null) {
            return -1;
        }
        return charSequence.toString().compareToIgnoreCase(preference2.mTitle.toString());
    }

    public void dispatchRestoreInstanceState(Bundle bundle) {
        Parcelable parcelable;
        String str = this.mKey;
        if (TextUtils.isEmpty(str) || (parcelable = bundle.getParcelable(str)) == null) {
            return;
        }
        this.mBaseMethodCalled = false;
        onRestoreInstanceState(parcelable);
        if (this.mBaseMethodCalled) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Derived class did not call super.onRestoreInstanceState()");
    }

    public void dispatchSaveInstanceState(Bundle bundle) {
        String str = this.mKey;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mBaseMethodCalled = false;
        Parcelable onSaveInstanceState = onSaveInstanceState();
        if (!this.mBaseMethodCalled) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Derived class did not call super.onSaveInstanceState()");
        } else if (onSaveInstanceState != null) {
            bundle.putParcelable(str, onSaveInstanceState);
        }
    }

    public long getId() {
        return this.mId;
    }

    public final int getPersistedInt(int i) {
        return !shouldPersist() ? i : this.mPreferenceManager.getSharedPreferences().getInt(this.mKey, i);
    }

    public String getPersistedString(String str) {
        return !shouldPersist() ? str : this.mPreferenceManager.getSharedPreferences().getString(this.mKey, str);
    }

    public CharSequence getSummary() {
        SummaryProvider summaryProvider = this.mSummaryProvider;
        return summaryProvider != null ? summaryProvider.provideSummary(this) : this.mSummary;
    }

    public boolean isEnabled() {
        return this.mEnabled && this.mDependencyMet && this.mParentDependencyMet;
    }

    public void notifyChanged() {
        int indexOf;
        PreferenceGroupAdapter preferenceGroupAdapter = this.mListener;
        if (preferenceGroupAdapter == null || (indexOf = preferenceGroupAdapter.mVisiblePreferences.indexOf(this)) == -1) {
            return;
        }
        preferenceGroupAdapter.mObservable.notifyItemRangeChanged(indexOf, 1, this);
    }

    public void notifyDependencyChange(boolean z) {
        ArrayList arrayList = this.mDependents;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((Preference) arrayList.get(i)).onDependencyChanged(z);
        }
    }

    public void onAttached() {
        PreferenceScreen preferenceScreen;
        String str = this.mDependencyKey;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        PreferenceManager preferenceManager = this.mPreferenceManager;
        Preference preference = null;
        if (preferenceManager != null && (preferenceScreen = (PreferenceScreen) preferenceManager.mPreferenceScreen) != null) {
            preference = preferenceScreen.findPreference(str);
        }
        if (preference == null) {
            StringBuilder m21m = Animation.CC.m21m("Dependency \"", str, "\" not found for preference \"");
            m21m.append(this.mKey);
            m21m.append("\" (title: \"");
            m21m.append((Object) this.mTitle);
            m21m.append("\"");
            throw new IllegalStateException(m21m.toString());
        }
        ArrayList arrayList = preference.mDependents;
        if (arrayList == null) {
            arrayList = new ArrayList();
            preference.mDependents = arrayList;
        }
        arrayList.add(this);
        onDependencyChanged(preference.shouldDisableDependents());
    }

    public final void onAttachedToHierarchy(PreferenceManager preferenceManager) {
        this.mPreferenceManager = preferenceManager;
        if (!this.mHasId) {
            this.mId = preferenceManager.getNextId();
        }
        if (shouldPersist()) {
            PreferenceManager preferenceManager2 = this.mPreferenceManager;
            if ((preferenceManager2 != null ? preferenceManager2.getSharedPreferences() : null).contains(this.mKey)) {
                onSetInitialValue(null);
                return;
            }
        }
        Object obj = this.mDefaultValue;
        if (obj != null) {
            onSetInitialValue(obj);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(androidx.preference.PreferenceViewHolder r11) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.Preference.onBindViewHolder(androidx.preference.PreferenceViewHolder):void");
    }

    public final void onDependencyChanged(boolean z) {
        if (this.mDependencyMet == z) {
            this.mDependencyMet = !z;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public void onDetached() {
        unregisterDependency();
    }

    public Object onGetDefaultValue(TypedArray typedArray, int i) {
        return null;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        this.mBaseMethodCalled = true;
        if (parcelable == AbsSavedState.EMPTY_STATE || parcelable == null) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Wrong state class -- expecting Preference State");
    }

    public Parcelable onSaveInstanceState() {
        this.mBaseMethodCalled = true;
        return AbsSavedState.EMPTY_STATE;
    }

    public void performClick() {
        Fragment fragment;
        String str;
        if (isEnabled() && this.mSelectable) {
            onClick();
            OnPreferenceClickListener onPreferenceClickListener = this.mOnClickListener;
            if (onPreferenceClickListener == null || !onPreferenceClickListener.onPreferenceClick(this)) {
                PreferenceManager preferenceManager = this.mPreferenceManager;
                if (preferenceManager == null || (fragment = (PreferenceFragmentCompat) preferenceManager.mOnPreferenceTreeClickListener) == null || (str = this.mFragment) == null) {
                    Intent intent = this.mIntent;
                    if (intent != null) {
                        this.mContext.startActivity(intent);
                        return;
                    }
                    return;
                }
                for (Fragment fragment2 = fragment; fragment2 != null; fragment2 = fragment2.mParentFragment) {
                }
                Log.w("PreferenceFragment", "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments.");
                FragmentManagerImpl parentFragmentManager = fragment.getParentFragmentManager();
                Bundle bundle = this.mExtras;
                if (bundle == null) {
                    bundle = new Bundle();
                    this.mExtras = bundle;
                }
                FragmentManager$3 fragmentFactory = parentFragmentManager.getFragmentFactory();
                fragment.requireActivity().getClassLoader();
                Fragment instantiate = fragmentFactory.instantiate(str);
                instantiate.setArguments(bundle);
                instantiate.setTargetFragment(fragment);
                BackStackRecord backStackRecord = new BackStackRecord(parentFragmentManager);
                backStackRecord.replace(((View) fragment.requireView().getParent()).getId(), instantiate, null);
                backStackRecord.addToBackStack();
                backStackRecord.commit();
            }
        }
    }

    public final boolean persistInt(int i) {
        if (!shouldPersist()) {
            return false;
        }
        if (i == getPersistedInt(~i)) {
            return true;
        }
        SharedPreferences.Editor editor = this.mPreferenceManager.getEditor();
        editor.putInt(this.mKey, i);
        tryCommit(editor);
        return true;
    }

    public boolean persistString(String str) {
        if (!shouldPersist()) {
            return false;
        }
        if (TextUtils.equals(str, getPersistedString(null))) {
            return true;
        }
        SharedPreferences.Editor editor = this.mPreferenceManager.getEditor();
        editor.putString(this.mKey, str);
        tryCommit(editor);
        return true;
    }

    public void setSummary(CharSequence charSequence) {
        if (this.mSummaryProvider != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Preference already has a SummaryProvider set.");
        } else {
            if (TextUtils.equals(this.mSummary, charSequence)) {
                return;
            }
            this.mSummary = charSequence;
            notifyChanged();
        }
    }

    public final void setVisible(boolean z) {
        if (this.mVisible != z) {
            this.mVisible = z;
            PreferenceGroupAdapter preferenceGroupAdapter = this.mListener;
            if (preferenceGroupAdapter != null) {
                Handler handler = preferenceGroupAdapter.mHandler;
                LiveData$1 liveData$1 = preferenceGroupAdapter.mSyncRunnable;
                handler.removeCallbacks(liveData$1);
                handler.post(liveData$1);
            }
        }
    }

    public boolean shouldDisableDependents() {
        return !isEnabled();
    }

    public final boolean shouldPersist() {
        return (this.mPreferenceManager == null || !this.mPersistent || TextUtils.isEmpty(this.mKey)) ? false : true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        CharSequence charSequence = this.mTitle;
        if (!TextUtils.isEmpty(charSequence)) {
            sb.append(charSequence);
            sb.append(' ');
        }
        CharSequence summary = getSummary();
        if (!TextUtils.isEmpty(summary)) {
            sb.append(summary);
            sb.append(' ');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    public final void tryCommit(SharedPreferences.Editor editor) {
        if (this.mPreferenceManager.mNoCommit) {
            return;
        }
        editor.apply();
    }

    public final void unregisterDependency() {
        ArrayList arrayList;
        PreferenceScreen preferenceScreen;
        String str = this.mDependencyKey;
        if (str != null) {
            PreferenceManager preferenceManager = this.mPreferenceManager;
            Preference preference = null;
            if (preferenceManager != null && (preferenceScreen = (PreferenceScreen) preferenceManager.mPreferenceScreen) != null) {
                preference = preferenceScreen.findPreference(str);
            }
            if (preference == null || (arrayList = preference.mDependents) == null) {
                return;
            }
            arrayList.remove(this);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class BaseSavedState extends AbsSavedState {
        public static final Parcelable.Creator<BaseSavedState> CREATOR = new FragmentState.AnonymousClass1(13);

        public BaseSavedState() {
            super(AbsSavedState.EMPTY_STATE);
        }

        public BaseSavedState(Parcel parcel) {
            super(parcel);
        }
    }

    public void onClick() {
    }

    public void onSetInitialValue(Object obj) {
    }

    public void performClick(View view) {
        performClick();
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, CamUtils.getAttr(context, org.wikipedia.R.attr.preferenceStyle, R.attr.preferenceStyle), 0);
    }
}
