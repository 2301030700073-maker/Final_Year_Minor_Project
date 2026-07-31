package com.nononsenseapps.filepicker;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.collection.ArraySetKt;
import androidx.collection.SparseArrayCompat;
import androidx.collection.internal.ContainerHelpersKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.LifecycleOwner;
import androidx.loader.app.LoaderManager;
import androidx.loader.app.LoaderManagerImpl;
import androidx.preference.Preference;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SortedList;
import com.google.android.material.textfield.TextInputLayout;
import com.nononsenseapps.filepicker.FilePickerFragment;
import java.io.File;
import java.lang.reflect.Modifier;
import java.util.HashSet;
import java.util.Iterator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AbstractFilePickerFragment<T> extends Fragment {
    public LinearLayoutManager layoutManager;
    public TextView mCurrentDirView;
    public EditText mEditTextFileName;
    public FilePickerActivity mListener;
    public RecyclerView recyclerView;
    public int mode = 0;
    public Object mCurrentPath = null;
    public boolean allowCreateDir = false;
    public boolean allowMultiple = false;
    public boolean allowExistingFile = true;
    public boolean singleClick = false;
    public FileItemAdapter mAdapter = null;
    public Toast mToast = null;
    public boolean isLoading = false;
    public View mNewFileButtonContainer = null;
    public View mRegularButtonContainer = null;
    public final HashSet mCheckedItems = new HashSet();
    public final HashSet mCheckedVisibleViewHolders = new HashSet();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class CheckableViewHolder extends DirViewHolder {
        public final CheckBox checkbox;

        public CheckableViewHolder(View view) {
            super(view);
            boolean z = AbstractFilePickerFragment.this.mode == 3;
            CheckBox checkBox = (CheckBox) view.findViewById(R.id.checkbox);
            this.checkbox = checkBox;
            checkBox.setVisibility((z || AbstractFilePickerFragment.this.singleClick) ? 8 : 0);
            checkBox.setOnClickListener(new Preference.AnonymousClass1(this, 6));
        }

        @Override // com.nononsenseapps.filepicker.AbstractFilePickerFragment.DirViewHolder, android.view.View.OnClickListener
        public final void onClick(View view) {
            Object obj = this.file;
            AbstractFilePickerFragment abstractFilePickerFragment = AbstractFilePickerFragment.this;
            if (abstractFilePickerFragment.isDir(obj)) {
                abstractFilePickerFragment.goToDir(this.file);
                return;
            }
            if (3 == abstractFilePickerFragment.mode) {
                abstractFilePickerFragment.mEditTextFileName.setText(abstractFilePickerFragment.getName(this.file));
            }
            abstractFilePickerFragment.onClickCheckBox(this);
            if (abstractFilePickerFragment.singleClick) {
                abstractFilePickerFragment.onClickOk(view);
            }
        }

        @Override // com.nononsenseapps.filepicker.AbstractFilePickerFragment.DirViewHolder, android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            AbstractFilePickerFragment abstractFilePickerFragment = AbstractFilePickerFragment.this;
            if (3 == abstractFilePickerFragment.mode) {
                abstractFilePickerFragment.mEditTextFileName.setText(abstractFilePickerFragment.getName(this.file));
            }
            abstractFilePickerFragment.onClickCheckBox(this);
            return true;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class DirViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener, View.OnLongClickListener {
        public Object file;
        public final View icon;
        public final TextView text;

        public DirViewHolder(View view) {
            super(view);
            view.setOnClickListener(this);
            view.setOnLongClickListener(this);
            this.icon = view.findViewById(R.id.item_icon);
            this.text = (TextView) view.findViewById(android.R.id.text1);
        }

        public void onClick(View view) {
            Object obj = this.file;
            AbstractFilePickerFragment abstractFilePickerFragment = AbstractFilePickerFragment.this;
            if (abstractFilePickerFragment.isDir(obj)) {
                abstractFilePickerFragment.goToDir(this.file);
            }
        }

        public boolean onLongClick(View view) {
            return false;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class HeaderViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        public final TextView text;

        public HeaderViewHolder(View view) {
            super(view);
            view.setOnClickListener(this);
            this.text = (TextView) view.findViewById(android.R.id.text1);
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractFilePickerFragment abstractFilePickerFragment = AbstractFilePickerFragment.this;
            abstractFilePickerFragment.goToDir(abstractFilePickerFragment.getParent(abstractFilePickerFragment.mCurrentPath));
        }
    }

    public AbstractFilePickerFragment() {
        setRetainInstance(true);
    }

    public final void clearSelections() {
        HashSet hashSet = this.mCheckedVisibleViewHolders;
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((CheckableViewHolder) it.next()).checkbox.setChecked(false);
        }
        hashSet.clear();
        this.mCheckedItems.clear();
    }

    public abstract String getFullPath(Object obj);

    public abstract FilePickerFragment.AnonymousClass1 getLoader();

    public abstract String getName(Object obj);

    public abstract File getParent(Object obj);

    public abstract File getPath(String str);

    public abstract File getRoot();

    public final void goToDir(Object obj) {
        if (this.isLoading) {
            return;
        }
        this.mCheckedItems.clear();
        this.mCheckedVisibleViewHolders.clear();
        refresh(obj);
    }

    public boolean hasPermission(Object obj) {
        return true;
    }

    public final boolean isCheckable(Object obj) {
        boolean isDir = isDir(obj);
        int i = this.mode;
        return isDir ? (i == 1 && this.allowMultiple) || (i == 2 && this.allowMultiple) : i == 0 || i == 2 || this.allowExistingFile;
    }

    public abstract boolean isDir(Object obj);

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        super.onAttach(context);
        try {
            this.mListener = (FilePickerActivity) context;
        } catch (ClassCastException unused) {
            throw new ClassCastException(context.toString() + " must implement OnFilePickedListener");
        }
    }

    public final void onClickCheckBox(CheckableViewHolder checkableViewHolder) {
        Object obj = checkableViewHolder.file;
        CheckBox checkBox = checkableViewHolder.checkbox;
        HashSet hashSet = this.mCheckedItems;
        boolean contains = hashSet.contains(obj);
        HashSet hashSet2 = this.mCheckedVisibleViewHolders;
        if (contains) {
            checkBox.setChecked(false);
            hashSet.remove(checkableViewHolder.file);
            hashSet2.remove(checkableViewHolder);
        } else {
            if (!this.allowMultiple) {
                clearSelections();
            }
            checkBox.setChecked(true);
            hashSet.add(checkableViewHolder.file);
            hashSet2.add(checkableViewHolder);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x0027, code lost:
    
        if ((r7.hasNext() ? r7.next() : null) == null) goto L71;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClickOk(android.view.View r7) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nononsenseapps.filepicker.AbstractFilePickerFragment.onClickOk(android.view.View):void");
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(R.menu.picker_actions, menu);
        menu.findItem(R.id.nnf_action_createdir).setVisible(this.allowCreateDir);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        final int i = 0;
        View inflate = layoutInflater.inflate(R.layout.nnf_fragment_filepicker, viewGroup, false);
        Toolbar toolbar = (Toolbar) inflate.findViewById(R.id.nnf_picker_toolbar);
        if (toolbar != null) {
            ((AppCompatActivity) getActivity()).setSupportActionBar(toolbar);
        }
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(android.R.id.list);
        this.recyclerView = recyclerView;
        final int i2 = 1;
        recyclerView.setHasFixedSize(true);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        this.layoutManager = linearLayoutManager;
        this.recyclerView.setLayoutManager(linearLayoutManager);
        RecyclerView recyclerView2 = this.recyclerView;
        TypedArray obtainStyledAttributes = getActivity().obtainStyledAttributes(new int[]{R.attr.nnf_list_item_divider});
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        if (drawable != null) {
            DividerItemDecoration dividerItemDecoration = new DividerItemDecoration();
            dividerItemDecoration.mDivider = drawable;
            recyclerView2.addItemDecoration(dividerItemDecoration);
        }
        FileItemAdapter fileItemAdapter = new FileItemAdapter(this);
        this.mAdapter = fileItemAdapter;
        this.recyclerView.setAdapter(fileItemAdapter);
        inflate.findViewById(R.id.nnf_button_cancel).setOnClickListener(new View.OnClickListener(this) { // from class: com.nononsenseapps.filepicker.AbstractFilePickerFragment.1
            public final /* synthetic */ AbstractFilePickerFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i3 = i;
                AbstractFilePickerFragment abstractFilePickerFragment = this.this$0;
                switch (i3) {
                    case 0:
                        FilePickerActivity filePickerActivity = abstractFilePickerFragment.mListener;
                        if (filePickerActivity != null) {
                            filePickerActivity.setResult(0);
                            filePickerActivity.finish();
                            break;
                        }
                        break;
                    case 1:
                        abstractFilePickerFragment.onClickOk(view);
                        break;
                    default:
                        abstractFilePickerFragment.onClickOk(view);
                        break;
                }
            }
        });
        inflate.findViewById(R.id.nnf_button_ok).setOnClickListener(new View.OnClickListener(this) { // from class: com.nononsenseapps.filepicker.AbstractFilePickerFragment.1
            public final /* synthetic */ AbstractFilePickerFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i3 = i2;
                AbstractFilePickerFragment abstractFilePickerFragment = this.this$0;
                switch (i3) {
                    case 0:
                        FilePickerActivity filePickerActivity = abstractFilePickerFragment.mListener;
                        if (filePickerActivity != null) {
                            filePickerActivity.setResult(0);
                            filePickerActivity.finish();
                            break;
                        }
                        break;
                    case 1:
                        abstractFilePickerFragment.onClickOk(view);
                        break;
                    default:
                        abstractFilePickerFragment.onClickOk(view);
                        break;
                }
            }
        });
        final int i3 = 2;
        inflate.findViewById(R.id.nnf_button_ok_newfile).setOnClickListener(new View.OnClickListener(this) { // from class: com.nononsenseapps.filepicker.AbstractFilePickerFragment.1
            public final /* synthetic */ AbstractFilePickerFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i32 = i3;
                AbstractFilePickerFragment abstractFilePickerFragment = this.this$0;
                switch (i32) {
                    case 0:
                        FilePickerActivity filePickerActivity = abstractFilePickerFragment.mListener;
                        if (filePickerActivity != null) {
                            filePickerActivity.setResult(0);
                            filePickerActivity.finish();
                            break;
                        }
                        break;
                    case 1:
                        abstractFilePickerFragment.onClickOk(view);
                        break;
                    default:
                        abstractFilePickerFragment.onClickOk(view);
                        break;
                }
            }
        });
        this.mNewFileButtonContainer = inflate.findViewById(R.id.nnf_newfile_button_container);
        this.mRegularButtonContainer = inflate.findViewById(R.id.nnf_button_container);
        EditText editText = (EditText) inflate.findViewById(R.id.nnf_text_filename);
        this.mEditTextFileName = editText;
        editText.addTextChangedListener(new TextInputLayout.AnonymousClass1(this, i3));
        TextView textView = (TextView) inflate.findViewById(R.id.nnf_current_dir);
        this.mCurrentDirView = textView;
        Object obj = this.mCurrentPath;
        if (obj != null && textView != null) {
            textView.setText(getFullPath(obj));
        }
        return inflate;
    }

    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return i != 0 ? i != 2 ? new DirViewHolder(LayoutInflater.from(getActivity()).inflate(R.layout.nnf_filepicker_listitem_dir, viewGroup, false)) : new CheckableViewHolder(LayoutInflater.from(getActivity()).inflate(R.layout.nnf_filepicker_listitem_checkable, viewGroup, false)) : new HeaderViewHolder(LayoutInflater.from(getActivity()).inflate(R.layout.nnf_filepicker_listitem_dir, viewGroup, false));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        this.mListener = null;
    }

    public void onLoadFinished(FilePickerFragment.AnonymousClass1 anonymousClass1, SortedList sortedList) {
        this.isLoading = false;
        this.mCheckedItems.clear();
        this.mCheckedVisibleViewHolders.clear();
        FileItemAdapter fileItemAdapter = this.mAdapter;
        fileItemAdapter.mList = sortedList;
        fileItemAdapter.notifyDataSetChanged();
        TextView textView = this.mCurrentDirView;
        if (textView != null) {
            textView.setText(getFullPath(this.mCurrentPath));
        }
        LoaderManagerImpl.LoaderViewModel loaderViewModel = LoaderManager.getInstance(this).mLoaderViewModel;
        boolean z = loaderViewModel.mCreatingLoader;
        SparseArrayCompat sparseArrayCompat = loaderViewModel.mLoaders;
        if (z) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Called while creating a loader");
            return;
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("destroyLoader must be called on the main thread");
            return;
        }
        LoaderManagerImpl.LoaderInfo loaderInfo = (LoaderManagerImpl.LoaderInfo) sparseArrayCompat.get(0);
        if (loaderInfo != null) {
            loaderInfo.destroy(true);
            int binarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.size, 0, sparseArrayCompat.keys);
            if (binarySearch >= 0) {
                Object[] objArr = sparseArrayCompat.values;
                Object obj = objArr[binarySearch];
                Object obj2 = ArraySetKt.DELETED$1;
                if (obj != obj2) {
                    objArr[binarySearch] = obj2;
                    sparseArrayCompat.garbage = true;
                }
            }
        }
    }

    public abstract void onNewFolder(String str);

    @Override // androidx.fragment.app.Fragment
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (R.id.nnf_action_createdir != menuItem.getItemId()) {
            return false;
        }
        FragmentActivity activity = getActivity();
        if (!(activity instanceof AppCompatActivity)) {
            return true;
        }
        FragmentManagerImpl supportFragmentManager = ((AppCompatActivity) activity).getSupportFragmentManager();
        NewFolderFragment newFolderFragment = new NewFolderFragment();
        newFolderFragment.listener = this;
        newFolderFragment.show(supportFragmentManager, "new_folder_fragment");
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putString("KEY_CURRENT_PATH", this.mCurrentPath.toString());
        bundle.putBoolean("KEY_ALLOW_MULTIPLE", this.allowMultiple);
        bundle.putBoolean("KEY_ALLOW_EXISTING_FILE", this.allowExistingFile);
        bundle.putBoolean("KEY_ALLOW_DIR_CREATE", this.allowCreateDir);
        bundle.putBoolean("KEY_SINGLE_CLICK", this.singleClick);
        bundle.putInt("KEY_MODE", this.mode);
        super.onSaveInstanceState(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        String string;
        if (this.mCurrentPath == null) {
            if (bundle != null) {
                this.mode = bundle.getInt("KEY_MODE", this.mode);
                this.allowCreateDir = bundle.getBoolean("KEY_ALLOW_DIR_CREATE", this.allowCreateDir);
                this.allowMultiple = bundle.getBoolean("KEY_ALLOW_MULTIPLE", this.allowMultiple);
                this.allowExistingFile = bundle.getBoolean("KEY_ALLOW_EXISTING_FILE", this.allowExistingFile);
                this.singleClick = bundle.getBoolean("KEY_SINGLE_CLICK", this.singleClick);
                String string2 = bundle.getString("KEY_CURRENT_PATH");
                if (string2 != null) {
                    this.mCurrentPath = getPath(string2.trim());
                }
            } else if (getArguments() != null) {
                this.mode = getArguments().getInt("KEY_MODE", this.mode);
                this.allowCreateDir = getArguments().getBoolean("KEY_ALLOW_DIR_CREATE", this.allowCreateDir);
                this.allowMultiple = getArguments().getBoolean("KEY_ALLOW_MULTIPLE", this.allowMultiple);
                this.allowExistingFile = getArguments().getBoolean("KEY_ALLOW_EXISTING_FILE", this.allowExistingFile);
                this.singleClick = getArguments().getBoolean("KEY_SINGLE_CLICK", this.singleClick);
                if (getArguments().containsKey("KEY_START_PATH") && (string = getArguments().getString("KEY_START_PATH")) != null) {
                    File path = getPath(string.trim());
                    if (isDir(path)) {
                        this.mCurrentPath = path;
                    } else {
                        this.mCurrentPath = getParent(path);
                        this.mEditTextFileName.setText(getName(path));
                    }
                }
            }
        }
        boolean z = this.mode == 3;
        this.mNewFileButtonContainer.setVisibility(z ? 0 : 8);
        this.mRegularButtonContainer.setVisibility(z ? 8 : 0);
        if (!z && this.singleClick) {
            getActivity().findViewById(R.id.nnf_button_ok).setVisibility(8);
        }
        if (this.mCurrentPath == null) {
            this.mCurrentPath = getRoot();
        }
        refresh(this.mCurrentPath);
    }

    public final void refresh(Object obj) {
        if (!hasPermission(obj)) {
            handlePermission(obj);
            return;
        }
        this.mCurrentPath = obj;
        this.isLoading = true;
        LoaderManagerImpl loaderManager = LoaderManager.getInstance(this);
        LoaderManagerImpl.LoaderViewModel loaderViewModel = loaderManager.mLoaderViewModel;
        boolean z = loaderViewModel.mCreatingLoader;
        SparseArrayCompat sparseArrayCompat = loaderViewModel.mLoaders;
        if (z) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Called while creating a loader");
            return;
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("restartLoader must be called on the main thread");
            return;
        }
        LoaderManagerImpl.LoaderInfo loaderInfo = (LoaderManagerImpl.LoaderInfo) sparseArrayCompat.get(0);
        FilePickerFragment.AnonymousClass1 destroy = loaderInfo != null ? loaderInfo.destroy(false) : null;
        try {
            loaderViewModel.mCreatingLoader = true;
            FilePickerFragment.AnonymousClass1 loader = getLoader();
            if (FilePickerFragment.AnonymousClass1.class.isMemberClass() && !Modifier.isStatic(FilePickerFragment.AnonymousClass1.class.getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + loader);
            }
            LoaderManagerImpl.LoaderInfo loaderInfo2 = new LoaderManagerImpl.LoaderInfo(loader, destroy);
            sparseArrayCompat.put(0, loaderInfo2);
            loaderViewModel.mCreatingLoader = false;
            LifecycleOwner lifecycleOwner = loaderManager.mLifecycleOwner;
            LoaderManagerImpl.LoaderObserver loaderObserver = new LoaderManagerImpl.LoaderObserver(loaderInfo2.mLoader, this);
            loaderInfo2.observe(lifecycleOwner, loaderObserver);
            LoaderManagerImpl.LoaderObserver loaderObserver2 = loaderInfo2.mObserver;
            if (loaderObserver2 != null) {
                loaderInfo2.removeObserver(loaderObserver2);
            }
            loaderInfo2.mLifecycleOwner = lifecycleOwner;
            loaderInfo2.mObserver = loaderObserver;
        } catch (Throwable th) {
            loaderViewModel.mCreatingLoader = false;
            throw th;
        }
    }

    public abstract Uri toUri(Object obj);

    public void handlePermission(Object obj) {
    }

    public /* bridge */ void onLoadFinished(FilePickerFragment.AnonymousClass1 anonymousClass1, Object obj) {
        onLoadFinished(anonymousClass1, (SortedList) obj);
    }
}
