package com.android.contacts.editor;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListPopupWindow;
import android.widget.TextView;
import com.android.contacts.GeoUtil;
import com.android.contacts.R;
import com.android.contacts.compat.PhoneNumberUtilsCompat;
import com.android.contacts.editor.PhotoEditorView;
import com.android.contacts.model.AccountTypeManager;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.RawContactDeltaList;
import com.android.contacts.model.RawContactModifier;
import com.android.contacts.model.ValuesDelta;
import com.android.contacts.model.account.AccountInfo;
import com.android.contacts.model.account.AccountType;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.model.dataitem.DataKind;
import com.android.contacts.util.AccountsListAdapter;
import com.android.contacts.util.MaterialColorMapUtils;
import com.android.contacts.util.UiClosables;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

/* loaded from: classes.dex */
public class RawContactEditorView extends LinearLayout implements View.OnClickListener {
    private View mAccountHeaderContainer;
    private ImageView mAccountHeaderExpanderIcon;
    private ImageView mAccountHeaderIcon;
    private TextView mAccountHeaderPrimaryText;
    private TextView mAccountHeaderSecondaryText;
    private AccountTypeManager mAccountTypeManager;
    private List<AccountInfo> mAccounts;
    private RawContactDelta mCurrentRawContactDelta;
    private boolean mHasNewContact;
    private Bundle mIntentExtras;
    private boolean mIsExpanded;
    private boolean mIsUserProfile;
    private Map<String, KindSectionData> mKindSectionDataMap;
    private Map<String, KindSectionView> mKindSectionViewMap;
    private ViewGroup mKindSectionViews;
    private LayoutInflater mLayoutInflater;
    private Listener mListener;
    private MaterialColorMapUtils.MaterialPalette mMaterialPalette;
    private View mMoreFields;
    private ValuesDelta mPhotoValuesDelta;
    private PhotoEditorView mPhotoView;
    private AccountWithDataSet mPrimaryAccount;
    private RawContactDeltaList mRawContactDeltas;
    private long mRawContactIdToDisplayAlone;
    private Set<String> mSortedMimetypes;
    private ViewIdGenerator mViewIdGenerator;

    public interface Listener {
        void onBindEditorsFailed();

        void onEditorsBound();

        void onNameFieldChanged(long j, ValuesDelta valuesDelta);

        void onRebindEditorsForNewContact(RawContactDelta rawContactDelta, AccountWithDataSet accountWithDataSet, AccountWithDataSet accountWithDataSet2);
    }

    private static final class MimeTypeComparator implements Comparator<String> {
        private static final List<String> MIME_TYPE_ORDER = Arrays.asList("vnd.android.cursor.item/name", "vnd.android.cursor.item/nickname", "vnd.android.cursor.item/organization", "vnd.android.cursor.item/phone_v2", "vnd.android.cursor.item/sip_address", "vnd.android.cursor.item/email_v2", "vnd.android.cursor.item/postal-address_v2", "vnd.android.cursor.item/im", "vnd.android.cursor.item/website", "vnd.android.cursor.item/contact_event", "vnd.android.cursor.item/relation", "vnd.android.cursor.item/note", "vnd.android.cursor.item/group_membership");

        private MimeTypeComparator() {
        }

