package androidx.preference;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.Toolbar;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.unit.IntRectKt;
import androidx.core.content.res.CamUtils;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.fragment.app.FragmentState;
import androidx.viewpager.widget.ViewPager;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.activity.AlternateRecipientAdapter;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.mailstore.MessageViewInfo;
import com.fsck.k9.message.QuotedTextMode;
import com.fsck.k9.ui.compose.QuotedMessagePresenter;
import com.fsck.k9.view.RecipientSelectView;
import com.takisoft.datetimepicker.TimePickerDialog;
import com.takisoft.datetimepicker.widget.DatePickerCalendarDelegate;
import com.takisoft.datetimepicker.widget.DayPickerView;
import com.takisoft.datetimepicker.widget.NumberPicker;
import com.takisoft.datetimepicker.widget.TimePickerSpinnerDelegate;
import java.util.ArrayList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
    public boolean mEnabled;
    public Bundle mExtras;
    public final String mFragment;
    public boolean mHasId;
    public final boolean mHasSingleLineTitleAttr;
    public Drawable mIcon;
    public int mIconResId;
    public boolean mIconSpaceReserved;
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
    public boolean mPersistent;
    public PreferenceManager mPreferenceManager;
    public final boolean mSelectable;
    public final boolean mShouldDisableView;
    public final boolean mSingleLineTitle;
    public CharSequence mSummary;
    public SummaryProvider mSummaryProvider;
    public CharSequence mTitle;
    public boolean mVisible;
    public int mWidgetLayoutResId;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            int i;
            int i2 = this.$r8$classId;
            Message message4 = null;
            message4 = null;
            Object obj = this.this$0;
            switch (i2) {
                case 0:
                    ((Preference) obj).performClick(view);
                    break;
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
                    break;
                case 2:
                    ((ActionMode) obj).finish();
                    break;
                case 3:
                    Toolbar.ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = ((Toolbar) obj).mExpandedMenuPresenter;
                    MenuItemImpl menuItemImpl = expandedActionViewMenuPresenter != null ? expandedActionViewMenuPresenter.mCurrentExpandedItem : null;
                    if (menuItemImpl != null) {
                        menuItemImpl.collapseActionView();
                        break;
                    }
                    break;
                case 4:
                    AlternateRecipientAdapter alternateRecipientAdapter = (AlternateRecipientAdapter) obj;
                    RecipientSelectView recipientSelectView = alternateRecipientAdapter.listener;
                    RecipientSelectView.Recipient recipient = alternateRecipientAdapter.currentRecipient;
                    recipientSelectView.alternatesPopup.dismiss();
                    recipientSelectView.removeObjectSync(recipient);
                    break;
                case 5:
                    QuotedMessagePresenter quotedMessagePresenter = (QuotedMessagePresenter) obj;
                    MessageCompose messageCompose = (MessageCompose) quotedMessagePresenter.messageCompose;
                    int id = view.getId();
                    if (id != R.id.quoted_text_show) {
                        if (id != R.id.quoted_text_delete) {
                            if (id == R.id.quoted_text_edit) {
                                quotedMessagePresenter.forcePlainText = true;
                                if (messageCompose.relatedMessageReference == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("tried to edit quoted message with no referenced message");
                                    break;
                                } else {
                                    MessageViewInfo messageViewInfo = messageCompose.currentMessageViewInfo;
                                    if (messageViewInfo != null) {
                                        messageCompose.loadLocalMessageForDisplay(messageViewInfo, messageCompose.action);
                                        break;
                                    }
                                }
                            }
                        } else {
                            quotedMessagePresenter.showOrHideQuotedText(QuotedTextMode.HIDE);
                            messageCompose.updateMessageFormat();
                            messageCompose.changesMadeSinceLastSave = true;
                            break;
                        }
                    } else {
                        quotedMessagePresenter.showOrHideQuotedText(QuotedTextMode.SHOW);
                        messageCompose.updateMessageFormat();
                        messageCompose.changesMadeSinceLastSave = true;
                        break;
                    }
                    break;
                case 6:
                    TimePickerDialog timePickerDialog = (TimePickerDialog) obj;
                    if (timePickerDialog.mTimePicker.mDelegate.validateInput()) {
                        timePickerDialog.onClick(timePickerDialog, -1);
                        timePickerDialog.dismiss();
                        break;
                    }
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    DatePickerCalendarDelegate datePickerCalendarDelegate = (DatePickerCalendarDelegate) obj;
                    int id2 = view.getId();
                    if (id2 != R.id.date_picker_header_year) {
                        if (id2 == R.id.date_picker_header_date) {
                            datePickerCalendarDelegate.setCurrentView(0);
                            break;
                        }
                    } else {
                        datePickerCalendarDelegate.setCurrentView(1);
                        break;
                    }
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    DayPickerView dayPickerView = (DayPickerView) obj;
                    if (view != dayPickerView.mPrevButton) {
                        i = view == dayPickerView.mNextButton ? 1 : -1;
                    }
                    boolean z = !dayPickerView.mAccessibilityManager.isEnabled();
                    int currentItem = dayPickerView.mViewPager.getCurrentItem() + i;
                    ViewPager viewPager = dayPickerView.mViewPager;
                    viewPager.mPopulatePending = false;
                    viewPager.setCurrentItemInternal(currentItem, 0, z, false);
                    break;
                case 9:
                    NumberPicker numberPicker = (NumberPicker) obj;
                    NumberPicker.TwoDigitFormatter twoDigitFormatter = NumberPicker.sTwoDigitFormatter;
                    numberPicker.hideSoftInput();
                    numberPicker.mInputText.clearFocus();
                    if (view.getId() != R.id.increment) {
                        numberPicker.changeValueByOne(false);
                        break;
                    } else {
                        numberPicker.changeValueByOne(true);
                        break;
                    }
                default:
                    view.requestFocus();
                    TimePickerSpinnerDelegate timePickerSpinnerDelegate = (TimePickerSpinnerDelegate) obj;
                    timePickerSpinnerDelegate.mIsAm = !timePickerSpinnerDelegate.mIsAm;
                    timePickerSpinnerDelegate.updateAmPmControl();
                    timePickerSpinnerDelegate.onTimeChanged$1();
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public class BaseSavedState extends AbsSavedState {
        public static final Parcelable.Creator<BaseSavedState> CREATOR = new FragmentState.AnonymousClass1(12);

        public BaseSavedState(Parcel parcel) {
            super(parcel);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnPreferenceChangeListener {
        void onPreferenceChange(Preference preference, Object obj);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnPreferenceClickListener {
        boolean onPreferenceClick(Preference preference);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            contextMenu.add(0, 0, 0, R.string.copy).setOnMenuItemClickListener(this);
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            Preference preference = this.mPreference;
            Context context = preference.mContext;
            ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
            CharSequence summary = preference.getSummary();
            clipboardManager.setPrimaryClip(ClipData.newPlainText("Preference", summary));
            Toast.makeText(context, context.getString(R.string.preference_copied, summary), 0).show();
            return true;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        this.mLayoutResId = R.layout.preference;
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
        this.mLayoutResId = obtainStyledAttributes.getResourceId(27, obtainStyledAttributes.getResourceId(3, R.layout.preference));
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

    public final boolean callChangeListener(Object obj) {
        OnPreferenceChangeListener onPreferenceChangeListener = this.mOnChangeListener;
        if (onPreferenceChangeListener == null) {
            return true;
        }
        onPreferenceChangeListener.onPreferenceChange(this, obj);
        return true;
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
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Derived class did not call super.onRestoreInstanceState()");
    }

    public void dispatchSaveInstanceState(Bundle bundle) {
        String str = this.mKey;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mBaseMethodCalled = false;
        Parcelable onSaveInstanceState = onSaveInstanceState();
        if (!this.mBaseMethodCalled) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Derived class did not call super.onSaveInstanceState()");
        } else if (onSaveInstanceState != null) {
            bundle.putParcelable(str, onSaveInstanceState);
        }
    }

    public long getId() {
        return this.mId;
    }

    public final boolean getPersistedBoolean(boolean z) {
        if (!shouldPersist()) {
            return z;
        }
        IntRectKt preferenceDataStore = getPreferenceDataStore();
        String str = this.mKey;
        return preferenceDataStore != null ? preferenceDataStore.getBoolean(str, z) : this.mPreferenceManager.getSharedPreferences().getBoolean(str, z);
    }

    public final int getPersistedInt(int i) {
        if (!shouldPersist()) {
            return i;
        }
        IntRectKt preferenceDataStore = getPreferenceDataStore();
        String str = this.mKey;
        return preferenceDataStore != null ? preferenceDataStore.getInt(str, i) : this.mPreferenceManager.getSharedPreferences().getInt(str, i);
    }

    public final String getPersistedString(String str) {
        if (!shouldPersist()) {
            return str;
        }
        IntRectKt preferenceDataStore = getPreferenceDataStore();
        String str2 = this.mKey;
        return preferenceDataStore != null ? preferenceDataStore.getString(str2, str) : this.mPreferenceManager.getSharedPreferences().getString(str2, str);
    }

    public final IntRectKt getPreferenceDataStore() {
        PreferenceManager preferenceManager = this.mPreferenceManager;
        if (preferenceManager != null) {
            return preferenceManager.mPreferenceDataStore;
        }
        return null;
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
            Preference preference = (Preference) arrayList.get(i);
            if (preference.mDependencyMet == z) {
                preference.mDependencyMet = !z;
                preference.notifyDependencyChange(preference.shouldDisableDependents());
                preference.notifyChanged();
            }
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
        if (preferenceManager != null && (preferenceScreen = preferenceManager.mPreferenceScreen) != null) {
            preference = preferenceScreen.findPreference(str);
        }
        if (preference == null) {
            StringBuilder m31m = CameraDevices$CC.m31m("Dependency \"", str, "\" not found for preference \"");
            m31m.append(this.mKey);
            m31m.append("\" (title: \"");
            m31m.append((Object) this.mTitle);
            m31m.append("\"");
            throw new IllegalStateException(m31m.toString());
        }
        if (preference.mDependents == null) {
            preference.mDependents = new ArrayList();
        }
        preference.mDependents.add(this);
        boolean shouldDisableDependents = preference.shouldDisableDependents();
        if (this.mDependencyMet == shouldDisableDependents) {
            this.mDependencyMet = !shouldDisableDependents;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public final void onAttachedToHierarchy(PreferenceManager preferenceManager) {
        this.mPreferenceManager = preferenceManager;
        if (!this.mHasId) {
            this.mId = preferenceManager.getNextId();
        }
        IntRectKt preferenceDataStore = getPreferenceDataStore();
        Object obj = this.mDefaultValue;
        if (preferenceDataStore != null) {
            onSetInitialValue(obj, true);
            return;
        }
        if (shouldPersist()) {
            if (((this.mPreferenceManager == null || getPreferenceDataStore() != null) ? null : this.mPreferenceManager.getSharedPreferences()).contains(this.mKey)) {
                onSetInitialValue(null, true);
                return;
            }
        }
        if (obj != null) {
            onSetInitialValue(obj, false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(androidx.preference.PreferenceViewHolder r10) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.Preference.onBindViewHolder(androidx.preference.PreferenceViewHolder):void");
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
        UriKt$$ExternalSyntheticBUOutline0.m("Wrong state class -- expecting Preference State");
    }

    public Parcelable onSaveInstanceState() {
        this.mBaseMethodCalled = true;
        return AbsSavedState.EMPTY_STATE;
    }

    public void onSetInitialValue(Object obj, boolean z) {
        onSetInitialValue(obj);
    }

    public void performClick(View view) {
        Intent intent;
        PreferenceFragmentCompat preferenceFragmentCompat;
        if (isEnabled() && this.mSelectable) {
            onClick();
            OnPreferenceClickListener onPreferenceClickListener = this.mOnClickListener;
            if (onPreferenceClickListener == null || !onPreferenceClickListener.onPreferenceClick(this)) {
                PreferenceManager preferenceManager = this.mPreferenceManager;
                if ((preferenceManager == null || (preferenceFragmentCompat = preferenceManager.mOnPreferenceTreeClickListener) == null || !preferenceFragmentCompat.onPreferenceTreeClick(this)) && (intent = this.mIntent) != null) {
                    this.mContext.startActivity(intent);
                }
            }
        }
    }

    public final void persistBoolean(boolean z) {
        if (shouldPersist() && z != getPersistedBoolean(!z)) {
            IntRectKt preferenceDataStore = getPreferenceDataStore();
            String str = this.mKey;
            if (preferenceDataStore != null) {
                preferenceDataStore.putBoolean(str, z);
                return;
            }
            SharedPreferences.Editor editor = this.mPreferenceManager.getEditor();
            editor.putBoolean(str, z);
            tryCommit(editor);
        }
    }

    public final void persistInt(int i) {
        if (shouldPersist() && i != getPersistedInt(~i)) {
            IntRectKt preferenceDataStore = getPreferenceDataStore();
            String str = this.mKey;
            if (preferenceDataStore != null) {
                preferenceDataStore.putInt(str, i);
                return;
            }
            SharedPreferences.Editor editor = this.mPreferenceManager.getEditor();
            editor.putInt(str, i);
            tryCommit(editor);
        }
    }

    public final void persistString(String str) {
        if (shouldPersist() && !TextUtils.equals(str, getPersistedString(null))) {
            IntRectKt preferenceDataStore = getPreferenceDataStore();
            String str2 = this.mKey;
            if (preferenceDataStore != null) {
                preferenceDataStore.putString(str2, str);
                return;
            }
            SharedPreferences.Editor editor = this.mPreferenceManager.getEditor();
            editor.putString(str2, str);
            tryCommit(editor);
        }
    }

    public final void setEnabled(boolean z) {
        if (this.mEnabled != z) {
            this.mEnabled = z;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public void setSummary(CharSequence charSequence) {
        if (this.mSummaryProvider != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Preference already has a SummaryProvider set.");
        } else {
            if (TextUtils.equals(this.mSummary, charSequence)) {
                return;
            }
            this.mSummary = charSequence;
            notifyChanged();
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.mTitle)) {
            return;
        }
        this.mTitle = charSequence;
        notifyChanged();
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
        if (this.mPreferenceManager.shouldCommit()) {
            editor.apply();
        }
    }

    public final void unregisterDependency() {
        ArrayList arrayList;
        PreferenceScreen preferenceScreen;
        String str = this.mDependencyKey;
        if (str != null) {
            PreferenceManager preferenceManager = this.mPreferenceManager;
            Preference preference = null;
            if (preferenceManager != null && (preferenceScreen = preferenceManager.mPreferenceScreen) != null) {
                preference = preferenceScreen.findPreference(str);
            }
            if (preference == null || (arrayList = preference.mDependents) == null) {
                return;
            }
            arrayList.remove(this);
        }
    }

    public void onSetInitialValue(Object obj) {
    }

    public void onClick() {
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, CamUtils.getAttr(context, R.attr.preferenceStyle, android.R.attr.preferenceStyle), 0);
    }
}
