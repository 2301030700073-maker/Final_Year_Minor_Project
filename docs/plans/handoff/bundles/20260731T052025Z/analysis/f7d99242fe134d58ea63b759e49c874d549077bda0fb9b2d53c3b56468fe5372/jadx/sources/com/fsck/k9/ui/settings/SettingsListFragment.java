package com.fsck.k9.ui.settings;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import com.fsck.k9.R;
import com.google.zxing.BinaryBitmap;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import com.mikepenz.fastadapter.drag.SimpleDragCallback;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda11;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.Http2Connection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsListFragment extends Fragment {
    public final Lazy fundingManager$delegate;
    public ItemAdapter itemAdapter;
    public final Lazy viewModel$delegate = ResultKt.lazy(LazyThreadSafetyMode.NONE, new Http2Connection.ReaderRunnable(22, this, new SettingsListFragment$special$$inlined$inject$default$1(this, 2)));

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SettingsListBuilder {
        public long itemId;
        public final ArrayList settingsList = new ArrayList();

        public final void addAction(int i, String str, int i2) {
            long j = this.itemId + 1;
            this.itemId = j;
            this.settingsList.add(new SettingsActionItem(i, i2, j, str));
        }

        public final void addSection(String str, Function1 function1) {
            long j = this.itemId + 1;
            this.itemId = j;
            this.settingsList.add(new SettingsDividerItem(j, str));
            function1.invoke(this);
        }
    }

    public SettingsListFragment() {
        SettingsListFragment$special$$inlined$inject$default$1 settingsListFragment$special$$inlined$inject$default$1 = new SettingsListFragment$special$$inlined$inject$default$1(this, 0);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.fundingManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, settingsListFragment$special$$inlined$inject$default$1);
        ResultKt.lazy(lazyThreadSafetyMode, new SettingsListFragment$special$$inlined$inject$default$1(this, 1));
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        layoutInflater.getClass();
        return layoutInflater.inflate(R.layout.fragment_settings_list, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        View findViewById = view.findViewById(R.id.settings_list);
        findViewById.getClass();
        RecyclerView recyclerView = (RecyclerView) findViewById;
        this.itemAdapter = new ItemAdapter();
        SimpleDragCallback simpleDragCallback = new SimpleDragCallback(3, 0);
        simpleDragCallback.from = -1;
        simpleDragCallback.to = -1;
        simpleDragCallback.callbackItemTouch = this;
        simpleDragCallback.isDragEnabled = true;
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(simpleDragCallback);
        ItemAdapter itemAdapter = this.itemAdapter;
        if (itemAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("itemAdapter");
            throw null;
        }
        FastAdapter fastAdapter = new FastAdapter();
        ArrayList arrayList = fastAdapter.adapters;
        arrayList.add(0, itemAdapter);
        BinaryBitmap binaryBitmap = itemAdapter.itemList;
        if (ImageAnalysis$$ExternalSyntheticLambda3.m(binaryBitmap)) {
            binaryBitmap.binarizer = fastAdapter;
        }
        itemAdapter.fastAdapter = fastAdapter;
        Iterator it = arrayList.iterator();
        int i = 0;
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
        fastAdapter.onClickListener = new CoilImageKt$$ExternalSyntheticLambda11(9, this);
        fastAdapter.addEventHook(new DragHandleTouchEvent(new DI$$ExternalSyntheticLambda0(23, recyclerView, itemTouchHelper)));
        recyclerView.setAdapter(fastAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        itemTouchHelper.attachToRecyclerView(recyclerView);
        IntOffsetKt.observeNotNull(((SettingsViewModel) this.viewModel$delegate.getValue()).accounts, this, new SettingsListFragment$$ExternalSyntheticLambda0(this, 0));
    }
}