        @Override // java.util.Comparator
        public int compare(String str, String str2) {
            if (str == str2) {
                return 0;
            }
            if (str == null) {
                return -1;
            }
            if (str2 == null) {
                return 1;
            }
            int indexOf = MIME_TYPE_ORDER.indexOf(str);
            int indexOf2 = MIME_TYPE_ORDER.indexOf(str2);
            if (indexOf < 0 && indexOf2 < 0) {
                return str.compareTo(str2);
            }
            if (indexOf < 0) {
                return 1;
            }
            return (indexOf2 >= 0 && indexOf >= indexOf2) ? 1 : -1;
        }
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.android.contacts.editor.RawContactEditorView.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        private boolean mIsExpanded;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.mIsExpanded = parcel.readInt() != 0;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.mIsExpanded ? 1 : 0);
        }
    }

    public RawContactEditorView(Context context) {
        super(context);
        this.mAccounts = new ArrayList();
        this.mRawContactIdToDisplayAlone = -1L;
        this.mKindSectionDataMap = new HashMap();
        this.mSortedMimetypes = new TreeSet(new MimeTypeComparator());
        this.mKindSectionViewMap = new HashMap();
    }

    public RawContactEditorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAccounts = new ArrayList();
        this.mRawContactIdToDisplayAlone = -1L;
        this.mKindSectionDataMap = new HashMap();
        this.mSortedMimetypes = new TreeSet(new MimeTypeComparator());
        this.mKindSectionViewMap = new HashMap();
    }

    public void setListener(Listener listener) {
        this.mListener = listener;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mAccountTypeManager = AccountTypeManager.getInstance(getContext());
        this.mLayoutInflater = (LayoutInflater) getContext().getSystemService("layout_inflater");
        this.mAccountHeaderContainer = findViewById(R.id.account_header_container);
        this.mAccountHeaderPrimaryText = (TextView) findViewById(R.id.account_type);
        this.mAccountHeaderSecondaryText = (TextView) findViewById(R.id.account_name);
        this.mAccountHeaderIcon = (ImageView) findViewById(R.id.account_type_icon);
        this.mAccountHeaderExpanderIcon = (ImageView) findViewById(R.id.account_expander_icon);
        this.mPhotoView = (PhotoEditorView) findViewById(R.id.photo_editor);
        this.mKindSectionViews = (LinearLayout) findViewById(R.id.kind_section_views);
        View findViewById = findViewById(R.id.more_fields);
        this.mMoreFields = findViewById;
        findViewById.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.more_fields) {
            showAllFields();
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        int childCount = this.mKindSectionViews.getChildCount();
        for (int i = 0; i < childCount; i++) {
            this.mKindSectionViews.getChildAt(i).setEnabled(z);
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.mIsExpanded = this.mIsExpanded;
        return savedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        boolean z = savedState.mIsExpanded;
        this.mIsExpanded = z;
        if (z) {
            showAllFields();
        }
    }

    public void setPhotoListener(PhotoEditorView.Listener listener) {
        this.mPhotoView.setListener(listener);
    }

    public void removePhoto() {
        this.mPhotoValuesDelta.setFromTemplate(true);
        this.mPhotoValuesDelta.put("data15", (byte[]) null);
        this.mPhotoValuesDelta.put("data14", (String) null);
        this.mPhotoView.removePhoto();
    }

    public void setFullSizePhoto(Uri uri) {
        this.mPhotoView.setFullSizedPhoto(uri);
    }

    public void updatePhoto(Uri uri) {
        this.mPhotoValuesDelta.setFromTemplate(false);
        unsetSuperPrimaryFromAllPhotos();
        this.mPhotoValuesDelta.setSuperPrimary(true);
        try {
            byte[] compressedThumbnailBitmapBytes = EditorUiUtils.getCompressedThumbnailBitmapBytes(getContext(), uri);
            if (compressedThumbnailBitmapBytes != null) {
                this.mPhotoValuesDelta.setPhoto(compressedThumbnailBitmapBytes);
            }
        } catch (FileNotFoundException unused) {
            elog("Failed to get bitmap from photo Uri");
        }
        this.mPhotoView.setFullSizedPhoto(uri);
    }

    private void unsetSuperPrimaryFromAllPhotos() {
        ArrayList<ValuesDelta> mimeEntries;
        for (int i = 0; i < this.mRawContactDeltas.size(); i++) {
            if (this.mRawContactDeltas.get(i).hasMimeEntries("vnd.android.cursor.item/photo") && (mimeEntries = this.mRawContactDeltas.get(i).getMimeEntries("vnd.android.cursor.item/photo")) != null) {
                for (int i2 = 0; i2 < mimeEntries.size(); i2++) {
                    mimeEntries.get(i2).setSuperPrimary(false);
                }
            }
        }
    }

    public boolean isWritablePhotoSet() {
        return this.mPhotoView.isWritablePhotoSet();
    }

    public long getPhotoRawContactId() {
        RawContactDelta rawContactDelta = this.mCurrentRawContactDelta;
        if (rawContactDelta == null) {
            return -1L;
        }
        return rawContactDelta.getRawContactId().longValue();
    }

    public StructuredNameEditorView getNameEditorView() {
        KindSectionView kindSectionView = this.mKindSectionViewMap.get("vnd.android.cursor.item/name");
        if (kindSectionView == null) {
            return null;
        }
        return kindSectionView.getNameEditorView();
    }

    public TextFieldsEditorView getPhoneticEditorView() {
        KindSectionView kindSectionView = this.mKindSectionViewMap.get("vnd.android.cursor.item/name");
        if (kindSectionView == null) {
            return null;
        }
        return kindSectionView.getPhoneticEditorView();
    }

    public RawContactDelta getCurrentRawContactDelta() {
        return this.mCurrentRawContactDelta;
    }

    public View getAggregationAnchorView() {
        StructuredNameEditorView nameEditorView = getNameEditorView();
        if (nameEditorView != null) {
            return nameEditorView.findViewById(R.id.anchor_view);
        }
        return null;
    }

    public void setGroupMetaData(Cursor cursor) {
        KindSectionView kindSectionView = this.mKindSectionViewMap.get("vnd.android.cursor.item/group_membership");
        if (kindSectionView == null) {
            return;
        }
        kindSectionView.setGroupMetaData(cursor);
        if (this.mIsExpanded) {
            kindSectionView.setHideWhenEmpty(false);
            kindSectionView.updateEmptyEditors(true);
        }
    }

    public void setIntentExtras(Bundle bundle) {
        this.mIntentExtras = bundle;
    }

    public void setState(RawContactDeltaList rawContactDeltaList, MaterialColorMapUtils.MaterialPalette materialPalette, ViewIdGenerator viewIdGenerator, boolean z, boolean z2, AccountWithDataSet accountWithDataSet, long j) {
        StructuredNameEditorView nameEditorView;
        this.mRawContactDeltas = rawContactDeltaList;
        this.mRawContactIdToDisplayAlone = j;
        this.mKindSectionViewMap.clear();
        this.mKindSectionViews.removeAllViews();
        this.mMoreFields.setVisibility(0);
        this.mMaterialPalette = materialPalette;
        this.mViewIdGenerator = viewIdGenerator;
        this.mHasNewContact = z;
        this.mIsUserProfile = z2;
        this.mPrimaryAccount = accountWithDataSet;
        if (accountWithDataSet == null && this.mAccounts != null) {
            this.mPrimaryAccount = ContactEditorUtils.create(getContext()).getOnlyOrDefaultAccount(AccountInfo.extractAccounts(this.mAccounts));
        }
        if (Log.isLoggable("RawContactEditorView", 2)) {
            Log.v("RawContactEditorView", "state: primary " + this.mPrimaryAccount);
        }
        if (rawContactDeltaList == null || rawContactDeltaList.isEmpty()) {
            elog("No raw contact deltas");
            Listener listener = this.mListener;
            if (listener != null) {
                listener.onBindEditorsFailed();
                return;
            }
            return;
        }
        pickRawContactDelta();
        if (this.mCurrentRawContactDelta == null) {
            elog("Couldn't pick a raw contact delta.");
            Listener listener2 = this.mListener;
            if (listener2 != null) {
                listener2.onBindEditorsFailed();
                return;
            }
            return;
        }
        applyIntentExtras();
        parseRawContactDelta();
        if (this.mKindSectionDataMap.isEmpty()) {
            elog("No kind section data parsed from RawContactDelta(s)");
            Listener listener3 = this.mListener;
            if (listener3 != null) {
                listener3.onBindEditorsFailed();
                return;
            }
            return;
        }
        KindSectionData kindSectionData = this.mKindSectionDataMap.get("vnd.android.cursor.item/name");
        if (kindSectionData != null) {
            RawContactDelta rawContactDelta = kindSectionData.getRawContactDelta();
            RawContactModifier.ensureKindExists(rawContactDelta, rawContactDelta.getAccountType(this.mAccountTypeManager), "vnd.android.cursor.item/name");
            RawContactModifier.ensureKindExists(rawContactDelta, rawContactDelta.getAccountType(this.mAccountTypeManager), "vnd.android.cursor.item/photo");
        }
        addPhotoView();
        setAccountInfo();
        if (isReadOnlyRawContact()) {
            addReadOnlyRawContactEditorViews();
        } else {
            setupEditorNormally();
            if (this.mHasNewContact && (nameEditorView = getNameEditorView()) != null) {
                nameEditorView.requestFocusForFirstEditField();
            }
        }
        Listener listener4 = this.mListener;
        if (listener4 != null) {
            listener4.onEditorsBound();
        }
    }

    public void setAccounts(List<AccountInfo> list) {
        this.mAccounts.clear();
        this.mAccounts.addAll(list);
        setAccountInfo();
    }

    private void setupEditorNormally() {
        addKindSectionViews();
        this.mMoreFields.setVisibility(hasMoreFields() ? 0 : 8);
        if (this.mIsExpanded) {
            showAllFields();
        }
    }

    private boolean isReadOnlyRawContact() {
        return !this.mCurrentRawContactDelta.getAccountType(this.mAccountTypeManager).areContactsWritable();
    }

    private void pickRawContactDelta() {
        AccountType accountType;
        if (Log.isLoggable("RawContactEditorView", 2)) {
            Log.v("RawContactEditorView", "parse: " + this.mRawContactDeltas.size() + " rawContactDelta(s)");
        }
        for (int i = 0; i < this.mRawContactDeltas.size(); i++) {
            RawContactDelta rawContactDelta = this.mRawContactDeltas.get(i);
            if (Log.isLoggable("RawContactEditorView", 2)) {
                Log.v("RawContactEditorView", "parse: " + i + " rawContactDelta" + rawContactDelta);
            }
            if (rawContactDelta != null && rawContactDelta.isVisible() && (accountType = rawContactDelta.getAccountType(this.mAccountTypeManager)) != null) {
                if (this.mRawContactIdToDisplayAlone > 0) {
                    if (rawContactDelta.getRawContactId().equals(Long.valueOf(this.mRawContactIdToDisplayAlone))) {
                        this.mCurrentRawContactDelta = rawContactDelta;
                        return;
                    }
                } else {
                    AccountWithDataSet accountWithDataSet = this.mPrimaryAccount;
                    if (accountWithDataSet != null && accountWithDataSet.equals(rawContactDelta.getAccountWithDataSet())) {
                        this.mCurrentRawContactDelta = rawContactDelta;
                        return;
                    } else if (accountType.areContactsWritable()) {
                        this.mCurrentRawContactDelta = rawContactDelta;
                    }
                }
            }
        }
    }

    private void applyIntentExtras() {
        Bundle bundle = this.mIntentExtras;
        if (bundle == null || bundle.size() == 0) {
            return;
        }
        RawContactModifier.parseExtras(getContext(), this.mCurrentRawContactDelta.getAccountType(AccountTypeManager.getInstance(getContext())), this.mCurrentRawContactDelta, this.mIntentExtras);
        this.mIntentExtras = null;
    }

    private void parseRawContactDelta() {
        this.mKindSectionDataMap.clear();
        this.mSortedMimetypes.clear();
        AccountType accountType = this.mCurrentRawContactDelta.getAccountType(this.mAccountTypeManager);
        ArrayList<DataKind> sortedDataKinds = accountType.getSortedDataKinds();
        int size = sortedDataKinds == null ? 0 : sortedDataKinds.size();
        if (Log.isLoggable("RawContactEditorView", 2)) {
            Log.v("RawContactEditorView", "parse: " + size + " dataKinds(s)");
        }
        for (int i = 0; i < size; i++) {
            DataKind dataKind = sortedDataKinds.get(i);
            if (dataKind == null || !dataKind.editable) {
                if (Log.isLoggable("RawContactEditorView", 2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("parse: ");
                    sb.append(i);
                    sb.append(dataKind == null ? " dropped null data kind" : " dropped uneditable mimetype: " + dataKind.mimeType);
                    Log.v("RawContactEditorView", sb.toString());
                }
            } else {
                String str = dataKind.mimeType;
                if (DataKind.PSEUDO_MIME_TYPE_NAME.equals(str) || DataKind.PSEUDO_MIME_TYPE_PHONETIC_NAME.equals(str)) {
                    if (Log.isLoggable("RawContactEditorView", 2)) {
                        Log.v("RawContactEditorView", "parse: " + i + " " + dataKind.mimeType + " dropped pseudo type");
                    }
                } else if ("vnd.com.google.cursor.item/contact_user_defined_field".equals(str)) {
                    if (Log.isLoggable("RawContactEditorView", 2)) {
                        Log.v("RawContactEditorView", "parse: " + i + " " + dataKind.mimeType + " dropped custom field");
                    }
                } else {
                    KindSectionData kindSectionData = new KindSectionData(accountType, dataKind, this.mCurrentRawContactDelta);
                    this.mKindSectionDataMap.put(str, kindSectionData);
                    this.mSortedMimetypes.add(str);
                    if (Log.isLoggable("RawContactEditorView", 2)) {
                        Log.v("RawContactEditorView", "parse: " + i + " " + dataKind.mimeType + " " + kindSectionData.getValuesDeltas().size() + " value(s) " + kindSectionData.getNonEmptyValuesDeltas().size() + " non-empty value(s) " + kindSectionData.getVisibleValuesDeltas().size() + " visible value(s)");
                    }
                }
            }
        }
    }

    private void addReadOnlyRawContactEditorViews() {
        String string;
        this.mKindSectionViews.removeAllViews();
        AccountType accountType = this.mCurrentRawContactDelta.getAccountType(AccountTypeManager.getInstance(getContext()));
        if (accountType == null) {
            return;
        }
        RawContactModifier.ensureKindExists(this.mCurrentRawContactDelta, accountType, "vnd.android.cursor.item/name");
        Context context = getContext();
        Resources resources = context.getResources();
        ValuesDelta primaryEntry = this.mCurrentRawContactDelta.getPrimaryEntry("vnd.android.cursor.item/name");
        if (primaryEntry != null) {
            string = primaryEntry.getAsString("data1");
        } else {
            string = getContext().getString(R.string.missing_name);
        }
        bindData(context.getDrawable(R.drawable.quantum_ic_person_vd_theme_24), resources.getString(R.string.header_name_entry), string, null, true);
        ArrayList<ValuesDelta> mimeEntries = this.mCurrentRawContactDelta.getMimeEntries("vnd.android.cursor.item/phone_v2");
        Drawable drawable = context.getDrawable(R.drawable.quantum_ic_phone_vd_theme_24);
        String string2 = resources.getString(R.string.header_phone_entry);
        if (mimeEntries != null) {
            Iterator<ValuesDelta> it = mimeEntries.iterator();
            boolean z = true;
            while (it.hasNext()) {
                ValuesDelta next = it.next();
                String phoneNumber = next.getPhoneNumber();
                if (!TextUtils.isEmpty(phoneNumber)) {
                    bindData(drawable, string2, PhoneNumberUtilsCompat.formatNumber(phoneNumber, next.getPhoneNormalizedNumber(), GeoUtil.getCurrentCountryIso(getContext())), next.hasPhoneType() ? ContactsContract.CommonDataKinds.Phone.getTypeLabel(resources, next.getPhoneType().intValue(), next.getPhoneLabel()) : null, z, true);
                    z = false;
                }
            }
        }
        ArrayList<ValuesDelta> mimeEntries2 = this.mCurrentRawContactDelta.getMimeEntries("vnd.android.cursor.item/email_v2");
        Drawable drawable2 = context.getDrawable(R.drawable.quantum_ic_email_vd_theme_24);
        String string3 = resources.getString(R.string.header_email_entry);
        if (mimeEntries2 != null) {
            Iterator<ValuesDelta> it2 = mimeEntries2.iterator();
            boolean z2 = true;
            while (it2.hasNext()) {
                ValuesDelta next2 = it2.next();
                String emailData = next2.getEmailData();
                if (!TextUtils.isEmpty(emailData)) {
                    bindData(drawable2, string3, emailData, next2.hasEmailType() ? ContactsContract.CommonDataKinds.Email.getTypeLabel(resources, next2.getEmailType().intValue(), next2.getEmailLabel()) : null, z2);
                    z2 = false;
                }
            }
        }
        ViewGroup viewGroup = this.mKindSectionViews;
        viewGroup.setVisibility(viewGroup.getChildCount() <= 0 ? 8 : 0);
        this.mMoreFields.setVisibility(8);
    }

    private void bindData(Drawable drawable, String str, CharSequence charSequence, CharSequence charSequence2, boolean z) {
        bindData(drawable, str, charSequence, charSequence2, z, false);
    }

    private void bindData(Drawable drawable, String str, CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2) {
        View inflate = this.mLayoutInflater.inflate(R.layout.item_read_only_field, this.mKindSectionViews, false);
        if (z) {
            ImageView imageView = (ImageView) inflate.findViewById(R.id.kind_icon);
            imageView.setImageDrawable(drawable);
            imageView.setContentDescription(str);
        } else {
            ImageView imageView2 = (ImageView) inflate.findViewById(R.id.kind_icon);
            imageView2.setVisibility(4);
            imageView2.setContentDescription(null);
        }
        TextView textView = (TextView) inflate.findViewById(R.id.data);
        textView.setText(charSequence);
        if (z2) {
            textView.setTextDirection(3);
        }
        TextView textView2 = (TextView) inflate.findViewById(R.id.type);
        if (!TextUtils.isEmpty(charSequence2)) {
            textView2.setText(charSequence2);
        } else {
            textView2.setVisibility(8);
        }
        this.mKindSectionViews.addView(inflate);
    }

    private void setAccountInfo() {
        AccountInfo accountInfoForAccount;
        String charSequence;
        if (this.mCurrentRawContactDelta == null && this.mPrimaryAccount == null) {
            return;
        }
        AccountTypeManager accountTypeManager = AccountTypeManager.getInstance(getContext());
        RawContactDelta rawContactDelta = this.mCurrentRawContactDelta;
        if (rawContactDelta != null) {
            accountInfoForAccount = accountTypeManager.getAccountInfoForAccount(rawContactDelta.getAccountWithDataSet());
        } else {
            accountInfoForAccount = accountTypeManager.getAccountInfoForAccount(this.mPrimaryAccount);
        }
        if (this.mAccounts.isEmpty()) {
            this.mAccounts.add(accountInfoForAccount);
        }
        if (isReadOnlyRawContact()) {
            String charSequence2 = accountInfoForAccount.getTypeLabel().toString();
            setAccountHeader(charSequence2, getResources().getString(R.string.editor_account_selector_read_only_title, charSequence2));
        } else {
            if (this.mIsUserProfile) {
                charSequence = EditorUiUtils.getAccountHeaderLabelForMyProfile(getContext(), accountInfoForAccount);
            } else {
                charSequence = accountInfoForAccount.getNameLabel().toString();
            }
            setAccountHeader(getResources().getString(R.string.editor_account_selector_title), charSequence);
        }
        if (!this.mHasNewContact || this.mIsUserProfile || this.mAccounts.size() <= 1) {
            return;
        }
        addAccountSelector(this.mCurrentRawContactDelta);
    }

    private void setAccountHeader(String str, String str2) {
        this.mAccountHeaderPrimaryText.setText(str);
        this.mAccountHeaderSecondaryText.setText(str2);
        this.mAccountHeaderIcon.setImageDrawable(this.mCurrentRawContactDelta.getRawContactAccountType(getContext()).getDisplayIcon(getContext()));
        this.mAccountHeaderContainer.setContentDescription(EditorUiUtils.getAccountInfoContentDescription(str2, str));
    }

    private void addAccountSelector(final RawContactDelta rawContactDelta) {
        this.mAccountHeaderExpanderIcon.setVisibility(0);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.android.contacts.editor.RawContactEditorView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AccountWithDataSet accountWithDataSet = rawContactDelta.getAccountWithDataSet();
                AccountInfo.sortAccounts(accountWithDataSet, RawContactEditorView.this.mAccounts);
                final ListPopupWindow listPopupWindow = new ListPopupWindow(RawContactEditorView.this.getContext(), null);
                final AccountsListAdapter accountsListAdapter = new AccountsListAdapter(RawContactEditorView.this.getContext(), RawContactEditorView.this.mAccounts, accountWithDataSet);
                listPopupWindow.setWidth(RawContactEditorView.this.mAccountHeaderContainer.getWidth());
                listPopupWindow.setAnchorView(RawContactEditorView.this.mAccountHeaderContainer);
                listPopupWindow.setAdapter(accountsListAdapter);
                listPopupWindow.setModal(true);
                listPopupWindow.setInputMethodMode(2);
                listPopupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.android.contacts.editor.RawContactEditorView.1.1
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view2, int i, long j) {
                        UiClosables.closeQuietly(listPopupWindow);
                        AccountWithDataSet item = accountsListAdapter.getItem(i);
                        if (RawContactEditorView.this.mListener == null || RawContactEditorView.this.mPrimaryAccount.equals(item)) {
                            return;
                        }
                        RawContactEditorView.this.mIsExpanded = false;
                        Listener listener = RawContactEditorView.this.mListener;
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        listener.onRebindEditorsForNewContact(rawContactDelta, RawContactEditorView.this.mPrimaryAccount, item);
                    }
                });
                listPopupWindow.show();
            }
        };
        this.mAccountHeaderContainer.setOnClickListener(onClickListener);
        this.mAccountHeaderExpanderIcon.setOnClickListener(onClickListener);
    }

    private void addPhotoView() {
        if (!this.mCurrentRawContactDelta.hasMimeEntries("vnd.android.cursor.item/photo")) {
            wlog("No photo mimetype for this raw contact.");
            this.mPhotoView.setVisibility(8);
            return;
        }
        this.mPhotoView.setVisibility(0);
        ValuesDelta superPrimaryEntry = this.mCurrentRawContactDelta.getSuperPrimaryEntry("vnd.android.cursor.item/photo");
        if (superPrimaryEntry == null) {
            Log.wtf("RawContactEditorView", "addPhotoView: no ValueDelta found for current RawContactDeltathat supports a photo.");
            this.mPhotoView.setVisibility(8);
            return;
        }
        this.mPhotoView.setPalette(this.mMaterialPalette);
        this.mPhotoView.setPhoto(superPrimaryEntry);
        if (isReadOnlyRawContact()) {
            this.mPhotoView.setReadOnly(true);
        } else {
            this.mPhotoView.setReadOnly(false);
            this.mPhotoValuesDelta = superPrimaryEntry;
        }
    }

    private void addKindSectionViews() {
        int i = -1;
        for (String str : this.mSortedMimetypes) {
            i++;
            if ("vnd.android.cursor.item/photo".equals(str)) {
                if (Log.isLoggable("RawContactEditorView", 2)) {
                    Log.v("RawContactEditorView", "kind: " + i + " " + str + " dropped");
                }
            } else {
                KindSectionView inflateKindSectionView = inflateKindSectionView(this.mKindSectionViews, this.mKindSectionDataMap.get(str), str);
                this.mKindSectionViews.addView(inflateKindSectionView);
                this.mKindSectionViewMap.put(str, inflateKindSectionView);
            }
        }
    }

    private KindSectionView inflateKindSectionView(ViewGroup viewGroup, KindSectionData kindSectionData, String str) {
        KindSectionView kindSectionView = (KindSectionView) this.mLayoutInflater.inflate(R.layout.item_kind_section, viewGroup, false);
        kindSectionView.setIsUserProfile(this.mIsUserProfile);
        if ("vnd.android.cursor.item/phone_v2".equals(str) || "vnd.android.cursor.item/email_v2".equals(str)) {
            kindSectionView.setHideWhenEmpty(false);
        }
        kindSectionView.setShowOneEmptyEditor(true);
        kindSectionView.setState(kindSectionData, this.mViewIdGenerator, this.mListener);
        return kindSectionView;
    }

    private void showAllFields() {
        for (int i = 0; i < this.mKindSectionViews.getChildCount(); i++) {
            KindSectionView kindSectionView = (KindSectionView) this.mKindSectionViews.getChildAt(i);
            kindSectionView.setHideWhenEmpty(false);
            kindSectionView.updateEmptyEditors(true);
        }
        this.mIsExpanded = true;
        this.mMoreFields.setVisibility(8);
    }

    private boolean hasMoreFields() {
        Iterator<KindSectionView> it = this.mKindSectionViewMap.values().iterator();
        while (it.hasNext()) {
            if (it.next().getVisibility() != 0) {
                return true;
            }
        }
        return false;
    }

    private static void wlog(String str) {
        if (Log.isLoggable("RawContactEditorView", 5)) {
            Log.w("RawContactEditorView", str);
        }
    }

    private static void elog(String str) {
        Log.e("RawContactEditorView", str);
    }
}
