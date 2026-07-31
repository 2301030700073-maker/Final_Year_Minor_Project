package com.fsck.k9.job;

import android.os.Build;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Logger$LogcatLogger;
import androidx.work.NetworkType;
import androidx.work.PeriodicWorkRequest;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.NetworkRequestCompat;
import coil3.memory.MemoryCache$Builder$$ExternalSyntheticLambda1;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.ranges.RangesKt;
import kotlin.time.Clock;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.BackgroundOps;
import net.thunderbird.core.preference.GeneralSettingsManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MailSyncWorkerManager {
    public final Clock clock;
    public final GeneralSettingsManager generalSettingsManager;
    public final Logger syncDebugLogger;
    public final WorkManagerImpl workManager;

    public MailSyncWorkerManager(WorkManagerImpl workManagerImpl, Clock clock, Logger logger, GeneralSettingsManager generalSettingsManager) {
        this.workManager = workManagerImpl;
        this.clock = clock;
        this.syncDebugLogger = logger;
        this.generalSettingsManager = generalSettingsManager;
    }

    public final void scheduleMailSync(LegacyAccountDto legacyAccountDto) {
        legacyAccountDto.getClass();
        String str = legacyAccountDto.uuid;
        if (((DefaultGeneralSettingsManager) this.generalSettingsManager).getConfig().network.backgroundOps == BackgroundOps.NEVER) {
            return;
        }
        int automaticCheckIntervalMinutes = legacyAccountDto.getAutomaticCheckIntervalMinutes();
        Long valueOf = automaticCheckIntervalMinutes <= -1 ? null : Long.valueOf(automaticCheckIntervalMinutes);
        if (valueOf != null) {
            long longValue = valueOf.longValue();
            Log.v("Scheduling mail sync worker for %s", legacyAccountDto);
            Log.v("  sync interval: %d minutes", Long.valueOf(longValue));
            MailSyncWorkerManager$$ExternalSyntheticLambda0 mailSyncWorkerManager$$ExternalSyntheticLambda0 = new MailSyncWorkerManager$$ExternalSyntheticLambda0(legacyAccountDto, 0);
            Logger logger = this.syncDebugLogger;
            logger.info(null, null, mailSyncWorkerManager$$ExternalSyntheticLambda0);
            logger.info(null, null, new MemoryCache$Builder$$ExternalSyntheticLambda1(1, longValue));
            Constraints constraints = new Constraints(new NetworkRequestCompat(null), NetworkType.CONNECTED, false, false, false, true, -1L, -1L, Build.VERSION.SDK_INT >= 24 ? CollectionsKt.toSet(new LinkedHashSet()) : EmptySet.INSTANCE);
            long lastSyncTime = legacyAccountDto.getLastSyncTime();
            Log.v("  last sync time: %tc", Long.valueOf(lastSyncTime));
            logger.info(null, null, new MemoryCache$Builder$$ExternalSyntheticLambda1(2, lastSyncTime));
            long epochMilliseconds = this.clock.now().toEpochMilliseconds();
            long j = (60000 * longValue) + lastSyncTime;
            long j2 = (lastSyncTime > epochMilliseconds || j <= epochMilliseconds) ? 0L : j - epochMilliseconds;
            Log.v("  initial delay: %d ms", Long.valueOf(j2));
            logger.info(null, null, new MemoryCache$Builder$$ExternalSyntheticLambda1(3, j2));
            Pair[] pairArr = {new Pair("accountUuid", str)};
            Data.Builder builder = new Data.Builder(0);
            Pair pair = pairArr[0];
            builder.put(pair.second, (String) pair.first);
            Data m823build = builder.m823build();
            TimeUnit timeUnit = TimeUnit.MINUTES;
            timeUnit.getClass();
            PeriodicWorkRequest.Builder builder2 = new PeriodicWorkRequest.Builder(MailSyncWorker.class);
            WorkSpec workSpec = (WorkSpec) builder2.workSpec;
            long millis = timeUnit.toMillis(longValue);
            workSpec.getClass();
            String str2 = WorkSpec.TAG;
            if (millis < 900000) {
                Logger$LogcatLogger.get().warning(str2, "Interval duration lesser than minimum allowed value; Changed to 900000");
            }
            long j3 = millis >= 900000 ? millis : 900000L;
            long j4 = millis < 900000 ? 900000L : millis;
            if (j3 < 900000) {
                Logger$LogcatLogger.get().warning(str2, "Interval duration lesser than minimum allowed value; Changed to 900000");
            }
            workSpec.intervalDuration = j3 < 900000 ? 900000L : j3;
            if (j4 < 300000) {
                Logger$LogcatLogger.get().warning(str2, "Flex duration lesser than minimum allowed value; Changed to 300000");
            }
            if (j4 > workSpec.intervalDuration) {
                Logger$LogcatLogger.get().warning(str2, "Flex duration greater than interval duration; Changed to " + j3);
            }
            workSpec.flexDuration = RangesKt.coerceIn(j4, 300000L, workSpec.intervalDuration);
            PeriodicWorkRequest.Builder builder3 = (PeriodicWorkRequest.Builder) ((PeriodicWorkRequest.Builder) builder2.setInitialDelay(j2, TimeUnit.MILLISECONDS)).setBackoffCriteria(BackoffPolicy.EXPONENTIAL);
            ((WorkSpec) builder3.workSpec).constraints = constraints;
            ((WorkSpec) builder3.workSpec).input = m823build;
            ((Set) builder3.tags).add("MailSync");
            new WorkContinuationImpl(this.workManager, CameraDevices$CC.m("MailSync:", str), ExistingWorkPolicy.REPLACE, Collections.singletonList((PeriodicWorkRequest) builder3.build()), 0).enqueue();
        }
    }
}
