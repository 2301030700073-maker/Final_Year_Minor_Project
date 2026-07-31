package com.fsck.k9.ui.managefolders;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.RecyclerView;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import com.fsck.k9.Preferences;
import com.fsck.k9.R;
import com.fsck.k9.ui.messageview.MessageViewFragment$onCreate$1;
import com.google.zxing.BinaryBitmap;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda11;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import net.thunderbird.core.android.account.LegacyAccountDto;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http2.Http2Connection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ManageFoldersFragment extends Fragment {
    public LegacyAccountDto account;
    public final Lazy folderIconProvider$delegate;
    public final Lazy folderNameFormatter$delegate;
    public ItemAdapter itemAdapter;
    public final Lazy messagingController$delegate;
    public final Lazy preferences$delegate;
    public final Lazy viewModel$delegate = ResultKt.lazy(LazyThreadSafetyMode.NONE, new Http2Connection.ReaderRunnable(10, this, new ManageFoldersFragment$special$$inlined$inject$default$1(this, 3)));

    public ManageFoldersFragment() {
        ManageFoldersFragment$special$$inlined$inject$default$1 manageFoldersFragment$special$$inlined$inject$default$1 = new ManageFoldersFragment$special$$inlined$inject$default$1(this, 0);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.folderNameFormatter$delegate = ResultKt.lazy(lazyThreadSafetyMode, manageFoldersFragment$special$$inlined$inject$default$1);
        this.messagingController$delegate = ResultKt.lazy(lazyThreadSafetyMode, new ManageFoldersFragment$special$$inlined$inject$default$1(this, 1));
        this.preferences$delegate = ResultKt.lazy(lazyThreadSafetyMode, new ManageFoldersFragment$special$$inlined$inject$default$1(this, 2));
        this.folderIconProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Http2Connection.ReaderRunnable(9, this, new K9$$ExternalSyntheticLambda0(16, this)));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle bundle2 = this.mArguments;
        if (bundle2 == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing arguments");
            return;
        }
        String string = bundle2.getString("account");
        if (string == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing argument 'account'");
            return;
        }
        LegacyAccountDto account = ((Preferences) this.preferences$delegate.getValue()).getAccount(string);
        if (account != null) {
            this.account = account;
        } else {
            Regex$$ExternalSyntheticBUOutline0.m((Object) "Missing account: ".concat(string));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        layoutInflater.getClass();
        return layoutInflater.inflate(R.layout.fragment_manage_folders, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        requireActivity().addMenuProvider(new FragmentManager.AnonymousClass2(3, this), getViewLifecycleOwner());
        ItemAdapter itemAdapter = new ItemAdapter();
        this.itemAdapter = itemAdapter;
        itemAdapter.itemFilter.filterPredicate = new MessageViewFragment$onCreate$1(2, this, ManageFoldersFragment.class, "folderListFilter", "folderListFilter(Lcom/fsck/k9/ui/managefolders/FolderListItem;Ljava/lang/CharSequence;)Z", 0, 6);
        ItemAdapter itemAdapter2 = this.itemAdapter;
        if (itemAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("itemAdapter");
            throw null;
        }
        FastAdapter fastAdapter = new FastAdapter();
        ArrayList arrayList = fastAdapter.adapters;
        int i = 0;
        arrayList.add(0, itemAdapter2);
        BinaryBitmap binaryBitmap = itemAdapter2.itemList;
        if (ImageAnalysis$$ExternalSyntheticLambda3.m(binaryBitmap)) {
            binaryBitmap.binarizer = fastAdapter;
        }
        itemAdapter2.fastAdapter = fastAdapter;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            int i2 = i + 1;
            if (i < 0) {
                IntOffsetKt.throwIndexOverflow();
                throw null;
            }
            ((ItemAdapter) next).order = i;
            i = i2;
        }
        fastAdapter.cacheSizes();
        fastAdapter.setHasStableIds(true);
        fastAdapter.onClickListener = new CoilImageKt$$ExternalSyntheticLambda11(8, this);
        ((RecyclerView) requireView().findViewById(R.id.folderList)).setAdapter(fastAdapter);
        ManageFoldersViewModel manageFoldersViewModel = (ManageFoldersViewModel) this.viewModel$delegate.getValue();
        LegacyAccountDto legacyAccountDto = this.account;
        if (legacyAccountDto == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        manageFoldersViewModel.getClass();
        IntOffsetKt.observeNotNull(ViewModelKt.asLiveData$default(manageFoldersViewModel.folderRepository.getDisplayFoldersFlow(legacyAccountDto, true)), this, new AbstractMap$$ExternalSyntheticLambda0(11, this));
    }
}
