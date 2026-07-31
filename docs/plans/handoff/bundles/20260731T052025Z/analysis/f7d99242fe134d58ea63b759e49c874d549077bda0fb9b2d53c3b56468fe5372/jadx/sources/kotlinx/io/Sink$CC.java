package kotlinx.io;

import android.database.sqlite.SQLiteDatabase;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import com.jcraft.jzlib.Adler32;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.datetime.format.AbstractDateTimeFormatBuilder;
import kotlinx.datetime.format.Padding;
import kotlinx.datetime.format.UtcOffsetFormat;
import kotlinx.datetime.format.UtcOffsetMinuteOfHourDirective;
import kotlinx.datetime.format.UtcOffsetSecondOfMinuteDirective;
import kotlinx.datetime.format.UtcOffsetWholeHoursDirective;
import kotlinx.datetime.internal.format.AlternativesParsingFormatStructure;
import kotlinx.datetime.internal.format.BasicFormatStructure;
import kotlinx.datetime.internal.format.CachedFormatStructure;
import kotlinx.datetime.internal.format.ConcatenatedFormatStructure;
import kotlinx.datetime.internal.format.ConstantFormatStructure;
import kotlinx.datetime.internal.format.FormatStructure;
import kotlinx.datetime.internal.format.OptionalFormatStructure;
import kotlinx.datetime.internal.format.SignedFormatStructure;
import net.thunderbird.core.featureflag.FeatureFlagResult;
import net.thunderbird.core.logging.LogLevel;
import net.thunderbird.core.logging.LogSink;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.mail.folder.api.OutboxFolderManager$getOutboxFolderIdSync$1;
import net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListMetadata;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ForwardingFileSystem$$ExternalSyntheticLambda0;
import okio.Path;
import org.jetbrains.compose.resources.LanguageQualifier;
import org.jsoup.helper.Validate;
import org.koin.core.Koin;
import org.koin.core.context.GlobalContext;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* renamed from: kotlinx.io.Sink$-CC, reason: invalid class name */
/* loaded from: classes.dex */
public abstract /* synthetic */ class Sink$CC {
    public static void $default$appendAlternativeParsingImpl(AbstractDateTimeFormatBuilder abstractDateTimeFormatBuilder, Function1[] function1Arr, Function1 function1) {
        ArrayList arrayList = new ArrayList(function1Arr.length);
        for (Function1 function12 : function1Arr) {
            AbstractDateTimeFormatBuilder createEmpty = abstractDateTimeFormatBuilder.createEmpty();
            function12.invoke(createEmpty);
            arrayList.add(new ConcatenatedFormatStructure(createEmpty.getActualBuilder().namesAndValues));
        }
        AbstractDateTimeFormatBuilder createEmpty2 = abstractDateTimeFormatBuilder.createEmpty();
        function1.invoke(createEmpty2);
        abstractDateTimeFormatBuilder.getActualBuilder().add((FormatStructure) new AlternativesParsingFormatStructure(new ConcatenatedFormatStructure(createEmpty2.getActualBuilder().namesAndValues), arrayList));
    }

    public static void $default$appendOptionalImpl(AbstractDateTimeFormatBuilder abstractDateTimeFormatBuilder, String str, Function1 function1) {
        Headers.Builder actualBuilder = abstractDateTimeFormatBuilder.getActualBuilder();
        AbstractDateTimeFormatBuilder createEmpty = abstractDateTimeFormatBuilder.createEmpty();
        function1.invoke(createEmpty);
        actualBuilder.add((FormatStructure) new OptionalFormatStructure(str, new ConcatenatedFormatStructure(createEmpty.getActualBuilder().namesAndValues)));
    }

    public static CachedFormatStructure $default$build(AbstractDateTimeFormatBuilder abstractDateTimeFormatBuilder) {
        ArrayList arrayList = abstractDateTimeFormatBuilder.getActualBuilder().namesAndValues;
        arrayList.getClass();
        return new CachedFormatStructure(arrayList);
    }

    public static boolean $default$canLog(LogSink logSink, LogLevel logLevel) {
        return logSink.getLevel().compareTo(logLevel) <= 0;
    }

    public static void $default$chars(AbstractDateTimeFormatBuilder abstractDateTimeFormatBuilder, String str) {
        str.getClass();
        abstractDateTimeFormatBuilder.getActualBuilder().add((FormatStructure) new ConstantFormatStructure(str));
    }

    public static Koin $default$getKoin() {
        Koin koin = GlobalContext._koin;
        if (koin != null) {
            return koin;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("KoinApplication has not been started");
        return null;
    }

    public static void $default$onDisabledOrUnavailable(FeatureFlagResult featureFlagResult, K9$$ExternalSyntheticLambda0 k9$$ExternalSyntheticLambda0) {
        if ((featureFlagResult instanceof FeatureFlagResult.Disabled) || (featureFlagResult instanceof FeatureFlagResult.Unavailable)) {
            k9$$ExternalSyntheticLambda0.invoke();
        }
    }

    public static Object $default$whenEnabledOrNot(FeatureFlagResult featureFlagResult, Function0 function0, Function0 function02) {
        if (featureFlagResult instanceof FeatureFlagResult.Enabled) {
            return function0.invoke();
        }
        if ((featureFlagResult instanceof FeatureFlagResult.Disabled) || featureFlagResult.equals(FeatureFlagResult.Unavailable.INSTANCE)) {
            return function02.invoke();
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }

    public static MessageListState $default$withMetadata(MessageListState messageListState, Function1 function1) {
        if (messageListState instanceof MessageListState.LoadedMessages) {
            MessageListState.LoadedMessages loadedMessages = (MessageListState.LoadedMessages) messageListState;
            return MessageListState.LoadedMessages.copy$default(loadedMessages, (MessageListMetadata) function1.invoke(loadedMessages.metadata), null, null, 6);
        }
        if (messageListState instanceof MessageListState.LoadingMessages) {
            MessageListState.LoadingMessages loadingMessages = (MessageListState.LoadingMessages) messageListState;
            return MessageListState.LoadingMessages.copy$default(loadingMessages, 0.0f, (MessageListMetadata) function1.invoke(loadingMessages.metadata), null, null, 55);
        }
        if (messageListState instanceof MessageListState.SearchingMessages) {
            throw null;
        }
        if (messageListState instanceof MessageListState.SelectingMessages) {
            MessageListState.SelectingMessages selectingMessages = (MessageListState.SelectingMessages) messageListState;
            return MessageListState.SelectingMessages.copy$default(selectingMessages, (MessageListMetadata) function1.invoke(selectingMessages.metadata), null, null, 6);
        }
        if (messageListState instanceof MessageListState.WarmingUp) {
            MessageListState.WarmingUp warmingUp = (MessageListState.WarmingUp) messageListState;
            return MessageListState.WarmingUp.copy$default(warmingUp, (MessageListMetadata) function1.invoke(warmingUp.metadata), null, null, 6);
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }

    public static MessageListState $default$withPreferences(MessageListState messageListState, ForwardingFileSystem$$ExternalSyntheticLambda0 forwardingFileSystem$$ExternalSyntheticLambda0) {
        if (messageListState instanceof MessageListState.LoadedMessages) {
            MessageListState.LoadedMessages loadedMessages = (MessageListState.LoadedMessages) messageListState;
            return MessageListState.LoadedMessages.copy$default(loadedMessages, null, (MessageListPreferences) forwardingFileSystem$$ExternalSyntheticLambda0.invoke(loadedMessages.preferences), null, 5);
        }
        if (messageListState instanceof MessageListState.LoadingMessages) {
            MessageListState.LoadingMessages loadingMessages = (MessageListState.LoadingMessages) messageListState;
            return MessageListState.LoadingMessages.copy$default(loadingMessages, 0.0f, null, (MessageListPreferences) forwardingFileSystem$$ExternalSyntheticLambda0.invoke(loadingMessages.preferences), null, 47);
        }
        if (messageListState instanceof MessageListState.SearchingMessages) {
            forwardingFileSystem$$ExternalSyntheticLambda0.invoke(null);
            throw null;
        }
        if (messageListState instanceof MessageListState.SelectingMessages) {
            MessageListState.SelectingMessages selectingMessages = (MessageListState.SelectingMessages) messageListState;
            return MessageListState.SelectingMessages.copy$default(selectingMessages, null, (MessageListPreferences) forwardingFileSystem$$ExternalSyntheticLambda0.invoke(selectingMessages.preferences), null, 5);
        }
        if (!(messageListState instanceof MessageListState.WarmingUp)) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return null;
        }
        MessageListState.WarmingUp warmingUp = (MessageListState.WarmingUp) messageListState;
        MessageListPreferences messageListPreferences = warmingUp.preferences;
        return MessageListState.WarmingUp.copy$default(warmingUp, null, messageListPreferences != null ? (MessageListPreferences) forwardingFileSystem$$ExternalSyntheticLambda0.invoke(messageListPreferences) : null, null, 5);
    }

    public static /* synthetic */ void debug$default(Logger logger, String str, Exception exc, Function0 function0, int i) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            exc = null;
        }
        logger.debug(str, exc, function0);
    }

    public static /* synthetic */ void error$default(Logger logger, String str, Throwable th, Function0 function0, int i) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            th = null;
        }
        logger.error(str, th, function0);
    }

    public static /* synthetic */ Flow fuse$default(FusibleFlow fusibleFlow, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow, int i2) {
        if ((i2 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i2 & 2) != 0) {
            i = -3;
        }
        if ((i2 & 4) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return fusibleFlow.fuse(coroutineContext, i, bufferOverflow);
    }

    public static long getOutboxFolderIdSync$default(DefaultOutboxFolderManager defaultOutboxFolderManager, AccountId accountId) {
        defaultOutboxFolderManager.getClass();
        accountId.getClass();
        return ((Number) JobKt.runBlockingK(EmptyCoroutineContext.INSTANCE, new OutboxFolderManager$getOutboxFolderIdSync$1(defaultOutboxFolderManager, accountId, (Continuation) null, 0))).longValue();
    }

    public static /* synthetic */ boolean getV4(int i) {
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            return false;
        }
        if (i == 3 || i == 4) {
            return true;
        }
        throw null;
    }

    public static /* synthetic */ boolean getV6(int i) {
        if (i == 1) {
            return false;
        }
        if (i == 2 || i == 3 || i == 4) {
            return true;
        }
        throw null;
    }

    public static /* synthetic */ void info$default(Logger logger, String str, Exception exc, Function0 function0, int i) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            exc = null;
        }
        logger.info(str, exc, function0);
    }

    public static String m(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        return Adler32.readValue(sQLiteDatabase, str + str2);
    }

    public static void offsetHours$default(UtcOffsetFormat.Builder builder) {
        builder.getClass();
        builder.actualBuilder.add((FormatStructure) new SignedFormatStructure(new BasicFormatStructure(new UtcOffsetWholeHoursDirective(Padding.ZERO))));
    }

    public static void offsetMinutesOfHour$default(UtcOffsetFormat.Builder builder) {
        builder.getClass();
        builder.actualBuilder.add((FormatStructure) new BasicFormatStructure(new UtcOffsetMinuteOfHourDirective(Padding.ZERO)));
    }

    public static void offsetSecondsOfMinute$default(UtcOffsetFormat.Builder builder) {
        builder.getClass();
        builder.actualBuilder.add((FormatStructure) new BasicFormatStructure(new UtcOffsetSecondOfMinuteDirective(Padding.ZERO)));
    }

    public static /* synthetic */ String stringValueOf$2(int i) {
        switch (i) {
            case 1:
                return "BEGIN_ARRAY";
            case 2:
                return "END_ARRAY";
            case 3:
                return "BEGIN_OBJECT";
            case 4:
                return "END_OBJECT";
            case 5:
                return "NAME";
            case 6:
                return "STRING";
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return "NUMBER";
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return "BOOLEAN";
            case 9:
                return "NULL";
            case 10:
                return "END_DOCUMENT";
            default:
                return "null";
        }
    }

    public static /* synthetic */ String stringValueOf$4(int i) {
        switch (i) {
            case 1:
                return "Doctype";
            case 2:
                return "StartTag";
            case 3:
                return "EndTag";
            case 4:
                return "Comment";
            case 5:
                return "Character";
            case 6:
                return "XmlDecl";
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return "EOF";
            default:
                return "null";
        }
    }

    public static /* synthetic */ void verbose$default(Logger logger, String str, Throwable th, Function0 function0, int i) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            th = null;
        }
        logger.verbose(str, th, function0);
    }

    public static /* synthetic */ void warn$default(Logger logger, Exception exc, Function0 function0, int i) {
        String str = (i & 1) != 0 ? null : "MainActivity";
        if ((i & 2) != 0) {
            exc = null;
        }
        logger.warn(str, exc, function0);
    }

    public static void write$default(Buffer buffer, byte[] bArr) {
        int length = bArr.length;
        long length2 = bArr.length;
        long j = length;
        if (j > length2) {
            throw new IndexOutOfBoundsException("startIndex (0) and endIndex (" + j + ") are not within the range [0..size(" + length2 + "))");
        }
        if (0 > j) {
            throw new IllegalArgumentException("startIndex (0) > endIndex (" + j + ')');
        }
        int i = 0;
        while (i < length) {
            Segment writableSegment = buffer.writableSegment();
            byte[] bArr2 = writableSegment.data;
            int min = Math.min(length - i, bArr2.length - writableSegment.limit) + i;
            ArraysKt___ArraysKt.copyInto(writableSegment.limit, i, min, bArr, bArr2);
            writableSegment.limit = (min - i) + writableSegment.limit;
            i = min;
        }
        buffer.sizeMut += length;
    }

    public static String m(Path path, String str) {
        return str + path;
    }

    public static Set m(String str) {
        return Validate.setOf(new LanguageQualifier(str));
    }

    public static void m(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String str4) {
        sQLiteDatabase.execSQL(str);
        sQLiteDatabase.execSQL(str2);
        sQLiteDatabase.execSQL(str3);
        sQLiteDatabase.execSQL(str4);
    }

    public static /* synthetic */ void m(InputStreamSource inputStreamSource) {
        if (inputStreamSource instanceof AutoCloseable) {
            inputStreamSource.close();
        } else {
            if (inputStreamSource instanceof ExecutorService) {
                throw null;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
        }
    }

    public static /* synthetic */ void m(OutputStreamSink outputStreamSink) {
        if (outputStreamSink instanceof AutoCloseable) {
            outputStreamSink.close();
        } else {
            if (outputStreamSink instanceof ExecutorService) {
                throw null;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
        }
    }
}
