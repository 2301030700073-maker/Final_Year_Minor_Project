package kotlin.time;

import androidx.exifinterface.media.ExifInterface;
import com.android.volley.BuildConfig;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.LongRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* compiled from: Duration.kt */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b4\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087@\u0018\u0000 ¬\u00012\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0002¬\u0001B\u0014\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J%\u0010K\u001a\u00020\u00002\u0006\u0010L\u001a\u00020\u00032\u0006\u0010M\u001a\u00020\u0003H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bN\u0010OJ\u001b\u0010P\u001a\u00020\t2\u0006\u0010Q\u001a\u00020\u0000H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\bR\u0010SJ\u001e\u0010T\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u000fH\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bV\u0010WJ\u001e\u0010T\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\tH\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bV\u0010XJ\u001b\u0010T\u001a\u00020\u000f2\u0006\u0010Q\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\bY\u0010ZJ\u001a\u0010[\u001a\u00020\\2\b\u0010Q\u001a\u0004\u0018\u00010]HÖ\u0003¢\u0006\u0004\b^\u0010_J\u0010\u0010`\u001a\u00020\tHÖ\u0001¢\u0006\u0004\ba\u0010\rJ\r\u0010b\u001a\u00020\\¢\u0006\u0004\bc\u0010dJ\u000f\u0010e\u001a\u00020\\H\u0002¢\u0006\u0004\bf\u0010dJ\u000f\u0010g\u001a\u00020\\H\u0002¢\u0006\u0004\bh\u0010dJ\r\u0010i\u001a\u00020\\¢\u0006\u0004\bj\u0010dJ\r\u0010k\u001a\u00020\\¢\u0006\u0004\bl\u0010dJ\r\u0010m\u001a\u00020\\¢\u0006\u0004\bn\u0010dJ\u001b\u0010o\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\bp\u0010qJ\u001b\u0010r\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\bs\u0010qJ\u001e\u0010t\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u000fH\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bu\u0010WJ\u001e\u0010t\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\tH\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bu\u0010XJ \u0001\u0010v\u001a\u0002Hw\"\u0004\b\u0000\u0010w2v\u0010x\u001ar\u0012\u0013\u0012\u00110\t¢\u0006\f\bz\u0012\b\b{\u0012\u0004\b\b(|\u0012\u0013\u0012\u00110\t¢\u0006\f\bz\u0012\b\b{\u0012\u0004\b\b(}\u0012\u0013\u0012\u00110\t¢\u0006\f\bz\u0012\b\b{\u0012\u0004\b\b(~\u0012\u0013\u0012\u00110\t¢\u0006\f\bz\u0012\b\b{\u0012\u0004\b\b(\u007f\u0012\u0014\u0012\u00120\t¢\u0006\r\bz\u0012\t\b{\u0012\u0005\b\b(\u0080\u0001\u0012\u0004\u0012\u0002Hw0yH\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J\u008c\u0001\u0010v\u001a\u0002Hw\"\u0004\b\u0000\u0010w2b\u0010x\u001a^\u0012\u0013\u0012\u00110\t¢\u0006\f\bz\u0012\b\b{\u0012\u0004\b\b(}\u0012\u0013\u0012\u00110\t¢\u0006\f\bz\u0012\b\b{\u0012\u0004\b\b(~\u0012\u0013\u0012\u00110\t¢\u0006\f\bz\u0012\b\b{\u0012\u0004\b\b(\u007f\u0012\u0014\u0012\u00120\t¢\u0006\r\bz\u0012\t\b{\u0012\u0005\b\b(\u0080\u0001\u0012\u0004\u0012\u0002Hw0\u0083\u0001H\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0006\b\u0081\u0001\u0010\u0084\u0001Jw\u0010v\u001a\u0002Hw\"\u0004\b\u0000\u0010w2M\u0010x\u001aI\u0012\u0013\u0012\u00110\t¢\u0006\f\bz\u0012\b\b{\u0012\u0004\b\b(~\u0012\u0013\u0012\u00110\t¢\u0006\f\bz\u0012\b\b{\u0012\u0004\b\b(\u007f\u0012\u0014\u0012\u00120\t¢\u0006\r\bz\u0012\t\b{\u0012\u0005\b\b(\u0080\u0001\u0012\u0004\u0012\u0002Hw0\u0085\u0001H\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0006\b\u0081\u0001\u0010\u0086\u0001Jb\u0010v\u001a\u0002Hw\"\u0004\b\u0000\u0010w28\u0010x\u001a4\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bz\u0012\b\b{\u0012\u0004\b\b(\u007f\u0012\u0014\u0012\u00120\t¢\u0006\r\bz\u0012\t\b{\u0012\u0005\b\b(\u0080\u0001\u0012\u0004\u0012\u0002Hw0\u0087\u0001H\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0006\b\u0081\u0001\u0010\u0088\u0001J\u001e\u0010\u0089\u0001\u001a\u00020\u000f2\f\u0010\u008a\u0001\u001a\u00070Dj\u0003`\u008b\u0001¢\u0006\u0006\b\u008c\u0001\u0010\u008d\u0001J\u001e\u0010\u008e\u0001\u001a\u00020\t2\f\u0010\u008a\u0001\u001a\u00070Dj\u0003`\u008b\u0001¢\u0006\u0006\b\u008f\u0001\u0010\u0090\u0001J\u0011\u0010\u0091\u0001\u001a\u00030\u0092\u0001¢\u0006\u0006\b\u0093\u0001\u0010\u0094\u0001J\u001e\u0010\u0095\u0001\u001a\u00020\u00032\f\u0010\u008a\u0001\u001a\u00070Dj\u0003`\u008b\u0001¢\u0006\u0006\b\u0096\u0001\u0010\u0097\u0001J\u0011\u0010\u0098\u0001\u001a\u00020\u0003H\u0007¢\u0006\u0005\b\u0099\u0001\u0010\u0005J\u0011\u0010\u009a\u0001\u001a\u00020\u0003H\u0007¢\u0006\u0005\b\u009b\u0001\u0010\u0005J\u0013\u0010\u009c\u0001\u001a\u00030\u0092\u0001H\u0016¢\u0006\u0006\b\u009d\u0001\u0010\u0094\u0001J*\u0010\u009c\u0001\u001a\u00030\u0092\u00012\f\u0010\u008a\u0001\u001a\u00070Dj\u0003`\u008b\u00012\t\b\u0002\u0010\u009e\u0001\u001a\u00020\t¢\u0006\u0006\b\u009d\u0001\u0010\u009f\u0001J\u0018\u0010 \u0001\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0005\b¡\u0001\u0010\u0005JK\u0010¢\u0001\u001a\u00030£\u0001*\b0¤\u0001j\u0003`¥\u00012\u0007\u0010¦\u0001\u001a\u00020\t2\u0007\u0010§\u0001\u001a\u00020\t2\u0007\u0010¨\u0001\u001a\u00020\t2\b\u0010\u008a\u0001\u001a\u00030\u0092\u00012\u0007\u0010©\u0001\u001a\u00020\\H\u0002¢\u0006\u0006\bª\u0001\u0010«\u0001R\u0017\u0010\u0006\u001a\u00020\u00008Fø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005R\u001a\u0010\b\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0014\u0010\u000b\u001a\u0004\b\u0015\u0010\u0012R\u001a\u0010\u0016\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010\u000b\u001a\u0004\b\u0018\u0010\u0012R\u001a\u0010\u0019\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001a\u0010\u000b\u001a\u0004\b\u001b\u0010\u0012R\u001a\u0010\u001c\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001d\u0010\u000b\u001a\u0004\b\u001e\u0010\u0012R\u001a\u0010\u001f\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b \u0010\u000b\u001a\u0004\b!\u0010\u0012R\u001a\u0010\"\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b#\u0010\u000b\u001a\u0004\b$\u0010\u0012R\u001a\u0010%\u001a\u00020\u00038FX\u0087\u0004¢\u0006\f\u0012\u0004\b&\u0010\u000b\u001a\u0004\b'\u0010\u0005R\u001a\u0010(\u001a\u00020\u00038FX\u0087\u0004¢\u0006\f\u0012\u0004\b)\u0010\u000b\u001a\u0004\b*\u0010\u0005R\u001a\u0010+\u001a\u00020\u00038FX\u0087\u0004¢\u0006\f\u0012\u0004\b,\u0010\u000b\u001a\u0004\b-\u0010\u0005R\u001a\u0010.\u001a\u00020\u00038FX\u0087\u0004¢\u0006\f\u0012\u0004\b/\u0010\u000b\u001a\u0004\b0\u0010\u0005R\u001a\u00101\u001a\u00020\u00038FX\u0087\u0004¢\u0006\f\u0012\u0004\b2\u0010\u000b\u001a\u0004\b3\u0010\u0005R\u001a\u00104\u001a\u00020\u00038FX\u0087\u0004¢\u0006\f\u0012\u0004\b5\u0010\u000b\u001a\u0004\b6\u0010\u0005R\u001a\u00107\u001a\u00020\u00038FX\u0087\u0004¢\u0006\f\u0012\u0004\b8\u0010\u000b\u001a\u0004\b9\u0010\u0005R\u001a\u0010:\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b;\u0010\u000b\u001a\u0004\b<\u0010\rR\u001a\u0010=\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b>\u0010\u000b\u001a\u0004\b?\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010@\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\bA\u0010\u000b\u001a\u0004\bB\u0010\rR\u0014\u0010C\u001a\u00020D8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bE\u0010FR\u0015\u0010G\u001a\u00020\t8Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bH\u0010\rR\u0014\u0010I\u001a\u00020\u00038BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bJ\u0010\u0005\u0088\u0001\u0002\u0092\u0001\u00020\u0003ø\u0001\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b\u009920\u0001¨\u0006\u00ad\u0001"}, d2 = {"Lkotlin/time/Duration;", BuildConfig.FLAVOR, "rawValue", BuildConfig.FLAVOR, "constructor-impl", "(J)J", "absoluteValue", "getAbsoluteValue-UwyO8pc", "hoursComponent", BuildConfig.FLAVOR, "getHoursComponent$annotations", "()V", "getHoursComponent-impl", "(J)I", "inDays", BuildConfig.FLAVOR, "getInDays$annotations", "getInDays-impl", "(J)D", "inHours", "getInHours$annotations", "getInHours-impl", "inMicroseconds", "getInMicroseconds$annotations", "getInMicroseconds-impl", "inMilliseconds", "getInMilliseconds$annotations", "getInMilliseconds-impl", "inMinutes", "getInMinutes$annotations", "getInMinutes-impl", "inNanoseconds", "getInNanoseconds$annotations", "getInNanoseconds-impl", "inSeconds", "getInSeconds$annotations", "getInSeconds-impl", "inWholeDays", "getInWholeDays$annotations", "getInWholeDays-impl", "inWholeHours", "getInWholeHours$annotations", "getInWholeHours-impl", "inWholeMicroseconds", "getInWholeMicroseconds$annotations", "getInWholeMicroseconds-impl", "inWholeMilliseconds", "getInWholeMilliseconds$annotations", "getInWholeMilliseconds-impl", "inWholeMinutes", "getInWholeMinutes$annotations", "getInWholeMinutes-impl", "inWholeNanoseconds", "getInWholeNanoseconds$annotations", "getInWholeNanoseconds-impl", "inWholeSeconds", "getInWholeSeconds$annotations", "getInWholeSeconds-impl", "minutesComponent", "getMinutesComponent$annotations", "getMinutesComponent-impl", "nanosecondsComponent", "getNanosecondsComponent$annotations", "getNanosecondsComponent-impl", "secondsComponent", "getSecondsComponent$annotations", "getSecondsComponent-impl", "storageUnit", "Ljava/util/concurrent/TimeUnit;", "getStorageUnit-impl", "(J)Ljava/util/concurrent/TimeUnit;", "unitDiscriminator", "getUnitDiscriminator-impl", "value", "getValue-impl", "addValuesMixedRanges", "thisMillis", "otherNanos", "addValuesMixedRanges-UwyO8pc", "(JJJ)J", "compareTo", "other", "compareTo-LRDsOJo", "(JJ)I", "div", "scale", "div-UwyO8pc", "(JD)J", "(JI)J", "div-LRDsOJo", "(JJ)D", "equals", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "equals-impl", "(JLjava/lang/Object;)Z", "hashCode", "hashCode-impl", "isFinite", "isFinite-impl", "(J)Z", "isInMillis", "isInMillis-impl", "isInNanos", "isInNanos-impl", "isInfinite", "isInfinite-impl", "isNegative", "isNegative-impl", "isPositive", "isPositive-impl", "minus", "minus-LRDsOJo", "(JJ)J", "plus", "plus-LRDsOJo", "times", "times-UwyO8pc", "toComponents", ExifInterface.GPS_DIRECTION_TRUE, "action", "Lkotlin/Function5;", "Lkotlin/ParameterName;", "name", "days", "hours", "minutes", "seconds", "nanoseconds", "toComponents-impl", "(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;", "Lkotlin/Function4;", "(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;", "Lkotlin/Function3;", "(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "Lkotlin/Function2;", "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "toDouble", "unit", "Lkotlin/time/DurationUnit;", "toDouble-impl", "(JLjava/util/concurrent/TimeUnit;)D", "toInt", "toInt-impl", "(JLjava/util/concurrent/TimeUnit;)I", "toIsoString", BuildConfig.FLAVOR, "toIsoString-impl", "(J)Ljava/lang/String;", "toLong", "toLong-impl", "(JLjava/util/concurrent/TimeUnit;)J", "toLongMilliseconds", "toLongMilliseconds-impl", "toLongNanoseconds", "toLongNanoseconds-impl", "toString", "toString-impl", "decimals", "(JLjava/util/concurrent/TimeUnit;I)Ljava/lang/String;", "unaryMinus", "unaryMinus-UwyO8pc", "appendFractional", BuildConfig.FLAVOR, "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "whole", "fractional", "fractionalSize", "isoZeroes", "appendFractional-impl", "(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@JvmInline
/* loaded from: classes.dex */
public final class Duration implements Comparable<Duration> {
    private static final long INFINITE;
    private static final long NEG_INFINITE;
    private final long rawValue;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long ZERO = m1323constructorimpl(0);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Duration m1321boximpl(long j) {
        return new Duration(j);
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m1327equalsimpl(long j, Object obj) {
        return (obj instanceof Duration) && j == ((Duration) obj).getRawValue();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1328equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static /* synthetic */ void getHoursComponent$annotations() {
    }

    @Deprecated(message = "Use inWholeDays property instead or convert toDouble(DAYS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.DAYS)", imports = {}))
    public static /* synthetic */ void getInDays$annotations() {
    }

    @Deprecated(message = "Use inWholeHours property instead or convert toDouble(HOURS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.HOURS)", imports = {}))
    public static /* synthetic */ void getInHours$annotations() {
    }

    @Deprecated(message = "Use inWholeMicroseconds property instead or convert toDouble(MICROSECONDS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.MICROSECONDS)", imports = {}))
    public static /* synthetic */ void getInMicroseconds$annotations() {
    }

    @Deprecated(message = "Use inWholeMilliseconds property instead or convert toDouble(MILLISECONDS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.MILLISECONDS)", imports = {}))
    public static /* synthetic */ void getInMilliseconds$annotations() {
    }

    @Deprecated(message = "Use inWholeMinutes property instead or convert toDouble(MINUTES) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.MINUTES)", imports = {}))
    public static /* synthetic */ void getInMinutes$annotations() {
    }

    @Deprecated(message = "Use inWholeNanoseconds property instead or convert toDouble(NANOSECONDS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.NANOSECONDS)", imports = {}))
    public static /* synthetic */ void getInNanoseconds$annotations() {
    }

    @Deprecated(message = "Use inWholeSeconds property instead or convert toDouble(SECONDS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.SECONDS)", imports = {}))
    public static /* synthetic */ void getInSeconds$annotations() {
    }

    public static /* synthetic */ void getInWholeDays$annotations() {
    }

    public static /* synthetic */ void getInWholeHours$annotations() {
    }

    public static /* synthetic */ void getInWholeMicroseconds$annotations() {
    }

    public static /* synthetic */ void getInWholeMilliseconds$annotations() {
    }

    public static /* synthetic */ void getInWholeMinutes$annotations() {
    }

    public static /* synthetic */ void getInWholeNanoseconds$annotations() {
    }

    public static /* synthetic */ void getInWholeSeconds$annotations() {
    }

    public static /* synthetic */ void getMinutesComponent$annotations() {
    }

    public static /* synthetic */ void getNanosecondsComponent$annotations() {
    }

    public static /* synthetic */ void getSecondsComponent$annotations() {
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1351hashCodeimpl(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public int m1376compareToLRDsOJo(long j) {
        return m1322compareToLRDsOJo(this.rawValue, j);
    }

    public boolean equals(Object obj) {
        return m1327equalsimpl(this.rawValue, obj);
    }

    public int hashCode() {
        return m1351hashCodeimpl(this.rawValue);
    }

    public String toString() {
        return m1372toStringimpl(this.rawValue);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ long getRawValue() {
        return this.rawValue;
    }

    private /* synthetic */ Duration(long rawValue) {
        this.rawValue = rawValue;
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m1323constructorimpl(long rawValue) {
        if (m1354isInNanosimpl(rawValue)) {
            long m1350getValueimpl = m1350getValueimpl(rawValue);
            if (-4611686018426999999L > m1350getValueimpl || DurationKt.MAX_NANOS < m1350getValueimpl) {
                throw new AssertionError(m1350getValueimpl(rawValue) + " ns is out of nanoseconds range");
            }
        } else {
            long m1350getValueimpl2 = m1350getValueimpl(rawValue);
            if (-4611686018427387903L > m1350getValueimpl2 || DurationKt.MAX_MILLIS < m1350getValueimpl2) {
                throw new AssertionError(m1350getValueimpl(rawValue) + " ms is out of milliseconds range");
            }
            long m1350getValueimpl3 = m1350getValueimpl(rawValue);
            if (-4611686018426L <= m1350getValueimpl3 && 4611686018426L >= m1350getValueimpl3) {
                throw new AssertionError(m1350getValueimpl(rawValue) + " ms is denormalized");
            }
        }
        return rawValue;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Duration duration) {
        return m1376compareToLRDsOJo(duration.getRawValue());
    }

    /* renamed from: getValue-impl, reason: not valid java name */
    private static final long m1350getValueimpl(long $this) {
        return $this >> 1;
    }

    /* renamed from: getUnitDiscriminator-impl, reason: not valid java name */
    private static final int m1349getUnitDiscriminatorimpl(long $this) {
        return ((int) $this) & 1;
    }

    /* renamed from: isInNanos-impl, reason: not valid java name */
    private static final boolean m1354isInNanosimpl(long $this) {
        return (((int) $this) & 1) == 0;
    }

    /* renamed from: isInMillis-impl, reason: not valid java name */
    private static final boolean m1353isInMillisimpl(long $this) {
        return (((int) $this) & 1) == 1;
    }

    /* renamed from: getStorageUnit-impl, reason: not valid java name */
    private static final TimeUnit m1348getStorageUnitimpl(long $this) {
        return m1354isInNanosimpl($this) ? TimeUnit.NANOSECONDS : TimeUnit.MILLISECONDS;
    }

    /* compiled from: Duration.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\n\u0010\u000f\u001a\u00060\u0010j\u0002`\u00112\n\u0010\u0012\u001a\u00060\u0010j\u0002`\u0011J\u001d\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0016H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0014\u0010\u0017J\u001d\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0018H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0014\u0010\u0019J\u001d\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001b\u0010\u0015J\u001d\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0016H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001b\u0010\u0017J\u001d\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0018H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001b\u0010\u0019J\u001d\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001d\u0010\u0015J\u001d\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0016H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001d\u0010\u0017J\u001d\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0018H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001d\u0010\u0019J\u001d\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001f\u0010\u0015J\u001d\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0016H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001f\u0010\u0017J\u001d\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0018H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001f\u0010\u0019J\u001d\u0010 \u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b!\u0010\u0015J\u001d\u0010 \u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0016H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b!\u0010\u0017J\u001d\u0010 \u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0018H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b!\u0010\u0019J\u001d\u0010\"\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b#\u0010\u0015J\u001d\u0010\"\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0016H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b#\u0010\u0017J\u001d\u0010\"\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0018H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b#\u0010\u0019J\u001d\u0010$\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020%H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b&\u0010'J\u001d\u0010(\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020%H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b)\u0010'J\u001d\u0010*\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020%H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\b+J\u001d\u0010,\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020%H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\b-J\u001d\u0010.\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b/\u0010\u0015J\u001d\u0010.\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0016H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b/\u0010\u0017J\u001d\u0010.\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0018H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b/\u0010\u0019R\u0019\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\u00020\u0004X\u0080\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006R\u0019\u0010\n\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000b\u0010\u0006\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u00060"}, d2 = {"Lkotlin/time/Duration$Companion;", BuildConfig.FLAVOR, "()V", "INFINITE", "Lkotlin/time/Duration;", "getINFINITE-UwyO8pc", "()J", "J", "NEG_INFINITE", "getNEG_INFINITE-UwyO8pc$kotlin_stdlib", "ZERO", "getZERO-UwyO8pc", "convert", BuildConfig.FLAVOR, "value", "sourceUnit", "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "targetUnit", "days", "days-UwyO8pc", "(D)J", BuildConfig.FLAVOR, "(I)J", BuildConfig.FLAVOR, "(J)J", "hours", "hours-UwyO8pc", "microseconds", "microseconds-UwyO8pc", "milliseconds", "milliseconds-UwyO8pc", "minutes", "minutes-UwyO8pc", "nanoseconds", "nanoseconds-UwyO8pc", "parse", BuildConfig.FLAVOR, "parse-UwyO8pc", "(Ljava/lang/String;)J", "parseIsoString", "parseIsoString-UwyO8pc", "parseIsoStringOrNull", "parseIsoStringOrNull-FghU774", "parseOrNull", "parseOrNull-FghU774", "seconds", "seconds-UwyO8pc", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker $constructor_marker) {
            this();
        }

        /* renamed from: getZERO-UwyO8pc, reason: not valid java name */
        public final long m1383getZEROUwyO8pc() {
            return Duration.ZERO;
        }

        /* renamed from: getINFINITE-UwyO8pc, reason: not valid java name */
        public final long m1381getINFINITEUwyO8pc() {
            return Duration.INFINITE;
        }

        /* renamed from: getNEG_INFINITE-UwyO8pc$kotlin_stdlib, reason: not valid java name */
        public final long m1382getNEG_INFINITEUwyO8pc$kotlin_stdlib() {
            return Duration.NEG_INFINITE;
        }

        public final double convert(double value, TimeUnit sourceUnit, TimeUnit targetUnit) {
            Intrinsics.checkNotNullParameter(sourceUnit, "sourceUnit");
            Intrinsics.checkNotNullParameter(targetUnit, "targetUnit");
            return DurationUnitKt.convertDurationUnit(value, sourceUnit, targetUnit);
        }

        /* renamed from: nanoseconds-UwyO8pc, reason: not valid java name */
        public final long m1397nanosecondsUwyO8pc(int value) {
            return DurationKt.toDuration(value, TimeUnit.NANOSECONDS);
        }

        /* renamed from: nanoseconds-UwyO8pc, reason: not valid java name */
        public final long m1398nanosecondsUwyO8pc(long value) {
            return DurationKt.toDuration(value, TimeUnit.NANOSECONDS);
        }

        /* renamed from: nanoseconds-UwyO8pc, reason: not valid java name */
        public final long m1396nanosecondsUwyO8pc(double value) {
            return DurationKt.toDuration(value, TimeUnit.NANOSECONDS);
        }

        /* renamed from: microseconds-UwyO8pc, reason: not valid java name */
        public final long m1388microsecondsUwyO8pc(int value) {
            return DurationKt.toDuration(value, TimeUnit.MICROSECONDS);
        }

        /* renamed from: microseconds-UwyO8pc, reason: not valid java name */
        public final long m1389microsecondsUwyO8pc(long value) {
            return DurationKt.toDuration(value, TimeUnit.MICROSECONDS);
        }

        /* renamed from: microseconds-UwyO8pc, reason: not valid java name */
        public final long m1387microsecondsUwyO8pc(double value) {
            return DurationKt.toDuration(value, TimeUnit.MICROSECONDS);
        }

        /* renamed from: milliseconds-UwyO8pc, reason: not valid java name */
        public final long m1391millisecondsUwyO8pc(int value) {
            return DurationKt.toDuration(value, TimeUnit.MILLISECONDS);
        }

        /* renamed from: milliseconds-UwyO8pc, reason: not valid java name */
        public final long m1392millisecondsUwyO8pc(long value) {
            return DurationKt.toDuration(value, TimeUnit.MILLISECONDS);
        }

        /* renamed from: milliseconds-UwyO8pc, reason: not valid java name */
        public final long m1390millisecondsUwyO8pc(double value) {
            return DurationKt.toDuration(value, TimeUnit.MILLISECONDS);
        }

        /* renamed from: seconds-UwyO8pc, reason: not valid java name */
        public final long m1404secondsUwyO8pc(int value) {
            return DurationKt.toDuration(value, TimeUnit.SECONDS);
        }

        /* renamed from: seconds-UwyO8pc, reason: not valid java name */
        public final long m1405secondsUwyO8pc(long value) {
            return DurationKt.toDuration(value, TimeUnit.SECONDS);
        }

        /* renamed from: seconds-UwyO8pc, reason: not valid java name */
        public final long m1403secondsUwyO8pc(double value) {
            return DurationKt.toDuration(value, TimeUnit.SECONDS);
        }

        /* renamed from: minutes-UwyO8pc, reason: not valid java name */
        public final long m1394minutesUwyO8pc(int value) {
            return DurationKt.toDuration(value, TimeUnit.MINUTES);
        }

        /* renamed from: minutes-UwyO8pc, reason: not valid java name */
        public final long m1395minutesUwyO8pc(long value) {
            return DurationKt.toDuration(value, TimeUnit.MINUTES);
        }

        /* renamed from: minutes-UwyO8pc, reason: not valid java name */
        public final long m1393minutesUwyO8pc(double value) {
            return DurationKt.toDuration(value, TimeUnit.MINUTES);
        }

        /* renamed from: hours-UwyO8pc, reason: not valid java name */
        public final long m1385hoursUwyO8pc(int value) {
            return DurationKt.toDuration(value, TimeUnit.HOURS);
        }

        /* renamed from: hours-UwyO8pc, reason: not valid java name */
        public final long m1386hoursUwyO8pc(long value) {
            return DurationKt.toDuration(value, TimeUnit.HOURS);
        }

        /* renamed from: hours-UwyO8pc, reason: not valid java name */
        public final long m1384hoursUwyO8pc(double value) {
            return DurationKt.toDuration(value, TimeUnit.HOURS);
        }

        /* renamed from: days-UwyO8pc, reason: not valid java name */
        public final long m1379daysUwyO8pc(int value) {
            return DurationKt.toDuration(value, TimeUnit.DAYS);
        }

        /* renamed from: days-UwyO8pc, reason: not valid java name */
        public final long m1380daysUwyO8pc(long value) {
            return DurationKt.toDuration(value, TimeUnit.DAYS);
        }

        /* renamed from: days-UwyO8pc, reason: not valid java name */
        public final long m1378daysUwyO8pc(double value) {
            return DurationKt.toDuration(value, TimeUnit.DAYS);
        }

        /* renamed from: parse-UwyO8pc, reason: not valid java name */
        public final long m1399parseUwyO8pc(String value) {
            long parseDuration;
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                parseDuration = DurationKt.parseDuration(value, false);
                return parseDuration;
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid duration string format: '" + value + "'.", e);
            }
        }

        /* renamed from: parseIsoString-UwyO8pc, reason: not valid java name */
        public final long m1400parseIsoStringUwyO8pc(String value) {
            long parseDuration;
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                parseDuration = DurationKt.parseDuration(value, true);
                return parseDuration;
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid ISO duration string format: '" + value + "'.", e);
            }
        }

        /* renamed from: parseOrNull-FghU774, reason: not valid java name */
        public final Duration m1402parseOrNullFghU774(String value) {
            long parseDuration;
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                parseDuration = DurationKt.parseDuration(value, false);
                return Duration.m1321boximpl(parseDuration);
            } catch (IllegalArgumentException e) {
                return null;
            }
        }

        /* renamed from: parseIsoStringOrNull-FghU774, reason: not valid java name */
        public final Duration m1401parseIsoStringOrNullFghU774(String value) {
            long parseDuration;
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                parseDuration = DurationKt.parseDuration(value, true);
                return Duration.m1321boximpl(parseDuration);
            } catch (IllegalArgumentException e) {
                return null;
            }
        }
    }

    static {
        long durationOfMillis;
        long durationOfMillis2;
        durationOfMillis = DurationKt.durationOfMillis(DurationKt.MAX_MILLIS);
        INFINITE = durationOfMillis;
        durationOfMillis2 = DurationKt.durationOfMillis(-4611686018427387903L);
        NEG_INFINITE = durationOfMillis2;
    }

    /* renamed from: unaryMinus-UwyO8pc, reason: not valid java name */
    public static final long m1375unaryMinusUwyO8pc(long $this) {
        long durationOf;
        durationOf = DurationKt.durationOf(-m1350getValueimpl($this), ((int) $this) & 1);
        return durationOf;
    }

    /* renamed from: plus-LRDsOJo, reason: not valid java name */
    public static final long m1359plusLRDsOJo(long $this, long other) {
        long durationOfMillisNormalized;
        long durationOfNanosNormalized;
        if (m1355isInfiniteimpl($this)) {
            if (m1352isFiniteimpl(other) || ($this ^ other) >= 0) {
                return $this;
            }
            throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
        }
        if (m1355isInfiniteimpl(other)) {
            return other;
        }
        if ((((int) $this) & 1) == (((int) other) & 1)) {
            long result = m1350getValueimpl($this) + m1350getValueimpl(other);
            if (m1354isInNanosimpl($this)) {
                durationOfNanosNormalized = DurationKt.durationOfNanosNormalized(result);
                return durationOfNanosNormalized;
            }
            durationOfMillisNormalized = DurationKt.durationOfMillisNormalized(result);
            return durationOfMillisNormalized;
        }
        if (m1353isInMillisimpl($this)) {
            return m1319addValuesMixedRangesUwyO8pc($this, m1350getValueimpl($this), m1350getValueimpl(other));
        }
        return m1319addValuesMixedRangesUwyO8pc($this, m1350getValueimpl(other), m1350getValueimpl($this));
    }

    /* renamed from: addValuesMixedRanges-UwyO8pc, reason: not valid java name */
    private static final long m1319addValuesMixedRangesUwyO8pc(long $this, long thisMillis, long otherNanos) {
        long otherMillis;
        long durationOfMillis;
        long millisToNanos;
        long millisToNanos2;
        long otherNanoRemainder;
        otherMillis = DurationKt.nanosToMillis(otherNanos);
        long resultMillis = thisMillis + otherMillis;
        if (-4611686018426L <= resultMillis && 4611686018426L >= resultMillis) {
            millisToNanos = DurationKt.millisToNanos(otherMillis);
            long otherNanoRemainder2 = otherNanos - millisToNanos;
            millisToNanos2 = DurationKt.millisToNanos(resultMillis);
            otherNanoRemainder = DurationKt.durationOfNanos(millisToNanos2 + otherNanoRemainder2);
            return otherNanoRemainder;
        }
        durationOfMillis = DurationKt.durationOfMillis(RangesKt.coerceIn(resultMillis, -4611686018427387903L, DurationKt.MAX_MILLIS));
        return durationOfMillis;
    }

    /* renamed from: minus-LRDsOJo, reason: not valid java name */
    public static final long m1358minusLRDsOJo(long $this, long other) {
        return m1359plusLRDsOJo($this, m1375unaryMinusUwyO8pc(other));
    }

    /* renamed from: times-UwyO8pc, reason: not valid java name */
    public static final long m1361timesUwyO8pc(long $this, int scale) {
        long durationOfMillis;
        long millis;
        long millisToNanos;
        long nanosToMillis;
        long durationOfMillis2;
        long durationOfNanosNormalized;
        long durationOfNanos;
        if (m1355isInfiniteimpl($this)) {
            if (scale != 0) {
                return scale > 0 ? $this : m1375unaryMinusUwyO8pc($this);
            }
            throw new IllegalArgumentException("Multiplying infinite duration by zero yields an undefined result.");
        }
        if (scale == 0) {
            return ZERO;
        }
        long value = m1350getValueimpl($this);
        long result = scale * value;
        if (!m1354isInNanosimpl($this)) {
            if (result / scale != value) {
                return MathKt.getSign(value) * MathKt.getSign(scale) > 0 ? INFINITE : NEG_INFINITE;
            }
            durationOfMillis = DurationKt.durationOfMillis(RangesKt.coerceIn(result, new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS)));
            return durationOfMillis;
        }
        if (-2147483647L <= value && 2147483647L >= value) {
            durationOfNanos = DurationKt.durationOfNanos(result);
            return durationOfNanos;
        }
        if (result / scale == value) {
            durationOfNanosNormalized = DurationKt.durationOfNanosNormalized(result);
            return durationOfNanosNormalized;
        }
        millis = DurationKt.nanosToMillis(value);
        millisToNanos = DurationKt.millisToNanos(millis);
        long remNanos = value - millisToNanos;
        long resultMillis = scale * millis;
        nanosToMillis = DurationKt.nanosToMillis(scale * remNanos);
        long totalMillis = nanosToMillis + resultMillis;
        if (resultMillis / scale == millis && (totalMillis ^ resultMillis) >= 0) {
            durationOfMillis2 = DurationKt.durationOfMillis(RangesKt.coerceIn(totalMillis, new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS)));
            return durationOfMillis2;
        }
        return MathKt.getSign(value) * MathKt.getSign(scale) > 0 ? INFINITE : NEG_INFINITE;
    }

    /* renamed from: times-UwyO8pc, reason: not valid java name */
    public static final long m1360timesUwyO8pc(long $this, double scale) {
        int intScale = MathKt.roundToInt(scale);
        if (intScale == scale) {
            return m1361timesUwyO8pc($this, intScale);
        }
        TimeUnit unit = m1348getStorageUnitimpl($this);
        double result = m1366toDoubleimpl($this, unit) * scale;
        return DurationKt.toDuration(result, unit);
    }

    /* renamed from: div-UwyO8pc, reason: not valid java name */
    public static final long m1326divUwyO8pc(long $this, int scale) {
        long rem;
        long millisToNanos;
        long millisToNanos2;
        long durationOfNanos;
        long durationOfNanos2;
        if (scale == 0) {
            if (m1357isPositiveimpl($this)) {
                return INFINITE;
            }
            if (m1356isNegativeimpl($this)) {
                return NEG_INFINITE;
            }
            throw new IllegalArgumentException("Dividing zero duration by zero yields an undefined result.");
        }
        if (m1354isInNanosimpl($this)) {
            durationOfNanos2 = DurationKt.durationOfNanos(m1350getValueimpl($this) / scale);
            return durationOfNanos2;
        }
        if (m1355isInfiniteimpl($this)) {
            return m1361timesUwyO8pc($this, MathKt.getSign(scale));
        }
        long result = m1350getValueimpl($this) / scale;
        if (-4611686018426L <= result && 4611686018426L >= result) {
            millisToNanos = DurationKt.millisToNanos(m1350getValueimpl($this) - (scale * result));
            long rem2 = millisToNanos / scale;
            millisToNanos2 = DurationKt.millisToNanos(result);
            durationOfNanos = DurationKt.durationOfNanos(millisToNanos2 + rem2);
            return durationOfNanos;
        }
        rem = DurationKt.durationOfMillis(result);
        return rem;
    }

    /* renamed from: div-UwyO8pc, reason: not valid java name */
    public static final long m1325divUwyO8pc(long $this, double scale) {
        int intScale = MathKt.roundToInt(scale);
        if (intScale == scale && intScale != 0) {
            return m1326divUwyO8pc($this, intScale);
        }
        TimeUnit unit = m1348getStorageUnitimpl($this);
        double result = m1366toDoubleimpl($this, unit) / scale;
        return DurationKt.toDuration(result, unit);
    }

    /* renamed from: div-LRDsOJo, reason: not valid java name */
    public static final double m1324divLRDsOJo(long $this, long other) {
        TimeUnit coarserUnit = (TimeUnit) ComparisonsKt.maxOf(m1348getStorageUnitimpl($this), m1348getStorageUnitimpl(other));
        return m1366toDoubleimpl($this, coarserUnit) / m1366toDoubleimpl(other, coarserUnit);
    }

    /* renamed from: isNegative-impl, reason: not valid java name */
    public static final boolean m1356isNegativeimpl(long $this) {
        return $this < 0;
    }

    /* renamed from: isPositive-impl, reason: not valid java name */
    public static final boolean m1357isPositiveimpl(long $this) {
        return $this > 0;
    }

    /* renamed from: isInfinite-impl, reason: not valid java name */
    public static final boolean m1355isInfiniteimpl(long $this) {
        return $this == INFINITE || $this == NEG_INFINITE;
    }

    /* renamed from: isFinite-impl, reason: not valid java name */
    public static final boolean m1352isFiniteimpl(long $this) {
        return !m1355isInfiniteimpl($this);
    }

    /* renamed from: getAbsoluteValue-UwyO8pc, reason: not valid java name */
    public static final long m1329getAbsoluteValueUwyO8pc(long $this) {
        return m1356isNegativeimpl($this) ? m1375unaryMinusUwyO8pc($this) : $this;
    }

    /* renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public static int m1322compareToLRDsOJo(long $this, long other) {
        long compareBits = $this ^ other;
        if (compareBits < 0 || (((int) compareBits) & 1) == 0) {
            return ($this > other ? 1 : ($this == other ? 0 : -1));
        }
        int r = (((int) $this) & 1) - (((int) other) & 1);
        return m1356isNegativeimpl($this) ? -r : r;
    }

    /* renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m1365toComponentsimpl(long $this, Function5<? super Integer, ? super Integer, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Integer.valueOf(m1367toIntimpl($this, TimeUnit.DAYS)), Integer.valueOf(m1330getHoursComponentimpl($this)), Integer.valueOf(m1345getMinutesComponentimpl($this)), Integer.valueOf(m1347getSecondsComponentimpl($this)), Integer.valueOf(m1346getNanosecondsComponentimpl($this)));
    }

    /* renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m1364toComponentsimpl(long $this, Function4<? super Integer, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Integer.valueOf(m1367toIntimpl($this, TimeUnit.HOURS)), Integer.valueOf(m1345getMinutesComponentimpl($this)), Integer.valueOf(m1347getSecondsComponentimpl($this)), Integer.valueOf(m1346getNanosecondsComponentimpl($this)));
    }

    /* renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m1363toComponentsimpl(long $this, Function3<? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Integer.valueOf(m1367toIntimpl($this, TimeUnit.MINUTES)), Integer.valueOf(m1347getSecondsComponentimpl($this)), Integer.valueOf(m1346getNanosecondsComponentimpl($this)));
    }

    /* renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m1362toComponentsimpl(long $this, Function2<? super Long, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m1344getInWholeSecondsimpl($this)), Integer.valueOf(m1346getNanosecondsComponentimpl($this)));
    }

    /* renamed from: getHoursComponent-impl, reason: not valid java name */
    public static final int m1330getHoursComponentimpl(long $this) {
        if (m1355isInfiniteimpl($this)) {
            return 0;
        }
        return (int) (m1339getInWholeHoursimpl($this) % 24);
    }

    /* renamed from: getMinutesComponent-impl, reason: not valid java name */
    public static final int m1345getMinutesComponentimpl(long $this) {
        if (m1355isInfiniteimpl($this)) {
            return 0;
        }
        return (int) (m1342getInWholeMinutesimpl($this) % 60);
    }

    /* renamed from: getSecondsComponent-impl, reason: not valid java name */
    public static final int m1347getSecondsComponentimpl(long $this) {
        if (m1355isInfiniteimpl($this)) {
            return 0;
        }
        return (int) (m1344getInWholeSecondsimpl($this) % 60);
    }

    /* renamed from: getNanosecondsComponent-impl, reason: not valid java name */
    public static final int m1346getNanosecondsComponentimpl(long $this) {
        long millisToNanos;
        if (m1355isInfiniteimpl($this)) {
            return 0;
        }
        if (m1353isInMillisimpl($this)) {
            millisToNanos = DurationKt.millisToNanos(m1350getValueimpl($this) % 1000);
            return (int) millisToNanos;
        }
        return (int) (m1350getValueimpl($this) % 1000000000);
    }

    /* renamed from: toDouble-impl, reason: not valid java name */
    public static final double m1366toDoubleimpl(long $this, TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if ($this == INFINITE) {
            return Double.POSITIVE_INFINITY;
        }
        if ($this == NEG_INFINITE) {
            return Double.NEGATIVE_INFINITY;
        }
        return DurationUnitKt.convertDurationUnit(m1350getValueimpl($this), m1348getStorageUnitimpl($this), unit);
    }

    /* renamed from: toLong-impl, reason: not valid java name */
    public static final long m1369toLongimpl(long $this, TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if ($this == INFINITE) {
            return Long.MAX_VALUE;
        }
        if ($this == NEG_INFINITE) {
            return Long.MIN_VALUE;
        }
        return DurationUnitKt.convertDurationUnit(m1350getValueimpl($this), m1348getStorageUnitimpl($this), unit);
    }

    /* renamed from: toInt-impl, reason: not valid java name */
    public static final int m1367toIntimpl(long $this, TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        return (int) RangesKt.coerceIn(m1369toLongimpl($this, unit), Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    /* renamed from: getInDays-impl, reason: not valid java name */
    public static final double m1331getInDaysimpl(long $this) {
        return m1366toDoubleimpl($this, TimeUnit.DAYS);
    }

    /* renamed from: getInHours-impl, reason: not valid java name */
    public static final double m1332getInHoursimpl(long $this) {
        return m1366toDoubleimpl($this, TimeUnit.HOURS);
    }

    /* renamed from: getInMinutes-impl, reason: not valid java name */
    public static final double m1335getInMinutesimpl(long $this) {
        return m1366toDoubleimpl($this, TimeUnit.MINUTES);
    }

    /* renamed from: getInSeconds-impl, reason: not valid java name */
    public static final double m1337getInSecondsimpl(long $this) {
        return m1366toDoubleimpl($this, TimeUnit.SECONDS);
    }

    /* renamed from: getInMilliseconds-impl, reason: not valid java name */
    public static final double m1334getInMillisecondsimpl(long $this) {
        return m1366toDoubleimpl($this, TimeUnit.MILLISECONDS);
    }

    /* renamed from: getInMicroseconds-impl, reason: not valid java name */
    public static final double m1333getInMicrosecondsimpl(long $this) {
        return m1366toDoubleimpl($this, TimeUnit.MICROSECONDS);
    }

    /* renamed from: getInNanoseconds-impl, reason: not valid java name */
    public static final double m1336getInNanosecondsimpl(long $this) {
        return m1366toDoubleimpl($this, TimeUnit.NANOSECONDS);
    }

    /* renamed from: getInWholeDays-impl, reason: not valid java name */
    public static final long m1338getInWholeDaysimpl(long $this) {
        return m1369toLongimpl($this, TimeUnit.DAYS);
    }

    /* renamed from: getInWholeHours-impl, reason: not valid java name */
    public static final long m1339getInWholeHoursimpl(long $this) {
        return m1369toLongimpl($this, TimeUnit.HOURS);
    }

    /* renamed from: getInWholeMinutes-impl, reason: not valid java name */
    public static final long m1342getInWholeMinutesimpl(long $this) {
        return m1369toLongimpl($this, TimeUnit.MINUTES);
    }

    /* renamed from: getInWholeSeconds-impl, reason: not valid java name */
    public static final long m1344getInWholeSecondsimpl(long $this) {
        return m1369toLongimpl($this, TimeUnit.SECONDS);
    }

    /* renamed from: getInWholeMilliseconds-impl, reason: not valid java name */
    public static final long m1341getInWholeMillisecondsimpl(long $this) {
        return (m1353isInMillisimpl($this) && m1352isFiniteimpl($this)) ? m1350getValueimpl($this) : m1369toLongimpl($this, TimeUnit.MILLISECONDS);
    }

    /* renamed from: getInWholeMicroseconds-impl, reason: not valid java name */
    public static final long m1340getInWholeMicrosecondsimpl(long $this) {
        return m1369toLongimpl($this, TimeUnit.MICROSECONDS);
    }

    /* renamed from: getInWholeNanoseconds-impl, reason: not valid java name */
    public static final long m1343getInWholeNanosecondsimpl(long $this) {
        long millisToNanos;
        long value = m1350getValueimpl($this);
        if (m1354isInNanosimpl($this)) {
            return value;
        }
        if (value > 9223372036854L) {
            return Long.MAX_VALUE;
        }
        if (value < -9223372036854L) {
            return Long.MIN_VALUE;
        }
        millisToNanos = DurationKt.millisToNanos(value);
        return millisToNanos;
    }

    @Deprecated(message = "Use inWholeNanoseconds property instead.", replaceWith = @ReplaceWith(expression = "this.inWholeNanoseconds", imports = {}))
    /* renamed from: toLongNanoseconds-impl, reason: not valid java name */
    public static final long m1371toLongNanosecondsimpl(long $this) {
        return m1343getInWholeNanosecondsimpl($this);
    }

    @Deprecated(message = "Use inWholeMilliseconds property instead.", replaceWith = @ReplaceWith(expression = "this.inWholeMilliseconds", imports = {}))
    /* renamed from: toLongMilliseconds-impl, reason: not valid java name */
    public static final long m1370toLongMillisecondsimpl(long $this) {
        return m1341getInWholeMillisecondsimpl($this);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1372toStringimpl(long $this) {
        int nanoseconds;
        if ($this == 0) {
            return "0s";
        }
        if ($this == INFINITE) {
            return "Infinity";
        }
        if ($this == NEG_INFINITE) {
            return "-Infinity";
        }
        boolean isNegative = m1356isNegativeimpl($this);
        StringBuilder $this$buildString = new StringBuilder();
        if (isNegative) {
            $this$buildString.append('-');
        }
        long $this$run = m1329getAbsoluteValueUwyO8pc($this);
        m1367toIntimpl($this$run, TimeUnit.DAYS);
        int hours = m1330getHoursComponentimpl($this$run);
        int minutes = m1345getMinutesComponentimpl($this$run);
        int seconds = m1347getSecondsComponentimpl($this$run);
        int nanoseconds2 = m1346getNanosecondsComponentimpl($this$run);
        long days = m1338getInWholeDaysimpl($this$run);
        boolean hasDays = days != 0;
        boolean hasHours = hours != 0;
        boolean hasMinutes = minutes != 0;
        boolean hasSeconds = (seconds == 0 && nanoseconds2 == 0) ? false : true;
        int components = 0;
        if (hasDays) {
            $this$buildString.append(days);
            $this$buildString.append('d');
            components = 0 + 1;
        }
        if (hasHours || (hasDays && (hasMinutes || hasSeconds))) {
            int components2 = components + 1;
            if (components > 0) {
                $this$buildString.append(' ');
            }
            $this$buildString.append(hours);
            $this$buildString.append('h');
            components = components2;
        }
        if (hasMinutes || (hasSeconds && (hasHours || hasDays))) {
            int components3 = components + 1;
            if (components > 0) {
                $this$buildString.append(' ');
            }
            $this$buildString.append(minutes);
            $this$buildString.append('m');
            components = components3;
        }
        if (hasSeconds) {
            int components4 = components + 1;
            if (components > 0) {
                $this$buildString.append(' ');
            }
            if (seconds != 0 || hasDays || hasHours) {
                nanoseconds = nanoseconds2;
            } else if (hasMinutes) {
                nanoseconds = nanoseconds2;
            } else {
                if (nanoseconds2 >= 1000000) {
                    m1320appendFractionalimpl($this$run, $this$buildString, nanoseconds2 / DurationKt.NANOS_IN_MILLIS, nanoseconds2 % DurationKt.NANOS_IN_MILLIS, 6, "ms", false);
                } else if (nanoseconds2 >= 1000) {
                    m1320appendFractionalimpl($this$run, $this$buildString, nanoseconds2 / 1000, nanoseconds2 % 1000, 3, "us", false);
                } else {
                    $this$buildString.append(nanoseconds2);
                    $this$buildString.append("ns");
                }
                components = components4;
            }
            m1320appendFractionalimpl($this$run, $this$buildString, seconds, nanoseconds, 9, "s", false);
            components = components4;
        }
        if (isNegative && components > 1) {
            $this$buildString.insert(1, '(').append(')');
        }
        String sb = $this$buildString.toString();
        Intrinsics.checkNotNullExpressionValue(sb, "StringBuilder().apply(builderAction).toString()");
        return sb;
    }

    /* renamed from: appendFractional-impl, reason: not valid java name */
    private static final void m1320appendFractionalimpl(long $this, StringBuilder $this$appendFractional, int whole, int fractional, int fractionalSize, String unit, boolean isoZeroes) {
        $this$appendFractional.append(whole);
        if (fractional != 0) {
            $this$appendFractional.append('.');
            CharSequence fracString = StringsKt.padStart(String.valueOf(fractional), fractionalSize, '0');
            CharSequence $this$indexOfLast$iv = fracString;
            int i = -1;
            int index$iv = $this$indexOfLast$iv.length() - 1;
            while (true) {
                if (index$iv < 0) {
                    break;
                }
                char it = $this$indexOfLast$iv.charAt(index$iv);
                char it2 = it != '0' ? (char) 1 : (char) 0;
                if (it2 != 0) {
                    i = index$iv;
                    break;
                }
                index$iv--;
            }
            int nonZeroDigits = i + 1;
            if (!isoZeroes && nonZeroDigits < 3) {
                $this$appendFractional.append(fracString, 0, nonZeroDigits);
                Intrinsics.checkNotNullExpressionValue($this$appendFractional, "this.append(value, startIndex, endIndex)");
            } else {
                $this$appendFractional.append(fracString, 0, ((nonZeroDigits + 2) / 3) * 3);
                Intrinsics.checkNotNullExpressionValue($this$appendFractional, "this.append(value, startIndex, endIndex)");
            }
        }
        $this$appendFractional.append(unit);
    }

    /* renamed from: toString-impl$default, reason: not valid java name */
    public static /* synthetic */ String m1374toStringimpl$default(long j, TimeUnit timeUnit, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return m1373toStringimpl(j, timeUnit, i);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static final String m1373toStringimpl(long $this, TimeUnit unit, int decimals) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (!(decimals >= 0)) {
            throw new IllegalArgumentException(("decimals must be not negative, but was " + decimals).toString());
        }
        double number = m1366toDoubleimpl($this, unit);
        if (Double.isInfinite(number)) {
            return String.valueOf(number);
        }
        return FormatToDecimalsKt.formatToExactDecimals(number, RangesKt.coerceAtMost(decimals, 12)) + DurationUnitKt.shortName(unit);
    }

    /* renamed from: toIsoString-impl, reason: not valid java name */
    public static final String m1368toIsoStringimpl(long $this) {
        long hours;
        StringBuilder $this$buildString = new StringBuilder();
        if (m1356isNegativeimpl($this)) {
            $this$buildString.append('-');
        }
        $this$buildString.append("PT");
        long absoluteValue = m1329getAbsoluteValueUwyO8pc($this);
        m1367toIntimpl(absoluteValue, TimeUnit.HOURS);
        int minutes = m1345getMinutesComponentimpl(absoluteValue);
        int seconds = m1347getSecondsComponentimpl(absoluteValue);
        int nanoseconds = m1346getNanosecondsComponentimpl(absoluteValue);
        long hours2 = m1339getInWholeHoursimpl(absoluteValue);
        if (!m1355isInfiniteimpl($this)) {
            hours = hours2;
        } else {
            hours = 9999999999999L;
        }
        boolean z = true;
        boolean hasHours = hours != 0;
        boolean hasSeconds = (seconds == 0 && nanoseconds == 0) ? false : true;
        if (minutes == 0 && (!hasSeconds || !hasHours)) {
            z = false;
        }
        boolean hasMinutes = z;
        if (hasHours) {
            $this$buildString.append(hours);
            $this$buildString.append('H');
        }
        if (hasMinutes) {
            $this$buildString.append(minutes);
            $this$buildString.append('M');
        }
        if (hasSeconds || (!hasHours && !hasMinutes)) {
            m1320appendFractionalimpl($this, $this$buildString, seconds, nanoseconds, 9, ExifInterface.LATITUDE_SOUTH, true);
        }
        String sb = $this$buildString.toString();
        Intrinsics.checkNotNullExpressionValue(sb, "StringBuilder().apply(builderAction).toString()");
        return sb;
    }
}
