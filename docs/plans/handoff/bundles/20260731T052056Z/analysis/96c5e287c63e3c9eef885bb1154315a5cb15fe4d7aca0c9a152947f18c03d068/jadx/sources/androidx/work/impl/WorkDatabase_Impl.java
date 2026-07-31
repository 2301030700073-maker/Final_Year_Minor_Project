package androidx.work.impl;

import androidx.room.InvalidationTracker;
import androidx.room.RoomOpenDelegate;
import androidx.work.Worker$$ExternalSyntheticLambda1;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.PreferenceDao_Impl;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import androidx.work.impl.model.WorkNameDao_Impl;
import androidx.work.impl.model.WorkProgressDao_Impl;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTagDao_Impl;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/work/impl/WorkDatabase_Impl;", "Landroidx/work/impl/WorkDatabase;", "<init>", "()V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WorkDatabase_Impl extends WorkDatabase {
    public final SynchronizedLazyImpl _dependencyDao;
    public final SynchronizedLazyImpl _preferenceDao;
    public final SynchronizedLazyImpl _systemIdInfoDao;
    public final SynchronizedLazyImpl _workNameDao;
    public final SynchronizedLazyImpl _workProgressDao;
    public final SynchronizedLazyImpl _workSpecDao;
    public final SynchronizedLazyImpl _workTagDao;

    public WorkDatabase_Impl() {
        final int i = 0;
        this._workSpecDao = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ WorkDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                WorkDatabase_Impl workDatabase_Impl = this.f$0;
                switch (i2) {
                    case 0:
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    default:
                        return new PreferenceDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i2 = 1;
        this._dependencyDao = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ WorkDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                WorkDatabase_Impl workDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    default:
                        return new PreferenceDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i3 = 2;
        this._workTagDao = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ WorkDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                WorkDatabase_Impl workDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    default:
                        return new PreferenceDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i4 = 3;
        this._systemIdInfoDao = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ WorkDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i4;
                WorkDatabase_Impl workDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    default:
                        return new PreferenceDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i5 = 4;
        this._workNameDao = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ WorkDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i5;
                WorkDatabase_Impl workDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    default:
                        return new PreferenceDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i6 = 5;
        this._workProgressDao = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ WorkDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i6;
                WorkDatabase_Impl workDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    default:
                        return new PreferenceDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i7 = 6;
        this._preferenceDao = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ WorkDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i7;
                WorkDatabase_Impl workDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    default:
                        return new PreferenceDao_Impl(workDatabase_Impl);
                }
            }
        });
        new SynchronizedLazyImpl(new Worker$$ExternalSyntheticLambda1(27, this));
    }

    @Override // androidx.room.RoomDatabase
    public final List createAutoMigrations(LinkedHashMap linkedHashMap) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Migration_1_2(13, 14, 10));
        arrayList.add(new WorkDatabase_AutoMigration_14_15_Impl(0));
        int i = 17;
        arrayList.add(new Migration_1_2(16, i, 11));
        int i2 = 18;
        arrayList.add(new Migration_1_2(i, i2, 12));
        arrayList.add(new Migration_1_2(i2, 19, 13));
        arrayList.add(new WorkDatabase_AutoMigration_14_15_Impl(1));
        arrayList.add(new Migration_1_2(20, 21, 14));
        int i3 = 23;
        arrayList.add(new Migration_1_2(22, i3, 15));
        arrayList.add(new Migration_1_2(i3, 24, 16));
        return arrayList;
    }

    @Override // androidx.room.RoomDatabase
    public final InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new LinkedHashMap(), new LinkedHashMap(), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // androidx.room.RoomDatabase
    public final RoomOpenDelegate createOpenDelegate() {
        return new WorkDatabase_Impl$createOpenDelegate$_openDelegate$1(this);
    }

    @Override // androidx.work.impl.WorkDatabase
    public final DependencyDao_Impl dependencyDao() {
        return (DependencyDao_Impl) this._dependencyDao.getValue();
    }

    @Override // androidx.room.RoomDatabase
    public final Set getRequiredAutoMigrationSpecClasses() {
        return new LinkedHashSet();
    }

    @Override // androidx.room.RoomDatabase
    public final LinkedHashMap getRequiredTypeConverterClasses() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ReflectionFactory reflectionFactory = Reflection.factory;
        KClass orCreateKotlinClass = reflectionFactory.getOrCreateKotlinClass(WorkSpecDao_Impl.class);
        EmptyList emptyList = EmptyList.INSTANCE;
        linkedHashMap.put(orCreateKotlinClass, emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(DependencyDao_Impl.class), emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(WorkTagDao_Impl.class), emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(SystemIdInfoDao_Impl.class), emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(WorkNameDao_Impl.class), emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(WorkProgressDao_Impl.class), emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(PreferenceDao_Impl.class), emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(AutoMigration_14_15.class), emptyList);
        return linkedHashMap;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final PreferenceDao_Impl preferenceDao() {
        return (PreferenceDao_Impl) this._preferenceDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public final SystemIdInfoDao_Impl systemIdInfoDao() {
        return (SystemIdInfoDao_Impl) this._systemIdInfoDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkNameDao_Impl workNameDao() {
        return (WorkNameDao_Impl) this._workNameDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkProgressDao_Impl workProgressDao() {
        return (WorkProgressDao_Impl) this._workProgressDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkSpecDao_Impl workSpecDao() {
        return (WorkSpecDao_Impl) this._workSpecDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkTagDao_Impl workTagDao() {
        return (WorkTagDao_Impl) this._workTagDao.getValue();
    }
}
