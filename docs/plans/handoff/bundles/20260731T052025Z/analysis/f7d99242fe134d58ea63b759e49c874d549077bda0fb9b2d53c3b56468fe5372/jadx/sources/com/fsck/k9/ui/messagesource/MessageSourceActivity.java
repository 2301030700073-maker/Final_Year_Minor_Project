package com.fsck.k9.ui.messagesource;

import android.os.Bundle;
import android.view.MenuItem;
import androidx.appcompat.app.ActionBar;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.work.OperationKt;
import app.k9mail.legacy.message.controller.MessageReference;
import com.fsck.k9.R;
import com.fsck.k9.ui.base.BaseActivity;
import kotlin.Pair;
import kotlin.math.MathKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageSourceActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setLayout(R.layout.message_view_headers_activity);
        setTitle(R.string.show_headers_action);
        ActionBar supportActionBar = getSupportActionBar();
        supportActionBar.getClass();
        supportActionBar.setDisplayHomeAsUpEnabled(true);
        if (bundle == null) {
            String stringExtra = getIntent().getStringExtra("reference");
            if (stringExtra == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing argument reference");
                return;
            }
            MessageReference parse = MathKt.parse(stringExtra);
            if (parse == null) {
                Regex$$ExternalSyntheticBUOutline0.m((Object) "Invalid message reference: ".concat(stringExtra));
                return;
            }
            MessageHeadersFragment messageHeadersFragment = new MessageHeadersFragment();
            OperationKt.withArguments(messageHeadersFragment, new Pair("reference", parse.toIdentityString()));
            FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
            supportFragmentManager.getClass();
            BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
            backStackRecord.doAddOp(R.id.message_headers_fragment, messageHeadersFragment, null, 1);
            backStackRecord.commit();
        }
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }
}
