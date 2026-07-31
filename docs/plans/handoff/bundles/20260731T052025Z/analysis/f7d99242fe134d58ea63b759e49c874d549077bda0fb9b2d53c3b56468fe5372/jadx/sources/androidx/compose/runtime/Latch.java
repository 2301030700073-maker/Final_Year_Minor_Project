package androidx.compose.runtime;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Trace;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory;
import androidx.compose.foundation.lazy.layout.PrefetchScheduler;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.work.Operation$State;
import com.bumptech.glide.Glide;
import com.bumptech.glide.disklrucache.DiskLruCache;
import com.bumptech.glide.module.AppGlideModule;
import com.bumptech.glide.util.GlideSuppliers$GlideSupplier;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.notification.NotificationData;
import com.fsck.k9.notification.NotificationHolder;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.DataMask$EnumUnboxingLocalUtility;
import com.google.zxing.qrcode.decoder.FormatInformation;
import com.google.zxing.qrcode.decoder.Version;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.ExchangeFinder;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.ExchangeCodec;
import org.jsoup.internal.SoftPool;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Latch implements GlideSuppliers$GlideSupplier, LocalStore.BatchSetSelection {
    public final /* synthetic */ int $r8$classId;
    public boolean _isOpen;
    public Object awaiters;
    public final Object lock;
    public Object spareList;

    public Latch() {
        this.$r8$classId = 0;
        this.lock = new Object();
        this.awaiters = new ArrayList();
        this.spareList = new ArrayList();
        this._isOpen = true;
    }

    public static IOException bodyComplete$default(Latch latch, boolean z, IOException iOException, int i) {
        boolean z2 = (i & 4) == 0;
        boolean z3 = (i & 8) == 0;
        if (iOException != null) {
            latch.trackFailure(iOException);
        }
        return ((RealCall) latch.lock).messageDone$okhttp(latch, z3 && !z, z2 && !z, z2 && z, z3 && z, iOException);
    }

    public void abort() {
        DiskLruCache.access$2100((DiskLruCache) this.spareList, this, false);
    }

    public int copyBit(int i, int i2, int i3) {
        boolean z = this._isOpen;
        BitMatrix bitMatrix = (BitMatrix) this.lock;
        return z ? bitMatrix.get(i2, i) : bitMatrix.get(i, i2) ? (i3 << 1) | 1 : i3 << 1;
    }

    @Override // com.fsck.k9.mailstore.LocalStore.BatchSetSelection
    public void doDbWork(SQLiteDatabase sQLiteDatabase, String str, String[] strArr) {
        switch (this.$r8$classId) {
            case 5:
                StringBuilder sb = new StringBuilder("UPDATE messages SET ");
                sb.append((String) this.awaiters);
                sb.append(" = ");
                sb.append(this._isOpen ? coil3.disk.DiskLruCache.VERSION : "0");
                sb.append(" WHERE id IN (SELECT m.id FROM threads t LEFT JOIN messages m ON (t.message_id = m.id) WHERE m.empty = 0 AND m.deleted = 0 AND t.root");
                sb.append(str);
                sb.append(")");
                sQLiteDatabase.execSQL(sb.toString(), strArr);
                break;
            default:
                if (!this._isOpen) {
                    getDataFromCursor(sQLiteDatabase.rawQuery("SELECT uid, folder_id FROM messages WHERE empty = 0 AND id".concat(str), strArr));
                    break;
                } else {
                    getDataFromCursor(sQLiteDatabase.rawQuery("SELECT m.uid, m.folder_id FROM threads t LEFT JOIN messages m ON (t.message_id = m.id) WHERE m.empty = 0 AND m.deleted = 0 AND t.root".concat(str), strArr));
                    break;
                }
        }
    }

    @Override // com.bumptech.glide.util.GlideSuppliers$GlideSupplier
    public Object get() {
        if (this._isOpen) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you're using the provided Registry rather calling glide.getRegistry()!");
            return null;
        }
        Trace.beginSection(Util.truncatedTraceSectionLabel("Glide registry"));
        this._isOpen = true;
        try {
            return Operation$State.createAndInitRegistry((Glide) this.lock, (List) this.awaiters, (AppGlideModule) this.spareList);
        } finally {
            this._isOpen = false;
            Trace.endSection();
        }
    }

    public RealConnection getConnection$okhttp() {
        ExchangeCodec.Carrier carrier = ((ExchangeCodec) this.spareList).getCarrier();
        RealConnection realConnection = carrier instanceof RealConnection ? (RealConnection) carrier : null;
        if (realConnection != null) {
            return realConnection;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("no connection for CONNECT tunnels");
        return null;
    }

    public void getDataFromCursor(Cursor cursor) {
        HashMap hashMap = (HashMap) this.awaiters;
        while (cursor.moveToNext()) {
            try {
                String string = cursor.getString(0);
                Long valueOf = Long.valueOf(cursor.getLong(1));
                List list = (List) hashMap.get(valueOf);
                if (list == null) {
                    list = new ArrayList();
                    hashMap.put(valueOf, list);
                }
                list.add(string);
            } catch (Throwable th) {
                cursor.close();
                throw th;
            }
        }
        cursor.close();
    }

    public File getFile() {
        File file;
        synchronized (((DiskLruCache) this.spareList)) {
            try {
                DiskLruCache.Entry entry = (DiskLruCache.Entry) this.lock;
                if (entry.currentEditor != this) {
                    throw new IllegalStateException();
                }
                if (!entry.readable) {
                    ((boolean[]) this.awaiters)[0] = true;
                }
                file = entry.dirtyFiles[0];
                ((DiskLruCache) this.spareList).directory.mkdirs();
            } catch (Throwable th) {
                throw th;
            }
        }
        return file;
    }

    @Override // com.fsck.k9.mailstore.LocalStore.BatchSetSelection
    public String getListItem(int i) {
        switch (this.$r8$classId) {
        }
        return Long.toString(((Long) ((List) this.lock).get(i)).longValue());
    }

    @Override // com.fsck.k9.mailstore.LocalStore.BatchSetSelection
    public int getListSize() {
        switch (this.$r8$classId) {
        }
        return ((List) this.lock).size();
    }

    public boolean isOpen() {
        boolean z;
        synchronized (this.lock) {
            z = this._isOpen;
        }
        return z;
    }

    @Override // com.fsck.k9.mailstore.LocalStore.BatchSetSelection
    public void postDbWork() {
        switch (this.$r8$classId) {
            case 5:
                ((LocalStore) this.spareList).notifyChange();
                break;
            default:
                ((LocalStore) this.spareList).notifyChange();
                break;
        }
    }

    public FormatInformation readFormatInformation() {
        FormatInformation formatInformation = (FormatInformation) this.spareList;
        if (formatInformation != null) {
            return formatInformation;
        }
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < 6; i3++) {
            i2 = copyBit(i3, 8, i2);
        }
        int copyBit = copyBit(8, 7, copyBit(8, 8, copyBit(7, 8, i2)));
        for (int i4 = 5; i4 >= 0; i4--) {
            copyBit = copyBit(8, i4, copyBit);
        }
        int i5 = ((BitMatrix) this.lock).height;
        int i6 = i5 - 7;
        for (int i7 = i5 - 1; i7 >= i6; i7--) {
            i = copyBit(8, i7, i);
        }
        for (int i8 = i5 - 8; i8 < i5; i8++) {
            i = copyBit(i8, 8, i);
        }
        FormatInformation doDecodeFormatInformation = FormatInformation.doDecodeFormatInformation(copyBit, i);
        if (doDecodeFormatInformation == null) {
            doDecodeFormatInformation = FormatInformation.doDecodeFormatInformation(copyBit ^ 21522, i ^ 21522);
        }
        this.spareList = doDecodeFormatInformation;
        if (doDecodeFormatInformation != null) {
            return doDecodeFormatInformation;
        }
        throw FormatException.getFormatInstance();
    }

    public Response.Builder readResponseHeaders(boolean z) {
        try {
            Response.Builder readResponseHeaders = ((ExchangeCodec) this.spareList).readResponseHeaders(z);
            if (readResponseHeaders == null) {
                return readResponseHeaders;
            }
            readResponseHeaders.exchange = this;
            return readResponseHeaders;
        } catch (IOException e) {
            trackFailure(e);
            throw e;
        }
    }

    public Version readVersion() {
        Version version = (Version) this.awaiters;
        if (version != null) {
            return version;
        }
        int i = ((BitMatrix) this.lock).height;
        int i2 = (i - 17) / 4;
        if (i2 <= 6) {
            return Version.getVersionForNumber(i2);
        }
        int i3 = i - 11;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 5; i6 >= 0; i6--) {
            for (int i7 = i - 9; i7 >= i3; i7--) {
                i5 = copyBit(i7, i6, i5);
            }
        }
        Version decodeVersionInformation = Version.decodeVersionInformation(i5);
        if (decodeVersionInformation != null && (decodeVersionInformation.versionNumber * 4) + 17 == i) {
            this.awaiters = decodeVersionInformation;
            return decodeVersionInformation;
        }
        for (int i8 = 5; i8 >= 0; i8--) {
            for (int i9 = i - 9; i9 >= i3; i9--) {
                i4 = copyBit(i8, i9, i4);
            }
        }
        Version decodeVersionInformation2 = Version.decodeVersionInformation(i4);
        if (decodeVersionInformation2 == null || (decodeVersionInformation2.versionNumber * 4) + 17 != i) {
            throw FormatException.getFormatInstance();
        }
        this.awaiters = decodeVersionInformation2;
        return decodeVersionInformation2;
    }

    public void remask() {
        if (((FormatInformation) this.spareList) == null) {
            return;
        }
        int i = ImageAnalysis$$ExternalSyntheticLambda3.values(8)[((FormatInformation) this.spareList).dataMask];
        BitMatrix bitMatrix = (BitMatrix) this.lock;
        int i2 = bitMatrix.height;
        for (int i3 = 0; i3 < i2; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                if (DataMask$EnumUnboxingLocalUtility._dispatch_isMasked(i, i3, i4)) {
                    bitMatrix.flip(i4, i3);
                }
            }
        }
    }

    public void trackFailure(IOException iOException) {
        this._isOpen = true;
        ((ExchangeCodec) this.spareList).getCarrier().trackFailure((RealCall) this.lock, iOException);
    }

    public SoftPool upgradeToSocket() {
        RealCall realCall = (RealCall) this.lock;
        if (realCall.timeoutEarlyExit) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
            return null;
        }
        realCall.timeoutEarlyExit = true;
        realCall.timeout.exit();
        synchronized (realCall) {
            if (realCall.exchange == null) {
                throw new IllegalStateException("Check failed.");
            }
            if (realCall.socketSinkOpen || realCall.socketSourceOpen) {
                throw new IllegalStateException("Check failed.");
            }
            if (realCall.requestBodyOpen) {
                throw new IllegalStateException("Check failed.");
            }
            if (!realCall.responseBodyOpen) {
                throw new IllegalStateException("Check failed.");
            }
            realCall.responseBodyOpen = false;
            realCall.socketSinkOpen = true;
            realCall.socketSourceOpen = true;
        }
        ExchangeCodec.Carrier carrier = ((ExchangeCodec) this.spareList).getCarrier();
        carrier.getClass();
        RealConnection realConnection = (RealConnection) carrier;
        realConnection.javaNetSocket.setSoTimeout(0);
        realConnection.noNewExchanges();
        return new SoftPool(this);
    }

    public Latch(NotificationData notificationData, List list, NotificationHolder notificationHolder, boolean z) {
        this.$r8$classId = 7;
        this.lock = notificationData;
        this.awaiters = list;
        this.spareList = notificationHolder;
        this._isOpen = z;
    }

    public Latch(BitMatrix bitMatrix) {
        this.$r8$classId = 8;
        int i = bitMatrix.height;
        if (i >= 21 && (i & 3) == 1) {
            this.lock = bitMatrix;
            return;
        }
        throw FormatException.getFormatInstance();
    }

    public Latch(RealCall realCall, ExchangeFinder exchangeFinder, ExchangeCodec exchangeCodec) {
        this.$r8$classId = 9;
        exchangeFinder.getClass();
        this.lock = realCall;
        this.awaiters = exchangeFinder;
        this.spareList = exchangeCodec;
    }

    public Latch(Glide glide, List list, AppGlideModule appGlideModule) {
        this.$r8$classId = 3;
        this.lock = glide;
        this.awaiters = list;
        this.spareList = appGlideModule;
    }

    public Latch(LazyLayoutItemContentFactory lazyLayoutItemContentFactory, SubcomposeLayoutState subcomposeLayoutState, PrefetchScheduler prefetchScheduler) {
        this.$r8$classId = 1;
        this.lock = lazyLayoutItemContentFactory;
        this.awaiters = subcomposeLayoutState;
        this.spareList = prefetchScheduler;
        this._isOpen = true;
    }

    public Latch(int i) {
        this.$r8$classId = 2;
        this.lock = new ReentrantLock();
        this.awaiters = new long[i];
        this.spareList = new boolean[i];
    }

    public Latch(DiskLruCache diskLruCache, DiskLruCache.Entry entry) {
        this.$r8$classId = 4;
        this.spareList = diskLruCache;
        this.lock = entry;
        this.awaiters = entry.readable ? null : new boolean[diskLruCache.valueCount];
    }

    public Latch(LocalStore localStore, List list, String str, boolean z) {
        this.$r8$classId = 5;
        this.spareList = localStore;
        this.lock = list;
        this.awaiters = str;
        this._isOpen = z;
    }

    public Latch(LocalStore localStore, List list, boolean z, HashMap hashMap) {
        this.$r8$classId = 6;
        this.spareList = localStore;
        this.lock = list;
        this._isOpen = z;
        this.awaiters = hashMap;
    }
}
