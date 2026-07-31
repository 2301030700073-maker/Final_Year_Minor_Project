package app.k9mail.feature.widget.unread;

import android.content.Intent;
import android.os.Bundle;
import com.fsck.k9.R;
import com.fsck.k9.activity.AccountList;
import net.thunderbird.feature.mail.account.api.BaseAccount;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnreadWidgetChooseAccountActivity extends AccountList {
    @Override // com.fsck.k9.activity.AccountList
    public final void onAccountSelected(BaseAccount baseAccount) {
        Intent intent = new Intent();
        intent.putExtra("com.fsck.k9.ChooseAccount_account_uuid", baseAccount.getUuid());
        setResult(-1, intent);
        finish();
    }

    @Override // com.fsck.k9.activity.AccountList, com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.unread_widget_choose_account_title);
    }
}
