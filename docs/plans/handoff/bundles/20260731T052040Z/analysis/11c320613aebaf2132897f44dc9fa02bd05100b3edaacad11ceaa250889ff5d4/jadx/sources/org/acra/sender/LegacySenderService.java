package org.acra.sender;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.work.WorkerKt$$ExternalSyntheticLambda2;
import kotlin.io.CloseableKt;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.config.CoreConfiguration;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LegacySenderService extends Service {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        intent.getClass();
        return null;
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        intent.getClass();
        if (!intent.hasExtra("acraConfig")) {
            ErrorReporter errorReporter = ACRA.errorReporter;
            return 3;
        }
        CoreConfiguration coreConfiguration = (CoreConfiguration) CloseableKt.deserialize(intent.getStringExtra("acraConfig"));
        if (coreConfiguration == null) {
            return 3;
        }
        new Thread(new WorkerKt$$ExternalSyntheticLambda2(14, this, coreConfiguration, intent)).start();
        return 3;
    }
}
