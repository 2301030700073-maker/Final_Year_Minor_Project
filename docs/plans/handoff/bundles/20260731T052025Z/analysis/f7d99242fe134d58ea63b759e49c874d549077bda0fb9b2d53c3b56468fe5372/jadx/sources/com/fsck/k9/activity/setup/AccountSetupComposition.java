package com.fsck.k9.activity.setup;

import android.os.Bundle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.GapPending$keyMap$2;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import com.fsck.k9.ui.base.BaseActivity;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import okhttp3.internal.http2.Http2Connection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountSetupComposition extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Lazy themeProvider$delegate = ResultKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new GapPending$keyMap$2(7, this));
    public final Lazy viewModel$delegate = ResultKt.lazy(LazyThreadSafetyMode.NONE, new Http2Connection.ReaderRunnable(4, this, new K9$$ExternalSyntheticLambda0(8, this)));

    @Override // com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ComponentActivityKt.setContent$default(this, new ComposableLambdaImpl(-316706620, new ComposerKt$$ExternalSyntheticLambda0(26, this), true));
    }
}
