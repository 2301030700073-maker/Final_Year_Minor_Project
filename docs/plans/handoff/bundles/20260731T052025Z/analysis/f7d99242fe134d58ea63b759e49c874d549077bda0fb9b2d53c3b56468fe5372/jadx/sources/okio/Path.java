package okio;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.text.TextUtils;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import com.bumptech.glide.load.engine.LockedResource;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder$ByteBufferInitializer$1;
import com.bumptech.glide.manager.RequestManagerTreeNode;
import com.bumptech.glide.util.pool.FactoryPools;
import com.fsck.k9.K9;
import com.fsck.k9.R;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.storage.messages.ThreadHeaders;
import com.fsck.k9.storage.messages.ThreadInfo;
import j$.nio.file.Paths;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import kotlin.coroutines.CoroutineContext;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Path implements Comparable {
    public static final String DIRECTORY_SEPARATOR;
    public final ByteString bytes;

    static {
        String str = File.separator;
        str.getClass();
        DIRECTORY_SEPARATOR = str;
    }

    public Path(ByteString byteString) {
        byteString.getClass();
        this.bytes = byteString;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        Path path = (Path) obj;
        path.getClass();
        return this.bytes.compareTo(path.bytes);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof Path) && Intrinsics.areEqual(((Path) obj).bytes, this.bytes);
    }

    public final ArrayList getSegmentsBytes() {
        ArrayList arrayList = new ArrayList();
        int access$rootLength = okio.internal.Path.access$rootLength(this);
        ByteString byteString = this.bytes;
        if (access$rootLength == -1) {
            access$rootLength = 0;
        } else if (access$rootLength < byteString.getSize$okio() && byteString.internalGet$okio(access$rootLength) == 92) {
            access$rootLength++;
        }
        int size$okio = byteString.getSize$okio();
        int i = access$rootLength;
        while (access$rootLength < size$okio) {
            if (byteString.internalGet$okio(access$rootLength) == 47 || byteString.internalGet$okio(access$rootLength) == 92) {
                arrayList.add(byteString.substring(i, access$rootLength));
                i = access$rootLength + 1;
            }
            access$rootLength++;
        }
        if (i < byteString.getSize$okio()) {
            arrayList.add(byteString.substring(i, byteString.getSize$okio()));
        }
        return arrayList;
    }

    public final int hashCode() {
        return this.bytes.hashCode();
    }

    public final String name() {
        ByteString byteString = okio.internal.Path.SLASH;
        ByteString byteString2 = this.bytes;
        int lastIndexOf$default = ByteString.lastIndexOf$default(byteString2, byteString);
        if (lastIndexOf$default == -1) {
            lastIndexOf$default = ByteString.lastIndexOf$default(byteString2, okio.internal.Path.BACKSLASH);
        }
        if (lastIndexOf$default != -1) {
            byteString2 = ByteString.substring$default(byteString2, lastIndexOf$default + 1, 0, 2);
        } else if (volumeLetter() != null && byteString2.getSize$okio() == 2) {
            byteString2 = ByteString.EMPTY;
        }
        return byteString2.utf8();
    }

    public final Path parent() {
        ByteString byteString = okio.internal.Path.DOT;
        ByteString byteString2 = this.bytes;
        if (Intrinsics.areEqual(byteString2, byteString)) {
            return null;
        }
        ByteString byteString3 = okio.internal.Path.SLASH;
        if (Intrinsics.areEqual(byteString2, byteString3)) {
            return null;
        }
        ByteString byteString4 = okio.internal.Path.BACKSLASH;
        if (Intrinsics.areEqual(byteString2, byteString4)) {
            return null;
        }
        ByteString byteString5 = okio.internal.Path.DOT_DOT;
        byteString2.getClass();
        byteString5.getClass();
        int size$okio = byteString2.getSize$okio();
        byte[] bArr = byteString5.data;
        if (byteString2.rangeEquals(size$okio - bArr.length, byteString5, bArr.length) && (byteString2.getSize$okio() == 2 || byteString2.rangeEquals(byteString2.getSize$okio() - 3, byteString3, 1) || byteString2.rangeEquals(byteString2.getSize$okio() - 3, byteString4, 1))) {
            return null;
        }
        int lastIndexOf$default = ByteString.lastIndexOf$default(byteString2, byteString3);
        if (lastIndexOf$default == -1) {
            lastIndexOf$default = ByteString.lastIndexOf$default(byteString2, byteString4);
        }
        if (lastIndexOf$default == 2 && volumeLetter() != null) {
            if (byteString2.getSize$okio() == 3) {
                return null;
            }
            return new Path(ByteString.substring$default(byteString2, 0, 3, 1));
        }
        if (lastIndexOf$default == 1) {
            byteString4.getClass();
            if (byteString2.rangeEquals(0, byteString4, byteString4.getSize$okio())) {
                return null;
            }
        }
        if (lastIndexOf$default != -1 || volumeLetter() == null) {
            return lastIndexOf$default == -1 ? new Path(byteString) : lastIndexOf$default == 0 ? new Path(ByteString.substring$default(byteString2, 0, 1, 1)) : new Path(ByteString.substring$default(byteString2, 0, lastIndexOf$default, 1));
        }
        if (byteString2.getSize$okio() == 2) {
            return null;
        }
        return new Path(ByteString.substring$default(byteString2, 0, 2, 1));
    }

    public final Path relativeTo(Path path) {
        path.getClass();
        ByteString byteString = path.bytes;
        int access$rootLength = okio.internal.Path.access$rootLength(this);
        ByteString byteString2 = this.bytes;
        Path path2 = access$rootLength == -1 ? null : new Path(byteString2.substring(0, access$rootLength));
        int access$rootLength2 = okio.internal.Path.access$rootLength(path);
        if (!Intrinsics.areEqual(path2, access$rootLength2 == -1 ? null : new Path(byteString.substring(0, access$rootLength2)))) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Paths of different roots cannot be relative to each other: ", this, " and ", path);
            return null;
        }
        ArrayList segmentsBytes = getSegmentsBytes();
        ArrayList segmentsBytes2 = path.getSegmentsBytes();
        int min = Math.min(segmentsBytes.size(), segmentsBytes2.size());
        int i = 0;
        while (i < min && Intrinsics.areEqual(segmentsBytes.get(i), segmentsBytes2.get(i))) {
            i++;
        }
        if (i == min && byteString2.getSize$okio() == byteString.getSize$okio()) {
            return Companion.get(".");
        }
        if (segmentsBytes2.subList(i, segmentsBytes2.size()).indexOf(okio.internal.Path.DOT_DOT) != -1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Impossible relative path to resolve: ", this, " and ", path);
            return null;
        }
        if (Intrinsics.areEqual(byteString, okio.internal.Path.DOT)) {
            return this;
        }
        Buffer buffer = new Buffer();
        ByteString slash = okio.internal.Path.getSlash(path);
        if (slash == null && (slash = okio.internal.Path.getSlash(this)) == null) {
            slash = okio.internal.Path.toSlash(DIRECTORY_SEPARATOR);
        }
        int size = segmentsBytes2.size();
        for (int i2 = i; i2 < size; i2++) {
            buffer.m1052write(okio.internal.Path.DOT_DOT);
            buffer.m1052write(slash);
        }
        int size2 = segmentsBytes.size();
        while (i < size2) {
            buffer.m1052write((ByteString) segmentsBytes.get(i));
            buffer.m1052write(slash);
            i++;
        }
        return okio.internal.Path.toPath(buffer, false);
    }

    public final Path resolve(String str) {
        str.getClass();
        Buffer buffer = new Buffer();
        buffer.m1057writeUtf8(str);
        return okio.internal.Path.commonResolve(this, okio.internal.Path.toPath(buffer, false), false);
    }

    public final File toFile() {
        return new File(this.bytes.utf8());
    }

    public final j$.nio.file.Path toNioPath() {
        j$.nio.file.Path path = Paths.get(this.bytes.utf8(), new String[0]);
        path.getClass();
        return path;
    }

    public final String toString() {
        return this.bytes.utf8();
    }

    public final Character volumeLetter() {
        ByteString byteString = okio.internal.Path.SLASH;
        ByteString byteString2 = this.bytes;
        if (ByteString.indexOf$default(byteString2, byteString) != -1 || byteString2.getSize$okio() < 2 || byteString2.internalGet$okio(1) != 58) {
            return null;
        }
        char internalGet$okio = (char) byteString2.internalGet$okio(0);
        if (('a' > internalGet$okio || internalGet$okio >= '{') && ('A' > internalGet$okio || internalGet$okio >= '[')) {
            return null;
        }
        return Character.valueOf(internalGet$okio);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion implements CreationExtras.Key, Preference.SummaryProvider, CoroutineContext.Key, FactoryPools.Factory, VideoDecoder.MediaInitializer, RequestManagerTreeNode, K9MailLib.DebugStatus {
        public static Companion sSimpleSummaryProvider;

        public /* synthetic */ Companion(Object obj) {
        }

        public static void createThreadEntry(SQLiteDatabase sQLiteDatabase, long j, Long l, Long l2) {
            sQLiteDatabase.getClass();
            ContentValues contentValues = new ContentValues();
            contentValues.put("message_id", Long.valueOf(j));
            contentValues.put("root", l);
            contentValues.put("parent", l2);
            sQLiteDatabase.insert("threads", null, contentValues);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:19:0x006b A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x006c  */
        /* JADX WARN: Type inference failed for: r4v0, types: [kotlin.collections.EmptyList] */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.util.Collection, java.util.List] */
        /* JADX WARN: Type inference failed for: r4v10, types: [java.util.ArrayList] */
        /* JADX WARN: Type inference failed for: r4v12, types: [java.util.ArrayList] */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.util.List] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.fsck.k9.storage.messages.ThreadInfo doMessageThreading(android.database.sqlite.SQLiteDatabase r12, long r13, com.fsck.k9.storage.messages.ThreadHeaders r15) {
            /*
                Method dump skipped, instructions count: 358
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.Path.Companion.doMessageThreading(android.database.sqlite.SQLiteDatabase, long, com.fsck.k9.storage.messages.ThreadHeaders):com.fsck.k9.storage.messages.ThreadInfo");
        }

        public static Path get(String str) {
            str.getClass();
            ByteString byteString = okio.internal.Path.SLASH;
            Buffer buffer = new Buffer();
            buffer.m1057writeUtf8(str);
            return okio.internal.Path.toPath(buffer, false);
        }

        public static Path get$default(File file) {
            String str = Path.DIRECTORY_SEPARATOR;
            file.getClass();
            String file2 = file.toString();
            file2.getClass();
            return get(file2);
        }

        public static ThreadHeaders getMessageThreadHeaders(SQLiteDatabase sQLiteDatabase, long j) {
            sQLiteDatabase.getClass();
            Cursor rawQuery = sQLiteDatabase.rawQuery("\nSELECT messages.message_id, message_parts.header \nFROM messages \nLEFT JOIN message_parts ON (messages.message_part_id = message_parts.id) \nWHERE messages.id = ?\n            ", new String[]{String.valueOf(j)});
            try {
                if (!rawQuery.moveToFirst()) {
                    throw new IllegalStateException(("Message not found: " + j).toString());
                }
                String string = rawQuery.getString(0);
                byte[] blob = rawQuery.getBlob(1);
                Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                if (blob != null) {
                    Validate.parse(new ByteArrayInputStream(blob), new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(16, ref$ObjectRef, ref$ObjectRef2));
                }
                ThreadHeaders threadHeaders = new ThreadHeaders(string, (String) ref$ObjectRef.element, (String) ref$ObjectRef2.element);
                rawQuery.close();
                return threadHeaders;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(rawQuery, th);
                    throw th2;
                }
            }
        }

        public static ThreadInfo getThreadInfo(SQLiteDatabase sQLiteDatabase, long j, String str, boolean z) {
            ThreadInfo threadInfo = null;
            if (str == null) {
                return null;
            }
            Cursor rawQuery = sQLiteDatabase.rawQuery(CameraDevices$CC.m("\nSELECT t.id, t.message_id, t.root, t.parent \nFROM messages m \nLEFT JOIN threads t ON (t.message_id = m.id) \nWHERE m.folder_id = ? AND m.message_id = ? \n", z ? "AND m.empty = 1 " : "", "\nORDER BY m.id \nLIMIT 1\n            "), new String[]{String.valueOf(j), str});
            try {
                if (rawQuery.moveToFirst()) {
                    threadInfo = new ThreadInfo(Long.valueOf(rawQuery.getLong(0)), Long.valueOf(rawQuery.getLong(1)), rawQuery.getLong(2), rawQuery.isNull(3) ? null : Long.valueOf(rawQuery.getLong(3)));
                }
                rawQuery.close();
                return threadInfo;
            } finally {
            }
        }

        public static void updateThreadToNewRoot(SQLiteDatabase sQLiteDatabase, long j, long j2, Long l) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("root", Long.valueOf(j2));
            sQLiteDatabase.update("threads", contentValues, "root = ?", new String[]{String.valueOf(j)});
            contentValues.put("parent", l);
            sQLiteDatabase.update("threads", contentValues, "id = ?", new String[]{String.valueOf(j)});
        }

        @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
        public Object create() {
            return new LockedResource();
        }

        @Override // com.fsck.k9.mail.K9MailLib.DebugStatus
        public boolean debugSensitive() {
            K9 k9 = K9.INSTANCE;
            return ((DefaultGeneralSettingsManager) K9.generalSettingsManager$delegate.getValue()).getConfig().debugging.isSensitiveLoggingEnabled;
        }

        @Override // com.fsck.k9.mail.K9MailLib.DebugStatus
        public boolean enabled() {
            K9 k9 = K9.INSTANCE;
            return ((DefaultGeneralSettingsManager) K9.generalSettingsManager$delegate.getValue()).getConfig().debugging.isDebugLoggingEnabled;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
        public void initializeExtractor(MediaExtractor mediaExtractor, Object obj) {
            mediaExtractor.setDataSource(new VideoDecoder$ByteBufferInitializer$1((ByteBuffer) obj));
        }

        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
        public void initializeRetriever(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
            mediaMetadataRetriever.setDataSource(new VideoDecoder$ByteBufferInitializer$1((ByteBuffer) obj));
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x00a0  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00e8  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00a9  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0068  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x002f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object invoke(java.lang.String r23, java.lang.String r24, int r25, boolean r26, kotlin.coroutines.Continuation r27) {
            /*
                Method dump skipped, instructions count: 257
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.Path.Companion.invoke(java.lang.String, java.lang.String, int, boolean, kotlin.coroutines.Continuation):java.lang.Object");
        }

        @Override // androidx.preference.Preference.SummaryProvider
        public CharSequence provideSummary(Preference preference) {
            CharSequence[] charSequenceArr;
            CharSequence[] charSequenceArr2;
            ListPreference listPreference = (ListPreference) preference;
            int findIndexOfValue = listPreference.findIndexOfValue(listPreference.mValue);
            if (TextUtils.isEmpty((findIndexOfValue < 0 || (charSequenceArr2 = listPreference.mEntries) == null) ? null : charSequenceArr2[findIndexOfValue])) {
                return listPreference.mContext.getString(R.string.not_set);
            }
            int findIndexOfValue2 = listPreference.findIndexOfValue(listPreference.mValue);
            if (findIndexOfValue2 < 0 || (charSequenceArr = listPreference.mEntries) == null) {
                return null;
            }
            return charSequenceArr[findIndexOfValue2];
        }

        public static Path get$default(j$.nio.file.Path path) {
            String str = Path.DIRECTORY_SEPARATOR;
            path.getClass();
            return get(path.toString());
        }
    }

    public final Path resolve(Path path, boolean z) {
        path.getClass();
        return okio.internal.Path.commonResolve(this, path, z);
    }
}
