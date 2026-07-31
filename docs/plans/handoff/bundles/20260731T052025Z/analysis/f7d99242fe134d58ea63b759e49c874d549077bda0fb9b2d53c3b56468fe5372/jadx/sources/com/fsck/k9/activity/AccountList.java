package com.fsck.k9.activity;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.lifecycle.ViewModelKt;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import app.k9mail.feature.settings.p000import.ui.AppInfo;
import com.fsck.k9.R;
import com.fsck.k9.resources.K9CoreResourceProvider;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.JobKt;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.feature.mail.account.api.BaseAccount;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AccountList extends BaseListActivity implements AdapterView.OnItemClickListener {
    public final Lazy coreResourceProvider$delegate;
    public final Lazy generalSettingsManager$delegate;

    public AccountList() {
        final int i = 0;
        Function0 function0 = new Function0(this) { // from class: com.fsck.k9.activity.AccountList$special$$inlined$inject$default$1
            public final /* synthetic */ AccountList $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                AccountList accountList = this.$this_inject;
                switch (i2) {
                    case 0:
                        return AtomicFU.getKoinScope(accountList).resolve(Reflection.getOrCreateKotlinClass(K9CoreResourceProvider.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(accountList).resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null);
                }
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.coreResourceProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, function0);
        final int i2 = 1;
        this.generalSettingsManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.activity.AccountList$special$$inlined$inject$default$1
            public final /* synthetic */ AccountList $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                AccountList accountList = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(accountList).resolve(Reflection.getOrCreateKotlinClass(K9CoreResourceProvider.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(accountList).resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null);
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$loadAccounts(com.fsck.k9.activity.AccountList r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            kotlin.Lazy r0 = r7.coreResourceProvider$delegate
            boolean r1 = r8 instanceof com.fsck.k9.activity.AccountList$loadAccounts$1
            if (r1 == 0) goto L15
            r1 = r8
            com.fsck.k9.activity.AccountList$loadAccounts$1 r1 = (com.fsck.k9.activity.AccountList$loadAccounts$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.label = r2
            goto L1a
        L15:
            com.fsck.k9.activity.AccountList$loadAccounts$1 r1 = new com.fsck.k9.activity.AccountList$loadAccounts$1
            r1.<init>(r7, r8)
        L1a:
            java.lang.Object r8 = r1.result
            int r2 = r1.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L2e
            if (r2 != r4) goto L28
            kotlin.ResultKt.throwOnFailure(r8)
            goto L47
        L28:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r7)
            return r3
        L2e:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.scheduling.DefaultScheduler r8 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r8 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            com.fsck.k9.Core$restoreNotifications$1 r2 = new com.fsck.k9.Core$restoreNotifications$1
            r5 = 2
            r6 = 4
            r2.<init>(r5, r3, r6)
            r1.label = r4
            java.lang.Object r8 = kotlinx.coroutines.JobKt.withContext(r8, r2, r1)
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r8 != r1) goto L47
            return r1
        L47:
            java.util.List r8 = (java.util.List) r8
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            kotlin.Lazy r2 = r7.generalSettingsManager$delegate
            java.lang.Object r2 = r2.getValue()
            net.thunderbird.core.preference.GeneralSettingsManager r2 = (net.thunderbird.core.preference.GeneralSettingsManager) r2
            com.fsck.k9.preferences.DefaultGeneralSettingsManager r2 = (com.fsck.k9.preferences.DefaultGeneralSettingsManager) r2
            net.thunderbird.core.preference.GeneralSettings r2 = r2.getConfig()
            net.thunderbird.core.preference.display.DisplaySettings r2 = r2.display
            net.thunderbird.core.preference.display.inboxSettings.DisplayInboxSettings r2 = r2.inboxSettings
            boolean r2 = r2.isShowUnifiedInbox
            if (r2 == 0) goto L92
            java.lang.Object r2 = r0.getValue()
            com.fsck.k9.resources.K9CoreResourceProvider r2 = (com.fsck.k9.resources.K9CoreResourceProvider) r2
            java.lang.String r2 = r2.searchUnifiedFoldersTitle()
            java.lang.Object r0 = r0.getValue()
            com.fsck.k9.resources.K9CoreResourceProvider r0 = (com.fsck.k9.resources.K9CoreResourceProvider) r0
            java.lang.String r0 = r0.searchUnifiedFoldersDetail()
            net.thunderbird.feature.search.legacy.LocalMessageSearch r3 = new net.thunderbird.feature.search.legacy.LocalMessageSearch
            r3.<init>()
            java.lang.String r4 = "unified_folders"
            r3.id = r4
            net.thunderbird.feature.search.legacy.api.MessageSearchField r4 = net.thunderbird.feature.search.legacy.api.MessageSearchField.INTEGRATE
            java.lang.String r5 = "1"
            net.thunderbird.feature.search.legacy.api.SearchAttribute r6 = net.thunderbird.feature.search.legacy.api.SearchAttribute.EQUALS
            r3.and(r4, r5, r6)
            net.thunderbird.feature.search.legacy.SearchAccount r4 = new net.thunderbird.feature.search.legacy.SearchAccount
            r4.<init>(r3, r2, r0)
            r1.add(r4)
        L92:
            r1.addAll(r8)
            android.widget.ListView r8 = r7.getListView()
            com.fsck.k9.activity.AccountList$AccountsAdapter r0 = new com.fsck.k9.activity.AccountList$AccountsAdapter
            r0.<init>(r7, r1)
            r8.setAdapter(r0)
            r8.invalidate()
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.activity.AccountList.access$loadAccounts(com.fsck.k9.activity.AccountList, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public abstract void onAccountSelected(BaseAccount baseAccount);

    @Override // com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setResult(0);
        setLayout(R.layout.account_list);
        ListView listView = getListView();
        listView.setOnItemClickListener(this);
        listView.setItemsCanFocus(false);
        JobKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new AccountList$onCreate$2(this, null, 0), 3);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        adapterView.getClass();
        view.getClass();
        Object itemAtPosition = adapterView.getItemAtPosition(i);
        itemAtPosition.getClass();
        onAccountSelected((BaseAccount) itemAtPosition);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AccountsAdapter extends ArrayAdapter {
        public final /* synthetic */ int $r8$classId = 1;
        public final Object this$0;

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class AccountViewHolder {
            public View chip;
            public MaterialTextView description;
            public MaterialTextView email;
        }

        public AccountsAdapter(Context context) {
            super(context, 0);
            this.this$0 = LayoutInflater.from(context);
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            switch (this.$r8$classId) {
                case 1:
                    return false;
                default:
                    return super.areAllItemsEnabled();
            }
        }

        public AppInfo getItemOrThrow(int i) {
            AppInfo appInfo = (AppInfo) getItem(i);
            if (appInfo != null) {
                return appInfo;
            }
            DBUtil$$ExternalSyntheticBUOutline0.m(i, " not found", "Item at position ");
            return null;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            int i2 = this.$r8$classId;
            Object obj = this.this$0;
            switch (i2) {
                case 0:
                    AccountList accountList = (AccountList) obj;
                    viewGroup.getClass();
                    BaseAccount baseAccount = (BaseAccount) getItem(i);
                    if (view == null) {
                        view = accountList.getLayoutInflater().inflate(R.layout.accounts_item, viewGroup, false);
                    }
                    Object tag = view.getTag();
                    AccountViewHolder accountViewHolder = tag instanceof AccountViewHolder ? (AccountViewHolder) tag : null;
                    if (accountViewHolder == null) {
                        accountViewHolder = new AccountViewHolder();
                        View findViewById = view.findViewById(R.id.description);
                        findViewById.getClass();
                        accountViewHolder.description = (MaterialTextView) findViewById;
                        View findViewById2 = view.findViewById(R.id.email);
                        findViewById2.getClass();
                        accountViewHolder.email = (MaterialTextView) findViewById2;
                        View findViewById3 = view.findViewById(R.id.chip);
                        findViewById3.getClass();
                        accountViewHolder.chip = findViewById3;
                        view.setTag(accountViewHolder);
                    }
                    View view2 = accountViewHolder.chip;
                    MaterialTextView materialTextView = accountViewHolder.email;
                    baseAccount.getClass();
                    String name = baseAccount.getName();
                    MaterialTextView materialTextView2 = accountViewHolder.description;
                    if (name != null) {
                        materialTextView2.setText(name);
                        materialTextView.setText(baseAccount.getEmail());
                        materialTextView.setVisibility(0);
                    } else {
                        materialTextView2.setText(baseAccount.getEmail());
                        materialTextView.setVisibility(8);
                    }
                    if (baseAccount instanceof LegacyAccountDto) {
                        view2.setBackgroundColor(((LegacyAccountDto) baseAccount).getChipColor());
                    } else {
                        Resources resources = accountList.getResources();
                        ThreadLocal threadLocal = ResourcesCompat.sTempTypedValue;
                        view2.setBackgroundColor(resources.getColor(R.color.account_list_item_chip_background, null));
                    }
                    view2.getBackground().setAlpha(255);
                    break;
                default:
                    viewGroup.getClass();
                    if (view == null) {
                        view = ((LayoutInflater) obj).inflate(R.layout.settings_import_pick_app_list_item, viewGroup, false);
                    }
                    TextView textView = (TextView) view.findViewById(R.id.settings_import_app_name);
                    View findViewById4 = view.findViewById(R.id.settings_import_app_note);
                    AppInfo itemOrThrow = getItemOrThrow(i);
                    boolean z = itemOrThrow.isImportSupported;
                    textView.setText(itemOrThrow.appName);
                    findViewById4.getClass();
                    findViewById4.setVisibility(z ? 8 : 0);
                    view.setEnabled(z);
                    break;
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            switch (this.$r8$classId) {
                case 1:
                    return getItemOrThrow(i).isImportSupported;
                default:
                    return super.isEnabled(i);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AccountsAdapter(AccountList accountList, ArrayList arrayList) {
            super(accountList, 0, arrayList);
            this.this$0 = accountList;
        }
    }
}
