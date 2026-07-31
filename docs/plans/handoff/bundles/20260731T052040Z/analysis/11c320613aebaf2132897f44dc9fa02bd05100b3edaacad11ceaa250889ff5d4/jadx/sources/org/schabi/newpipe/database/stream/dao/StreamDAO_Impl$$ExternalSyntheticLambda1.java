package org.schabi.newpipe.database.stream.dao;

import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkTagDao_Impl$$ExternalSyntheticLambda1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function1;
import org.schabi.newpipe.database.stream.model.StreamEntity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class StreamDAO_Impl$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ StreamDAO_Impl f$0;
    public final /* synthetic */ List f$1;

    public /* synthetic */ StreamDAO_Impl$$ExternalSyntheticLambda1(StreamDAO_Impl streamDAO_Impl, List list, int i) {
        this.$r8$classId = i;
        this.f$0 = streamDAO_Impl;
        this.f$1 = list;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        List list = this.f$1;
        StreamDAO_Impl streamDAO_Impl = this.f$0;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                list.getClass();
                RoomDatabase roomDatabase = streamDAO_Impl.__db;
                List list2 = (List) DBUtil.performBlocking(roomDatabase, false, true, new StreamDAO_Impl$$ExternalSyntheticLambda1(streamDAO_Impl, list, 1));
                ArrayList arrayList = new ArrayList(list.size());
                Iterator it = list2.iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    int i3 = i2 + 1;
                    long longValue = ((Number) it.next()).longValue();
                    StreamEntity streamEntity = (StreamEntity) list.get(i2);
                    if (longValue != -1) {
                        arrayList.add(Long.valueOf(longValue));
                        streamEntity.setUid(longValue);
                    } else {
                        streamDAO_Impl.compareAndUpdateStream(streamEntity);
                        arrayList.add(Long.valueOf(streamEntity.getUid()));
                    }
                    i2 = i3;
                }
                DBUtil.performBlocking(roomDatabase, false, true, new WorkTagDao_Impl$$ExternalSyntheticLambda1(streamDAO_Impl, list, 13));
                return arrayList;
            default:
                sQLiteConnection.getClass();
                return streamDAO_Impl.__insertAdapterOfStreamEntity_1.insertAndReturnIdsList(sQLiteConnection, list);
        }
    }
}
