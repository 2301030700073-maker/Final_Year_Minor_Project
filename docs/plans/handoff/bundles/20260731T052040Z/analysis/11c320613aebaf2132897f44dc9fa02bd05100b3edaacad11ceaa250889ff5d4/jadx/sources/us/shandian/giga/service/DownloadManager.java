package us.shandian.giga.service;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import androidx.recyclerview.widget.DiffUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import j$.util.Collection;
import j$.util.function.Predicate$CC;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Predicate;
import okio.PriorityQueue;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.streams.io.StoredDirectoryHelper;
import org.schabi.newpipe.streams.io.StoredFileHelper;
import us.shandian.giga.get.DownloadMission;
import us.shandian.giga.get.FinishedMission;
import us.shandian.giga.get.Mission;
import us.shandian.giga.get.sqlite.FinishedMissionStore;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class DownloadManager {
    public final FinishedMissionStore mFinishedMissionStore;
    public final Handler mHandler;
    public StoredDirectoryHelper mMainStorageAudio;
    public StoredDirectoryHelper mMainStorageVideo;
    public final ArrayList mMissionsFinished;
    public final File mPendingMissionsDir;
    public int mPrefMaxRetry;
    public boolean mPrefMeteredDownloads;
    public boolean mPrefQueueLimit;
    public boolean mSelfMissionsControl;
    public final ArrayList mMissionsPending = new ArrayList();
    public int mLastNetworkStatus = 1;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class MissionIterator extends DiffUtil {
        public final Object FINISHED = new Object();
        public final Object PENDING = new Object();
        public boolean hasFinished = false;
        public final ArrayList hidden = new ArrayList(2);
        public ArrayList current = null;
        public ArrayList snapshot = getSpecialItems();

        public MissionIterator() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil
        public final boolean areContentsTheSame(int i, int i2) {
            Object obj = this.snapshot.get(i);
            Object obj2 = this.current.get(i2);
            if ((obj instanceof Mission) && (obj2 instanceof Mission)) {
                return ((Mission) obj).storage.equals(((Mission) obj2).storage);
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.DiffUtil
        public final boolean areItemsTheSame(int i, int i2) {
            return this.snapshot.get(i) == this.current.get(i2);
        }

        public final PriorityQueue getItem(int i) {
            Object obj = this.snapshot.get(i);
            return obj == this.PENDING ? new PriorityQueue(1, (Object) null, 15) : obj == this.FINISHED ? new PriorityQueue(2, (Object) null, 15) : new PriorityQueue(0, (Mission) obj, 15);
        }

        @Override // androidx.recyclerview.widget.DiffUtil
        public final int getNewListSize() {
            return this.current.size();
        }

        @Override // androidx.recyclerview.widget.DiffUtil
        public final int getOldListSize() {
            return this.snapshot.size();
        }

        public final ArrayList getSpecialItems() {
            ArrayList arrayList;
            synchronized (DownloadManager.this) {
                try {
                    final ArrayList arrayList2 = new ArrayList(DownloadManager.this.mMissionsPending);
                    final ArrayList arrayList3 = new ArrayList(DownloadManager.this.mMissionsFinished);
                    Collection.EL.removeIf(new ArrayList(this.hidden), new Predicate() { // from class: us.shandian.giga.service.DownloadManager$MissionIterator$$ExternalSyntheticLambda0
                        public /* synthetic */ Predicate and(Predicate predicate) {
                            return Predicate$CC.$default$and(this, predicate);
                        }

                        public /* synthetic */ Predicate negate() {
                            return Predicate$CC.$default$negate(this);
                        }

                        public /* synthetic */ Predicate or(Predicate predicate) {
                            return Predicate$CC.$default$or(this, predicate);
                        }

                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            StoredFileHelper storedFileHelper;
                            Mission mission = (Mission) obj;
                            if (mission instanceof DownloadMission) {
                                DownloadMission downloadMission = (DownloadMission) mission;
                                DownloadManager.this.getClass();
                                if (downloadMission.errCode == 1011 || (storedFileHelper = downloadMission.storage) == null || !storedFileHelper.existsAsFile()) {
                                    return false;
                                }
                            }
                            return arrayList2.remove(mission) || arrayList3.remove(mission);
                        }
                    });
                    int size = arrayList2.size();
                    if (size > 0) {
                        size++;
                    }
                    int size2 = size + arrayList3.size();
                    if (arrayList3.size() > 0) {
                        size2++;
                    }
                    arrayList = new ArrayList(size2);
                    if (arrayList2.size() > 0) {
                        arrayList.add(this.PENDING);
                        arrayList.addAll(arrayList2);
                    }
                    if (arrayList3.size() > 0) {
                        arrayList.add(this.FINISHED);
                        arrayList.addAll(arrayList3);
                    }
                    this.hasFinished = arrayList3.size() > 0;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return arrayList;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x020b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DownloadManager(us.shandian.giga.service.DownloadManagerService r12, android.os.Handler r13, org.schabi.newpipe.streams.io.StoredDirectoryHelper r14, org.schabi.newpipe.streams.io.StoredDirectoryHelper r15) {
        /*
            Method dump skipped, instructions count: 614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: us.shandian.giga.service.DownloadManager.<init>(us.shandian.giga.service.DownloadManagerService, android.os.Handler, org.schabi.newpipe.streams.io.StoredDirectoryHelper, org.schabi.newpipe.streams.io.StoredDirectoryHelper):void");
    }

    public static boolean isDirectoryAvailable(File file) {
        return file != null && file.canWrite() && file.exists();
    }

    public static File pickAvailableTemporalDir(Context context) {
        File externalFilesDir = context.getExternalFilesDir(null);
        if (isDirectoryAvailable(externalFilesDir)) {
            return externalFilesDir;
        }
        File filesDir = context.getFilesDir();
        if (isDirectoryAvailable(filesDir)) {
            return filesDir;
        }
        File dir = context.getDir("muxing_tmp", 0);
        if (isDirectoryAvailable(dir)) {
            return dir;
        }
        File cacheDir = context.getCacheDir();
        if (isDirectoryAvailable(cacheDir)) {
            return cacheDir;
        }
        Node$$ExternalSyntheticBUOutline0.m811m("Not temporal directories are available");
        return null;
    }

    public static boolean testDir(File file) {
        boolean exists;
        if (file == null) {
            return false;
        }
        try {
            if (file.exists()) {
                exists = true;
            } else {
                file.mkdir();
                exists = file.exists();
            }
            if (exists) {
                File file2 = new File(file, ".tmp");
                if (file2.createNewFile()) {
                    return file2.delete();
                }
                return false;
            }
            Log.e("DownloadManager", "testDir() cannot create the directory in path: " + file.getAbsolutePath());
            return false;
        } catch (Exception e) {
            Log.e("DownloadManager", "testDir() failed: " + file.getAbsolutePath(), e);
            return false;
        }
    }

    public final void deleteMission(Mission mission, boolean z) {
        synchronized (this) {
            try {
                if (mission instanceof DownloadMission) {
                    this.mMissionsPending.remove(mission);
                } else if (mission instanceof FinishedMission) {
                    this.mMissionsFinished.remove(mission);
                    this.mFinishedMissionStore.deleteMission(mission);
                }
                if (z) {
                    mission.delete();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void forgetMission(StoredFileHelper storedFileHelper) {
        synchronized (this) {
            try {
                Mission anyMission = getAnyMission(storedFileHelper);
                if (anyMission == null) {
                    return;
                }
                if (anyMission instanceof DownloadMission) {
                    this.mMissionsPending.remove(anyMission);
                } else if (anyMission instanceof FinishedMission) {
                    this.mMissionsFinished.remove(anyMission);
                    this.mFinishedMissionStore.deleteMission(anyMission);
                }
                anyMission.storage = null;
                anyMission.delete();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Mission getAnyMission(StoredFileHelper storedFileHelper) {
        DownloadMission downloadMission;
        synchronized (this) {
            try {
                Iterator it = this.mMissionsPending.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        downloadMission = null;
                        break;
                    }
                    downloadMission = (DownloadMission) it.next();
                    if (downloadMission.storage.equals(storedFileHelper)) {
                    }
                }
                if (downloadMission != null) {
                    return downloadMission;
                }
                int finishedMissionIndex = getFinishedMissionIndex(storedFileHelper);
                if (finishedMissionIndex < 0) {
                    return null;
                }
                return (Mission) this.mMissionsFinished.get(finishedMissionIndex);
            } finally {
            }
        }
    }

    public final int getFinishedMissionIndex(StoredFileHelper storedFileHelper) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.mMissionsFinished;
            if (i >= arrayList.size()) {
                return -1;
            }
            if (((FinishedMission) arrayList.get(i)).storage.equals(storedFileHelper)) {
                if (storedFileHelper.existsAsFile() && storedFileHelper.length() != 0) {
                    return i;
                }
                this.mFinishedMissionStore.deleteMission((Mission) arrayList.get(i));
                arrayList.remove(i);
                return -1;
            }
            i++;
        }
    }

    public final int getRunningMissionsCount() {
        int i;
        synchronized (this) {
            try {
                Iterator it = this.mMissionsPending.iterator();
                i = 0;
                while (it.hasNext()) {
                    DownloadMission downloadMission = (DownloadMission) it.next();
                    if (downloadMission.running && !downloadMission.isPsFailed() && !downloadMission.isFinished()) {
                        i++;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }

    public final void pauseAllMissions(boolean z) {
        synchronized (this) {
            try {
                Iterator it = this.mMissionsPending.iterator();
                while (it.hasNext()) {
                    DownloadMission downloadMission = (DownloadMission) it.next();
                    if (downloadMission.running && !downloadMission.isPsRunning() && !downloadMission.isFinished()) {
                        if (z) {
                            downloadMission.init = null;
                            downloadMission.threads = new Thread[0];
                        }
                        downloadMission.pause();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0022 A[Catch: all -> 0x000d, DONT_GENERATE, TryCatch #0 {all -> 0x000d, blocks: (B:3:0x0001, B:5:0x000b, B:8:0x0010, B:13:0x0022, B:15:0x0024, B:17:0x0028, B:18:0x002e, B:20:0x0034, B:23:0x0040, B:26:0x0044, B:32:0x0046, B:33:0x004c, B:35:0x0052, B:38:0x005c, B:41:0x0060, B:44:0x0067, B:46:0x006b, B:47:0x006e, B:50:0x0074, B:56:0x0078, B:67:0x007c, B:69:0x0015), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0024 A[Catch: all -> 0x000d, TryCatch #0 {all -> 0x000d, blocks: (B:3:0x0001, B:5:0x000b, B:8:0x0010, B:13:0x0022, B:15:0x0024, B:17:0x0028, B:18:0x002e, B:20:0x0034, B:23:0x0040, B:26:0x0044, B:32:0x0046, B:33:0x004c, B:35:0x0052, B:38:0x005c, B:41:0x0060, B:44:0x0067, B:46:0x006b, B:47:0x006e, B:50:0x0074, B:56:0x0078, B:67:0x007c, B:69:0x0015), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean runMissions() {
        /*
            r5 = this;
            monitor-enter(r5)
            java.util.ArrayList r0 = r5.mMissionsPending     // Catch: java.lang.Throwable -> Ld
            int r0 = r0.size()     // Catch: java.lang.Throwable -> Ld
            r1 = 0
            r2 = 1
            if (r0 >= r2) goto L10
            monitor-exit(r5)     // Catch: java.lang.Throwable -> Ld
            return r1
        Ld:
            r0 = move-exception
            goto L7e
        L10:
            int r0 = r5.mLastNetworkStatus     // Catch: java.lang.Throwable -> Ld
            if (r0 != r2) goto L15
            goto L1d
        L15:
            boolean r3 = r5.mPrefMeteredDownloads     // Catch: java.lang.Throwable -> Ld
            if (r3 == 0) goto L1f
            r3 = 3
            if (r0 == r3) goto L1d
            goto L1f
        L1d:
            r0 = r1
            goto L20
        L1f:
            r0 = r2
        L20:
            if (r0 != 0) goto L24
            monitor-exit(r5)     // Catch: java.lang.Throwable -> Ld
            return r1
        L24:
            boolean r0 = r5.mPrefQueueLimit     // Catch: java.lang.Throwable -> Ld
            if (r0 == 0) goto L46
            java.util.ArrayList r0 = r5.mMissionsPending     // Catch: java.lang.Throwable -> Ld
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> Ld
        L2e:
            boolean r3 = r0.hasNext()     // Catch: java.lang.Throwable -> Ld
            if (r3 == 0) goto L46
            java.lang.Object r3 = r0.next()     // Catch: java.lang.Throwable -> Ld
            us.shandian.giga.get.DownloadMission r3 = (us.shandian.giga.get.DownloadMission) r3     // Catch: java.lang.Throwable -> Ld
            boolean r4 = r3.isFinished()     // Catch: java.lang.Throwable -> Ld
            if (r4 != 0) goto L2e
            boolean r3 = r3.running     // Catch: java.lang.Throwable -> Ld
            if (r3 == 0) goto L2e
            monitor-exit(r5)     // Catch: java.lang.Throwable -> Ld
            return r2
        L46:
            java.util.ArrayList r0 = r5.mMissionsPending     // Catch: java.lang.Throwable -> Ld
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> Ld
        L4c:
            boolean r3 = r0.hasNext()     // Catch: java.lang.Throwable -> Ld
            if (r3 == 0) goto L7c
            java.lang.Object r3 = r0.next()     // Catch: java.lang.Throwable -> Ld
            us.shandian.giga.get.DownloadMission r3 = (us.shandian.giga.get.DownloadMission) r3     // Catch: java.lang.Throwable -> Ld
            boolean r4 = r3.running     // Catch: java.lang.Throwable -> Ld
            if (r4 != 0) goto L4c
            boolean r4 = r3.enqueued     // Catch: java.lang.Throwable -> Ld
            if (r4 == 0) goto L4c
            boolean r4 = r3.isFinished()     // Catch: java.lang.Throwable -> Ld
            if (r4 == 0) goto L67
            goto L4c
        L67:
            boolean r4 = r3.running     // Catch: java.lang.Throwable -> Ld
            if (r4 != 0) goto L6e
            r3.start()     // Catch: java.lang.Throwable -> Ld
        L6e:
            int r3 = r3.errCode     // Catch: java.lang.Throwable -> Ld
            r4 = -1
            if (r3 == r4) goto L74
            goto L4c
        L74:
            boolean r1 = r5.mPrefQueueLimit     // Catch: java.lang.Throwable -> Ld
            if (r1 == 0) goto L7a
            monitor-exit(r5)     // Catch: java.lang.Throwable -> Ld
            return r2
        L7a:
            r1 = r2
            goto L4c
        L7c:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> Ld
            return r1
        L7e:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> Ld
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: us.shandian.giga.service.DownloadManager.runMissions():boolean");
    }

    public final void setFinished(DownloadMission downloadMission) {
        synchronized (this) {
            this.mMissionsPending.remove(downloadMission);
            ArrayList arrayList = this.mMissionsFinished;
            FinishedMission finishedMission = new FinishedMission();
            finishedMission.source = downloadMission.source;
            finishedMission.length = downloadMission.length;
            finishedMission.timestamp = downloadMission.timestamp;
            finishedMission.kind = downloadMission.kind;
            finishedMission.storage = downloadMission.storage;
            arrayList.add(0, finishedMission);
            this.mFinishedMissionStore.addFinishedMission(downloadMission);
        }
    }

    public final void tryRecover(DownloadMission downloadMission) {
        StoredDirectoryHelper storedDirectoryHelper;
        StoredFileHelper createFile;
        String tag = downloadMission.storage.getTag();
        if (tag.equals(MimeTypes.BASE_TYPE_AUDIO)) {
            storedDirectoryHelper = this.mMainStorageAudio;
        } else if (tag.equals(MimeTypes.BASE_TYPE_VIDEO)) {
            storedDirectoryHelper = this.mMainStorageVideo;
        } else {
            Log.w("DownloadManager", "Unknown download category, not [audio video]: ".concat(tag));
            storedDirectoryHelper = null;
        }
        if (downloadMission.storage.isInvalid() || !downloadMission.storage.create()) {
            downloadMission.storage.invalidate();
            if (storedDirectoryHelper == null || (createFile = storedDirectoryHelper.createFile(downloadMission.storage.getName(), downloadMission.storage.getType(), false)) == null) {
                return;
            }
            downloadMission.storage = createFile;
        }
    }
}
