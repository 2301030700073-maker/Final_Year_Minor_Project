package org.schabi.newpipe.util;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SortedList;
import com.nononsenseapps.filepicker.FilePickerActivity;
import com.nononsenseapps.filepicker.FilePickerFragment;
import java.io.File;
import okio.Options;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class FilePickerActivityHelper extends FilePickerActivity {
    public CustomFilePickerFragment currentFragment;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class CustomFilePickerFragment extends FilePickerFragment {
        @Override // com.nononsenseapps.filepicker.FilePickerFragment
        public final boolean isItemVisible(File file) {
            if (file.isDirectory() && file.isHidden()) {
                return true;
            }
            return super.isItemVisible(file);
        }

        @Override // com.nononsenseapps.filepicker.AbstractFilePickerFragment
        public final void onClickOk(View view) {
            if (this.mode != 3 || !this.mEditTextFileName.getText().toString().isEmpty()) {
                super.onClickOk(view);
                return;
            }
            Toast toast = this.mToast;
            if (toast != null) {
                toast.cancel();
            }
            Toast makeText = Toast.makeText(getActivity(), R.string.file_name_empty_error, 0);
            this.mToast = makeText;
            makeText.show();
        }

        @Override // com.nononsenseapps.filepicker.AbstractFilePickerFragment
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            RecyclerView.ViewHolder onCreateViewHolder = super.onCreateViewHolder(viewGroup, i);
            View findViewById = onCreateViewHolder.itemView.findViewById(android.R.id.text1);
            if (findViewById instanceof TextView) {
                ((TextView) findViewById).setTextSize(0, getResources().getDimension(R.dimen.file_picker_items_text_size));
            }
            return onCreateViewHolder;
        }

        @Override // com.nononsenseapps.filepicker.AbstractFilePickerFragment
        public final void onLoadFinished(FilePickerFragment.AnonymousClass1 anonymousClass1, SortedList sortedList) {
            super.onLoadFinished(anonymousClass1, sortedList);
            this.layoutManager.scrollToPosition(0);
        }
    }

    public FilePickerActivityHelper() {
        this.startPath = null;
        this.mode = 0;
        this.allowCreateDir = false;
        this.allowMultiple = false;
        this.allowExistingFile = true;
        this.singleClick = false;
    }

    public static boolean isOwnFileUri(Context context, Uri uri) {
        if (uri.getAuthority() == null) {
            return false;
        }
        return uri.getAuthority().startsWith(context.getPackageName());
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        File externalStorageDirectory;
        CustomFilePickerFragment customFilePickerFragment = this.currentFragment;
        File file = (File) customFilePickerFragment.mCurrentPath;
        if (customFilePickerFragment.getArguments() == null) {
            externalStorageDirectory = Environment.getExternalStorageDirectory();
        } else {
            String string = customFilePickerFragment.getArguments().getString("KEY_START_PATH", "/");
            externalStorageDirectory = string.contains(Environment.getExternalStorageDirectory().getPath()) ? Environment.getExternalStorageDirectory() : new File(string);
        }
        if (FilePickerFragment.compareFiles(file, externalStorageDirectory) == 0 || FilePickerFragment.compareFiles((File) customFilePickerFragment.mCurrentPath, new File("/")) == 0) {
            super.onBackPressed();
        } else {
            CustomFilePickerFragment customFilePickerFragment2 = this.currentFragment;
            customFilePickerFragment2.goToDir(customFilePickerFragment2.getParent(customFilePickerFragment2.mCurrentPath));
        }
    }

    @Override // com.nononsenseapps.filepicker.FilePickerActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        if (Options.Companion.isLightThemeSelected(this)) {
            setTheme(R.style.FilePickerThemeLight);
        } else {
            setTheme(R.style.FilePickerThemeDark);
        }
        super.onCreate(bundle);
    }
}
