package com.fsck.k9.ui.choosefolder;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.SearchView;
import androidx.compose.material3.SnackbarHostKt$animatedScale$1$1;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.RecyclerView;
import app.k9mail.legacy.ui.folder.FolderNameFormatter;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import com.fsck.k9.Preferences;
import com.fsck.k9.R;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.controller.MessagingController$$ExternalSyntheticLambda8;
import com.fsck.k9.ui.base.BaseActivity;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.JobKt;
import net.thunderbird.core.android.account.LegacyAccountDto;
import okhttp3.ConnectionPool;
import okhttp3.Handshake;
import okhttp3.internal.http2.Http2Connection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ChooseFolderActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public LegacyAccountDto account;
    public Action action;
    public Long currentFolderId;
    public final Lazy folderIconProvider$delegate;
    public final Lazy folderNameFormatter$delegate;
    public ItemAdapter itemAdapter;
    public String messageReference;
    public final Lazy messagingController$delegate;
    public final Lazy preferences$delegate;
    public RecyclerView recyclerView;
    public Long scrollToFolderId;
    public final Lazy viewModel$delegate;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Action {
        public static final /* synthetic */ Action[] $VALUES;
        public static final Action CHOOSE;
        public static final Action COPY;
        public static final Action MOVE;

        static {
            Action action = new Action("MOVE", 0);
            MOVE = action;
            Action action2 = new Action("COPY", 1);
            COPY = action2;
            Action action3 = new Action("CHOOSE", 2);
            CHOOSE = action3;
            $VALUES = new Action[]{action, action2, action3};
        }

        public static Action valueOf(String str) {
            return (Action) Enum.valueOf(Action.class, str);
        }

        public static Action[] values() {
            return (Action[]) $VALUES.clone();
        }
    }

    public ChooseFolderActivity() {
        final int i = 3;
        this.viewModel$delegate = ResultKt.lazy(LazyThreadSafetyMode.NONE, new Function0(this) { // from class: com.fsck.k9.ui.choosefolder.ChooseFolderActivity$special$$inlined$inject$default$1
            public final /* synthetic */ ChooseFolderActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                ChooseFolderActivity chooseFolderActivity = this.$this_inject;
                switch (i2) {
                    case 0:
                        return AtomicFU.getKoinScope(chooseFolderActivity).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(chooseFolderActivity).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(chooseFolderActivity).resolve(Reflection.getOrCreateKotlinClass(FolderNameFormatter.class), null, null);
                    default:
                        return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(ChooseFolderViewModel.class), chooseFolderActivity.getViewModelStore(), chooseFolderActivity.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(chooseFolderActivity), null);
                }
            }
        });
        final int i2 = 0;
        Function0 function0 = new Function0(this) { // from class: com.fsck.k9.ui.choosefolder.ChooseFolderActivity$special$$inlined$inject$default$1
            public final /* synthetic */ ChooseFolderActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                ChooseFolderActivity chooseFolderActivity = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(chooseFolderActivity).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(chooseFolderActivity).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(chooseFolderActivity).resolve(Reflection.getOrCreateKotlinClass(FolderNameFormatter.class), null, null);
                    default:
                        return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(ChooseFolderViewModel.class), chooseFolderActivity.getViewModelStore(), chooseFolderActivity.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(chooseFolderActivity), null);
                }
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.preferences$delegate = ResultKt.lazy(lazyThreadSafetyMode, function0);
        final int i3 = 1;
        this.messagingController$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.ui.choosefolder.ChooseFolderActivity$special$$inlined$inject$default$1
            public final /* synthetic */ ChooseFolderActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                ChooseFolderActivity chooseFolderActivity = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(chooseFolderActivity).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(chooseFolderActivity).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(chooseFolderActivity).resolve(Reflection.getOrCreateKotlinClass(FolderNameFormatter.class), null, null);
                    default:
                        return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(ChooseFolderViewModel.class), chooseFolderActivity.getViewModelStore(), chooseFolderActivity.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(chooseFolderActivity), null);
                }
            }
        });
        final int i4 = 2;
        this.folderNameFormatter$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.ui.choosefolder.ChooseFolderActivity$special$$inlined$inject$default$1
            public final /* synthetic */ ChooseFolderActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i4;
                ChooseFolderActivity chooseFolderActivity = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(chooseFolderActivity).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(chooseFolderActivity).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(chooseFolderActivity).resolve(Reflection.getOrCreateKotlinClass(FolderNameFormatter.class), null, null);
                    default:
                        return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(ChooseFolderViewModel.class), chooseFolderActivity.getViewModelStore(), chooseFolderActivity.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(chooseFolderActivity), null);
                }
            }
        });
        this.folderIconProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Http2Connection.ReaderRunnable(6, this, new K9$$ExternalSyntheticLambda0(14, this)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0080  */
    @Override // com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCreate(android.os.Bundle r15) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.ui.choosefolder.ChooseFolderActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(R.menu.choose_folder_option, menu);
        View actionView = menu.findItem(R.id.filter_folders).getActionView();
        actionView.getClass();
        SearchView searchView = (SearchView) actionView;
        searchView.setMaxWidth(Integer.MAX_VALUE);
        searchView.setQueryHint(getString(R.string.folder_list_filter_hint));
        searchView.setOnQueryTextListener(new ConnectionPool(6, this));
        return true;
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            finish();
            return true;
        }
        if (itemId == R.id.toggle_hidden_folders) {
            boolean z = !menuItem.isChecked();
            ChooseFolderViewModel chooseFolderViewModel = (ChooseFolderViewModel) this.viewModel$delegate.getValue();
            LegacyAccountDto legacyAccountDto = this.account;
            if (legacyAccountDto == null) {
                Intrinsics.throwUninitializedPropertyAccessException("account");
                throw null;
            }
            chooseFolderViewModel.getClass();
            chooseFolderViewModel.isShowHiddenFolders = z;
            JobKt.launch$default(ViewModelKt.getViewModelScope(chooseFolderViewModel), null, null, new SnackbarHostKt$animatedScale$1$1(chooseFolderViewModel, legacyAccountDto, z, (Continuation) null), 3);
            return true;
        }
        if (itemId != R.id.list_folders) {
            return super.onOptionsItemSelected(menuItem);
        }
        MessagingController messagingController = (MessagingController) this.messagingController$delegate.getValue();
        LegacyAccountDto legacyAccountDto2 = this.account;
        if (legacyAccountDto2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        messagingController.getClass();
        messagingController.put("refreshFolderList", new MessagingController$$ExternalSyntheticLambda8(messagingController, legacyAccountDto2, 0));
        return true;
    }

    @Override // android.app.Activity
    public final boolean onPrepareOptionsMenu(Menu menu) {
        MenuItem findItem;
        if (menu != null && (findItem = menu.findItem(R.id.toggle_hidden_folders)) != null) {
            findItem.setChecked(((ChooseFolderViewModel) this.viewModel$delegate.getValue()).isShowHiddenFolders);
        }
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        Long l = this.scrollToFolderId;
        if (l != null) {
            bundle.putLong("scrollToFolderId", l.longValue());
        }
        bundle.putBoolean("showHiddenFolders", ((ChooseFolderViewModel) this.viewModel$delegate.getValue()).isShowHiddenFolders);
    }
}
