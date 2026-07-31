package androidx.appcompat.app;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.arch.core.executor.ArchTaskExecutor$$ExternalSyntheticLambda0;
import androidx.core.app.NavUtils;
import androidx.profileinstaller.Encoding;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class AppCompatDelegate$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Context f$0;

    public /* synthetic */ AppCompatDelegate$$ExternalSyntheticLambda0(Context context, int i) {
        this.$r8$classId = i;
        this.f$0 = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Context context = this.f$0;
        switch (i) {
            case 0:
                if (Build.VERSION.SDK_INT >= 33) {
                    ComponentName componentName = new ComponentName(context, "androidx.appcompat.app.AppLocalesMetadataHolderService");
                    if (context.getPackageManager().getComponentEnabledSetting(componentName) != 1) {
                        if (AppCompatDelegate.getApplicationLocales().mImpl.isEmpty()) {
                            String readLocales = NavUtils.readLocales(context);
                            Object systemService = context.getSystemService("locale");
                            if (systemService != null) {
                                AppCompatDelegate.Api33Impl.localeManagerSetApplicationLocales(systemService, AppCompatDelegate.Api24Impl.localeListForLanguageTags(readLocales));
                            }
                        }
                        context.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
                    }
                }
                AppCompatDelegate.sIsFrameworkSyncChecked = true;
                break;
            case 1:
                AppCompatDelegate.syncRequestedAndStoredLocales(context);
                break;
            case 2:
                new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue()).execute(new AppCompatDelegate$$ExternalSyntheticLambda0(context, 3));
                break;
            case 3:
                Encoding.writeProfile(context, new ArchTaskExecutor$$ExternalSyntheticLambda0(1), Encoding.EMPTY_DIAGNOSTICS, false);
                break;
            default:
                Toast.makeText(context, R.string.error_report_notification_toast, 0).show();
                break;
        }
    }
}
