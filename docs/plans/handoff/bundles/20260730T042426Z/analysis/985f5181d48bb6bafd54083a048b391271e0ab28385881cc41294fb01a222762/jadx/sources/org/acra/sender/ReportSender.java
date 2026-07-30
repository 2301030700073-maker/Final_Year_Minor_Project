package org.acra.sender;

import android.content.Context;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.acra.ACRA;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;

/* compiled from: ReportSender.kt */
/* loaded from: classes2.dex */
public interface ReportSender {
    public static final Companion Companion = Companion.$$INSTANCE;

    boolean requiresForeground();

    void send(Context context, CrashReportData crashReportData);

    void send(Context context, CrashReportData crashReportData, Bundle bundle);

    /* compiled from: ReportSender.kt */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        public final List loadSenders(Context context, CoreConfiguration config) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(config, "config");
            if (ACRA.DEV_LOGGING) {
                ACRA.log.d(ACRA.LOG_TAG, "Using PluginLoader to find ReportSender factories");
            }
            List loadEnabled = config.getPluginLoader().loadEnabled(config, ReportSenderFactory.class);
            if (ACRA.DEV_LOGGING) {
                ACRA.log.d(ACRA.LOG_TAG, "reportSenderFactories : " + loadEnabled);
            }
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(loadEnabled, 10));
            Iterator it = loadEnabled.iterator();
            while (it.hasNext()) {
                ReportSender create = ((ReportSenderFactory) it.next()).create(context, config);
                if (ACRA.DEV_LOGGING) {
                    ACRA.log.d(ACRA.LOG_TAG, "Adding reportSender : " + create);
                }
                arrayList.add(create);
            }
            return arrayList;
        }

        private Companion() {
        }

        public final boolean hasForegroundSenders(Context context, CoreConfiguration config) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(config, "config");
            List loadSenders = loadSenders(context, config);
            if ((loadSenders instanceof Collection) && loadSenders.isEmpty()) {
                return false;
            }
            Iterator it = loadSenders.iterator();
            while (it.hasNext()) {
                if (((ReportSender) it.next()).requiresForeground()) {
                    return true;
                }
            }
            return false;
        }

        public final boolean hasBackgroundSenders(Context context, CoreConfiguration config) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(config, "config");
            List loadSenders = loadSenders(context, config);
            if ((loadSenders instanceof Collection) && loadSenders.isEmpty()) {
                return false;
            }
            Iterator it = loadSenders.iterator();
            while (it.hasNext()) {
                if (!((ReportSender) it.next()).requiresForeground()) {
                    return true;
                }
            }
            return false;
        }
    }

    /* compiled from: ReportSender.kt */
    /* renamed from: org.acra.sender.ReportSender$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static void $default$send(ReportSender reportSender, Context context, CrashReportData errorContent, Bundle extras) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(errorContent, "errorContent");
            Intrinsics.checkNotNullParameter(extras, "extras");
            reportSender.send(context, errorContent);
        }

        public static boolean $default$requiresForeground(ReportSender reportSender) {
            return false;
        }
    }
}
