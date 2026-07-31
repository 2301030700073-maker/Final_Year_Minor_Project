package androidx.work.impl;

import androidx.room.util.DBUtil;
import androidx.sqlite.SQLite;
import androidx.work.impl.model.WorkTagDao_Impl;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.config.CoreConfiguration;
import org.acra.interaction.ReportInteraction;
import org.acra.util.ProcessFinisher;
import org.schabi.newpipe.App;
import org.schabi.newpipe.database.feed.dao.FeedGroupDAO_Impl;
import org.schabi.newpipe.database.feed.dao.FeedGroupDAO_Impl$$ExternalSyntheticLambda5;
import org.schabi.newpipe.database.feed.model.FeedGroupEntity;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.fragments.list.search.SearchFragment;
import org.schabi.newpipe.local.feed.FeedDatabaseManager;
import org.schabi.newpipe.local.subscription.FeedGroupIcon;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Processor$$ExternalSyntheticLambda0 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ Processor$$ExternalSyntheticLambda0(FeedDatabaseManager feedDatabaseManager, String str, FeedGroupIcon feedGroupIcon) {
        this.$r8$classId = 3;
        this.f$0 = feedDatabaseManager;
        this.f$2 = str;
        this.f$1 = feedGroupIcon;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.$r8$classId;
        int i2 = 0;
        Object obj = this.f$1;
        Object obj2 = this.f$2;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                String str = (String) obj2;
                WorkDatabase workDatabase = ((Processor) obj3).mWorkDatabase;
                WorkTagDao_Impl workTagDao = workDatabase.workTagDao();
                workTagDao.getClass();
                str.getClass();
                ((ArrayList) obj).addAll((List) DBUtil.performBlocking(workTagDao.__db, true, false, new StringsKt__IndentKt$$ExternalSyntheticLambda0(str, 20)));
                return workDatabase.workSpecDao().getWorkSpec(str);
            case 1:
                ProcessFinisher processFinisher = (ProcessFinisher) obj;
                ErrorReporter errorReporter = ACRA.errorReporter;
                return Boolean.valueOf(((ReportInteraction) obj3).performInteraction((App) processFinisher.context, (CoreConfiguration) processFinisher.config, (File) obj2));
            case 2:
                int i3 = SearchFragment.$r8$clinit;
                return SQLite.getIntentByLink(((SearchFragment) obj3).activity, (StreamingService) obj, (String) obj2);
            default:
                FeedGroupDAO_Impl feedGroupDAO_Impl = ((FeedDatabaseManager) obj3).feedGroupTable;
                FeedGroupEntity feedGroupEntity = new FeedGroupEntity(0L, (String) obj2, (FeedGroupIcon) obj, -1L);
                feedGroupDAO_Impl.getClass();
                return Long.valueOf(((Number) DBUtil.performBlocking(feedGroupDAO_Impl.__db, false, true, new FeedGroupDAO_Impl$$ExternalSyntheticLambda5(feedGroupDAO_Impl, feedGroupEntity, i2))).longValue());
        }
    }

    public /* synthetic */ Processor$$ExternalSyntheticLambda0(int i, Object obj, Object obj2, Object obj3) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }
}
