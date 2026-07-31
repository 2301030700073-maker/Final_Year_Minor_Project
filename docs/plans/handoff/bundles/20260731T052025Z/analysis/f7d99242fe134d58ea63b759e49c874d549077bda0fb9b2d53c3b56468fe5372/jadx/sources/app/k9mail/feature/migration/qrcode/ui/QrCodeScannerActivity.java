package app.k9mail.feature.migration.qrcode.ui;

import android.os.Bundle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.GapPending$keyMap$2;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import com.fsck.k9.ui.base.BaseActivity;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class QrCodeScannerActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Lazy themeProvider$delegate = ResultKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new GapPending$keyMap$2(2, this));

    @Override // com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ComponentActivityKt.setContent$default(this, new ComposableLambdaImpl(1800946888, new QrCodeScannerActivity$$ExternalSyntheticLambda0(this, 0), true));
    }
}
