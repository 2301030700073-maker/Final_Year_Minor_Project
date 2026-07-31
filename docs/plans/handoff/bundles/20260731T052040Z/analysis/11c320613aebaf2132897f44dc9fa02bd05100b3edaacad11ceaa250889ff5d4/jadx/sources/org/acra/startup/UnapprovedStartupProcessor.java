package org.acra.startup;

import android.content.Context;
import androidx.compose.ui.Modifier;
import androidx.viewpager.widget.ViewPager;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import org.acra.config.CoreConfiguration;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class UnapprovedStartupProcessor implements StartupProcessor {
    @Override // org.acra.startup.StartupProcessor, org.acra.plugins.Plugin
    public boolean enabled(CoreConfiguration coreConfiguration) {
        coreConfiguration.getClass();
        return true;
    }

    @Override // org.acra.startup.StartupProcessor
    public void processReports(Context context, CoreConfiguration coreConfiguration, List<Report> list) {
        context.getClass();
        coreConfiguration.getClass();
        list.getClass();
        if (coreConfiguration.getDeleteUnapprovedReportsOnApplicationStart()) {
            ArrayList arrayList = new ArrayList();
            for (Report report : list) {
                if (!report.approved) {
                    arrayList.add(report);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            if (arrayList.size() > 1) {
                CollectionsKt__MutableCollectionsJVMKt.sortWith(new ViewPager.AnonymousClass1(14), arrayList);
            }
            int size = arrayList.size() - 1;
            for (int i = 0; i < size; i++) {
                ((Report) arrayList.get(i)).delete = true;
            }
            ((Report) Modifier.CC.m(1, arrayList)).approve = true;
        }
    }
}
