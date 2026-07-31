package androidx.work.impl.workers;

import androidx.compose.ui.Modifier;
import androidx.room.util.DBUtil;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkNameDao_Impl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda3;
import androidx.work.impl.model.WorkTagDao_Impl;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class DiagnosticsWorkerKt {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("DiagnosticsWrkr");

    public static final String access$workSpecRows(WorkNameDao_Impl workNameDao_Impl, WorkTagDao_Impl workTagDao_Impl, SystemIdInfoDao_Impl systemIdInfoDao_Impl, List list) {
        StringBuilder sb = new StringBuilder("\n Id \t Class Name\t Job Id\t State\t Unique Name\t Tags\t");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            WorkSpec workSpec = (WorkSpec) it.next();
            WorkGenerationalId generationalId = RangesKt.generationalId(workSpec);
            String str = workSpec.id;
            systemIdInfoDao_Impl.getClass();
            String str2 = generationalId.workSpecId;
            int i = generationalId.generation;
            str2.getClass();
            SystemIdInfo systemIdInfo = (SystemIdInfo) DBUtil.performBlocking(systemIdInfoDao_Impl.__db, true, false, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(str2, i, 1));
            Integer valueOf = systemIdInfo != null ? Integer.valueOf(systemIdInfo.systemId) : null;
            workNameDao_Impl.getClass();
            str.getClass();
            String joinToString$default = CollectionsKt.joinToString$default((List) DBUtil.performBlocking(workNameDao_Impl.__db, true, false, new StringsKt__IndentKt$$ExternalSyntheticLambda0(str, 8)), ",", null, null, null, 62);
            workTagDao_Impl.getClass();
            String joinToString$default2 = CollectionsKt.joinToString$default((List) DBUtil.performBlocking(workTagDao_Impl.__db, true, false, new StringsKt__IndentKt$$ExternalSyntheticLambda0(str, 20)), ",", null, null, null, 62);
            StringBuilder m180m = Modifier.CC.m180m("\n", str, "\t ");
            m180m.append(workSpec.workerClassName);
            m180m.append("\t ");
            m180m.append(valueOf);
            m180m.append("\t ");
            m180m.append(workSpec.state.name());
            m180m.append("\t ");
            m180m.append(joinToString$default);
            m180m.append("\t ");
            m180m.append(joinToString$default2);
            m180m.append('\t');
            sb.append(m180m.toString());
        }
        return sb.toString();
    }
}
