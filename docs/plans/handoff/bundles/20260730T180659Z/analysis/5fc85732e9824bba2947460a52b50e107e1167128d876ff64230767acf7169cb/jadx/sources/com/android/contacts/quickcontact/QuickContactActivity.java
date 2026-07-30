package com.android.contacts.quickcontact;

import android.accounts.Account;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.app.LoaderManager;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.Loader;
import android.content.pm.ResolveInfo;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.provider.ContactsContract;
import android.text.BidiFormatter;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextMenu;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import android.widget.Toolbar;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.os.BuildCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.palette.graphics.Palette;
import com.android.contacts.ClipboardUtils;
import com.android.contacts.ContactSaveService;
import com.android.contacts.ContactsActivity;
import com.android.contacts.DynamicShortcuts;
import com.android.contacts.NfcHandler;
import com.android.contacts.R;
import com.android.contacts.ShortcutIntentBuilder;
import com.android.contacts.activities.ContactSelectionActivity;
import com.android.contacts.activities.RequestPermissionsActivity;
import com.android.contacts.compat.CompatUtils;
import com.android.contacts.compat.MultiWindowCompat;
import com.android.contacts.detail.ContactDisplayUtils;
import com.android.contacts.editor.EditorIntents;
import com.android.contacts.editor.EditorUiUtils;
import com.android.contacts.interactions.ContactDeletionInteraction;
import com.android.contacts.interactions.TouchPointManager;
import com.android.contacts.lettertiles.LetterTileDrawable;
import com.android.contacts.logging.Logger;
import com.android.contacts.model.Contact;
import com.android.contacts.model.ContactLoader;
import com.android.contacts.model.dataitem.DataItem;
import com.android.contacts.model.dataitem.PhoneDataItem;
import com.android.contacts.quickcontact.ExpandingEntryCardView;
import com.android.contacts.util.ImageViewDrawableSetter;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.MaterialColorMapUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SchedulingUtils;
import com.android.contacts.util.SharedPreferenceUtil;
import com.android.contacts.util.ViewUtil;
import com.android.contacts.widget.MultiShrinkScroller;
import com.android.contacts.widget.QuickContactImageView;
import com.android.contactsbind.HelpUtils;
import com.google.common.collect.Lists;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class QuickContactActivity extends ContactsActivity {
    private static final List<String> LEADING_MIMETYPES;
    private static final List<String> SORTED_ABOUT_CARD_MIMETYPES;
    private static final BidiFormatter sBidiFormatter;
    private ExpandingEntryCardView mAboutCard;
    private boolean mArePhoneOptionsChangable;
    private Cp2DataCardModel mCachedCp2DataCardModel;
    private PorterDuffColorFilter mColorFilter;
    private int mColorFilterColor;
    private ExpandingEntryCardView mContactCard;
    private Contact mContactData;
    private ContactLoader mContactLoader;
    private int mContactType;
    private String mCustomRingtone;
    private AsyncTask<Void, Void, Cp2DataCardModel> mEntriesAndActionsTask;
    private String[] mExcludeMimes;
    private int mExtraMode;
    private String mExtraPrioritizedMimeType;
    private boolean mHasAlreadyBeenOpened;
    private boolean mHasComputedThemeColor;
    private boolean mHasIntentLaunched;
    private boolean mIsEntranceAnimationFinished;
    private boolean mIsExitAnimationInProgress;
    private boolean mIsRecreatedInstance;
    private SaveServiceListener mListener;
    private Uri mLookupUri;
    private MaterialColorMapUtils mMaterialColorMapUtils;
    private ExpandingEntryCardView mNoContactDetailsCard;
    private boolean mOnlyOneEmail;
    private boolean mOnlyOnePhoneNumber;
    private QuickContactImageView mPhotoView;
    private ProgressDialog mProgressDialog;
    private String mReferrer;
    private MultiShrinkScroller mScroller;
    private boolean mSendToVoicemailState;
    private boolean mShouldLog;
    private int mStatusBarColor;
    private ColorDrawable mWindowScrim;
    private static final int SCRIM_COLOR = Color.argb(200, 0, 0, 0);
    private static final int CURRENT_API_VERSION = Build.VERSION.SDK_INT;
    private boolean mShortcutUsageReported = false;
    private long mPreviousContactId = 0;
    private final ImageViewDrawableSetter mPhotoSetter = new ImageViewDrawableSetter();
    final View.OnClickListener mEntryClickHandler = new View.OnClickListener() { // from class: com.android.contacts.quickcontact.QuickContactActivity.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Object tag = view.getTag();
            if (tag == null || !(tag instanceof ExpandingEntryCardView.EntryTag)) {
                Log.w("QuickContact", "EntryTag was not used correctly");
                return;
            }
            ExpandingEntryCardView.EntryTag entryTag = (ExpandingEntryCardView.EntryTag) tag;
            Intent intent = entryTag.getIntent();
            if (entryTag.getId() == -2) {
                QuickContactActivity.this.editContact();
                return;
            }
            if ("android.intent.action.CALL".equals(intent.getAction()) && TouchPointManager.getInstance().hasValidPoint()) {
                Bundle bundle = new Bundle();
                bundle.putParcelable("touchPoint", TouchPointManager.getInstance().getPoint());
                intent.putExtra("android.telecom.extra.OUTGOING_CALL_EXTRAS", bundle);
            }
            QuickContactActivity.this.mHasIntentLaunched = true;
            try {
                Logger.logQuickContactEvent(QuickContactActivity.this.mReferrer, QuickContactActivity.this.mContactType, 0, intent.getIntExtra("action_type", 0), intent.getStringExtra("third_party_action"));
                if ("com.google.android.apps.tachyon.action.CALL".equals(intent.getAction())) {
                    QuickContactActivity.this.startActivityForResult(intent, 0);
                } else {
                    intent.addFlags(268435456);
                    ImplicitIntentsUtil.startActivityInAppIfPossible(QuickContactActivity.this, intent);
                }
            } catch (ActivityNotFoundException unused) {
                Toast.makeText(QuickContactActivity.this, R.string.missing_app, 0).show();
            } catch (SecurityException unused2) {
                Toast.makeText(QuickContactActivity.this, R.string.missing_app, 0).show();
                Log.e("QuickContact", "QuickContacts does not have permission to launch " + intent);
            }
        }
    };
    final ExpandingEntryCardView.ExpandingEntryCardViewListener mExpandingEntryCardViewListener = new ExpandingEntryCardView.ExpandingEntryCardViewListener() { // from class: com.android.contacts.quickcontact.QuickContactActivity.2
        @Override // com.android.contacts.quickcontact.ExpandingEntryCardView.ExpandingEntryCardViewListener
        public void onCollapse(int i) {
            QuickContactActivity.this.mScroller.prepareForShrinkingScrollChild(i);
        }

        @Override // com.android.contacts.quickcontact.ExpandingEntryCardView.ExpandingEntryCardViewListener
        public void onExpand() {
            QuickContactActivity.this.mScroller.setDisableTouchesForSuppressLayout(true);
        }

        @Override // com.android.contacts.quickcontact.ExpandingEntryCardView.ExpandingEntryCardViewListener
        public void onExpandDone() {
            QuickContactActivity.this.mScroller.setDisableTouchesForSuppressLayout(false);
        }
    };
    private final View.OnCreateContextMenuListener mEntryContextMenuListener = new View.OnCreateContextMenuListener() { // from class: com.android.contacts.quickcontact.QuickContactActivity.3
        @Override // android.view.View.OnCreateContextMenuListener
        public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
            boolean z;
            if (contextMenuInfo == null) {
                return;
            }
            ExpandingEntryCardView.EntryContextMenuInfo entryContextMenuInfo = (ExpandingEntryCardView.EntryContextMenuInfo) contextMenuInfo;
            contextMenu.setHeaderTitle(entryContextMenuInfo.getCopyText());
            contextMenu.add(0, 0, 0, QuickContactActivity.this.getString(R.string.copy_text));
            if (QuickContactActivity.this.isContactEditable()) {
                String mimeType = entryContextMenuInfo.getMimeType();
                if ("vnd.android.cursor.item/phone_v2".equals(mimeType)) {
                    z = QuickContactActivity.this.mOnlyOnePhoneNumber;
                } else {
                    z = "vnd.android.cursor.item/email_v2".equals(mimeType) ? QuickContactActivity.this.mOnlyOneEmail : true;
                }
                if (entryContextMenuInfo.isSuperPrimary()) {
                    contextMenu.add(0, 1, 0, QuickContactActivity.this.getString(R.string.clear_default));
                } else {
                    if (z) {
                        return;
                    }
                    contextMenu.add(0, 2, 0, QuickContactActivity.this.getString(R.string.set_default));
                }
            }
        }
    };
    final MultiShrinkScroller.MultiShrinkScrollerListener mMultiShrinkScrollerListener = new MultiShrinkScroller.MultiShrinkScrollerListener() { // from class: com.android.contacts.quickcontact.QuickContactActivity.4
        @Override // com.android.contacts.widget.MultiShrinkScroller.MultiShrinkScrollerListener
        public void onScrolledOffBottom() {
            QuickContactActivity.this.finish();
        }

        @Override // com.android.contacts.widget.MultiShrinkScroller.MultiShrinkScrollerListener
        public void onEnterFullscreen() {
            QuickContactActivity.this.updateStatusBarColor();
        }

        @Override // com.android.contacts.widget.MultiShrinkScroller.MultiShrinkScrollerListener
        public void onExitFullscreen() {
            QuickContactActivity.this.updateStatusBarColor();
        }

        @Override // com.android.contacts.widget.MultiShrinkScroller.MultiShrinkScrollerListener
        public void onStartScrollOffBottom() {
            QuickContactActivity.this.mIsExitAnimationInProgress = true;
        }

        @Override // com.android.contacts.widget.MultiShrinkScroller.MultiShrinkScrollerListener
        public void onEntranceAnimationDone() {
            QuickContactActivity.this.mIsEntranceAnimationFinished = true;
        }

        @Override // com.android.contacts.widget.MultiShrinkScroller.MultiShrinkScrollerListener
        public void onTransparentViewHeightChange(float f) {
            if (QuickContactActivity.this.mIsEntranceAnimationFinished) {
                QuickContactActivity.this.mWindowScrim.setAlpha((int) (f * 255.0f));
            }
        }
    };
    private final Comparator<DataItem> mWithinMimeTypeDataItemComparator = new Comparator<DataItem>(this) { // from class: com.android.contacts.quickcontact.QuickContactActivity.5
        @Override // java.util.Comparator
        public int compare(DataItem dataItem, DataItem dataItem2) {
            if (!dataItem.getMimeType().equals(dataItem2.getMimeType())) {
                Log.wtf("QuickContact", "Comparing DataItems with different mimetypes lhs.getMimeType(): " + dataItem.getMimeType() + " rhs.getMimeType(): " + dataItem2.getMimeType());
                return 0;
            }
            if (dataItem.isSuperPrimary()) {
                return -1;
            }
            if (dataItem2.isSuperPrimary()) {
                return 1;
            }
            if (!dataItem.isPrimary() || dataItem2.isPrimary()) {
                return (dataItem.isPrimary() || !dataItem2.isPrimary()) ? 0 : 1;
            }
            return -1;
        }
    };
    private final Comparator<List<DataItem>> mAmongstMimeTypeDataItemComparator = new Comparator<List<DataItem>>() { // from class: com.android.contacts.quickcontact.QuickContactActivity.6
        @Override // java.util.Comparator
        public int compare(List<DataItem> list, List<DataItem> list2) {
            DataItem dataItem = list.get(0);
            DataItem dataItem2 = list2.get(0);
            String mimeType = dataItem.getMimeType();
            String mimeType2 = dataItem2.getMimeType();
            if (!TextUtils.isEmpty(QuickContactActivity.this.mExtraPrioritizedMimeType) && !mimeType.equals(mimeType2)) {
                if (mimeType2.equals(QuickContactActivity.this.mExtraPrioritizedMimeType)) {
                    return 1;
                }
                if (mimeType.equals(QuickContactActivity.this.mExtraPrioritizedMimeType)) {
                    return -1;
                }
            }
            if (!mimeType.equals(mimeType2)) {
                for (String str : QuickContactActivity.LEADING_MIMETYPES) {
                    if (mimeType.equals(str)) {
                        return -1;
                    }
                    if (mimeType2.equals(str)) {
                        return 1;
                    }
                }
            }
            return 0;
        }
    };
    private final LoaderManager.LoaderCallbacks<Contact> mLoaderContactCallbacks = new LoaderManager.LoaderCallbacks<Contact>() { // from class: com.android.contacts.quickcontact.QuickContactActivity.13
        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<Contact> loader) {
            QuickContactActivity.this.mContactData = null;
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<Contact> loader, Contact contact) {
            Trace.beginSection("onLoadFinished()");
            try {
                if (QuickContactActivity.this.isFinishing()) {
                    return;
                }
                if (contact.isError()) {
                    Log.i("QuickContact", "Failed to load contact: " + ((ContactLoader) loader).getLookupUri());
                    Toast.makeText(QuickContactActivity.this, R.string.invalidContactMessage, 1).show();
                    QuickContactActivity.this.finish();
                    return;
                }
                if (contact.isNotFound()) {
                    Log.i("QuickContact", "No contact found: " + ((ContactLoader) loader).getLookupUri());
                    Toast.makeText(QuickContactActivity.this, R.string.invalidContactMessage, 1).show();
                    QuickContactActivity.this.finish();
                    return;
                }
                if (!QuickContactActivity.this.mIsRecreatedInstance && !QuickContactActivity.this.mShortcutUsageReported && contact != null) {
                    QuickContactActivity.this.mShortcutUsageReported = true;
                    DynamicShortcuts.reportShortcutUsed(QuickContactActivity.this, contact.getLookupKey());
                }
                QuickContactActivity.this.bindContactData(contact);
            } finally {
                Trace.endSection();
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<Contact> onCreateLoader(int i, Bundle bundle) {
            if (QuickContactActivity.this.mLookupUri == null) {
                Log.wtf("QuickContact", "Lookup uri wasn't initialized. Loader was started too early");
            }
            return new ContactLoader(QuickContactActivity.this.getApplicationContext(), QuickContactActivity.this.mLookupUri, true, true, true);
        }
    };

    static {
        String str = QuickContactActivity.class.getCanonicalName() + ".KEY_LOADER_EXTRA_EMAILS";
        LEADING_MIMETYPES = Lists.newArrayList("vnd.android.cursor.item/phone_v2", "vnd.android.cursor.item/sip_address", "vnd.android.cursor.item/email_v2", "vnd.android.cursor.item/postal-address_v2");
        SORTED_ABOUT_CARD_MIMETYPES = Lists.newArrayList("vnd.android.cursor.item/nickname", "vnd.android.cursor.item/website", "vnd.android.cursor.item/organization", "vnd.android.cursor.item/contact_event", "vnd.android.cursor.item/relation", "vnd.android.cursor.item/im", "vnd.android.cursor.item/group_membership", "vnd.android.cursor.item/identity", "vnd.com.google.cursor.item/contact_user_defined_field", "vnd.android.cursor.item/note");
        sBidiFormatter = BidiFormatter.getInstance();
        String str2 = QuickContactActivity.class.getCanonicalName() + ".KEY_LOADER_EXTRA_PHONES";
        String str3 = QuickContactActivity.class.getCanonicalName() + ".KEY_LOADER_EXTRA_SIP_NUMBERS";
    }

    @Override // android.app.Activity
    public boolean onContextItemSelected(MenuItem menuItem) {
        try {
            ExpandingEntryCardView.EntryContextMenuInfo entryContextMenuInfo = (ExpandingEntryCardView.EntryContextMenuInfo) menuItem.getMenuInfo();
            int itemId = menuItem.getItemId();
            if (itemId == 0) {
                ClipboardUtils.copyText(this, entryContextMenuInfo.getCopyLabel(), entryContextMenuInfo.getCopyText(), true);
                return true;
            }
            if (itemId == 1) {
                startService(ContactSaveService.createClearPrimaryIntent(this, entryContextMenuInfo.getId()));
                return true;
            }
            if (itemId == 2) {
                startService(ContactSaveService.createSetSuperPrimaryIntent(this, entryContextMenuInfo.getId()));
                return true;
            }
            throw new IllegalArgumentException("Unknown menu option " + menuItem.getItemId());
        } catch (ClassCastException e) {
            Log.e("QuickContact", "bad menuInfo", e);
            return false;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            TouchPointManager.getInstance().setPoint((int) motionEvent.getRawX(), (int) motionEvent.getRawY());
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.android.contacts.ContactsActivity, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        Trace.beginSection("onCreate()");
        super.onCreate(bundle);
        if (RequestPermissionsActivity.startPermissionActivityIfNeeded(this)) {
            return;
        }
        boolean z = bundle != null;
        this.mIsRecreatedInstance = z;
        if (z) {
            this.mPreviousContactId = bundle.getLong("previous_contact_id");
            this.mSendToVoicemailState = bundle.getBoolean("sendToVoicemailState");
            this.mArePhoneOptionsChangable = bundle.getBoolean("arePhoneOptionsChangable");
            this.mCustomRingtone = bundle.getString(ContactSaveService.EXTRA_CUSTOM_RINGTONE);
        }
        ProgressDialog progressDialog = new ProgressDialog(this);
        this.mProgressDialog = progressDialog;
        progressDialog.setIndeterminate(true);
        this.mProgressDialog.setCancelable(false);
        this.mListener = new SaveServiceListener();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ContactSaveService.BROADCAST_LINK_COMPLETE);
        intentFilter.addAction(ContactSaveService.BROADCAST_UNLINK_COMPLETE);
        LocalBroadcastManager.getInstance(this).registerReceiver(this.mListener, intentFilter);
        this.mShouldLog = true;
        Logger.logScreenView(this, 5, getIntent().getIntExtra("previous_screen_type", 0));
        String callingPackage = getCallingPackage();
        this.mReferrer = callingPackage;
        if (callingPackage == null && CompatUtils.isLollipopMr1Compatible() && getReferrer() != null) {
            this.mReferrer = getReferrer().getAuthority();
        }
        this.mContactType = 0;
        if (CompatUtils.isLollipopCompatible()) {
            getWindow().setStatusBarColor(0);
        }
        processIntent(getIntent());
        getWindow().setFlags(131072, 131072);
        setContentView(R.layout.quickcontact_activity);
        this.mMaterialColorMapUtils = new MaterialColorMapUtils(getResources());
        this.mScroller = (MultiShrinkScroller) findViewById(R.id.multiscroller);
        this.mContactCard = (ExpandingEntryCardView) findViewById(R.id.communication_card);
        this.mNoContactDetailsCard = (ExpandingEntryCardView) findViewById(R.id.no_contact_data_card);
        this.mAboutCard = (ExpandingEntryCardView) findViewById(R.id.about_card);
        this.mNoContactDetailsCard.setOnClickListener(this.mEntryClickHandler);
        this.mContactCard.setOnClickListener(this.mEntryClickHandler);
        this.mContactCard.setOnCreateContextMenuListener(this.mEntryContextMenuListener);
        this.mAboutCard.setOnClickListener(this.mEntryClickHandler);
        this.mAboutCard.setOnCreateContextMenuListener(this.mEntryContextMenuListener);
        this.mPhotoView = (QuickContactImageView) findViewById(R.id.photo);
        View findViewById = findViewById(R.id.transparent_view);
        if (this.mScroller != null) {
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.quickcontact.QuickContactActivity.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    QuickContactActivity.this.mScroller.scrollOffBottom();
                }
            });
        }
        ViewUtil.addRectangularOutlineProvider(findViewById(R.id.toolbar_parent), getResources());
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setActionBar(toolbar);
        getActionBar().setTitle((CharSequence) null);
        toolbar.addView(getLayoutInflater().inflate(R.layout.quickcontact_title_placeholder, (ViewGroup) null));
        boolean z2 = bundle != null;
        this.mHasAlreadyBeenOpened = z2;
        this.mIsEntranceAnimationFinished = z2;
        ColorDrawable colorDrawable = new ColorDrawable(SCRIM_COLOR);
        this.mWindowScrim = colorDrawable;
        colorDrawable.setAlpha(0);
        getWindow().setBackgroundDrawable(this.mWindowScrim);
        this.mScroller.initialize(this.mMultiShrinkScrollerListener, this.mExtraMode == 4, -1, true);
        this.mScroller.setVisibility(4);
        setHeaderNameText(R.string.missing_name);
        SchedulingUtils.doOnPreDraw(this.mScroller, true, new Runnable() { // from class: com.android.contacts.quickcontact.QuickContactActivity.8
            @Override // java.lang.Runnable
            public void run() {
                if (QuickContactActivity.this.mHasAlreadyBeenOpened) {
                    return;
                }
                ObjectAnimator.ofInt(QuickContactActivity.this.mWindowScrim, "alpha", 0, (int) ((QuickContactActivity.this.mExtraMode == 4 ? 1.0f : QuickContactActivity.this.mScroller.getStartingTransparentHeightRatio()) * 255.0f)).setDuration(QuickContactActivity.this.getResources().getInteger(android.R.integer.config_shortAnimTime)).start();
            }
        });
        if (bundle != null) {
            final int i = bundle.getInt("theme_color", 0);
            SchedulingUtils.doOnPreDraw(this.mScroller, false, new Runnable() { // from class: com.android.contacts.quickcontact.QuickContactActivity.9
                @Override // java.lang.Runnable
                public void run() {
                    if (QuickContactActivity.this.mHasAlreadyBeenOpened) {
                        QuickContactActivity.this.mScroller.setVisibility(0);
                        QuickContactActivity.this.mScroller.setScroll(QuickContactActivity.this.mScroller.getScrollNeededToBeFullScreen());
                    }
                    if (i != 0) {
                        QuickContactActivity quickContactActivity = QuickContactActivity.this;
                        quickContactActivity.setThemeColor(quickContactActivity.mMaterialColorMapUtils.calculatePrimaryAndSecondaryColor(i));
                    }
                }
            });
        }
        Trace.endSection();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        boolean z = true;
        if (i != 1 || (i2 != 3 && i2 != 2)) {
            z = false;
        }
        setResult(i2);
        if (z) {
            finish();
            return;
        }
        if (i == 2 && i2 != 0) {
            processIntent(intent);
            return;
        }
        if (i == 3) {
            if (i2 == -1 && intent != null) {
                joinAggregate(ContentUris.parseId(intent.getData()));
                return;
            }
            return;
        }
        if (i != 4 || intent == null) {
            return;
        }
        onRingtonePicked((Uri) intent.getParcelableExtra("android.intent.extra.ringtone.PICKED_URI"));
    }

    private void onRingtonePicked(Uri uri) {
        String ringtoneStringFromUri = EditorUiUtils.getRingtoneStringFromUri(uri, CURRENT_API_VERSION);
        this.mCustomRingtone = ringtoneStringFromUri;
        startService(ContactSaveService.createSetRingtone(this, this.mLookupUri, ringtoneStringFromUri));
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.mHasAlreadyBeenOpened = true;
        this.mIsEntranceAnimationFinished = true;
        this.mHasComputedThemeColor = false;
        processIntent(intent);
    }

    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.mColorFilter != null) {
            bundle.putInt("theme_color", this.mColorFilterColor);
        }
        bundle.putLong("previous_contact_id", this.mPreviousContactId);
        bundle.putBoolean("sendToVoicemailState", this.mSendToVoicemailState);
        bundle.putBoolean("arePhoneOptionsChangable", this.mArePhoneOptionsChangable);
        bundle.putString(ContactSaveService.EXTRA_CUSTOM_RINGTONE, this.mCustomRingtone);
    }

    private void processIntent(Intent intent) {
        if (intent == null) {
            finish();
            return;
        }
        if ("splitCompleted".equals(intent.getAction())) {
            Toast.makeText(this, R.string.contactUnlinkedToast, 0).show();
            finish();
            return;
        }
        Uri data = intent.getData();
        if (intent.getBooleanExtra("contact_edited", false)) {
            setResult(4);
        }
        if (data != null && "contacts".equals(data.getAuthority())) {
            data = ContactsContract.RawContacts.getContactLookupUri(getContentResolver(), ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, ContentUris.parseId(data)));
        }
        this.mExtraMode = getIntent().getIntExtra("android.provider.extra.MODE", 3);
        if (isMultiWindowOnPhone()) {
            this.mExtraMode = 3;
        }
        this.mExtraPrioritizedMimeType = getIntent().getStringExtra("android.provider.extra.PRIORITIZED_MIMETYPE");
        Uri uri = this.mLookupUri;
        if (data == null) {
            finish();
            return;
        }
        this.mLookupUri = data;
        this.mExcludeMimes = intent.getStringArrayExtra("android.provider.extra.EXCLUDE_MIMES");
        if (uri == null) {
            this.mShouldLog = true ^ this.mIsRecreatedInstance;
            this.mContactLoader = (ContactLoader) getLoaderManager().initLoader(0, null, this.mLoaderContactCallbacks);
        } else if (uri != this.mLookupUri) {
            this.mShouldLog = true;
            ContactLoader contactLoader = (ContactLoader) getLoaderManager().getLoader(0);
            this.mContactLoader = contactLoader;
            contactLoader.setNewLookup(this.mLookupUri);
            this.mCachedCp2DataCardModel = null;
        }
        this.mContactLoader.forceLoad();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runEntranceAnimation() {
        if (this.mHasAlreadyBeenOpened) {
            return;
        }
        this.mHasAlreadyBeenOpened = true;
        this.mScroller.scrollUpForEntranceAnimation((isMultiWindowOnPhone() || this.mExtraMode == 4) ? false : true);
    }

    private boolean isMultiWindowOnPhone() {
        return MultiWindowCompat.isInMultiWindowMode(this) && PhoneCapabilityTester.isPhone(this);
    }

    private void setHeaderNameText(int i) {
        MultiShrinkScroller multiShrinkScroller = this.mScroller;
        if (multiShrinkScroller != null) {
            multiShrinkScroller.setTitle(getText(i) == null ? null : getText(i).toString(), false);
        }
    }

    private void setHeaderNameText(String str, boolean z) {
        MultiShrinkScroller multiShrinkScroller;
        if (TextUtils.isEmpty(str) || (multiShrinkScroller = this.mScroller) == null) {
            return;
        }
        multiShrinkScroller.setTitle(str, z);
    }

    private boolean isMimeExcluded(String str) {
        String[] strArr = this.mExcludeMimes;
        if (strArr == null) {
            return false;
        }
        for (String str2 : strArr) {
            if (TextUtils.equals(str2, str)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindContactData(final Contact contact) {
        int i;
        Trace.beginSection("bindContactData");
        int i2 = this.mContactData == null ? 1 : 0;
        this.mContactData = contact;
        if (DirectoryContactUtil.isDirectoryContact(contact)) {
            i = 3;
        } else if (InvisibleContactUtil.isInvisibleAndAddable(this.mContactData, this)) {
            i = 2;
        } else {
            i = isContactEditable() ? 1 : 0;
        }
        if (this.mShouldLog && this.mContactType != i) {
            Logger.logQuickContactEvent(this.mReferrer, i, 0, i2, null);
        }
        this.mContactType = i;
        setStateForPhoneMenuItems(this.mContactData);
        invalidateOptionsMenu();
        Trace.endSection();
        Trace.beginSection("Set display photo & name");
        this.mPhotoView.setIsBusiness(this.mContactData.isDisplayNameFromOrganization());
        this.mPhotoSetter.setupContactPhoto(contact, this.mPhotoView);
        extractAndApplyTintFromPhotoViewAsynchronously();
        String charSequence = ContactDisplayUtils.getDisplayName(this, contact).toString();
        setHeaderNameText(charSequence, this.mContactData.getDisplayNameSource() == 20);
        String phoneticName = ContactDisplayUtils.getPhoneticName(this, contact);
        if (this.mScroller != null) {
            if (!TextUtils.isEmpty(phoneticName) && !phoneticName.equals(charSequence)) {
                this.mScroller.setPhoneticName(phoneticName);
            } else {
                this.mScroller.setPhoneticNameGone();
            }
        }
        Trace.endSection();
        AsyncTask<Void, Void, Cp2DataCardModel> asyncTask = new AsyncTask<Void, Void, Cp2DataCardModel>() { // from class: com.android.contacts.quickcontact.QuickContactActivity.10
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Cp2DataCardModel doInBackground(Void... voidArr) {
                return QuickContactActivity.this.generateDataModelFromContact(contact);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Cp2DataCardModel cp2DataCardModel) {
                super.onPostExecute((AnonymousClass10) cp2DataCardModel);
                if (contact != QuickContactActivity.this.mContactData || isCancelled()) {
                    return;
                }
                QuickContactActivity.this.bindDataToCards(cp2DataCardModel);
                QuickContactActivity.this.showActivity();
            }
        };
        this.mEntriesAndActionsTask = asyncTask;
        asyncTask.execute(new Void[0]);
        NfcHandler.register(this, this.mContactData.getLookupUri());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindDataToCards(Cp2DataCardModel cp2DataCardModel) {
        Map<String, List<DataItem>> map = cp2DataCardModel.dataItemsMap;
        List<DataItem> list = map.get("vnd.android.cursor.item/phone_v2");
        boolean z = false;
        this.mOnlyOnePhoneNumber = list != null && list.size() == 1;
        List<DataItem> list2 = map.get("vnd.android.cursor.item/email_v2");
        if (list2 != null && list2.size() == 1) {
            z = true;
        }
        this.mOnlyOneEmail = z;
        populateContactAndAboutCard(cp2DataCardModel, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showActivity() {
        MultiShrinkScroller multiShrinkScroller = this.mScroller;
        if (multiShrinkScroller != null) {
            multiShrinkScroller.setVisibility(0);
            SchedulingUtils.doOnPreDraw(this.mScroller, false, new Runnable() { // from class: com.android.contacts.quickcontact.QuickContactActivity.11
                @Override // java.lang.Runnable
                public void run() {
                    QuickContactActivity.this.runEntranceAnimation();
                }
            });
        }
    }

    private List<List<ExpandingEntryCardView.Entry>> buildAboutCardEntries(Map<String, List<DataItem>> map) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = SORTED_ABOUT_CARD_MIMETYPES.iterator();
        while (it.hasNext()) {
            List<DataItem> list = map.get(it.next());
            if (list != null) {
                List<ExpandingEntryCardView.Entry> dataItemsToEntries = dataItemsToEntries(list, null);
                if (dataItemsToEntries.size() > 0) {
                    arrayList.add(dataItemsToEntries);
                }
            }
        }
        return arrayList;
    }

    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.mHasIntentLaunched) {
            this.mHasIntentLaunched = false;
            populateContactAndAboutCard(this.mCachedCp2DataCardModel, false);
        }
        maybeShowProgressDialog();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        dismissProgressBar();
    }

    private void populateContactAndAboutCard(Cp2DataCardModel cp2DataCardModel, boolean z) {
        this.mCachedCp2DataCardModel = cp2DataCardModel;
        if (this.mHasIntentLaunched || cp2DataCardModel == null) {
            return;
        }
        Trace.beginSection("bind contact card");
        List<List<ExpandingEntryCardView.Entry>> list = cp2DataCardModel.contactCardEntries;
        List<List<ExpandingEntryCardView.Entry>> list2 = cp2DataCardModel.aboutCardEntries;
        String str = cp2DataCardModel.customAboutCardName;
        if (list.size() > 0) {
            ExpandingEntryCardView expandingEntryCardView = this.mContactCard;
            expandingEntryCardView.initialize(list, 3, expandingEntryCardView.isExpanded(), true, this.mExpandingEntryCardViewListener, this.mScroller);
            if (this.mContactCard.getVisibility() == 8 && this.mShouldLog) {
                Logger.logQuickContactEvent(this.mReferrer, this.mContactType, 2, 0, null);
            }
            this.mContactCard.setVisibility(0);
        } else {
            this.mContactCard.setVisibility(8);
        }
        Trace.endSection();
        Trace.beginSection("bind about card");
        String phoneticName = this.mContactData.getPhoneticName();
        if (z && !TextUtils.isEmpty(phoneticName)) {
            ExpandingEntryCardView.Entry entry = new ExpandingEntryCardView.Entry(-1, null, getResources().getString(R.string.name_phonetic), phoneticName, null, null, null, null, null, null, null, null, false, false, new ExpandingEntryCardView.EntryContextMenuInfo(phoneticName, getResources().getString(R.string.name_phonetic), null, -1L, false), null, null, null, 1, null, true, 0);
            ArrayList arrayList = new ArrayList();
            arrayList.add(entry);
            if (list2.size() > 0 && list2.get(0).get(0).getHeader().equals(getResources().getString(R.string.header_nickname_entry))) {
                list2.add(1, arrayList);
            } else {
                list2.add(0, arrayList);
            }
        }
        if (!TextUtils.isEmpty(str)) {
            this.mAboutCard.setTitle(str);
        }
        this.mAboutCard.initialize(list2, 1, true, true, this.mExpandingEntryCardViewListener, this.mScroller);
        if (list.size() == 0 && list2.size() == 0) {
            initializeNoContactDetailCard(cp2DataCardModel.areAllRawContactsSimAccounts);
        } else {
            this.mNoContactDetailsCard.setVisibility(8);
        }
        if (list2.size() > 0) {
            if (this.mAboutCard.getVisibility() == 8 && this.mShouldLog) {
                Logger.logQuickContactEvent(this.mReferrer, this.mContactType, 4, 0, null);
            }
            this.mAboutCard.setVisibility(0);
        }
        Trace.endSection();
    }

    private void initializeNoContactDetailCard(boolean z) {
        ExpandingEntryCardView.Entry entry = new ExpandingEntryCardView.Entry(-2, ResourcesCompat.getDrawable(getResources(), R.drawable.quantum_ic_phone_vd_theme_24, null).mutate(), getString(R.string.quickcontact_add_phone_number), null, null, null, null, null, getEditContactIntent(), null, null, null, true, false, null, null, null, null, 1, null, true, R.drawable.quantum_ic_phone_vd_theme_24);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ArrayList(1));
        ((List) arrayList.get(0)).add(entry);
        if (!z) {
            ExpandingEntryCardView.Entry entry2 = new ExpandingEntryCardView.Entry(-2, ResourcesCompat.getDrawable(getResources(), R.drawable.quantum_ic_email_vd_theme_24, null).mutate(), getString(R.string.quickcontact_add_email), null, null, null, null, null, getEditContactIntent(), null, null, null, true, false, null, null, null, null, 1, null, true, R.drawable.quantum_ic_email_vd_theme_24);
            arrayList.add(new ArrayList(1));
            ((List) arrayList.get(1)).add(entry2);
        }
        int color = getResources().getColor(R.color.quickcontact_entry_sub_header_text_color);
        PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_ATOP);
        this.mNoContactDetailsCard.initialize(arrayList, 2, true, true, this.mExpandingEntryCardViewListener, this.mScroller);
        if (this.mNoContactDetailsCard.getVisibility() == 8 && this.mShouldLog) {
            Logger.logQuickContactEvent(this.mReferrer, this.mContactType, 1, 0, null);
        }
        this.mNoContactDetailsCard.setVisibility(0);
        this.mNoContactDetailsCard.setEntryHeaderColor(color);
        this.mNoContactDetailsCard.setColorAndFilter(color, porterDuffColorFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0080  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.android.contacts.quickcontact.QuickContactActivity.Cp2DataCardModel generateDataModelFromContact(com.android.contacts.model.Contact r11) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.quickcontact.QuickContactActivity.generateDataModelFromContact(com.android.contacts.model.Contact):com.android.contacts.quickcontact.QuickContactActivity$Cp2DataCardModel");
    }

    private void bindReachability(Map<String, List<DataItem>> map) {
        List<DataItem> list = map.get("vnd.android.cursor.item/phone_v2");
        List<DataItem> list2 = map.get("vnd.android.cursor.item/com.google.android.apps.tachyon.phone");
        if (list == null || list2 == null) {
            return;
        }
        for (DataItem dataItem : list) {
            if (dataItem instanceof PhoneDataItem) {
                PhoneDataItem phoneDataItem = (PhoneDataItem) dataItem;
                if (phoneDataItem.getNumber() != null) {
                    for (DataItem dataItem2 : list2) {
                        if (phoneDataItem.getNumber().equals(dataItem2.getContentValues().getAsString("data1"))) {
                            phoneDataItem.setTachyonReachable(true);
                            phoneDataItem.setReachableDataItem(dataItem2);
                        }
                    }
                }
            }
        }
    }

    private static class Cp2DataCardModel {
        public List<List<ExpandingEntryCardView.Entry>> aboutCardEntries;
        public boolean areAllRawContactsSimAccounts;
        public List<List<ExpandingEntryCardView.Entry>> contactCardEntries;
        public String customAboutCardName;
        public Map<String, List<DataItem>> dataItemsMap;

        private Cp2DataCardModel() {
        }
    }

    private static class MutableString {
        public String value;

        private MutableString() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0827  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0830  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x084a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0869  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0874  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0884  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0890  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0880  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x086b  */
    /* JADX WARN: Type inference failed for: r14v25, types: [android.text.Spannable] */
    /* JADX WARN: Type inference failed for: r18v13 */
    /* JADX WARN: Type inference failed for: r18v26, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r18v39 */
    /* JADX WARN: Type inference failed for: r18v40 */
    /* JADX WARN: Type inference failed for: r20v10, types: [android.text.Spannable] */
    /* JADX WARN: Type inference failed for: r20v11 */
    /* JADX WARN: Type inference failed for: r20v9 */
    /* JADX WARN: Type inference failed for: r29v1 */
    /* JADX WARN: Type inference failed for: r29v12 */
    /* JADX WARN: Type inference failed for: r29v5 */
    /* JADX WARN: Type inference failed for: r29v7 */
    /* JADX WARN: Type inference failed for: r29v8, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r32v0 */
    /* JADX WARN: Type inference failed for: r32v2 */
    /* JADX WARN: Type inference failed for: r32v3 */
    /* JADX WARN: Type inference failed for: r32v4, types: [android.os.Bundle] */
    /* JADX WARN: Type inference failed for: r32v7 */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.android.contacts.quickcontact.ExpandingEntryCardView.Entry dataItemToEntry(com.android.contacts.model.dataitem.DataItem r36, com.android.contacts.model.dataitem.DataItem r37, android.content.Context r38, com.android.contacts.model.Contact r39, com.android.contacts.quickcontact.QuickContactActivity.MutableString r40) {
        /*
            Method dump skipped, instructions count: 2208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.quickcontact.QuickContactActivity.dataItemToEntry(com.android.contacts.model.dataitem.DataItem, com.android.contacts.model.dataitem.DataItem, android.content.Context, com.android.contacts.model.Contact, com.android.contacts.quickcontact.QuickContactActivity$MutableString):com.android.contacts.quickcontact.ExpandingEntryCardView$Entry");
    }

    private List<ExpandingEntryCardView.Entry> dataItemsToEntries(List<DataItem> list, MutableString mutableString) {
        if (list.get(0).getMimeType().equals("vnd.android.cursor.item/vnd.googleplus.profile")) {
            return gPlusDataItemsToEntries(list);
        }
        if (list.get(0).getMimeType().equals("vnd.android.cursor.item/vnd.googleplus.profile.comm")) {
            return hangoutsDataItemsToEntries(list);
        }
        ArrayList arrayList = new ArrayList();
        Iterator<DataItem> it = list.iterator();
        while (it.hasNext()) {
            ExpandingEntryCardView.Entry dataItemToEntry = dataItemToEntry(it.next(), null, this, this.mContactData, mutableString);
            if (dataItemToEntry != null) {
                arrayList.add(dataItemToEntry);
            }
        }
        return arrayList;
    }

    private Map<Long, List<DataItem>> dataItemsToBucket(List<DataItem> list) {
        HashMap hashMap = new HashMap();
        for (DataItem dataItem : list) {
            List list2 = (List) hashMap.get(dataItem.getRawContactId());
            if (list2 == null) {
                list2 = new ArrayList();
                hashMap.put(dataItem.getRawContactId(), list2);
            }
            list2.add(dataItem);
        }
        return hashMap;
    }

    private List<ExpandingEntryCardView.Entry> gPlusDataItemsToEntries(List<DataItem> list) {
        ExpandingEntryCardView.Entry dataItemToEntry;
        ArrayList arrayList = new ArrayList();
        Iterator<List<DataItem>> it = dataItemsToBucket(list).values().iterator();
        while (it.hasNext()) {
            for (DataItem dataItem : it.next()) {
                if ("view".equals(dataItem.getContentValues().getAsString("data5")) && (dataItemToEntry = dataItemToEntry(dataItem, null, this, this.mContactData, null)) != null) {
                    arrayList.add(dataItemToEntry);
                }
            }
        }
        return arrayList;
    }

    private List<ExpandingEntryCardView.Entry> hangoutsDataItemsToEntries(List<DataItem> list) {
        ArrayList arrayList = new ArrayList();
        for (List<DataItem> list2 : dataItemsToBucket(list).values()) {
            if (list2.size() == 2) {
                ExpandingEntryCardView.Entry dataItemToEntry = dataItemToEntry(list2.get(0), list2.get(1), this, this.mContactData, null);
                if (dataItemToEntry != null) {
                    arrayList.add(dataItemToEntry);
                }
            } else {
                Iterator<DataItem> it = list2.iterator();
                while (it.hasNext()) {
                    ExpandingEntryCardView.Entry dataItemToEntry2 = dataItemToEntry(it.next(), null, this, this.mContactData, null);
                    if (dataItemToEntry2 != null) {
                        arrayList.add(dataItemToEntry2);
                    }
                }
            }
        }
        return arrayList;
    }

    private static final class HangoutsDataItemModel {
        public StringBuilder alternateContentDescription;
        public Intent alternateIntent;
        public Context context;
        public DataItem dataItem;
        public String header;
        public Intent intent;
        public DataItem secondDataItem;
        public String text;

        public HangoutsDataItemModel(Intent intent, Intent intent2, DataItem dataItem, DataItem dataItem2, StringBuilder sb, String str, String str2, Context context) {
            this.intent = intent;
            this.alternateIntent = intent2;
            this.dataItem = dataItem;
            this.secondDataItem = dataItem2;
            this.alternateContentDescription = sb;
            this.header = str;
            this.text = str2;
            this.context = context;
        }
    }

    private static void populateHangoutsDataItemModel(HangoutsDataItemModel hangoutsDataItemModel) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, hangoutsDataItemModel.secondDataItem.getId()), hangoutsDataItemModel.secondDataItem.getMimeType());
        intent.putExtra("action_type", 17);
        intent.putExtra("third_party_action", hangoutsDataItemModel.secondDataItem.getMimeType());
        if ("hangout".equals(hangoutsDataItemModel.dataItem.getContentValues().getAsString("data5"))) {
            hangoutsDataItemModel.alternateIntent = hangoutsDataItemModel.intent;
            hangoutsDataItemModel.alternateContentDescription = new StringBuilder(hangoutsDataItemModel.header);
            hangoutsDataItemModel.intent = intent;
            DataItem dataItem = hangoutsDataItemModel.secondDataItem;
            hangoutsDataItemModel.header = dataItem.buildDataStringForDisplay(hangoutsDataItemModel.context, dataItem.getDataKind());
            hangoutsDataItemModel.text = hangoutsDataItemModel.secondDataItem.getDataKind().typeColumn;
            return;
        }
        if ("conversation".equals(hangoutsDataItemModel.dataItem.getContentValues().getAsString("data5"))) {
            hangoutsDataItemModel.alternateIntent = intent;
            DataItem dataItem2 = hangoutsDataItemModel.secondDataItem;
            hangoutsDataItemModel.alternateContentDescription = new StringBuilder(dataItem2.buildDataStringForDisplay(hangoutsDataItemModel.context, dataItem2.getDataKind()));
        }
    }

    private static String getIntentResolveLabel(Intent intent, Context context) {
        ResolveInfo bestResolve;
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 65536);
        int size = queryIntentActivities.size();
        if (size == 1) {
            bestResolve = queryIntentActivities.get(0);
        } else {
            bestResolve = size > 1 ? ResolveCache.getInstance(context).getBestResolve(intent, queryIntentActivities) : null;
        }
        if (bestResolve == null) {
            return null;
        }
        return String.valueOf(bestResolve.loadLabel(context.getPackageManager()));
    }

    private void extractAndApplyTintFromPhotoViewAsynchronously() {
        if (this.mScroller == null) {
            return;
        }
        final Drawable drawable = this.mPhotoView.getDrawable();
        new AsyncTask<Void, Void, MaterialColorMapUtils.MaterialPalette>() { // from class: com.android.contacts.quickcontact.QuickContactActivity.12
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public MaterialColorMapUtils.MaterialPalette doInBackground(Void... voidArr) {
                if ((drawable instanceof BitmapDrawable) && QuickContactActivity.this.mContactData != null && QuickContactActivity.this.mContactData.getThumbnailPhotoBinaryData() != null && QuickContactActivity.this.mContactData.getThumbnailPhotoBinaryData().length > 0) {
                    Bitmap decodeByteArray = BitmapFactory.decodeByteArray(QuickContactActivity.this.mContactData.getThumbnailPhotoBinaryData(), 0, QuickContactActivity.this.mContactData.getThumbnailPhotoBinaryData().length);
                    try {
                        int colorFromBitmap = QuickContactActivity.this.colorFromBitmap(decodeByteArray);
                        if (colorFromBitmap != 0) {
                            return QuickContactActivity.this.mMaterialColorMapUtils.calculatePrimaryAndSecondaryColor(colorFromBitmap);
                        }
                    } finally {
                        decodeByteArray.recycle();
                    }
                }
                Drawable drawable2 = drawable;
                if (drawable2 instanceof LetterTileDrawable) {
                    return QuickContactActivity.this.mMaterialColorMapUtils.calculatePrimaryAndSecondaryColor(((LetterTileDrawable) drawable2).getColor());
                }
                return MaterialColorMapUtils.getDefaultPrimaryAndSecondaryColors(QuickContactActivity.this.getResources());
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(MaterialColorMapUtils.MaterialPalette materialPalette) {
                super.onPostExecute((AnonymousClass12) materialPalette);
                if (!QuickContactActivity.this.mHasComputedThemeColor && drawable == QuickContactActivity.this.mPhotoView.getDrawable()) {
                    QuickContactActivity.this.mHasComputedThemeColor = true;
                    QuickContactActivity.this.setThemeColor(materialPalette);
                }
            }
        }.execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setThemeColor(MaterialColorMapUtils.MaterialPalette materialPalette) {
        int i = materialPalette.mPrimaryColor;
        this.mColorFilterColor = i;
        this.mScroller.setHeaderTintColor(i);
        this.mStatusBarColor = materialPalette.mSecondaryColor;
        updateStatusBarColor();
        PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(this.mColorFilterColor, PorterDuff.Mode.SRC_ATOP);
        this.mColorFilter = porterDuffColorFilter;
        this.mContactCard.setColorAndFilter(this.mColorFilterColor, porterDuffColorFilter);
        this.mAboutCard.setColorAndFilter(this.mColorFilterColor, this.mColorFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStatusBarColor() {
        if (this.mScroller == null || !CompatUtils.isLollipopCompatible()) {
            return;
        }
        ObjectAnimator ofInt = ObjectAnimator.ofInt(getWindow(), "statusBarColor", getWindow().getStatusBarColor(), this.mScroller.getScrollNeededToBeFullScreen() <= 0 ? this.mStatusBarColor : 0);
        ofInt.setDuration(150L);
        ofInt.setEvaluator(new ArgbEvaluator());
        ofInt.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int colorFromBitmap(Bitmap bitmap) {
        Palette generate = Palette.generate(bitmap, 24);
        if (generate == null || generate.getVibrantSwatch() == null) {
            return 0;
        }
        return generate.getVibrantSwatch().getRgb();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        int intExtra = getIntent().getIntExtra("previous_screen_type", 0);
        if ((intExtra == 4 || intExtra == 3) && !SharedPreferenceUtil.getHamburgerPromoTriggerActionHappenedBefore(this)) {
            SharedPreferenceUtil.setHamburgerPromoTriggerActionHappenedBefore(this);
        }
        MultiShrinkScroller multiShrinkScroller = this.mScroller;
        if (multiShrinkScroller != null) {
            if (this.mIsExitAnimationInProgress) {
                return;
            }
            multiShrinkScroller.scrollOffBottom();
            return;
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        AsyncTask<Void, Void, Cp2DataCardModel> asyncTask = this.mEntriesAndActionsTask;
        if (asyncTask != null) {
            asyncTask.cancel(false);
        }
    }

    @Override // com.android.contacts.ContactsActivity, android.app.Activity
    public void onDestroy() {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.mListener);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isContactEditable() {
        Contact contact = this.mContactData;
        return (contact == null || contact.isDirectoryEntry()) ? false : true;
    }

    private boolean isContactShareable() {
        Contact contact = this.mContactData;
        return (contact == null || contact.isDirectoryEntry()) ? false : true;
    }

    private Intent getEditContactIntent() {
        return EditorIntents.createEditContactIntent(this, this.mContactData.getLookupUri(), this.mHasComputedThemeColor ? new MaterialColorMapUtils.MaterialPalette(this.mColorFilterColor, this.mStatusBarColor) : null, this.mContactData.getPhotoId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void editContact() {
        this.mHasIntentLaunched = true;
        this.mContactLoader.cacheResult();
        startActivityForResult(getEditContactIntent(), 1);
    }

    private void deleteContact() {
        ContactDeletionInteraction.start(this, this.mContactData.getLookupUri(), true);
    }

    private void toggleStar(MenuItem menuItem, boolean z) {
        CharSequence text;
        ContactDisplayUtils.configureStarredMenuItem(menuItem, this.mContactData.isDirectoryEntry(), this.mContactData.isUserProfile(), !z);
        startService(ContactSaveService.createSetStarredIntent(this, this.mContactData.getLookupUri(), !z));
        if (!z) {
            text = getResources().getText(R.string.description_action_menu_add_star);
        } else {
            text = getResources().getText(R.string.description_action_menu_remove_star);
        }
        this.mScroller.announceForAccessibility(text);
    }

    private void shareContact() {
        Uri withAppendedPath = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_VCARD_URI, this.mContactData.getLookupKey());
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/x-vcard");
        intent.putExtra("android.intent.extra.STREAM", withAppendedPath);
        Intent createChooser = Intent.createChooser(intent, getResources().getQuantityString(R.plurals.title_share_via, 1));
        try {
            this.mHasIntentLaunched = true;
            ImplicitIntentsUtil.startActivityOutsideApp(this, createChooser);
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(this, R.string.share_error, 0).show();
        }
    }

    private void createLauncherShortcutWithContact() {
        if (BuildCompat.isAtLeastO()) {
            ShortcutManager shortcutManager = (ShortcutManager) getSystemService("shortcut");
            DynamicShortcuts dynamicShortcuts = new DynamicShortcuts(this);
            String displayName = this.mContactData.getDisplayName();
            if (displayName == null) {
                displayName = getString(R.string.missing_name);
            }
            ShortcutInfo quickContactShortcutInfo = dynamicShortcuts.getQuickContactShortcutInfo(this.mContactData.getId(), this.mContactData.getLookupKey(), displayName);
            if (quickContactShortcutInfo != null) {
                shortcutManager.requestPinShortcut(quickContactShortcutInfo, null);
                return;
            }
            return;
        }
        new ShortcutIntentBuilder(this, new ShortcutIntentBuilder.OnShortcutIntentCreatedListener() { // from class: com.android.contacts.quickcontact.QuickContactActivity.14
            @Override // com.android.contacts.ShortcutIntentBuilder.OnShortcutIntentCreatedListener
            public void onShortcutIntentCreated(Uri uri, Intent intent) {
                String string;
                intent.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
                QuickContactActivity.this.sendBroadcast(intent);
                String stringExtra = intent.getStringExtra("android.intent.extra.shortcut.NAME");
                if (TextUtils.isEmpty(stringExtra)) {
                    string = QuickContactActivity.this.getString(R.string.createContactShortcutSuccessful_NoName);
                } else {
                    string = QuickContactActivity.this.getString(R.string.createContactShortcutSuccessful, new Object[]{stringExtra});
                }
                Toast.makeText(QuickContactActivity.this, string, 0).show();
            }
        }).createContactShortcutIntent(this.mContactData.getLookupUri());
    }

    private boolean isShortcutCreatable() {
        Contact contact = this.mContactData;
        if (contact == null || contact.isUserProfile() || this.mContactData.isDirectoryEntry()) {
            return false;
        }
        if (BuildCompat.isAtLeastO()) {
            return ((ShortcutManager) getSystemService("shortcut")).isRequestPinShortcutSupported();
        }
        Intent intent = new Intent();
        intent.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
        List<ResolveInfo> queryBroadcastReceivers = getPackageManager().queryBroadcastReceivers(intent, 0);
        return queryBroadcastReceivers != null && queryBroadcastReceivers.size() > 0;
    }

    private void setStateForPhoneMenuItems(Contact contact) {
        if (contact != null) {
            this.mSendToVoicemailState = contact.isSendToVoicemail();
            this.mCustomRingtone = contact.getCustomRingtone();
            this.mArePhoneOptionsChangable = isContactEditable() && PhoneCapabilityTester.isPhone(this);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.quickcontact, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        boolean z = false;
        if (this.mContactData == null) {
            return false;
        }
        ContactDisplayUtils.configureStarredMenuItem(menu.findItem(R.id.menu_star), this.mContactData.isDirectoryEntry(), this.mContactData.isUserProfile(), this.mContactData.getStarred());
        MenuItem findItem = menu.findItem(R.id.menu_edit);
        findItem.setVisible(true);
        if (DirectoryContactUtil.isDirectoryContact(this.mContactData) || InvisibleContactUtil.isInvisibleAndAddable(this.mContactData, this)) {
            findItem.setIcon(R.drawable.quantum_ic_person_add_vd_theme_24);
            findItem.setTitle(R.string.menu_add_contact);
        } else if (isContactEditable()) {
            findItem.setIcon(R.drawable.quantum_ic_create_vd_theme_24);
            findItem.setTitle(R.string.menu_editContact);
        } else {
            findItem.setVisible(false);
        }
        MenuItem findItem2 = menu.findItem(R.id.menu_join);
        findItem2.setVisible((InvisibleContactUtil.isInvisibleAndAddable(this.mContactData, this) || !isContactEditable() || this.mContactData.isUserProfile() || this.mContactData.isMultipleRawContacts()) ? false : true);
        menu.findItem(R.id.menu_linked_contacts).setVisible(this.mContactData.isMultipleRawContacts() && !findItem2.isVisible());
        menu.findItem(R.id.menu_delete).setVisible(isContactEditable() && !this.mContactData.isUserProfile());
        menu.findItem(R.id.menu_share).setVisible(isContactShareable());
        menu.findItem(R.id.menu_create_contact_shortcut).setVisible(isShortcutCreatable());
        menu.findItem(R.id.menu_set_ringtone).setVisible(!this.mContactData.isUserProfile() && this.mArePhoneOptionsChangable);
        MenuItem findItem3 = menu.findItem(R.id.menu_send_to_voicemail);
        if (Build.VERSION.SDK_INT < 23 && !this.mContactData.isUserProfile() && this.mArePhoneOptionsChangable) {
            z = true;
        }
        findItem3.setVisible(z);
        findItem3.setTitle(this.mSendToVoicemailState ? R.string.menu_unredirect_calls_to_vm : R.string.menu_redirect_calls_to_vm);
        menu.findItem(R.id.menu_help).setVisible(HelpUtils.isHelpAndFeedbackAvailable());
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.menu_star) {
            if (this.mContactData != null) {
                boolean isChecked = menuItem.isChecked();
                Logger.logQuickContactEvent(this.mReferrer, this.mContactType, 0, isChecked ? 3 : 2, null);
                toggleStar(menuItem, isChecked);
            }
        } else if (itemId == R.id.menu_edit) {
            if (DirectoryContactUtil.isDirectoryContact(this.mContactData)) {
                Logger.logQuickContactEvent(this.mReferrer, this.mContactType, 0, 5, null);
                Intent intent = new Intent("android.intent.action.INSERT_OR_EDIT");
                intent.setType("vnd.android.cursor.item/contact");
                ArrayList<ContentValues> contentValues = this.mContactData.getContentValues();
                if (this.mContactData.getDisplayNameSource() >= 35) {
                    intent.putExtra("name", this.mContactData.getDisplayName());
                } else if (this.mContactData.getDisplayNameSource() == 30) {
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("data1", this.mContactData.getDisplayName());
                    contentValues2.put("mimetype", "vnd.android.cursor.item/organization");
                    contentValues.add(contentValues2);
                }
                intent.putExtra("data", contentValues);
                if (this.mContactData.getDirectoryExportSupport() == 1) {
                    intent.putExtra("android.provider.extra.ACCOUNT", new Account(this.mContactData.getDirectoryAccountName(), this.mContactData.getDirectoryAccountType()));
                    intent.putExtra("android.provider.extra.DATA_SET", this.mContactData.getRawContacts().get(0).getDataSet());
                }
                intent.putExtra("disableDeleteMenuOption", true);
                intent.setPackage(getPackageName());
                startActivityForResult(intent, 2);
            } else if (InvisibleContactUtil.isInvisibleAndAddable(this.mContactData, this)) {
                Logger.logQuickContactEvent(this.mReferrer, this.mContactType, 0, 5, null);
                InvisibleContactUtil.addToDefaultGroup(this.mContactData, this);
            } else if (isContactEditable()) {
                Logger.logQuickContactEvent(this.mReferrer, this.mContactType, 0, 4, null);
                editContact();
            }
        } else {
            if (itemId == R.id.menu_join) {
                return doJoinContactAction();
            }
            if (itemId == R.id.menu_linked_contacts) {
                return showRawContactPickerDialog();
            }
            if (itemId == R.id.menu_delete) {
                Logger.logQuickContactEvent(this.mReferrer, this.mContactType, 0, 6, null);
                if (isContactEditable()) {
                    deleteContact();
                }
            } else if (itemId == R.id.menu_share) {
                Logger.logQuickContactEvent(this.mReferrer, this.mContactType, 0, 7, null);
                if (isContactShareable()) {
                    shareContact();
                }
            } else if (itemId == R.id.menu_create_contact_shortcut) {
                Logger.logQuickContactEvent(this.mReferrer, this.mContactType, 0, 8, null);
                if (isShortcutCreatable()) {
                    createLauncherShortcutWithContact();
                }
            } else if (itemId == R.id.menu_set_ringtone) {
                doPickRingtone();
            } else if (itemId == R.id.menu_send_to_voicemail) {
                boolean z = !this.mSendToVoicemailState;
                this.mSendToVoicemailState = z;
                menuItem.setTitle(z ? R.string.menu_unredirect_calls_to_vm : R.string.menu_redirect_calls_to_vm);
                startService(ContactSaveService.createSetSendToVoicemail(this, this.mLookupUri, this.mSendToVoicemailState));
            } else if (itemId == R.id.menu_help) {
                Logger.logQuickContactEvent(this.mReferrer, this.mContactType, 0, 9, null);
                HelpUtils.launchHelpAndFeedbackForContactScreen(this);
            } else {
                Logger.logQuickContactEvent(this.mReferrer, this.mContactType, 0, 0, null);
                return super.onOptionsItemSelected(menuItem);
            }
        }
        return true;
    }

    private boolean showRawContactPickerDialog() {
        Contact contact = this.mContactData;
        if (contact == null) {
            return false;
        }
        startActivityForResult(EditorIntents.createViewLinkedContactsIntent(this, contact.getLookupUri(), this.mHasComputedThemeColor ? new MaterialColorMapUtils.MaterialPalette(this.mColorFilterColor, this.mStatusBarColor) : null), 1);
        return true;
    }

    private boolean doJoinContactAction() {
        Contact contact = this.mContactData;
        if (contact == null) {
            return false;
        }
        this.mPreviousContactId = contact.getId();
        Intent intent = new Intent(this, (Class<?>) ContactSelectionActivity.class);
        intent.setAction("com.android.contacts.action.JOIN_CONTACT");
        intent.putExtra("com.android.contacts.action.CONTACT_ID", this.mPreviousContactId);
        startActivityForResult(intent, 3);
        return true;
    }

    private void joinAggregate(long j) {
        startService(ContactSaveService.createJoinContactsIntent(this, this.mPreviousContactId, j, QuickContactActivity.class, "android.intent.action.VIEW"));
        showLinkProgressBar();
    }

    private void doPickRingtone() {
        Intent intent = new Intent("android.intent.action.RINGTONE_PICKER");
        intent.putExtra("android.intent.extra.ringtone.SHOW_DEFAULT", true);
        intent.putExtra("android.intent.extra.ringtone.TYPE", 1);
        intent.putExtra("android.intent.extra.ringtone.SHOW_SILENT", true);
        intent.putExtra("android.intent.extra.ringtone.EXISTING_URI", EditorUiUtils.getRingtoneUriFromString(this.mCustomRingtone, CURRENT_API_VERSION));
        try {
            startActivityForResult(intent, 4);
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(this, R.string.missing_app, 0).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissProgressBar() {
        ProgressDialog progressDialog = this.mProgressDialog;
        if (progressDialog == null || !progressDialog.isShowing()) {
            return;
        }
        this.mProgressDialog.dismiss();
    }

    private void showLinkProgressBar() {
        this.mProgressDialog.setMessage(getString(R.string.contacts_linking_progress_bar));
        this.mProgressDialog.show();
    }

    private void showUnlinkProgressBar() {
        this.mProgressDialog.setMessage(getString(R.string.contacts_unlinking_progress_bar));
        this.mProgressDialog.show();
    }

    private void maybeShowProgressDialog() {
        if (ContactSaveService.getState().isActionPending(ContactSaveService.ACTION_SPLIT_CONTACT)) {
            showUnlinkProgressBar();
        } else if (ContactSaveService.getState().isActionPending(ContactSaveService.ACTION_JOIN_CONTACTS)) {
            showLinkProgressBar();
        }
    }

    private class SaveServiceListener extends BroadcastReceiver {
        private SaveServiceListener() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (Log.isLoggable("QuickContact", 3)) {
                Log.d("QuickContact", "Got broadcast from save service " + intent);
            }
            if (ContactSaveService.BROADCAST_LINK_COMPLETE.equals(intent.getAction()) || ContactSaveService.BROADCAST_UNLINK_COMPLETE.equals(intent.getAction())) {
                QuickContactActivity.this.dismissProgressBar();
                if (ContactSaveService.BROADCAST_UNLINK_COMPLETE.equals(intent.getAction())) {
                    QuickContactActivity.this.finish();
                }
            }
        }
    }
}
