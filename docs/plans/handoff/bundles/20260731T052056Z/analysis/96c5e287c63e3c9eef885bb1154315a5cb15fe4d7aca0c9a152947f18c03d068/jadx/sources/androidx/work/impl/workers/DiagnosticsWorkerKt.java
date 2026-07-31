package androidx.work.impl.workers;

import androidx.compose.animation.core.Animation;
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
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DiagnosticsWorkerKt {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("DiagnosticsWrkr");

    public static final String workSpecRows(WorkNameDao_Impl workNameDao_Impl, WorkTagDao_Impl workTagDao_Impl, SystemIdInfoDao_Impl systemIdInfoDao_Impl, List list) {
        StringBuilder sb = new StringBuilder("\n Id \t Class Name\t Job Id\t State\t Unique Name\t Tags\t");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            WorkSpec workSpec = (WorkSpec) it.next();
            WorkGenerationalId generationalId = ResultKt.generationalId(workSpec);
            String str = workSpec.id;
            systemIdInfoDao_Impl.getClass();
            String str2 = generationalId.workSpecId;
            int i = generationalId.generation;
            str2.getClass();
            SystemIdInfo systemIdInfo = (SystemIdInfo) ExceptionsKt.performBlocking(systemIdInfoDao_Impl.__db, true, false, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(str2, i, 1));
            Integer valueOf = systemIdInfo != null ? Integer.valueOf(systemIdInfo.systemId) : null;
            workNameDao_Impl.getClass();
            str.getClass();
            String joinToString$default = CollectionsKt.joinToString$default((List) ExceptionsKt.performBlocking(workNameDao_Impl.__db, true, false, new StringsKt__IndentKt$$ExternalSyntheticLambda0(11, str)), ",", null, null, null, 62);
            workTagDao_Impl.getClass();
            String joinToString$default2 = CollectionsKt.joinToString$default((List) ExceptionsKt.performBlocking(workTagDao_Impl.__db, true, false, new StringsKt__IndentKt$$ExternalSyntheticLambda0(23, str)), ",", null, null, null, 62);
            StringBuilder m21m = Animation.CC.m21m("\n", str, "\t ");
            m21m.append(workSpec.workerClassName);
            m21m.append("\t ");
            m21m.append(valueOf);
            m21m.append("\t ");
            m21m.append(workSpec.state.name());
            m21m.append("\t ");
            m21m.append(joinToString$default);
            m21m.append("\t ");
            m21m.append(joinToString$default2);
            m21m.append('\t');
            sb.append(m21m.toString());
        }
        return sb.toString();
    }
}
