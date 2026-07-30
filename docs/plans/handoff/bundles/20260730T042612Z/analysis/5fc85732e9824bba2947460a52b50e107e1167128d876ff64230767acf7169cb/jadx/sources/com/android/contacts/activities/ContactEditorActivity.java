package com.android.contacts.activities;

import android.app.Dialog;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.appcompat.widget.Toolbar;
import com.android.contacts.AppCompatContactsActivity;
import com.android.contacts.ContactSaveService;
import com.android.contacts.DynamicShortcuts;
import com.android.contacts.R;
import com.android.contacts.detail.PhotoSelectionHandler;
import com.android.contacts.editor.ContactEditorFragment;
import com.android.contacts.editor.EditorIntents;
import com.android.contacts.editor.PhotoSourceDialogFragment;
import com.android.contacts.interactions.ContactDeletionInteraction;
import com.android.contacts.model.RawContactDeltaList;
import com.android.contacts.util.DialogManager;
import com.android.contacts.util.ImplicitIntentsUtil;
import java.io.FileNotFoundException;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ContactEditorActivity extends AppCompatContactsActivity implements PhotoSourceDialogFragment.Listener, DialogManager.DialogShowingViewActivity {
    private int mActionBarTitleResId;
    private boolean mFinishActivityOnSaveCompleted;
    private ContactEditor mFragment;
    private int mPhotoMode;
    private EditorPhotoSelectionHandler mPhotoSelectionHandler;
    private Uri mPhotoUri;
    private Toolbar mToolbar;
    private DialogManager mDialogManager = new DialogManager(this);
    private final ContactEditorFragment.Listener mFragmentListener = new ContactEditorFragment.Listener() { // from class: com.android.contacts.activities.ContactEditorActivity.1
        @Override // com.android.contacts.editor.ContactEditorFragment.Listener
        public void onDeleteRequested(Uri uri) {
            ContactDeletionInteraction.start(ContactEditorActivity.this, uri, true);
        }

        @Override // com.android.contacts.editor.ContactEditorFragment.Listener
        public void onReverted() {
            ContactEditorActivity.this.finish();
        }

        @Override // com.android.contacts.editor.ContactEditorFragment.Listener
        public void onSaveFinished(Intent intent) {
            if (ContactEditorActivity.this.mFinishActivityOnSaveCompleted) {
                ContactEditorActivity.this.setResult(intent == null ? 0 : -1, intent);
            } else if (intent != null) {
                ImplicitIntentsUtil.startActivityInApp(ContactEditorActivity.this, intent);
            }
            ContactEditorActivity.this.finish();
        }

        @Override // com.android.contacts.editor.ContactEditorFragment.Listener
        public void onContactSplit(Uri uri) {
            ContactEditorActivity.this.setResult(2, null);
            ContactEditorActivity.this.finish();
        }

        @Override // com.android.contacts.editor.ContactEditorFragment.Listener
        public void onContactNotFound() {
            ContactEditorActivity.this.finish();
        }

        @Override // com.android.contacts.editor.ContactEditorFragment.Listener
        public void onEditOtherRawContactRequested(Uri uri, long j, ArrayList<ContentValues> arrayList) {
            ImplicitIntentsUtil.startActivityInApp(ContactEditorActivity.this, EditorIntents.createEditOtherRawContactIntent(ContactEditorActivity.this, uri, j, arrayList));
            ContactEditorActivity.this.finish();
        }
    };

    public interface ContactEditor {
        void load(String str, Uri uri, Bundle bundle);

        void onJoinCompleted(Uri uri);

        void onSaveCompleted(boolean z, int i, boolean z2, Uri uri, Long l);

        boolean revert();

        void setIntentExtras(Bundle bundle);

        void setListener(ContactEditorFragment.Listener listener);
    }

    private final class EditorPhotoSelectionHandler extends PhotoSelectionHandler {
        private final EditorPhotoActionListener mPhotoActionListener;

        private final class EditorPhotoActionListener extends PhotoSelectionHandler.PhotoActionListener {
            @Override // com.android.contacts.detail.PhotoSelectionHandler.PhotoActionListener
            public void onPhotoSelectionDismissed() {
            }

            private EditorPhotoActionListener() {
                super();
            }

            @Override // com.android.contacts.detail.PhotoSelectionHandler.PhotoActionListener, com.android.contacts.editor.PhotoActionPopup.Listener
            public void onRemovePictureChosen() {
                ContactEditorActivity.this.getEditorFragment().removePhoto();
            }

            @Override // com.android.contacts.detail.PhotoSelectionHandler.PhotoActionListener
            public void onPhotoSelected(Uri uri) throws FileNotFoundException {
                ContactEditorActivity.this.mPhotoUri = uri;
                ContactEditorActivity.this.getEditorFragment().updatePhoto(uri);
                ContactEditorActivity.this.mPhotoSelectionHandler = null;
            }

            @Override // com.android.contacts.detail.PhotoSelectionHandler.PhotoActionListener
            public Uri getCurrentPhotoUri() {
                return ContactEditorActivity.this.mPhotoUri;
            }
        }

        public EditorPhotoSelectionHandler(int i) {
            super(ContactEditorActivity.this, null, i, false, new RawContactDeltaList());
            this.mPhotoActionListener = new EditorPhotoActionListener();
        }

        @Override // com.android.contacts.detail.PhotoSelectionHandler
        public PhotoSelectionHandler.PhotoActionListener getListener() {
            return this.mPhotoActionListener;
        }

        @Override // com.android.contacts.detail.PhotoSelectionHandler
        protected void startPhotoActivity(Intent intent, int i, Uri uri) {
            ContactEditorActivity.this.mPhotoUri = uri;
            ContactEditorActivity.this.startActivityForResult(intent, i);
        }
    }

    @Override // com.android.contacts.AppCompatContactsActivity, com.android.contacts.activities.AppCompatTransactionSafeActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RequestPermissionsActivity.startPermissionActivityIfNeeded(this);
        Intent intent = getIntent();
        String action = intent.getAction();
        intent.setComponent(new ComponentName(this, (Class<?>) ContactEditorActivity.class));
        this.mFinishActivityOnSaveCompleted = intent.getBooleanExtra("finishActivityOnSaveCompleted", false);
        if ("joinCompleted".equals(action)) {
            finish();
            return;
        }
        if ("saveCompleted".equals(action)) {
            finish();
            return;
        }
        setContentView(R.layout.contact_editor_activity);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        this.mToolbar = toolbar;
        setSupportActionBar(toolbar);
        if ("android.intent.action.EDIT".equals(action)) {
            this.mActionBarTitleResId = R.string.contact_editor_title_existing_contact;
        } else {
            this.mActionBarTitleResId = R.string.contact_editor_title_new_contact;
        }
        this.mToolbar.setTitle(this.mActionBarTitleResId);
        setTitle(this.mActionBarTitleResId);
        this.mFragment = (ContactEditor) getFragmentManager().findFragmentById(R.id.contact_editor_fragment);
        if (bundle != null) {
            this.mPhotoMode = bundle.getInt("photo_mode");
            this.mActionBarTitleResId = bundle.getInt("action_bar_title");
            this.mPhotoUri = Uri.parse(bundle.getString("photo_uri"));
            this.mToolbar.setTitle(this.mActionBarTitleResId);
        }
        this.mFragment.setListener(this.mFragmentListener);
        this.mFragment.load(action, "android.intent.action.EDIT".equals(action) ? getIntent().getData() : null, getIntent().getExtras());
        if ("android.intent.action.INSERT".equals(action)) {
            DynamicShortcuts.reportShortcutUsed(this, DynamicShortcuts.SHORTCUT_ADD_CONTACT);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (this.mFragment == null) {
            return;
        }
        String action = intent.getAction();
        if ("android.intent.action.EDIT".equals(action)) {
            this.mFragment.setIntentExtras(intent.getExtras());
        } else if ("saveCompleted".equals(action)) {
            this.mFragment.onSaveCompleted(true, intent.getIntExtra(ContactSaveService.EXTRA_SAVE_MODE, 0), intent.getBooleanExtra(ContactSaveService.EXTRA_SAVE_SUCCEEDED, false), intent.getData(), Long.valueOf(intent.getLongExtra("joinContactId", -1L)));
        } else if ("joinCompleted".equals(action)) {
            this.mFragment.onJoinCompleted(intent.getData());
        }
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i, Bundle bundle) {
        if (DialogManager.isManagedId(i)) {
            return this.mDialogManager.onCreateDialog(i, bundle);
        }
        Log.w("ContactEditorActivity", "Unknown dialog requested, id: " + i + ", args: " + bundle);
        return null;
    }

    @Override // com.android.contacts.util.DialogManager.DialogShowingViewActivity
    public DialogManager getDialogManager() {
        return this.mDialogManager;
    }

    @Override // com.android.contacts.activities.AppCompatTransactionSafeActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("photo_mode", this.mPhotoMode);
        bundle.putInt("action_bar_title", this.mActionBarTitleResId);
        Uri uri = this.mPhotoUri;
        if (uri == null) {
            uri = Uri.EMPTY;
        }
        bundle.putString("photo_uri", uri.toString());
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (this.mPhotoSelectionHandler == null) {
            this.mPhotoSelectionHandler = (EditorPhotoSelectionHandler) getPhotoSelectionHandler();
        }
        if (this.mPhotoSelectionHandler.handlePhotoActivityResult(i, i2, intent)) {
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        ContactEditor contactEditor = this.mFragment;
        if (contactEditor != null) {
            contactEditor.revert();
        }
    }

    public void changePhoto(int i) {
        this.mPhotoMode = i;
        if (isSafeToCommitTransactions()) {
            PhotoSourceDialogFragment.show(this, this.mPhotoMode);
        }
    }

    public Toolbar getToolbar() {
        return this.mToolbar;
    }

    @Override // com.android.contacts.editor.PhotoSourceDialogFragment.Listener
    public void onRemovePictureChosen() {
        getPhotoSelectionHandler().getListener().onRemovePictureChosen();
    }

    @Override // com.android.contacts.editor.PhotoSourceDialogFragment.Listener
    public void onTakePhotoChosen() {
        getPhotoSelectionHandler().getListener().onTakePhotoChosen();
    }

    @Override // com.android.contacts.editor.PhotoSourceDialogFragment.Listener
    public void onPickFromGalleryChosen() {
        getPhotoSelectionHandler().getListener().onPickFromGalleryChosen();
    }

    private PhotoSelectionHandler getPhotoSelectionHandler() {
        if (this.mPhotoSelectionHandler == null) {
            this.mPhotoSelectionHandler = new EditorPhotoSelectionHandler(this.mPhotoMode);
        }
        return this.mPhotoSelectionHandler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ContactEditorFragment getEditorFragment() {
        return (ContactEditorFragment) this.mFragment;
    }
}
