package org.acra.startup;

import android.util.Log;
import coil3.ComponentRegistry;
import com.grack.nanojson.JsonBuilder;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okio.Path;
import org.acra.ACRA;
import org.acra.ACRAConstants;
import org.acra.ErrorReporter;
import org.acra.config.CoreConfiguration;
import org.acra.file.ReportLocator;
import org.acra.plugins.ServicePluginLoader;
import org.acra.util.ProcessFinisher;
import org.schabi.newpipe.App;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class StartupProcessorExecutor$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ComponentRegistry.Builder f$0;
    public final /* synthetic */ Calendar f$1;
    public final /* synthetic */ boolean f$2;

    public /* synthetic */ StartupProcessorExecutor$$ExternalSyntheticLambda0(ComponentRegistry.Builder builder, Calendar calendar, boolean z, int i) {
        this.$r8$classId = i;
        this.f$0 = builder;
        this.f$1 = calendar;
        this.f$2 = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        int i2 = 1;
        boolean z = this.f$2;
        Calendar calendar = this.f$1;
        ComponentRegistry.Builder builder = this.f$0;
        switch (i) {
            case 0:
                new Thread(new StartupProcessorExecutor$$ExternalSyntheticLambda0(builder, calendar, z, i2)).start();
                break;
            default:
                ReportLocator reportLocator = (ReportLocator) builder.lazyFetcherFactories;
                JsonBuilder jsonBuilder = (JsonBuilder) builder.keyers;
                App app = (App) builder.interceptors;
                CoreConfiguration coreConfiguration = (CoreConfiguration) builder.mappers;
                boolean z2 = false;
                File dir = reportLocator.context.getDir("ACRA-unapproved", 0);
                dir.getClass();
                File[] listFiles = dir.listFiles();
                if (listFiles == null) {
                    listFiles = new File[0];
                }
                ArrayList arrayList = new ArrayList(listFiles.length);
                for (File file : listFiles) {
                    arrayList.add(new Report(file, false));
                }
                File[] approvedReports = reportLocator.getApprovedReports();
                ArrayList arrayList2 = new ArrayList(approvedReports.length);
                for (File file2 : approvedReports) {
                    arrayList2.add(new Report(file2, true));
                }
                ArrayList plus = CollectionsKt.plus((Collection) arrayList, (List) arrayList2);
                Iterator it = ((ServicePluginLoader) coreConfiguration.getPluginLoader()).loadEnabled(coreConfiguration, StartupProcessor.class).iterator();
                while (it.hasNext()) {
                    ((StartupProcessor) it.next()).processReports(app, coreConfiguration, plus);
                }
                Iterator it2 = plus.iterator();
                while (it2.hasNext()) {
                    Report report = (Report) it2.next();
                    Path.Companion companion = (Path.Companion) builder.lazyDecoderFactories;
                    File file3 = report.file;
                    String name = file3.getName();
                    name.getClass();
                    companion.getClass();
                    String replace$default = StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(name, ".stacktrace", ""), ACRAConstants.SILENT_SUFFIX, "");
                    Calendar calendar2 = Calendar.getInstance();
                    try {
                        Date parse = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ", Locale.ENGLISH).parse(replace$default);
                        parse.getClass();
                        calendar2.setTime(parse);
                    } catch (ParseException unused) {
                    }
                    calendar2.getClass();
                    if (calendar2.before(calendar)) {
                        if (report.delete) {
                            if (!file3.delete()) {
                                ErrorReporter errorReporter = ACRA.errorReporter;
                                Log.w("ACRA", "Could not delete report " + file3);
                            }
                        } else if (report.approved) {
                            z2 = true;
                        } else if (report.approve && z && new ProcessFinisher(app, coreConfiguration).performInteractions(file3)) {
                            jsonBuilder.scheduleReports(file3);
                        }
                    }
                }
                if (z2 && z) {
                    jsonBuilder.scheduleReports(null);
                    break;
                }
                break;
        }
    }
}
