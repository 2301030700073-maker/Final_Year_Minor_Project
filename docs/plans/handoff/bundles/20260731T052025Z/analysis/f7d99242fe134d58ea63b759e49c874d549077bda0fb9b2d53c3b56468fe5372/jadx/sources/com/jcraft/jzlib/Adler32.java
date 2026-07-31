package com.jcraft.jzlib;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.text.TextUtils;
import android.text.format.DateFormat;
import androidx.appcompat.app.AppCompatActivity;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCase;
import androidx.camera.core.featuregroup.impl.UseCaseType;
import androidx.camera.core.streamsharing.StreamSharing;
import androidx.collection.internal.Lock;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.preference.EditTextPreference;
import androidx.preference.Preference;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.sqlite.SQLite;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import app.k9mail.feature.account.server.settings.domain.usecase.ValidateServer$ValidateServerError;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import com.bumptech.glide.manager.FrameWaiter;
import com.bumptech.glide.util.pool.FactoryPools;
import com.fsck.k9.R;
import com.fsck.k9.mail.K9MailLib;
import com.takisoft.preferencex.TimePickerPreference;
import java.util.Date;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.EmptySet;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.core.common.net.HostNameUtils;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.outcome.Outcome;
import net.thunderbird.feature.notification.VibratePattern;
import net.thunderbird.feature.notification.impl.DefaultNotificationRegistry;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import okio.internal.ZipFilesKt;
import org.minidns.util.Hex;
import org.slf4j.ILoggerFactory;
import org.slf4j.Logger;
import org.slf4j.helpers.NOPLogger;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Adler32 implements CreationExtras.Key, Preference.SummaryProvider, AutoMigrationSpec, VideoDecoder.MediaInitializer, FrameWaiter, FactoryPools.Resetter, K9MailLib.DebugStatus, ILoggerFactory {
    public static Adler32 instance;
    public static Adler32 sSimpleSummaryProvider;
    public final /* synthetic */ int $r8$classId;

    public Adler32(DefaultNotificationRegistry defaultNotificationRegistry) {
        this.$r8$classId = 1;
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        HandlerContext handlerContext = MainDispatcherLoader.dispatcher;
        handlerContext.getClass();
        FlowKt.stateIn(new FlowKt__LimitKt$drop$$inlined$unsafeFlow$1(defaultNotificationRegistry.registrar, 10), JobKt.CoroutineScope(handlerContext), SharingStarted.Companion.Eagerly, EmptySet.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0077, code lost:
    
        r6 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static okio.ByteString decodeBase64(java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jcraft.jzlib.Adler32.decodeBase64(java.lang.String):okio.ByteString");
    }

    public static ByteString decodeHex(String str) {
        if (str.length() % 2 != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) "Unexpected hex string: ".concat(str));
            return null;
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) (ZipFilesKt.access$decodeHexDigit(str.charAt(i2 + 1)) + (ZipFilesKt.access$decodeHexDigit(str.charAt(i2)) << 4));
        }
        return new ByteString(bArr);
    }

    public static VibratePattern deserialize(int i) {
        if (i == 0) {
            return VibratePattern.Default;
        }
        if (i == 1) {
            return VibratePattern.Pattern1;
        }
        if (i == 2) {
            return VibratePattern.Pattern2;
        }
        if (i == 3) {
            return VibratePattern.Pattern3;
        }
        if (i == 4) {
            return VibratePattern.Pattern4;
        }
        if (i == 5) {
            return VibratePattern.Pattern5;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Unknown VibratePattern value: ", i);
        return null;
    }

    public static ByteString encodeUtf8(String str) {
        str.getClass();
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        bytes.getClass();
        ByteString byteString = new ByteString(bytes);
        byteString.utf8 = str;
        return byteString;
    }

    public static Outcome execute(String str) {
        str.getClass();
        return StringsKt.isBlank(str) ? new Outcome.Failure(ValidateServer$ValidateServerError.EmptyServer.INSTANCE, null) : HostNameUtils.isLegalHostNameOrIP(str) != null ? Hex.getValidationSuccess() : new Outcome.Failure(ValidateServer$ValidateServerError.InvalidHostnameOrIpAddress.INSTANCE, null);
    }

    public static UseCaseType getFeatureGroupUseCaseType(UseCase useCase) {
        useCase.getClass();
        return useCase instanceof Preview ? UseCaseType.PREVIEW : useCase instanceof ImageCapture ? UseCaseType.IMAGE_CAPTURE : useCase instanceof ImageAnalysis ? UseCaseType.IMAGE_ANALYSIS : SQLite.isVideoCapture(useCase) ? UseCaseType.VIDEO_CAPTURE : useCase instanceof StreamSharing ? UseCaseType.STREAM_SHARING : UseCaseType.UNDEFINED;
    }

    public static void insertValue(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        sQLiteDatabase.getClass();
        if (str2 != null && sQLiteDatabase.insert("preferences_storage", null, SchemaInfoUtilKt.contentValuesOf(new Pair("primkey", str), new Pair("value", str2))) == -1) {
            Log.e("Error writing key '%s', value = '%s'", str, str2);
        }
    }

    public static ByteString of$default(byte[] bArr) {
        ByteString byteString = ByteString.EMPTY;
        int length = bArr.length;
        AtomicFU.checkOffsetAndCount(bArr.length, 0L, length);
        return new ByteString(ArraysKt___ArraysKt.copyOfRange(bArr, 0, length));
    }

    public static String readValue(SQLiteDatabase sQLiteDatabase, String str) {
        String str2;
        sQLiteDatabase.getClass();
        Cursor query = sQLiteDatabase.query("preferences_storage", new String[]{"value"}, "primkey = ?", new String[]{str}, null, null, null);
        try {
            if (query.moveToNext()) {
                str2 = Util.getStringOrThrow(query, "value");
                Log.d("Loading key '%s', value = '%s'", str, str2);
            } else {
                str2 = null;
            }
            query.close();
            return str2;
        } finally {
        }
    }

    public static void writeValue(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        sQLiteDatabase.getClass();
        str.getClass();
        if (str2 == null) {
            sQLiteDatabase.delete("preferences_storage", "primkey = ?", new String[]{str});
        } else if (sQLiteDatabase.update("preferences_storage", SchemaInfoUtilKt.contentValuesOf(new Pair("primkey", str), new Pair("value", str2)), "primkey = ?", new String[]{str}) == -1) {
            Log.e("Error writing key '%s', value = '%s'", str, str2);
        }
    }

    @Override // com.fsck.k9.mail.K9MailLib.DebugStatus
    public boolean debugSensitive() {
        return false;
    }

    @Override // com.fsck.k9.mail.K9MailLib.DebugStatus
    public boolean enabled() {
        return false;
    }

    @Override // org.slf4j.ILoggerFactory
    public Logger getLogger(String str) {
        return NOPLogger.NOP_LOGGER;
    }

    @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
    public void initializeExtractor(MediaExtractor mediaExtractor, Object obj) {
        AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
        mediaExtractor.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
    }

    @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
    public void initializeRetriever(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
        AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
        mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
    }

    @Override // androidx.room.migration.AutoMigrationSpec
    public void onPostMigrate(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
        frameworkSQLiteDatabase.getClass();
        frameworkSQLiteDatabase.execSQL("UPDATE WorkSpec SET `last_enqueue_time` = -1 WHERE `last_enqueue_time` = 0");
    }

    @Override // androidx.preference.Preference.SummaryProvider
    public CharSequence provideSummary(Preference preference) {
        switch (this.$r8$classId) {
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                EditTextPreference editTextPreference = (EditTextPreference) preference;
                return TextUtils.isEmpty(editTextPreference.mText) ? editTextPreference.mContext.getString(R.string.not_set) : editTextPreference.mText;
            default:
                TimePickerPreference timePickerPreference = (TimePickerPreference) preference;
                Date date = timePickerPreference.time;
                Context context = timePickerPreference.mContext;
                return date == null ? context.getString(R.string.not_set) : DateFormat.getTimeFormat(context).format(timePickerPreference.time);
        }
    }

    @Override // com.bumptech.glide.util.pool.FactoryPools.Resetter
    public void reset(Object obj) {
        ((List) obj).clear();
    }

    @Override // com.bumptech.glide.manager.FrameWaiter
    public void registerSelf(AppCompatActivity appCompatActivity) {
    }

    public Adler32(Lock lock) {
        this.$r8$classId = 11;
    }

    public /* synthetic */ Adler32(int i) {
        this.$r8$classId = i;
    }
}
