package app.k9mail.feature.widget.unread;

import android.os.Bundle;
import androidx.compose.runtime.GapPending$keyMap$2;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.FragmentManagerImpl;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import com.fsck.k9.R;
import com.fsck.k9.ui.base.BaseActivity;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.Logger;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnreadWidgetConfigurationActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Lazy logger$delegate = ResultKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new GapPending$keyMap$2(4, this));

    @Override // com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setLayout(R.layout.activity_unread_widget_configuration);
        setTitle(R.string.unread_widget_select_account);
        Bundle extras = getIntent().getExtras();
        int i = extras != null ? extras.getInt("appWidgetId", 0) : 0;
        if (i == 0) {
            Sink$CC.error$default((Logger) this.logger$delegate.getValue(), "UnreadWidgetConfigurationActivity", null, new UtilsKt$$ExternalSyntheticLambda0(18), 2);
            finish();
        } else if (bundle == null) {
            FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
            supportFragmentManager.getClass();
            BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
            UnreadWidgetConfigurationFragment unreadWidgetConfigurationFragment = new UnreadWidgetConfigurationFragment();
            unreadWidgetConfigurationFragment.setArguments(Util.bundleOf(new Pair("app_widget_id", Integer.valueOf(i))));
            backStackRecord.doAddOp(R.id.fragment_container, unreadWidgetConfigurationFragment, null, 1);
            backStackRecord.commit();
        }
    }
}
