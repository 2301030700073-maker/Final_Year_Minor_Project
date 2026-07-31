package okhttp3.internal.http1;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.geometry.Offset;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.observers.BlockingMultiObserver;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeDefer;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import j$.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt;
import okhttp3.Cookie;
import okhttp3.Headers;
import okio.BufferedSource;
import okio.Path;
import okio.RealBufferedSource;
import org.jsoup.Jsoup;
import org.schabi.newpipe.database.feed.dao.FeedDAO_Impl;
import org.schabi.newpipe.database.stream.StreamWithState;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.local.feed.FeedDatabaseManager;
import org.schabi.newpipe.local.feed.FeedViewModel;
import org.schabi.newpipe.local.feed.service.FeedEventManager;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class HeadersReader implements Function {
    public final /* synthetic */ int $r8$classId;
    public long headerLimit;
    public Object source;

    public HeadersReader(RealBufferedSource realBufferedSource) {
        this.$r8$classId = 0;
        realBufferedSource.getClass();
        this.source = realBufferedSource;
        this.headerLimit = 262144L;
    }

    @Override // io.reactivex.rxjava3.functions.Function
    public Object apply(Object obj) {
        ArrayList arrayList;
        FeedViewModel.CombineResultEventHolder combineResultEventHolder = (FeedViewModel.CombineResultEventHolder) obj;
        combineResultEventHolder.getClass();
        FeedEventManager.Event event = combineResultEventHolder.t1;
        final boolean z = combineResultEventHolder.t2;
        final boolean z2 = combineResultEventHolder.t3;
        boolean z3 = combineResultEventHolder.t4;
        long j = combineResultEventHolder.t5;
        OffsetDateTime offsetDateTime = combineResultEventHolder.t6;
        if ((event instanceof FeedEventManager.Event.SuccessResultEvent) || (event instanceof FeedEventManager.Event.IdleEvent)) {
            FeedDatabaseManager feedDatabaseManager = ((FeedViewModel) this.source).feedDatabaseManager;
            final long j2 = this.headerLimit;
            final FeedDAO_Impl feedDAO_Impl = feedDatabaseManager.feedTable;
            final OffsetDateTime now = z3 ? null : OffsetDateTime.now();
            MaybeDefer createMaybe = Cookie.Companion.createMaybe(feedDAO_Impl.__db, new Function1() { // from class: org.schabi.newpipe.database.feed.dao.FeedDAO_Impl$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    int i;
                    Long valueOf;
                    int i2;
                    int i3;
                    Integer valueOf2;
                    long j3 = j2;
                    boolean z4 = z;
                    boolean z5 = z2;
                    FeedDAO_Impl feedDAO_Impl2 = feedDAO_Impl;
                    OffsetDateTime offsetDateTime2 = now;
                    SQLiteConnection sQLiteConnection = (SQLiteConnection) obj2;
                    sQLiteConnection.getClass();
                    SQLiteStatement prepare = sQLiteConnection.prepare("\n        SELECT s.*, sst.progress_time\n        FROM streams s\n\n        LEFT JOIN stream_state sst\n        ON s.uid = sst.stream_id\n        \n        LEFT JOIN stream_history sh\n        ON s.uid = sh.stream_id\n        \n        INNER JOIN feed f\n        ON s.uid = f.stream_id\n\n        LEFT JOIN feed_group_subscription_join fgs\n        ON (\n            ? <> -1\n            AND fgs.subscription_id = f.subscription_id\n        )\n\n        WHERE (\n            ? = -1\n            OR fgs.group_id = ?\n        )\n        AND (\n            ?\n            OR sh.stream_id IS NULL\n            OR sst.stream_id IS NULL\n            OR sst.progress_time < s.duration * 1000 - 60000\n            OR sst.progress_time < s.duration * 1000 * 3 / 4\n            OR s.stream_type = 'LIVE_STREAM'\n            OR s.stream_type = 'AUDIO_LIVE_STREAM'\n        )\n        AND (\n            ?\n            OR sh.stream_id IS NULL\n            OR sst.stream_id IS NULL\n            OR (sst.progress_time <= 5000\n            AND sst.progress_time <= s.duration * 1000 / 4)\n            OR (sst.progress_time >= s.duration * 1000 - 60000\n            AND sst.progress_time >= s.duration * 1000 * 3 / 4)\n        )\n        AND (\n            ? IS NULL\n            OR s.upload_date IS NULL\n            OR s.upload_date < ?\n        )\n\n        ORDER BY s.upload_date IS NULL DESC, s.upload_date DESC, s.uploader ASC\n        LIMIT 500\n        ");
                    try {
                        prepare.bindLong(1, j3);
                        prepare.bindLong(2, j3);
                        prepare.bindLong(3, j3);
                        prepare.bindLong(4, z4 ? 1L : 0L);
                        prepare.bindLong(5, z5 ? 1L : 0L);
                        Path.Companion companion = feedDAO_Impl2.__converters;
                        Long offsetDateTimeToTimestamp = Path.Companion.offsetDateTimeToTimestamp(offsetDateTime2);
                        if (offsetDateTimeToTimestamp == null) {
                            prepare.bindNull(6);
                        } else {
                            prepare.bindLong(6, offsetDateTimeToTimestamp.longValue());
                        }
                        Long offsetDateTimeToTimestamp2 = Path.Companion.offsetDateTimeToTimestamp(offsetDateTime2);
                        if (offsetDateTimeToTimestamp2 == null) {
                            prepare.bindNull(7);
                        } else {
                            prepare.bindLong(7, offsetDateTimeToTimestamp2.longValue());
                        }
                        int columnIndexOrThrow = DBUtil.getColumnIndexOrThrow(prepare, "uid");
                        int columnIndexOrThrow2 = DBUtil.getColumnIndexOrThrow(prepare, "service_id");
                        int columnIndexOrThrow3 = DBUtil.getColumnIndexOrThrow(prepare, "url");
                        int columnIndexOrThrow4 = DBUtil.getColumnIndexOrThrow(prepare, "title");
                        int columnIndexOrThrow5 = DBUtil.getColumnIndexOrThrow(prepare, "stream_type");
                        int columnIndexOrThrow6 = DBUtil.getColumnIndexOrThrow(prepare, "duration");
                        int columnIndexOrThrow7 = DBUtil.getColumnIndexOrThrow(prepare, "uploader");
                        int columnIndexOrThrow8 = DBUtil.getColumnIndexOrThrow(prepare, "uploader_url");
                        int columnIndexOrThrow9 = DBUtil.getColumnIndexOrThrow(prepare, "thumbnail_url");
                        int columnIndexOrThrow10 = DBUtil.getColumnIndexOrThrow(prepare, "view_count");
                        int columnIndexOrThrow11 = DBUtil.getColumnIndexOrThrow(prepare, "textual_upload_date");
                        int columnIndexOrThrow12 = DBUtil.getColumnIndexOrThrow(prepare, "upload_date");
                        int columnIndexOrThrow13 = DBUtil.getColumnIndexOrThrow(prepare, "is_upload_date_approximation");
                        int columnIndexOrThrow14 = DBUtil.getColumnIndexOrThrow(prepare, "progress_time");
                        ArrayList arrayList2 = new ArrayList();
                        while (prepare.step()) {
                            Boolean bool = null;
                            if (prepare.isNull(columnIndexOrThrow14)) {
                                i = columnIndexOrThrow14;
                                valueOf = null;
                            } else {
                                i = columnIndexOrThrow14;
                                valueOf = Long.valueOf(prepare.getLong(columnIndexOrThrow14));
                            }
                            long j4 = prepare.getLong(columnIndexOrThrow);
                            int i4 = columnIndexOrThrow13;
                            Long l = valueOf;
                            int i5 = (int) prepare.getLong(columnIndexOrThrow2);
                            String text = prepare.getText(columnIndexOrThrow3);
                            String text2 = prepare.getText(columnIndexOrThrow4);
                            StreamType streamTypeOf = Path.Companion.streamTypeOf(prepare.getText(columnIndexOrThrow5));
                            long j5 = prepare.getLong(columnIndexOrThrow6);
                            String text3 = prepare.getText(columnIndexOrThrow7);
                            String text4 = prepare.isNull(columnIndexOrThrow8) ? null : prepare.getText(columnIndexOrThrow8);
                            String text5 = prepare.isNull(columnIndexOrThrow9) ? null : prepare.getText(columnIndexOrThrow9);
                            Long valueOf3 = prepare.isNull(columnIndexOrThrow10) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow10));
                            String text6 = prepare.isNull(columnIndexOrThrow11) ? null : prepare.getText(columnIndexOrThrow11);
                            OffsetDateTime offsetDateTimeFromTimestamp = Path.Companion.offsetDateTimeFromTimestamp(prepare.isNull(columnIndexOrThrow12) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow12)));
                            if (prepare.isNull(i4)) {
                                i2 = columnIndexOrThrow;
                                i3 = columnIndexOrThrow2;
                                valueOf2 = null;
                            } else {
                                i2 = columnIndexOrThrow;
                                i3 = columnIndexOrThrow2;
                                valueOf2 = Integer.valueOf((int) prepare.getLong(i4));
                            }
                            if (valueOf2 != null) {
                                bool = Boolean.valueOf(valueOf2.intValue() != 0);
                            }
                            arrayList2.add(new StreamWithState(new StreamEntity(j4, i5, text, text2, streamTypeOf, j5, text3, text4, text5, valueOf3, text6, offsetDateTimeFromTimestamp, bool), l));
                            columnIndexOrThrow13 = i4;
                            columnIndexOrThrow = i2;
                            columnIndexOrThrow2 = i3;
                            columnIndexOrThrow14 = i;
                        }
                        prepare.close();
                        return arrayList2;
                    } catch (Throwable th) {
                        prepare.close();
                        throw th;
                    }
                }
            });
            Object arrayList2 = new ArrayList();
            BlockingMultiObserver blockingMultiObserver = new BlockingMultiObserver(1);
            createMaybe.subscribe(blockingMultiObserver);
            if (blockingMultiObserver.getCount() != 0) {
                try {
                    blockingMultiObserver.await();
                } catch (InterruptedException e) {
                    blockingMultiObserver.cancelled = true;
                    Disposable disposable = blockingMultiObserver.upstream;
                    if (disposable != null) {
                        disposable.dispose();
                    }
                    throw ExceptionHelper.wrapOrThrow(e);
                }
            }
            Throwable th = blockingMultiObserver.error;
            if (th != null) {
                throw ExceptionHelper.wrapOrThrow(th);
            }
            Object obj2 = blockingMultiObserver.value;
            if (obj2 != null) {
                arrayList2 = obj2;
            }
            arrayList = (List) arrayList2;
        } else {
            arrayList = new ArrayList();
        }
        return new FeedViewModel.CombineResultDataHolder(event, arrayList, j, offsetDateTime);
    }

    public void clear(int i) {
        if (i < 64) {
            this.headerLimit &= ~(1 << i);
            return;
        }
        HeadersReader headersReader = (HeadersReader) this.source;
        if (headersReader != null) {
            headersReader.clear(i - 64);
        }
    }

    public int countOnesBefore(int i) {
        HeadersReader headersReader = (HeadersReader) this.source;
        if (headersReader == null) {
            long j = this.headerLimit;
            return i >= 64 ? Long.bitCount(j) : Long.bitCount(((1 << i) - 1) & j);
        }
        if (i < 64) {
            return Long.bitCount(((1 << i) - 1) & this.headerLimit);
        }
        return Long.bitCount(this.headerLimit) + headersReader.countOnesBefore(i - 64);
    }

    public void ensureNext() {
        if (((HeadersReader) this.source) == null) {
            this.source = new HeadersReader();
        }
    }

    public boolean get(int i) {
        if (i < 64) {
            return ((1 << i) & this.headerLimit) != 0;
        }
        ensureNext();
        return ((HeadersReader) this.source).get(i - 64);
    }

    /* renamed from: getPostSlopOffset-qto3Fdw, reason: not valid java name */
    public long m711getPostSlopOffsetqto3Fdw(long j, float f, boolean z) {
        long m200plusMKHz9U;
        long j2 = this.headerLimit;
        if (z) {
            m200plusMKHz9U = Offset.m200plusMKHz9U(j2, j);
            this.headerLimit = m200plusMKHz9U;
        } else {
            m200plusMKHz9U = Offset.m200plusMKHz9U(j2, j);
        }
        if ((((Orientation) this.source) == null ? Offset.m197getDistanceimpl(m200plusMKHz9U) : Math.abs(m712mainAxisk4lQ0M(m200plusMKHz9U))) < f) {
            return 9205357640488583168L;
        }
        Orientation orientation = (Orientation) this.source;
        long j3 = this.headerLimit;
        if (orientation == null) {
            float m197getDistanceimpl = Offset.m197getDistanceimpl(j3);
            return Offset.m199minusMKHz9U(this.headerLimit, Offset.m201timestuRUvjQ((Float.floatToRawIntBits(Float.intBitsToFloat((int) (j3 >> 32)) / m197getDistanceimpl) << 32) | (Float.floatToRawIntBits(Float.intBitsToFloat((int) (j3 & 4294967295L)) / m197getDistanceimpl) & 4294967295L), f));
        }
        float m712mainAxisk4lQ0M = m712mainAxisk4lQ0M(j3) - (Math.signum(m712mainAxisk4lQ0M(this.headerLimit)) * f);
        long j4 = this.headerLimit;
        Orientation orientation2 = (Orientation) this.source;
        Orientation orientation3 = Orientation.Horizontal;
        float intBitsToFloat = Float.intBitsToFloat((int) (orientation2 == orientation3 ? j4 & 4294967295L : j4 >> 32));
        if (((Orientation) this.source) == orientation3) {
            return (Float.floatToRawIntBits(m712mainAxisk4lQ0M) << 32) | (Float.floatToRawIntBits(intBitsToFloat) & 4294967295L);
        }
        return (Float.floatToRawIntBits(m712mainAxisk4lQ0M) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
    }

    public void insert(int i, boolean z) {
        if (i >= 64) {
            ensureNext();
            ((HeadersReader) this.source).insert(i - 64, z);
            return;
        }
        long j = this.headerLimit;
        boolean z2 = (Long.MIN_VALUE & j) != 0;
        long j2 = (1 << i) - 1;
        this.headerLimit = ((j & (~j2)) << 1) | (j & j2);
        if (z) {
            set(i);
        } else {
            clear(i);
        }
        if (z2 || ((HeadersReader) this.source) != null) {
            ensureNext();
            ((HeadersReader) this.source).insert(0, z2);
        }
    }

    /* renamed from: mainAxis-k-4lQ0M, reason: not valid java name */
    public float m712mainAxisk4lQ0M(long j) {
        return Float.intBitsToFloat(((Orientation) this.source) == Orientation.Horizontal ? (int) (j >> 32) : (int) (j & 4294967295L));
    }

    public Headers readHeaders() {
        Headers.Builder builder = new Headers.Builder(0);
        while (true) {
            String readUtf8LineStrict = ((BufferedSource) this.source).readUtf8LineStrict(this.headerLimit);
            this.headerLimit -= readUtf8LineStrict.length();
            if (readUtf8LineStrict.length() == 0) {
                return builder.build();
            }
            int indexOf$default = StringsKt.indexOf$default(':', 1, 4, (CharSequence) readUtf8LineStrict);
            if (indexOf$default != -1) {
                Jsoup.commonAddLenient(builder, readUtf8LineStrict.substring(0, indexOf$default), readUtf8LineStrict.substring(indexOf$default + 1));
            } else if (readUtf8LineStrict.charAt(0) == ':') {
                Jsoup.commonAddLenient(builder, "", readUtf8LineStrict.substring(1));
            } else {
                Jsoup.commonAddLenient(builder, "", readUtf8LineStrict);
            }
        }
    }

    public boolean remove(int i) {
        if (i >= 64) {
            ensureNext();
            return ((HeadersReader) this.source).remove(i - 64);
        }
        long j = 1 << i;
        long j2 = this.headerLimit;
        boolean z = (j2 & j) != 0;
        long j3 = j2 & (~j);
        this.headerLimit = j3;
        long j4 = j - 1;
        this.headerLimit = (j3 & j4) | Long.rotateRight((~j4) & j3, 1);
        HeadersReader headersReader = (HeadersReader) this.source;
        if (headersReader != null) {
            if (headersReader.get(0)) {
                set(63);
            }
            ((HeadersReader) this.source).remove(0);
        }
        return z;
    }

    public void reset() {
        this.headerLimit = 0L;
        HeadersReader headersReader = (HeadersReader) this.source;
        if (headersReader != null) {
            headersReader.reset();
        }
    }

    public void set(int i) {
        if (i < 64) {
            this.headerLimit |= 1 << i;
        } else {
            ensureNext();
            ((HeadersReader) this.source).set(i - 64);
        }
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 2:
                if (((HeadersReader) this.source) == null) {
                    return Long.toBinaryString(this.headerLimit);
                }
                return ((HeadersReader) this.source).toString() + "xx" + Long.toBinaryString(this.headerLimit);
            default:
                return super.toString();
        }
    }

    public HeadersReader(FeedViewModel feedViewModel, long j) {
        this.$r8$classId = 3;
        this.source = feedViewModel;
        this.headerLimit = j;
    }

    public HeadersReader() {
        this.$r8$classId = 2;
        this.headerLimit = 0L;
    }

    public HeadersReader(Orientation orientation, int i) {
        this.$r8$classId = 1;
        this.source = orientation;
        this.headerLimit = 0L;
    }
}
