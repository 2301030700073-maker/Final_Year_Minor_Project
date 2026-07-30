package androidx.work.impl.model;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SystemIdInfoDao.kt */
/* loaded from: classes.dex */
public interface SystemIdInfoDao {
    SystemIdInfo getSystemIdInfo(WorkGenerationalId workGenerationalId);

    SystemIdInfo getSystemIdInfo(String str, int i);

    List getWorkSpecIds();

    void insertSystemIdInfo(SystemIdInfo systemIdInfo);

    void removeSystemIdInfo(WorkGenerationalId workGenerationalId);

    void removeSystemIdInfo(String str);

    void removeSystemIdInfo(String str, int i);

    /* compiled from: SystemIdInfoDao.kt */
    /* renamed from: androidx.work.impl.model.SystemIdInfoDao$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static SystemIdInfo $default$getSystemIdInfo(SystemIdInfoDao systemIdInfoDao, WorkGenerationalId id) {
            Intrinsics.checkNotNullParameter(id, "id");
            return systemIdInfoDao.getSystemIdInfo(id.getWorkSpecId(), id.getGeneration());
        }

        public static void $default$removeSystemIdInfo(SystemIdInfoDao systemIdInfoDao, WorkGenerationalId id) {
            Intrinsics.checkNotNullParameter(id, "id");
            systemIdInfoDao.removeSystemIdInfo(id.getWorkSpecId(), id.getGeneration());
        }
    }
}
