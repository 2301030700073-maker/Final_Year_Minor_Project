package org.schabi.newpipe.database.feed.dao;

import android.content.Context;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.preference.PreferenceManager;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import kotlin.jvm.functions.Function1;
import okio.Path;
import org.schabi.newpipe.App;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.feed.model.FeedGroupEntity;
import org.schabi.newpipe.local.feed.FeedViewModel;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedDAO_Impl$$ExternalSyntheticLambda6 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ FeedDAO_Impl$$ExternalSyntheticLambda6(int i, long j, Object obj) {
        this.$r8$classId = i;
        this.f$1 = j;
        this.f$2 = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        int i = this.$r8$classId;
        FeedGroupEntity feedGroupEntity = null;
        long j = this.f$1;
        Object obj2 = this.f$2;
        switch (i) {
            case 0:
                FeedDAO_Impl feedDAO_Impl = (FeedDAO_Impl) obj2;
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("\n        SELECT MIN(lu.last_updated) FROM feed_last_updated lu\n\n        INNER JOIN feed_group_subscription_join fgs\n        ON fgs.subscription_id = lu.subscription_id AND fgs.group_id = ?\n        ");
                try {
                    prepare.bindLong(1, j);
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        Long valueOf = prepare.isNull(0) ? null : Long.valueOf(prepare.getLong(0));
                        Path.Companion companion = feedDAO_Impl.__converters;
                        arrayList.add(Path.Companion.offsetDateTimeFromTimestamp(valueOf));
                    }
                    prepare.close();
                    return arrayList;
                } finally {
                    prepare.close();
                }
            case 1:
                FeedGroupDAO_Impl feedGroupDAO_Impl = (FeedGroupDAO_Impl) obj2;
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                prepare = sQLiteConnection2.prepare("SELECT * FROM feed_group WHERE uid = ?");
                try {
                    prepare.bindLong(1, j);
                    int columnIndexOrThrow = DBUtil.getColumnIndexOrThrow(prepare, "uid");
                    int columnIndexOrThrow2 = DBUtil.getColumnIndexOrThrow(prepare, "name");
                    int columnIndexOrThrow3 = DBUtil.getColumnIndexOrThrow(prepare, "icon_id");
                    int columnIndexOrThrow4 = DBUtil.getColumnIndexOrThrow(prepare, "sort_order");
                    if (prepare.step()) {
                        long j2 = prepare.getLong(columnIndexOrThrow);
                        String text = prepare.getText(columnIndexOrThrow2);
                        int i2 = (int) prepare.getLong(columnIndexOrThrow3);
                        Path.Companion companion2 = feedGroupDAO_Impl.__converters;
                        feedGroupEntity = new FeedGroupEntity(j2, text, Path.Companion.feedGroupIconOf(i2), prepare.getLong(columnIndexOrThrow4));
                    }
                    return feedGroupEntity;
                } finally {
                    prepare.close();
                }
            default:
                Context context = (Context) obj2;
                ((CreationExtras) obj).getClass();
                App.Companion.getClass();
                App companion3 = App.Companion.getInstance();
                FeedViewModel.Companion companion4 = FeedViewModel.Companion;
                Context applicationContext = context.getApplicationContext();
                applicationContext.getClass();
                companion4.getClass();
                boolean z = PreferenceManager.getDefaultSharedPreferences(applicationContext).getBoolean(applicationContext.getString(R.string.feed_show_watched_items_key), true);
                Context applicationContext2 = context.getApplicationContext();
                applicationContext2.getClass();
                boolean z2 = PreferenceManager.getDefaultSharedPreferences(applicationContext2).getBoolean(applicationContext2.getString(R.string.feed_show_partially_watched_items_key), true);
                Context applicationContext3 = context.getApplicationContext();
                applicationContext3.getClass();
                return new FeedViewModel(companion3, this.f$1, z, z2, PreferenceManager.getDefaultSharedPreferences(applicationContext3).getBoolean(applicationContext3.getString(R.string.feed_show_future_items_key), true));
        }
    }
}
