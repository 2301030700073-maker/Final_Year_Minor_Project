package com.nononsenseapps.filepicker;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManagerImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.R;
import org.schabi.newpipe.util.FilePickerActivityHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class FilePickerActivity extends AppCompatActivity {
    public boolean allowCreateDir;
    public boolean allowExistingFile;
    public boolean allowMultiple;
    public int mode;
    public boolean singleClick;
    public String startPath;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.nnf_activity_filepicker);
        Intent intent = getIntent();
        if (intent != null) {
            this.startPath = intent.getStringExtra("nononsense.intent.START_PATH");
            this.mode = intent.getIntExtra("nononsense.intent.MODE", this.mode);
            this.allowCreateDir = intent.getBooleanExtra("nononsense.intent.ALLOW_CREATE_DIR", this.allowCreateDir);
            this.allowMultiple = intent.getBooleanExtra("android.intent.extra.ALLOW_MULTIPLE", this.allowMultiple);
            this.allowExistingFile = intent.getBooleanExtra("android.intent.extra.ALLOW_EXISTING_FILE", this.allowExistingFile);
            this.singleClick = intent.getBooleanExtra("nononsense.intent.SINGLE_CLICK", this.singleClick);
        }
        setResult(0);
    }

    public final void onFilePicked(Uri uri) {
        Intent intent = new Intent();
        intent.setData(uri);
        setResult(-1, intent);
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
        Fragment findFragmentByTag = supportFragmentManager.findFragmentByTag("filepicker_fragment");
        if (findFragmentByTag == null) {
            String str = this.startPath;
            int i = this.mode;
            boolean z = this.allowMultiple;
            boolean z2 = this.allowCreateDir;
            boolean z3 = this.allowExistingFile;
            boolean z4 = this.singleClick;
            FilePickerActivityHelper filePickerActivityHelper = (FilePickerActivityHelper) this;
            FilePickerActivityHelper.CustomFilePickerFragment customFilePickerFragment = new FilePickerActivityHelper.CustomFilePickerFragment();
            if (str == null) {
                str = Environment.getExternalStorageDirectory().getPath();
            }
            if (i == 3 && z) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("MODE_NEW_FILE does not support 'allowMultiple'");
                return;
            }
            if (z4 && z) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("'singleClick' can not be used with 'allowMultiple'");
                return;
            }
            Bundle arguments = customFilePickerFragment.getArguments();
            if (arguments == null) {
                arguments = new Bundle();
            }
            if (str != null) {
                arguments.putString("KEY_START_PATH", str);
            }
            arguments.putBoolean("KEY_ALLOW_DIR_CREATE", z2);
            arguments.putBoolean("KEY_ALLOW_MULTIPLE", z);
            arguments.putBoolean("KEY_ALLOW_EXISTING_FILE", z3);
            arguments.putBoolean("KEY_SINGLE_CLICK", z4);
            arguments.putInt("KEY_MODE", i);
            customFilePickerFragment.setArguments(arguments);
            filePickerActivityHelper.currentFragment = customFilePickerFragment;
            findFragmentByTag = customFilePickerFragment;
        }
        BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
        backStackRecord.replace(R.id.fragment, findFragmentByTag, "filepicker_fragment");
        backStackRecord.commit();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putString("WORKAROUND_FOR_BUG_19917_KEY", "WORKAROUND_FOR_BUG_19917_VALUE");
        super.onSaveInstanceState(bundle);
    }
}
