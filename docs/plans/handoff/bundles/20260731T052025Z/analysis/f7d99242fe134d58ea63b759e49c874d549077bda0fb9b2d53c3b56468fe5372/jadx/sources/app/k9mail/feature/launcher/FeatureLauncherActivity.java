package app.k9mail.feature.launcher;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.fragment.app.Fragment;
import app.k9mail.feature.migration.qrcode.QrCodeModuleKt$$ExternalSyntheticLambda1;
import com.fsck.k9.ui.base.BaseActivity;
import net.openid.appauth.JsonUtil$Field;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FeatureLauncherActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ComponentActivityKt.setContent$default(this, Companion.f29lambda$969187936);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Companion {

        /* renamed from: lambda$-969187936, reason: not valid java name */
        public static final ComposableLambdaImpl f29lambda$969187936 = new ComposableLambdaImpl(-969187936, new QrCodeModuleKt$$ExternalSyntheticLambda1(15), false);

        public static Intent getIntent(Context context, JsonUtil$Field jsonUtil$Field) {
            context.getClass();
            jsonUtil$Field.getClass();
            Intent intent = new Intent(context, (Class<?>) FeatureLauncherActivity.class);
            intent.setData((Uri) jsonUtil$Field.key);
            Integer num = (Integer) jsonUtil$Field.defaultValue;
            if (num != null) {
                intent.setFlags(num.intValue());
            }
            return intent;
        }

        public static void launch(Context context, JsonUtil$Field jsonUtil$Field) {
            context.getClass();
            jsonUtil$Field.getClass();
            context.startActivity(getIntent(context, jsonUtil$Field));
        }

        public static void launch(AppCompatActivity appCompatActivity, JsonUtil$Field jsonUtil$Field, Fragment.AnonymousClass10 anonymousClass10) {
            anonymousClass10.getClass();
            anonymousClass10.launch(getIntent(appCompatActivity, jsonUtil$Field));
        }
    }
}
