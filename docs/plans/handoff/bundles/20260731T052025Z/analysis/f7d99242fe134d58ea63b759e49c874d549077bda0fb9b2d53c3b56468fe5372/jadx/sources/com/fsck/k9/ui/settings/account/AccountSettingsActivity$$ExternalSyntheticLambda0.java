package com.fsck.k9.ui.settings.account;

import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.FragmentManagerImpl;
import com.fsck.k9.R;
import com.fsck.k9.sasl.OAuthBearer;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AccountSettingsActivity$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AccountSettingsActivity f$0;

    public /* synthetic */ AccountSettingsActivity$$ExternalSyntheticLambda0(AccountSettingsActivity accountSettingsActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = accountSettingsActivity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        AccountSettingsActivity accountSettingsActivity = this.f$0;
        switch (i) {
            case 0:
                LegacyAccountDto legacyAccountDto = (LegacyAccountDto) obj;
                if (legacyAccountDto == null) {
                    String str = accountSettingsActivity.accountUuid;
                    if (str == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("accountUuid");
                        throw null;
                    }
                    Log.w("Account with UUID %s not found", str);
                    accountSettingsActivity.finish();
                } else {
                    AccountSelectionSpinner accountSelectionSpinner = accountSettingsActivity.accountSpinner;
                    if (accountSelectionSpinner == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("accountSpinner");
                        throw null;
                    }
                    accountSelectionSpinner.setSelection(legacyAccountDto);
                    if (accountSettingsActivity.getSupportFragmentManager().findFragmentById(R.id.accountSettingsContainer) == null && !accountSettingsActivity.fragmentAdded) {
                        accountSettingsActivity.fragmentAdded = true;
                        FragmentManagerImpl supportFragmentManager = accountSettingsActivity.getSupportFragmentManager();
                        supportFragmentManager.getClass();
                        BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
                        int i2 = AccountSettingsFragment.$r8$clinit;
                        String str2 = accountSettingsActivity.accountUuid;
                        if (str2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("accountUuid");
                            throw null;
                        }
                        backStackRecord.doAddOp(R.id.accountSettingsContainer, OAuthBearer.create(str2, accountSettingsActivity.startScreenKey), null, 1);
                        backStackRecord.commit();
                    }
                }
                return unit;
            default:
                List<? extends LegacyAccountDto> list = (List) obj;
                int i3 = AccountSettingsActivity.$r8$clinit;
                list.getClass();
                AccountSelectionSpinner accountSelectionSpinner2 = accountSettingsActivity.accountSpinner;
                if (accountSelectionSpinner2 != null) {
                    accountSelectionSpinner2.setAccounts(list);
                    return unit;
                }
                Intrinsics.throwUninitializedPropertyAccessException("accountSpinner");
                throw null;
        }
    }
}
