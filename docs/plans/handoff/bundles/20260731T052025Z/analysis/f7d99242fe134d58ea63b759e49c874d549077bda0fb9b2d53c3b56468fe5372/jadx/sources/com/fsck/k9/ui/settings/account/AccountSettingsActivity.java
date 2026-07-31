package com.fsck.k9.ui.settings.account;

import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.SearchView;
import androidx.compose.runtime.GapPending$keyMap$2;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.ViewModelKt;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceScreen;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import com.fsck.k9.Preferences$getAccountsFlow$1;
import com.fsck.k9.R;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.ui.base.BaseActivity;
import com.fsck.k9.ui.base.BaseActivity$sam$androidx_lifecycle_Observer$0;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountSettingsActivity extends BaseActivity implements PreferenceFragmentCompat.OnPreferenceStartScreenCallback {
    public static final /* synthetic */ int $r8$clinit = 0;
    public AccountSelectionSpinner accountSpinner;
    public String accountUuid;
    public final Lazy accountViewModel$delegate = ResultKt.lazy(LazyThreadSafetyMode.NONE, new GapPending$keyMap$2(10, this));
    public boolean fragmentAdded;
    public String startScreenKey;

    @Override // com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setLayout(R.layout.activity_account_settings);
        View findViewById = findViewById(R.id.accountSpinner);
        findViewById.getClass();
        this.accountSpinner = (AccountSelectionSpinner) findViewById;
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar == null) {
            DBUtil$$ExternalSyntheticBUOutline0.m("getSupportActionBar() == null");
            return;
        }
        int i = 1;
        supportActionBar.setDisplayHomeAsUpEnabled(true);
        supportActionBar.setDisplayShowTitleEnabled();
        AccountSelectionSpinner accountSelectionSpinner = this.accountSpinner;
        Continuation continuation = null;
        if (accountSelectionSpinner == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountSpinner");
            throw null;
        }
        accountSelectionSpinner.setOnItemSelectedListener(new SearchView.AnonymousClass9(3, this));
        Lazy lazy = this.accountViewModel$delegate;
        IntOffsetKt.observeNotNull(((AccountSettingsViewModel) lazy.getValue()).accounts, this, new AccountSettingsActivity$$ExternalSyntheticLambda0(this, i));
        String stringExtra = getIntent().getStringExtra("accountUuid");
        int i2 = 0;
        if (stringExtra == null) {
            Log.d("Invalid arguments", new Object[0]);
            finish();
            return;
        }
        this.accountUuid = stringExtra;
        this.startScreenKey = getIntent().getStringExtra("startScreen");
        AccountSettingsViewModel accountSettingsViewModel = (AccountSettingsViewModel) lazy.getValue();
        String str = this.accountUuid;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountUuid");
            throw null;
        }
        accountSettingsViewModel.getClass();
        if (!Intrinsics.areEqual(accountSettingsViewModel.accountUuid, str)) {
            accountSettingsViewModel.accountUuid = str;
            JobKt.launch$default(ViewModelKt.getViewModelScope(accountSettingsViewModel), null, null, new Preferences$getAccountsFlow$1(accountSettingsViewModel, str, continuation, 11), 3);
        }
        accountSettingsViewModel.accountLiveData.observe(this, new BaseActivity$sam$androidx_lifecycle_Observer$0(9, new AccountSettingsActivity$$ExternalSyntheticLambda0(this, i2)));
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        getOnBackPressedDispatcher().onBackPressed();
        return true;
    }

    @Override // androidx.preference.PreferenceFragmentCompat.OnPreferenceStartScreenCallback
    public final void onPreferenceStartScreen(PreferenceFragmentCompat preferenceFragmentCompat, PreferenceScreen preferenceScreen) {
        preferenceFragmentCompat.getClass();
        FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
        int i = AccountSettingsFragment.$r8$clinit;
        String str = this.accountUuid;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountUuid");
            throw null;
        }
        backStackRecord.replace(R.id.accountSettingsContainer, OAuthBearer.create(str, preferenceScreen.mKey), null);
        backStackRecord.addToBackStack(null);
        backStackRecord.commit();
    }

    @Override // android.app.Activity
    public final void setTitle(CharSequence charSequence) {
        charSequence.getClass();
        super.setTitle(charSequence);
        AccountSelectionSpinner accountSelectionSpinner = this.accountSpinner;
        if (accountSelectionSpinner != null) {
            accountSelectionSpinner.setTitle(charSequence);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("accountSpinner");
            throw null;
        }
    }
}
