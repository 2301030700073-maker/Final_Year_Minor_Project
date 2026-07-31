package okio;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import androidx.compose.runtime.Latch;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.ExistingWorkPolicy;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.NetworkRequestCompat;
import j$.util.DesugarTimeZone;
import java.io.File;
import java.math.BigInteger;
import java.net.ProtocolException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TimeZone;
import kotlin.Pair;
import kotlin.UnsignedKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import kotlin.text.UStringsKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.json.JsonImpl;
import okhttp3.Protocol;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.tls.internal.der.Adapters;
import okhttp3.tls.internal.der.BasicDerAdapter;
import okhttp3.tls.internal.der.DerReader;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.commons.FilePageActivity;
import org.wikipedia.concurrency.FlowEventBus;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.donate.DonateDialog;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.login.LoginActivity;
import org.wikipedia.notifications.db.Notification;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.readinglist.sync.ReadingListSyncAdapter;
import org.wikipedia.readinglist.sync.ReadingListSyncEvent;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.talk.template.TalkTemplatesActivity;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        int rootLength = okio.internal.Path.rootLength(this);
        ByteString byteString = this.bytes;
        if (rootLength == -1) {
            rootLength = 0;
        } else if (rootLength < byteString.getSize$okio() && byteString.internalGet$okio(rootLength) == 92) {
            rootLength++;
        }
        int size$okio = byteString.getSize$okio();
        int i = rootLength;
        while (rootLength < size$okio) {
            if (byteString.internalGet$okio(rootLength) == 47 || byteString.internalGet$okio(rootLength) == 92) {
                arrayList.add(byteString.substring(i, rootLength));
                i = rootLength + 1;
            }
            rootLength++;
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
        int rootLength = okio.internal.Path.rootLength(this);
        ByteString byteString2 = this.bytes;
        Path path2 = rootLength == -1 ? null : new Path(byteString2.substring(0, rootLength));
        int rootLength2 = okio.internal.Path.rootLength(path);
        if (!Intrinsics.areEqual(path2, rootLength2 == -1 ? null : new Path(byteString.substring(0, rootLength2)))) {
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
            buffer.m876write(okio.internal.Path.DOT_DOT);
            buffer.m876write(slash);
        }
        int size2 = segmentsBytes.size();
        while (i < size2) {
            buffer.m876write((ByteString) segmentsBytes.get(i));
            buffer.m876write(slash);
            i++;
        }
        return okio.internal.Path.toPath(buffer, false);
    }

    public final Path resolve(String str) {
        str.getClass();
        Buffer buffer = new Buffer();
        buffer.m879writeUtf8(str);
        return okio.internal.Path.commonResolve(this, okio.internal.Path.toPath(buffer, false), false);
    }

    public final File toFile() {
        return new File(this.bytes.utf8());
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion implements Internal.EnumLiteMap, BasicDerAdapter.Codec {
        public static Companion instance;
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ Companion(int i) {
            this.$r8$classId = i;
        }

        public static String agentToString(Notification.Agent agent) {
            JsonImpl jsonImpl = JsonUtil.json;
            if (agent == null) {
                return null;
            }
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                return jsonImpl2.encodeToString(Notification.Agent.Companion.serializer(), agent);
            } catch (Exception e) {
                L.w(e);
                return null;
            }
        }

        public static ArrayList alpnProtocolNames(List list) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((Protocol) obj) != Protocol.HTTP_1_0) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((Protocol) it.next()).toString());
            }
            return arrayList2;
        }

        public static byte[] concatLengthPrefixed(List list) {
            Buffer buffer = new Buffer();
            Iterator it = alpnProtocolNames(list).iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                buffer.m877writeByte(str.length());
                buffer.m879writeUtf8(str);
            }
            return buffer.readByteArray(buffer.size);
        }

        public static String contentsToString(Notification.Contents contents) {
            JsonImpl jsonImpl = JsonUtil.json;
            if (contents == null) {
                return null;
            }
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                return jsonImpl2.encodeToString(Notification.Contents.Companion.serializer(), contents);
            } catch (Exception e) {
                L.w(e);
                return null;
            }
        }

        public static Set createIdsForDeletion(ReadingList readingList, Set set) {
            readingList.getClass();
            set.getClass();
            if (readingList.remoteId <= 0) {
                return EmptySet.INSTANCE;
            }
            Set set2 = set;
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set2, 10));
            Iterator it = set2.iterator();
            while (it.hasNext()) {
                arrayList.add(Long.valueOf(((ReadingListPage) it.next()).remoteId));
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                Object next = it2.next();
                if (((Number) next).longValue() > 0) {
                    arrayList2.add(next);
                }
            }
            ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList2, 10));
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                long longValue = ((Number) it3.next()).longValue();
                arrayList3.add(readingList.remoteId + ":" + longValue);
            }
            return CollectionsKt.toSet(arrayList3);
        }

        public static Path get(String str) {
            str.getClass();
            ByteString byteString = okio.internal.Path.SLASH;
            Buffer buffer = new Buffer();
            buffer.m879writeUtf8(str);
            return okio.internal.Path.toPath(buffer, false);
        }

        public static Path get$default(File file) {
            String str = Path.DIRECTORY_SEPARATOR;
            String file2 = file.toString();
            file2.getClass();
            return get(file2);
        }

        public static LinkMovementMethodExt getExternalLinkMovementMethod$default() {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            WikiSite wikiSite = Jsoup.getInstance().getWikiSite();
            LinkMovementMethodExt.ErrorLinkHandler errorLinkHandler = new LinkMovementMethodExt.ErrorLinkHandler(Jsoup.getInstance());
            errorLinkHandler.wikiSite = wikiSite;
            return new LinkMovementMethodExt(errorLinkHandler);
        }

        public static void manualSync(Bundle bundle) {
            Account account;
            if (ReadingListSyncAdapter.IN_PROGRESS) {
                return;
            }
            try {
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                AccountManager accountManager = AccountManager.get(Jsoup.getInstance());
                accountManager.getClass();
                String string = Jsoup.getInstance().getString(R.string.account_type);
                string.getClass();
                Account[] accountsByType = accountManager.getAccountsByType(string);
                accountsByType.getClass();
                account = (Account) ArraysKt___ArraysKt.firstOrNull(accountsByType);
            } catch (SecurityException e) {
                L.logRemoteErrorIfProd(e);
                account = null;
            }
            if (account != null) {
                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                if (Jsoup.getInstance().isOnline()) {
                    bundle.putBoolean("force", true);
                    bundle.putBoolean("expedited", true);
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    Set<String> keySet = bundle.keySet();
                    keySet.getClass();
                    for (String str : keySet) {
                        str.getClass();
                        linkedHashMap.put(str, Boolean.valueOf(bundle.getBoolean(str)));
                    }
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    NetworkType networkType = NetworkType.CONNECTED;
                    networkType.getClass();
                    Constraints constraints = new Constraints(new NetworkRequestCompat(null), networkType, false, false, false, false, -1L, -1L, Build.VERSION.SDK_INT >= 24 ? CollectionsKt.toSet(linkedHashSet) : EmptySet.INSTANCE);
                    Latch latch = new Latch(ReadingListSyncAdapter.class);
                    ((WorkSpec) latch.awaiters).constraints = constraints;
                    Data data = new Data(linkedHashMap);
                    UuidKt.toByteArrayInternalV1(data);
                    ((WorkSpec) latch.awaiters).input = data;
                    OneTimeWorkRequest build = latch.build();
                    WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                    WorkManagerImpl.getInstance$1(Jsoup.getInstance()).enqueueUniqueWork("readingListSyncAdapter", ExistingWorkPolicy.REPLACE, build);
                    return;
                }
            }
            if (bundle.containsKey("refreshing")) {
                FlowEventBus.post(new ReadingListSyncEvent(false));
            }
        }

        public static /* synthetic */ void manualSync$default() {
            manualSync(new Bundle());
        }

        public static void manualSyncWithForce() {
            manualSync(UStringsKt.bundleOf(new Pair("forceFullSync", Boolean.TRUE)));
        }

        public static DonateDialog newInstance$default(int i, String str, String str2) {
            if ((i & 1) != 0) {
                str = null;
            }
            if ((i & 2) != 0) {
                str2 = null;
            }
            boolean z = (i & 4) == 0;
            boolean z2 = (i & 8) == 0;
            DonateDialog donateDialog = new DonateDialog();
            donateDialog.setArguments(UStringsKt.bundleOf(new Pair("campaignId", str), new Pair("donateUrl", str2), new Pair("fromDonationReminder", Boolean.valueOf(z)), new Pair("fromYiR", Boolean.valueOf(z2))));
            return donateDialog;
        }

        public static Intent newIntent(Context context, PageTitle pageTitle, boolean z) {
            pageTitle.getClass();
            Intent putExtra = new Intent(context, (Class<?>) FilePageActivity.class).putExtra("title", pageTitle).putExtra("allowEdit", z);
            putExtra.getClass();
            return putExtra;
        }

        public static Intent newIntent$default(Context context, PageTitle pageTitle, long j, long j2, int i) {
            int i2 = TalkTemplatesActivity.$r8$clinit;
            boolean z = (i & 4) == 0;
            if ((i & 8) != 0) {
                j = -1;
            }
            if ((i & 16) != 0) {
                j2 = -1;
            }
            Intent putExtra = new Intent(context, (Class<?>) TalkTemplatesActivity.class).putExtra("title", pageTitle).putExtra("templateManagement", z).putExtra("fromRevisionId", j).putExtra("toRevisionId", j2);
            putExtra.getClass();
            return putExtra;
        }

        public static void setSyncEnabledWithSetup() {
            Prefs prefs = Prefs.INSTANCE;
            Prefs.setReadingListSyncEnabled(true);
            PrefsIoUtil.setBoolean(R.string.preference_key_reading_lists_remote_setup_pending, true);
            PrefsIoUtil.setBoolean(R.string.preference_key_reading_lists_remote_delete_pending, false);
            manualSync$default();
        }

        public static Notification.Agent stringToAgent(String str) {
            JsonImpl jsonImpl = JsonUtil.json;
            Object obj = null;
            if (str != null && str.length() != 0) {
                try {
                    JsonImpl jsonImpl2 = JsonUtil.json;
                    jsonImpl2.getClass();
                    obj = jsonImpl2.decodeFromString(str, UnsignedKt.getNullable(Notification.Agent.Companion.serializer()));
                } catch (Exception e) {
                    L.w(e);
                }
            }
            return (Notification.Agent) obj;
        }

        public static Notification.Contents stringToContents(String str) {
            JsonImpl jsonImpl = JsonUtil.json;
            Object obj = null;
            if (str != null && str.length() != 0) {
                try {
                    JsonImpl jsonImpl2 = JsonUtil.json;
                    jsonImpl2.getClass();
                    obj = jsonImpl2.decodeFromString(str, UnsignedKt.getNullable(Notification.Contents.Companion.serializer()));
                } catch (Exception e) {
                    L.w(e);
                }
            }
            return (Notification.Contents) obj;
        }

        public static Notification.Timestamp stringToTimestamp(String str) {
            JsonImpl jsonImpl = JsonUtil.json;
            Object obj = null;
            if (str != null && str.length() != 0) {
                try {
                    JsonImpl jsonImpl2 = JsonUtil.json;
                    jsonImpl2.getClass();
                    obj = jsonImpl2.decodeFromString(str, UnsignedKt.getNullable(Notification.Timestamp.Companion.serializer()));
                } catch (Exception e) {
                    L.w(e);
                }
            }
            return (Notification.Timestamp) obj;
        }

        public static Notification.Title stringToTitle(String str) {
            JsonImpl jsonImpl = JsonUtil.json;
            Object obj = null;
            if (str != null && str.length() != 0) {
                try {
                    JsonImpl jsonImpl2 = JsonUtil.json;
                    jsonImpl2.getClass();
                    obj = jsonImpl2.decodeFromString(str, UnsignedKt.getNullable(Notification.Title.Companion.serializer()));
                } catch (Exception e) {
                    L.w(e);
                }
            }
            return (Notification.Title) obj;
        }

        public static String timestampToString(Notification.Timestamp timestamp) {
            JsonImpl jsonImpl = JsonUtil.json;
            if (timestamp == null) {
                return null;
            }
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                return jsonImpl2.encodeToString(Notification.Timestamp.Companion.serializer(), timestamp);
            } catch (Exception e) {
                L.w(e);
                return null;
            }
        }

        public static String titleToString(Notification.Title title) {
            JsonImpl jsonImpl = JsonUtil.json;
            if (title == null) {
                return null;
            }
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                return jsonImpl2.encodeToString(Notification.Title.Companion.serializer(), title);
            } catch (Exception e) {
                L.w(e);
                return null;
            }
        }

        @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
        public Object decode(DerReader derReader) {
            switch (this.$r8$classId) {
                case 7:
                    derReader.getClass();
                    if (derReader.getBytesLeft() == 1) {
                        return Boolean.valueOf(derReader.source.readByte() != 0);
                    }
                    throw new ProtocolException("unexpected length: " + derReader.getBytesLeft() + " at " + derReader);
                case 8:
                    derReader.getClass();
                    if (derReader.getBytesLeft() != 0) {
                        RealBufferedSource realBufferedSource = derReader.source;
                        long bytesLeft = derReader.getBytesLeft();
                        realBufferedSource.require(bytesLeft);
                        return new BigInteger(realBufferedSource.bufferField.readByteArray(bytesLeft));
                    }
                    throw new ProtocolException("unexpected length: " + derReader.getBytesLeft() + " at " + derReader);
                case 9:
                    derReader.getClass();
                    Buffer buffer = new Buffer();
                    long readVariableLengthLong = derReader.readVariableLengthLong();
                    if (0 <= readVariableLengthLong && readVariableLengthLong < 40) {
                        buffer.m878writeDecimalLong(0L);
                        buffer.m877writeByte(46);
                        buffer.m878writeDecimalLong(readVariableLengthLong);
                    } else if (40 > readVariableLengthLong || readVariableLengthLong >= 80) {
                        buffer.m878writeDecimalLong(2L);
                        buffer.m877writeByte(46);
                        buffer.m878writeDecimalLong(readVariableLengthLong - 80);
                    } else {
                        buffer.m878writeDecimalLong(1L);
                        buffer.m877writeByte(46);
                        buffer.m878writeDecimalLong(readVariableLengthLong - 40);
                    }
                    while (derReader.getByteCount() < derReader.limit) {
                        buffer.m877writeByte(46);
                        buffer.m878writeDecimalLong(derReader.readVariableLengthLong());
                    }
                    return buffer.readUtf8();
                default:
                    derReader.getClass();
                    String readUtf8String = derReader.readUtf8String();
                    BasicDerAdapter basicDerAdapter = Adapters.BOOLEAN;
                    TimeZone timeZone = DesugarTimeZone.getTimeZone("GMT");
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMddHHmmss'Z'");
                    simpleDateFormat.setTimeZone(timeZone);
                    simpleDateFormat.set2DigitYearStart(new Date(-631152000000L));
                    try {
                        return Long.valueOf(simpleDateFormat.parse(readUtf8String).getTime());
                    } catch (ParseException unused) {
                        throw new ProtocolException("Failed to parse UTCTime ".concat(readUtf8String));
                    }
            }
        }

        @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
        public void encode(Latch latch, Object obj) {
            switch (this.$r8$classId) {
                case 7:
                    boolean booleanValue = ((Boolean) obj).booleanValue();
                    latch.getClass();
                    latch.sink().writeByte(booleanValue ? -1 : 0);
                    break;
                case 8:
                    BigInteger bigInteger = (BigInteger) obj;
                    latch.getClass();
                    bigInteger.getClass();
                    BufferedSink sink = latch.sink();
                    byte[] byteArray = bigInteger.toByteArray();
                    byteArray.getClass();
                    sink.write(byteArray);
                    break;
                case 9:
                    String str = (String) obj;
                    latch.getClass();
                    str.getClass();
                    Buffer buffer = new Buffer();
                    buffer.m879writeUtf8(str);
                    long readDecimalLong = buffer.readDecimalLong();
                    if (buffer.readByte() != 46) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Failed requirement.");
                        break;
                    } else {
                        latch.writeVariableLengthLong((readDecimalLong * 40) + buffer.readDecimalLong());
                        while (!buffer.exhausted()) {
                            if (buffer.readByte() != 46) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m("Failed requirement.");
                                break;
                            } else {
                                latch.writeVariableLengthLong(buffer.readDecimalLong());
                            }
                        }
                        break;
                    }
                default:
                    long longValue = ((Number) obj).longValue();
                    latch.getClass();
                    BasicDerAdapter basicDerAdapter = Adapters.BOOLEAN;
                    TimeZone timeZone = DesugarTimeZone.getTimeZone("GMT");
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMddHHmmss'Z'");
                    simpleDateFormat.setTimeZone(timeZone);
                    simpleDateFormat.set2DigitYearStart(new Date(-631152000000L));
                    String format = simpleDateFormat.format(Long.valueOf(longValue));
                    format.getClass();
                    latch.sink().writeUtf8(format);
                    break;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:14:0x015f  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0186  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x011a  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0125  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x01b8  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x005b  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0034  */
        /* JADX WARN: Type inference failed for: r5v1, types: [kotlin.coroutines.Continuation] */
        /* JADX WARN: Type inference failed for: r5v11 */
        /* JADX WARN: Type inference failed for: r5v2 */
        /* JADX WARN: Type inference failed for: r5v8 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.io.Serializable watchPageTitle(kotlinx.coroutines.CoroutineScope r18, org.wikipedia.page.PageTitle r19, boolean r20, org.wikipedia.watchlist.WatchlistExpiry r21, java.lang.Boolean r22, java.lang.Boolean r23, kotlin.coroutines.jvm.internal.ContinuationImpl r24) {
            /*
                Method dump skipped, instructions count: 446
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.Path.Companion.watchPageTitle(kotlinx.coroutines.CoroutineScope, org.wikipedia.page.PageTitle, boolean, org.wikipedia.watchlist.WatchlistExpiry, java.lang.Boolean, java.lang.Boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
        }

        public static Intent newIntent(Context context, String str, boolean z) {
            Intent putExtra = new Intent(context, (Class<?>) LoginActivity.class).putExtra("login_request_source", str).putExtra("create_account_first", z);
            putExtra.getClass();
            return putExtra;
        }
    }
}
