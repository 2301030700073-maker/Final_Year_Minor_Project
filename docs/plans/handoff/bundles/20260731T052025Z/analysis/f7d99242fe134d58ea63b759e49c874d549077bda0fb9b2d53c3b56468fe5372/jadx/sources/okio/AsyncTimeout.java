package okio;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.graphics.Bitmap;
import android.os.Process;
import android.text.TextUtils;
import android.text.format.DateFormat;
import androidx.biometric.BiometricPrompt;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.UseCase;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.featuregroup.impl.UseCaseType;
import androidx.camera.core.featuregroup.impl.resolver.FeatureGroupResolutionResult;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.glance.appwidget.UnmanagedSessionReceiver;
import androidx.preference.Preference;
import androidx.room.migration.AutoMigrationSpec;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import androidx.sqlite.db.framework.FrameworkSQLiteProgram;
import androidx.sqlite.db.framework.FrameworkSQLiteStatement;
import app.k9mail.feature.account.server.settings.domain.usecase.ValidatePort$ValidatePortError;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.util.pool.FactoryPools;
import com.fsck.k9.R;
import com.fsck.k9.mail.internet.BinaryTempFileBody;
import com.fsck.k9.mail.internet.BinaryTempFileMessageBody;
import com.jcraft.jzlib.Adler32;
import com.takisoft.preferencex.DatePickerPreference;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.CoroutineContext;
import net.thunderbird.core.outcome.Outcome;
import org.apache.commons.io.IOUtils;
import org.apache.james.mime4j.util.MimeUtil;
import org.minidns.util.Hex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class AsyncTimeout extends Timeout {
    public static final long IDLE_TIMEOUT_MILLIS;
    public static final long IDLE_TIMEOUT_NANOS;
    public static final Condition condition;
    public static AsyncTimeout idleSentinel;
    public static final ReentrantLock lock;
    public static final PriorityQueue queue;
    public int index = -1;
    public int state;
    public long timeoutAt;

    static {
        byte b = 0;
        PriorityQueue priorityQueue = new PriorityQueue(b, b);
        priorityQueue.array = new AsyncTimeout[8];
        queue = priorityQueue;
        ReentrantLock reentrantLock = new ReentrantLock();
        lock = reentrantLock;
        Condition newCondition = reentrantLock.newCondition();
        newCondition.getClass();
        condition = newCondition;
        IDLE_TIMEOUT_MILLIS = 60000L;
        IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(60000L);
    }

    public final void enter() {
        long j = this.timeoutNanos;
        boolean z = this.hasDeadline;
        if (j != 0 || z) {
            ReentrantLock reentrantLock = lock;
            reentrantLock.lock();
            try {
                if (this.state != 0) {
                    throw new IllegalStateException("Unbalanced enter/exit");
                }
                this.state = 1;
                Companion.access$insertIntoQueue(this);
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public final boolean exit() {
        ReentrantLock reentrantLock = lock;
        reentrantLock.lock();
        try {
            int i = this.state;
            this.state = 0;
            if (i != 1) {
                return i == 2;
            }
            queue.remove(this);
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    public IOException newTimeoutException(IOException iOException) {
        throw null;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Watchdog extends Thread {
        public final /* synthetic */ int $r8$classId = 1;

        public /* synthetic */ Watchdog(Runnable runnable) {
            super(runnable);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            ReentrantLock reentrantLock;
            AsyncTimeout awaitTimeout;
            switch (this.$r8$classId) {
                case 0:
                    break;
                default:
                    Process.setThreadPriority(9);
                    super.run();
                    return;
            }
            while (true) {
                try {
                    PriorityQueue priorityQueue = AsyncTimeout.queue;
                    reentrantLock = AsyncTimeout.lock;
                    reentrantLock.lock();
                    try {
                        awaitTimeout = Companion.awaitTimeout();
                    } catch (Throwable th) {
                        reentrantLock.unlock();
                        throw th;
                    }
                } catch (InterruptedException unused) {
                    continue;
                }
                if (awaitTimeout == AsyncTimeout.idleSentinel) {
                    AsyncTimeout.idleSentinel = null;
                    reentrantLock.unlock();
                    return;
                } else {
                    reentrantLock.unlock();
                    if (awaitTimeout != null) {
                        awaitTimeout.timedOut();
                    }
                }
            }
        }

        public /* synthetic */ Watchdog(String str) {
            super(str);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public class Companion implements CoroutineContext.Key, AutoMigrationSpec, Downsampler.DecodeCallbacks, FactoryPools.Factory, Preference.SummaryProvider {
        public static Companion instance;
        public final /* synthetic */ int $r8$classId;

        public Companion(Option.AnonymousClass1 anonymousClass1) {
            this.$r8$classId = 11;
        }

        public static final void access$insertIntoQueue(AsyncTimeout asyncTimeout) {
            PriorityQueue priorityQueue = AsyncTimeout.queue;
            if (AsyncTimeout.idleSentinel == null) {
                AsyncTimeout.idleSentinel = new AsyncTimeout();
                Watchdog watchdog = new Watchdog("Okio Watchdog");
                watchdog.setDaemon(true);
                watchdog.start();
            }
            long nanoTime = System.nanoTime();
            long j = asyncTimeout.timeoutNanos;
            boolean z = asyncTimeout.hasDeadline;
            if (j != 0 && z) {
                asyncTimeout.timeoutAt = Math.min(j, asyncTimeout.deadlineNanoTime() - nanoTime) + nanoTime;
            } else if (j != 0) {
                asyncTimeout.timeoutAt = nanoTime + j;
            } else {
                if (!z) {
                    throw new AssertionError();
                }
                asyncTimeout.timeoutAt = asyncTimeout.deadlineNanoTime();
            }
            PriorityQueue priorityQueue2 = AsyncTimeout.queue;
            int i = priorityQueue2.size + 1;
            priorityQueue2.size = i;
            AsyncTimeout[] asyncTimeoutArr = (AsyncTimeout[]) priorityQueue2.array;
            if (i == asyncTimeoutArr.length) {
                AsyncTimeout[] asyncTimeoutArr2 = new AsyncTimeout[i * 2];
                ArraysKt___ArraysKt.copyInto$default(asyncTimeoutArr, asyncTimeoutArr2, 0, 0, 14);
                priorityQueue2.array = asyncTimeoutArr2;
            }
            priorityQueue2.heapifyUp(i, asyncTimeout);
            if (asyncTimeout.index == 1) {
                AsyncTimeout.condition.signal();
            }
        }

        public static final float access$lookupAndInterpolate(float f, float[] fArr, float[] fArr2) {
            float f2;
            float f3;
            float f4;
            float f5;
            float abs = Math.abs(f);
            float signum = Math.signum(f);
            int binarySearch = Arrays.binarySearch(fArr, abs);
            if (binarySearch >= 0) {
                return signum * fArr2[binarySearch];
            }
            int i = -(binarySearch + 1);
            int i2 = i - 1;
            if (i2 >= fArr.length - 1) {
                float f6 = fArr[fArr.length - 1];
                float f7 = fArr2[fArr.length - 1];
                if (f6 == 0.0f) {
                    return 0.0f;
                }
                return (f7 / f6) * f;
            }
            if (i2 == -1) {
                float f8 = fArr[0];
                f4 = fArr2[0];
                f5 = f8;
                f3 = 0.0f;
                f2 = 0.0f;
            } else {
                float f9 = fArr[i2];
                float f10 = fArr[i];
                f2 = fArr2[i2];
                f3 = f9;
                f4 = fArr2[i];
                f5 = f10;
            }
            return (((f4 - f2) * Math.max(0.0f, Math.min(1.0f, f3 == f5 ? 0.0f : (abs - f3) / (f5 - f3)))) + f2) * signum;
        }

        public static AsyncTimeout awaitTimeout() {
            PriorityQueue priorityQueue = AsyncTimeout.queue;
            AsyncTimeout asyncTimeout = ((AsyncTimeout[]) priorityQueue.array)[1];
            if (asyncTimeout == null) {
                long nanoTime = System.nanoTime();
                AsyncTimeout.condition.await(AsyncTimeout.IDLE_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS);
                if (((AsyncTimeout[]) priorityQueue.array)[1] != null || System.nanoTime() - nanoTime < AsyncTimeout.IDLE_TIMEOUT_NANOS) {
                    return null;
                }
                return AsyncTimeout.idleSentinel;
            }
            long nanoTime2 = asyncTimeout.timeoutAt - System.nanoTime();
            if (nanoTime2 > 0) {
                AsyncTimeout.condition.await(nanoTime2, TimeUnit.NANOSECONDS);
                return null;
            }
            priorityQueue.remove(asyncTimeout);
            asyncTimeout.state = 2;
            return asyncTimeout;
        }

        public static Outcome execute(Long l) {
            if (l == null) {
                return new Outcome.Failure(ValidatePort$ValidatePortError.EmptyPort.INSTANCE, null);
            }
            long longValue = l.longValue();
            return (1 > longValue || longValue >= 65536) ? new Outcome.Failure(ValidatePort$ValidatePortError.InvalidPort.INSTANCE, null) : Hex.getValidationSuccess();
        }

        public static void getSession(int i) {
            synchronized (UnmanagedSessionReceiver.Companion) {
                if (UnmanagedSessionReceiver.activeSessions.get(Integer.valueOf(i)) != null) {
                    throw new ClassCastException();
                }
            }
        }

        public static ResolvedFeatureGroup resolveFeatureGroup$default(LegacySessionConfig legacySessionConfig, CameraInfoInternal cameraInfoInternal) {
            FeatureGroupResolutionResult featureListResolvedByPriority;
            BiometricPrompt biometricPrompt = new BiometricPrompt(25, cameraInfoInternal);
            List list = (List) legacySessionConfig.preferredFeatureGroup;
            Utf8.SafeProcessor.d("ResolvedFeatureGroup", "resolveFeatureGroup: sessionConfig = " + legacySessionConfig + ", lensFacing = " + cameraInfoInternal.getLensFacing());
            Set set = (Set) legacySessionConfig.requiredFeatureGroup;
            if (set.isEmpty() && list.isEmpty()) {
                return null;
            }
            List list2 = (List) legacySessionConfig.useCases;
            if (set.isEmpty() && list.isEmpty()) {
                UriKt$$ExternalSyntheticBUOutline0.m("Must have at least one required or preferred feature");
                return null;
            }
            Iterator it = list2.iterator();
            while (true) {
                if (it.hasNext()) {
                    UseCase useCase = (UseCase) it.next();
                    UseCaseType.Companion.getClass();
                    if (Adler32.getFeatureGroupUseCaseType(useCase) == UseCaseType.UNDEFINED) {
                        featureListResolvedByPriority = new FeatureGroupResolutionResult.UnsupportedUseCase(useCase);
                        break;
                    }
                } else {
                    Iterator it2 = set.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            FeatureGroupResolutionResult.UseCaseMissing missingUseCase = BiometricPrompt.getMissingUseCase((GroupableFeature) it2.next(), list2);
                            if (missingUseCase != null) {
                                featureListResolvedByPriority = missingUseCase;
                                break;
                            }
                        } else {
                            ArrayList arrayList = new ArrayList();
                            for (Object obj : list) {
                                FeatureGroupResolutionResult.UseCaseMissing missingUseCase2 = BiometricPrompt.getMissingUseCase((GroupableFeature) obj, list2);
                                if (missingUseCase2 != null) {
                                    Utf8.SafeProcessor.d("DefaultFeatureGroupResolver", "resolveFeatureGroup: filtered out preferred feature due to " + missingUseCase2);
                                } else {
                                    missingUseCase2 = null;
                                }
                                if (missingUseCase2 == null) {
                                    arrayList.add(obj);
                                }
                            }
                            Utf8.SafeProcessor.d("DefaultFeatureGroupResolver", "resolveFeatureGroup: filteredPreferredFeatures = " + arrayList);
                            featureListResolvedByPriority = biometricPrompt.getFeatureListResolvedByPriority(legacySessionConfig, arrayList, 0, EmptyList.INSTANCE);
                        }
                    }
                }
            }
            if (featureListResolvedByPriority instanceof FeatureGroupResolutionResult.Supported) {
                ResolvedFeatureGroup resolvedFeatureGroup = ((FeatureGroupResolutionResult.Supported) featureListResolvedByPriority).resolvedFeatureGroup;
                Utf8.SafeProcessor.d("ResolvedFeatureGroup", "resolvedFeatureGroup = " + resolvedFeatureGroup);
                return resolvedFeatureGroup;
            }
            if (featureListResolvedByPriority instanceof FeatureGroupResolutionResult.Unsupported) {
                UriKt$$ExternalSyntheticBUOutline0.m("Feature group is not supported");
                return null;
            }
            if (featureListResolvedByPriority instanceof FeatureGroupResolutionResult.UnsupportedUseCase) {
                throw new IllegalArgumentException(((FeatureGroupResolutionResult.UnsupportedUseCase) featureListResolvedByPriority).unsupportedUseCase + " is not supported");
            }
            if (!(featureListResolvedByPriority instanceof FeatureGroupResolutionResult.UseCaseMissing)) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
            FeatureGroupResolutionResult.UseCaseMissing useCaseMissing = (FeatureGroupResolutionResult.UseCaseMissing) featureListResolvedByPriority;
            throw new IllegalArgumentException(useCaseMissing.requiredUseCases + " must be added for " + useCaseMissing.featureRequiring);
        }

        public void copyData(InputStream inputStream, FileOutputStream fileOutputStream) {
            IOUtils.copy(inputStream, fileOutputStream);
        }

        @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
        public Object create() {
            return new ArrayList();
        }

        public BinaryTempFileBody createBody(String str, String str2, InputStream inputStream) {
            BinaryTempFileBody binaryTempFileMessageBody = MimeUtil.isMessage(str2) ? new BinaryTempFileMessageBody(str) : new BinaryTempFileBody(str);
            File createTempFile = File.createTempFile("body", null, BinaryTempFileBody.mTempDirectory);
            binaryTempFileMessageBody.mFile = createTempFile;
            createTempFile.deleteOnExit();
            FileOutputStream fileOutputStream = new FileOutputStream(binaryTempFileMessageBody.mFile);
            try {
                copyData(inputStream, fileOutputStream);
                return binaryTempFileMessageBody;
            } finally {
                fileOutputStream.close();
            }
        }

        public Signature[] getSigningSignatures(PackageManager packageManager, String str) {
            return packageManager.getPackageInfo(str, 64).signatures;
        }

        @Override // androidx.room.migration.AutoMigrationSpec
        public void onPostMigrate(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
            frameworkSQLiteDatabase.getClass();
            frameworkSQLiteDatabase.execSQL("UPDATE workspec SET period_count = 1 WHERE last_enqueue_time <> 0 AND interval_duration <> 0");
            ContentValues contentValues = new ContentValues(1);
            contentValues.put("last_enqueue_time", Long.valueOf(System.currentTimeMillis()));
            int i = 0;
            Object[] objArr = new Object[0];
            if (contentValues.size() == 0) {
                UriKt$$ExternalSyntheticBUOutline0.m("Empty values");
                return;
            }
            int size = contentValues.size();
            int length = objArr.length + size;
            Object[] objArr2 = new Object[length];
            StringBuilder sb = new StringBuilder("UPDATE ");
            sb.append(FrameworkSQLiteDatabase.CONFLICT_VALUES[3]);
            sb.append("WorkSpec SET ");
            int i2 = 0;
            for (String str : contentValues.keySet()) {
                sb.append(i2 > 0 ? "," : "");
                sb.append(str);
                objArr2[i2] = contentValues.get(str);
                sb.append("=?");
                i2++;
            }
            for (int i3 = size; i3 < length; i3++) {
                objArr2[i3] = objArr[i3 - size];
            }
            if (!TextUtils.isEmpty("last_enqueue_time = 0 AND interval_duration <> 0 ")) {
                sb.append(" WHERE last_enqueue_time = 0 AND interval_duration <> 0 ");
            }
            FrameworkSQLiteStatement compileStatement = frameworkSQLiteDatabase.compileStatement(sb.toString());
            while (i < length) {
                Object obj = objArr2[i];
                i++;
                if (obj == null) {
                    compileStatement.bindNull(i);
                } else if (obj instanceof byte[]) {
                    ((FrameworkSQLiteProgram) compileStatement).delegate.bindBlob(i, (byte[]) obj);
                } else if (obj instanceof Float) {
                    compileStatement.bindDouble(((Number) obj).floatValue(), i);
                } else if (obj instanceof Double) {
                    compileStatement.bindDouble(((Number) obj).doubleValue(), i);
                } else if (obj instanceof Long) {
                    compileStatement.bindLong(i, ((Number) obj).longValue());
                } else if (obj instanceof Integer) {
                    compileStatement.bindLong(i, ((Number) obj).intValue());
                } else if (obj instanceof Short) {
                    compileStatement.bindLong(i, ((Number) obj).shortValue());
                } else if (obj instanceof Byte) {
                    compileStatement.bindLong(i, ((Number) obj).byteValue());
                } else if (obj instanceof String) {
                    ((FrameworkSQLiteProgram) compileStatement).delegate.bindString(i, (String) obj);
                } else {
                    if (!(obj instanceof Boolean)) {
                        throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i + " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String");
                    }
                    compileStatement.bindLong(i, ((Boolean) obj).booleanValue() ? 1L : 0L);
                }
            }
            compileStatement.delegate.executeUpdateDelete();
        }

        @Override // androidx.preference.Preference.SummaryProvider
        public CharSequence provideSummary(Preference preference) {
            DatePickerPreference datePickerPreference = (DatePickerPreference) preference;
            Date date = datePickerPreference.date;
            Context context = datePickerPreference.mContext;
            return date == null ? context.getString(R.string.not_set) : DateFormat.getLongDateFormat(context).format(datePickerPreference.date);
        }

        public String toString() {
            switch (this.$r8$classId) {
                case 4:
                    return "CompositionErrorContext";
                default:
                    return super.toString();
            }
        }

        public /* synthetic */ Companion(int i) {
            this.$r8$classId = i;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public void onObtainBounds() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public void onDecodeComplete(Bitmap bitmap, BitmapPool bitmapPool) {
        }
    }

    public void timedOut() {
    }
}
