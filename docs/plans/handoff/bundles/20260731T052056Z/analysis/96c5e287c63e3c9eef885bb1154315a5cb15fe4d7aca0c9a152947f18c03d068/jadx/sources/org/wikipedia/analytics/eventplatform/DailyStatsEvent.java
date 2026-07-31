package org.wikipedia.analytics.eventplatform;

import android.content.Context;
import android.content.pm.PackageManager;
import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.WikipediaApp$$ExternalSyntheticLambda2;
import org.wikipedia.analytics.eventplatform.Event;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class DailyStatsEvent extends MobileAppsEventWithTemp {
    public final long app_install_age_in_days;
    public final List languages;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {null, null, null, null, null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new WikipediaApp$$ExternalSyntheticLambda2(23))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static long getInstallTime(Context context) {
            context.getClass();
            try {
                return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime;
            } catch (PackageManager.NameNotFoundException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                return 0L;
            }
        }

        public final KSerializer serializer() {
            return DailyStatsEvent$$serializer.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DailyStatsEvent(int i, Event.Meta meta, String str, boolean z, String str2, String str3, boolean z2, long j, List list) {
        super(i, meta, str, z, str2, str3, z2);
        if (192 != (i & 192)) {
            TuplesKt.throwMissingFieldException(i, 192, DailyStatsEvent$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.app_install_age_in_days = j;
        this.languages = list;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DailyStatsEvent(long j, List list) {
        super("android.daily_stats");
        list.getClass();
        this.app_install_age_in_days = j;
        this.languages = list;
    }
}
