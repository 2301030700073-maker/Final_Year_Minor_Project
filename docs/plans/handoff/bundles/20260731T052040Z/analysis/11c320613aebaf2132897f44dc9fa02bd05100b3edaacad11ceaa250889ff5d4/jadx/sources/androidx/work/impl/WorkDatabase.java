package androidx.work.impl;

import androidx.room.RoomDatabase;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.PreferenceDao_Impl;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import androidx.work.impl.model.WorkNameDao_Impl;
import androidx.work.impl.model.WorkProgressDao_Impl;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTagDao_Impl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class WorkDatabase extends RoomDatabase {
    public abstract DependencyDao_Impl dependencyDao();

    public abstract PreferenceDao_Impl preferenceDao();

    public abstract SystemIdInfoDao_Impl systemIdInfoDao();

    public abstract WorkNameDao_Impl workNameDao();

    public abstract WorkProgressDao_Impl workProgressDao();

    public abstract WorkSpecDao_Impl workSpecDao();

    public abstract WorkTagDao_Impl workTagDao();
}
