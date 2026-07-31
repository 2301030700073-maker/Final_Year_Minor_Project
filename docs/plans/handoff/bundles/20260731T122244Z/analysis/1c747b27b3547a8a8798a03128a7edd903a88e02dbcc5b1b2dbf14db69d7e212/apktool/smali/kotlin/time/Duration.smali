.class public final Lkotlin/time/Duration;
.super Ljava/lang/Object;
.source "Duration.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/Duration$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/time/Duration;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u00084\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0087@\u0018\u0000 \u00ac\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u00ac\u0001B\u0014\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J%\u0010K\u001a\u00020\u00002\u0006\u0010L\u001a\u00020\u00032\u0006\u0010M\u001a\u00020\u0003H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008N\u0010OJ\u001b\u0010P\u001a\u00020\t2\u0006\u0010Q\u001a\u00020\u0000H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008R\u0010SJ\u001e\u0010T\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u000fH\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008V\u0010WJ\u001e\u0010T\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\tH\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008V\u0010XJ\u001b\u0010T\u001a\u00020\u000f2\u0006\u0010Q\u001a\u00020\u0000H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008Y\u0010ZJ\u001a\u0010[\u001a\u00020\\2\u0008\u0010Q\u001a\u0004\u0018\u00010]H\u00d6\u0003\u00a2\u0006\u0004\u0008^\u0010_J\u0010\u0010`\u001a\u00020\tH\u00d6\u0001\u00a2\u0006\u0004\u0008a\u0010\rJ\r\u0010b\u001a\u00020\\\u00a2\u0006\u0004\u0008c\u0010dJ\u000f\u0010e\u001a\u00020\\H\u0002\u00a2\u0006\u0004\u0008f\u0010dJ\u000f\u0010g\u001a\u00020\\H\u0002\u00a2\u0006\u0004\u0008h\u0010dJ\r\u0010i\u001a\u00020\\\u00a2\u0006\u0004\u0008j\u0010dJ\r\u0010k\u001a\u00020\\\u00a2\u0006\u0004\u0008l\u0010dJ\r\u0010m\u001a\u00020\\\u00a2\u0006\u0004\u0008n\u0010dJ\u001b\u0010o\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u0000H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008p\u0010qJ\u001b\u0010r\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u0000H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008s\u0010qJ\u001e\u0010t\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u000fH\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008u\u0010WJ\u001e\u0010t\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\tH\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008u\u0010XJ\u00a0\u0001\u0010v\u001a\u0002Hw\"\u0004\u0008\u0000\u0010w2v\u0010x\u001ar\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008z\u0012\u0008\u0008{\u0012\u0004\u0008\u0008(|\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008z\u0012\u0008\u0008{\u0012\u0004\u0008\u0008(}\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008z\u0012\u0008\u0008{\u0012\u0004\u0008\u0008(~\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008z\u0012\u0008\u0008{\u0012\u0004\u0008\u0008(\u007f\u0012\u0014\u0012\u00120\t\u00a2\u0006\r\u0008z\u0012\t\u0008{\u0012\u0005\u0008\u0008(\u0080\u0001\u0012\u0004\u0012\u0002Hw0yH\u0086\u0008\u00f8\u0001\u0002\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0006\u0008\u0081\u0001\u0010\u0082\u0001J\u008c\u0001\u0010v\u001a\u0002Hw\"\u0004\u0008\u0000\u0010w2b\u0010x\u001a^\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008z\u0012\u0008\u0008{\u0012\u0004\u0008\u0008(}\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008z\u0012\u0008\u0008{\u0012\u0004\u0008\u0008(~\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008z\u0012\u0008\u0008{\u0012\u0004\u0008\u0008(\u007f\u0012\u0014\u0012\u00120\t\u00a2\u0006\r\u0008z\u0012\t\u0008{\u0012\u0005\u0008\u0008(\u0080\u0001\u0012\u0004\u0012\u0002Hw0\u0083\u0001H\u0086\u0008\u00f8\u0001\u0002\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0006\u0008\u0081\u0001\u0010\u0084\u0001Jw\u0010v\u001a\u0002Hw\"\u0004\u0008\u0000\u0010w2M\u0010x\u001aI\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008z\u0012\u0008\u0008{\u0012\u0004\u0008\u0008(~\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008z\u0012\u0008\u0008{\u0012\u0004\u0008\u0008(\u007f\u0012\u0014\u0012\u00120\t\u00a2\u0006\r\u0008z\u0012\t\u0008{\u0012\u0005\u0008\u0008(\u0080\u0001\u0012\u0004\u0012\u0002Hw0\u0085\u0001H\u0086\u0008\u00f8\u0001\u0002\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0006\u0008\u0081\u0001\u0010\u0086\u0001Jb\u0010v\u001a\u0002Hw\"\u0004\u0008\u0000\u0010w28\u0010x\u001a4\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008z\u0012\u0008\u0008{\u0012\u0004\u0008\u0008(\u007f\u0012\u0014\u0012\u00120\t\u00a2\u0006\r\u0008z\u0012\t\u0008{\u0012\u0005\u0008\u0008(\u0080\u0001\u0012\u0004\u0012\u0002Hw0\u0087\u0001H\u0086\u0008\u00f8\u0001\u0002\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0006\u0008\u0081\u0001\u0010\u0088\u0001J\u001e\u0010\u0089\u0001\u001a\u00020\u000f2\u000c\u0010\u008a\u0001\u001a\u00070Dj\u0003`\u008b\u0001\u00a2\u0006\u0006\u0008\u008c\u0001\u0010\u008d\u0001J\u001e\u0010\u008e\u0001\u001a\u00020\t2\u000c\u0010\u008a\u0001\u001a\u00070Dj\u0003`\u008b\u0001\u00a2\u0006\u0006\u0008\u008f\u0001\u0010\u0090\u0001J\u0011\u0010\u0091\u0001\u001a\u00030\u0092\u0001\u00a2\u0006\u0006\u0008\u0093\u0001\u0010\u0094\u0001J\u001e\u0010\u0095\u0001\u001a\u00020\u00032\u000c\u0010\u008a\u0001\u001a\u00070Dj\u0003`\u008b\u0001\u00a2\u0006\u0006\u0008\u0096\u0001\u0010\u0097\u0001J\u0011\u0010\u0098\u0001\u001a\u00020\u0003H\u0007\u00a2\u0006\u0005\u0008\u0099\u0001\u0010\u0005J\u0011\u0010\u009a\u0001\u001a\u00020\u0003H\u0007\u00a2\u0006\u0005\u0008\u009b\u0001\u0010\u0005J\u0013\u0010\u009c\u0001\u001a\u00030\u0092\u0001H\u0016\u00a2\u0006\u0006\u0008\u009d\u0001\u0010\u0094\u0001J*\u0010\u009c\u0001\u001a\u00030\u0092\u00012\u000c\u0010\u008a\u0001\u001a\u00070Dj\u0003`\u008b\u00012\t\u0008\u0002\u0010\u009e\u0001\u001a\u00020\t\u00a2\u0006\u0006\u0008\u009d\u0001\u0010\u009f\u0001J\u0018\u0010\u00a0\u0001\u001a\u00020\u0000H\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0005\u0008\u00a1\u0001\u0010\u0005JK\u0010\u00a2\u0001\u001a\u00030\u00a3\u0001*\u00080\u00a4\u0001j\u0003`\u00a5\u00012\u0007\u0010\u00a6\u0001\u001a\u00020\t2\u0007\u0010\u00a7\u0001\u001a\u00020\t2\u0007\u0010\u00a8\u0001\u001a\u00020\t2\u0008\u0010\u008a\u0001\u001a\u00030\u0092\u00012\u0007\u0010\u00a9\u0001\u001a\u00020\\H\u0002\u00a2\u0006\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001R\u0017\u0010\u0006\u001a\u00020\u00008F\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005R\u001a\u0010\u0008\u001a\u00020\t8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000f8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u000f8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0014\u0010\u000b\u001a\u0004\u0008\u0015\u0010\u0012R\u001a\u0010\u0016\u001a\u00020\u000f8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0017\u0010\u000b\u001a\u0004\u0008\u0018\u0010\u0012R\u001a\u0010\u0019\u001a\u00020\u000f8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001a\u0010\u000b\u001a\u0004\u0008\u001b\u0010\u0012R\u001a\u0010\u001c\u001a\u00020\u000f8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001d\u0010\u000b\u001a\u0004\u0008\u001e\u0010\u0012R\u001a\u0010\u001f\u001a\u00020\u000f8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008 \u0010\u000b\u001a\u0004\u0008!\u0010\u0012R\u001a\u0010\"\u001a\u00020\u000f8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008#\u0010\u000b\u001a\u0004\u0008$\u0010\u0012R\u001a\u0010%\u001a\u00020\u00038FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008&\u0010\u000b\u001a\u0004\u0008\'\u0010\u0005R\u001a\u0010(\u001a\u00020\u00038FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008)\u0010\u000b\u001a\u0004\u0008*\u0010\u0005R\u001a\u0010+\u001a\u00020\u00038FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008,\u0010\u000b\u001a\u0004\u0008-\u0010\u0005R\u001a\u0010.\u001a\u00020\u00038FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008/\u0010\u000b\u001a\u0004\u00080\u0010\u0005R\u001a\u00101\u001a\u00020\u00038FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u00082\u0010\u000b\u001a\u0004\u00083\u0010\u0005R\u001a\u00104\u001a\u00020\u00038FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u00085\u0010\u000b\u001a\u0004\u00086\u0010\u0005R\u001a\u00107\u001a\u00020\u00038FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u00088\u0010\u000b\u001a\u0004\u00089\u0010\u0005R\u001a\u0010:\u001a\u00020\t8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008;\u0010\u000b\u001a\u0004\u0008<\u0010\rR\u001a\u0010=\u001a\u00020\t8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008>\u0010\u000b\u001a\u0004\u0008?\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010@\u001a\u00020\t8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008A\u0010\u000b\u001a\u0004\u0008B\u0010\rR\u0014\u0010C\u001a\u00020D8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010FR\u0015\u0010G\u001a\u00020\t8\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010\rR\u0014\u0010I\u001a\u00020\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010\u0005\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u00f8\u0001\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u009920\u0001\u00a8\u0006\u00ad\u0001"
    }
    d2 = {
        "Lkotlin/time/Duration;",
        "",
        "rawValue",
        "",
        "constructor-impl",
        "(J)J",
        "absoluteValue",
        "getAbsoluteValue-UwyO8pc",
        "hoursComponent",
        "",
        "getHoursComponent$annotations",
        "()V",
        "getHoursComponent-impl",
        "(J)I",
        "inDays",
        "",
        "getInDays$annotations",
        "getInDays-impl",
        "(J)D",
        "inHours",
        "getInHours$annotations",
        "getInHours-impl",
        "inMicroseconds",
        "getInMicroseconds$annotations",
        "getInMicroseconds-impl",
        "inMilliseconds",
        "getInMilliseconds$annotations",
        "getInMilliseconds-impl",
        "inMinutes",
        "getInMinutes$annotations",
        "getInMinutes-impl",
        "inNanoseconds",
        "getInNanoseconds$annotations",
        "getInNanoseconds-impl",
        "inSeconds",
        "getInSeconds$annotations",
        "getInSeconds-impl",
        "inWholeDays",
        "getInWholeDays$annotations",
        "getInWholeDays-impl",
        "inWholeHours",
        "getInWholeHours$annotations",
        "getInWholeHours-impl",
        "inWholeMicroseconds",
        "getInWholeMicroseconds$annotations",
        "getInWholeMicroseconds-impl",
        "inWholeMilliseconds",
        "getInWholeMilliseconds$annotations",
        "getInWholeMilliseconds-impl",
        "inWholeMinutes",
        "getInWholeMinutes$annotations",
        "getInWholeMinutes-impl",
        "inWholeNanoseconds",
        "getInWholeNanoseconds$annotations",
        "getInWholeNanoseconds-impl",
        "inWholeSeconds",
        "getInWholeSeconds$annotations",
        "getInWholeSeconds-impl",
        "minutesComponent",
        "getMinutesComponent$annotations",
        "getMinutesComponent-impl",
        "nanosecondsComponent",
        "getNanosecondsComponent$annotations",
        "getNanosecondsComponent-impl",
        "secondsComponent",
        "getSecondsComponent$annotations",
        "getSecondsComponent-impl",
        "storageUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "getStorageUnit-impl",
        "(J)Ljava/util/concurrent/TimeUnit;",
        "unitDiscriminator",
        "getUnitDiscriminator-impl",
        "value",
        "getValue-impl",
        "addValuesMixedRanges",
        "thisMillis",
        "otherNanos",
        "addValuesMixedRanges-UwyO8pc",
        "(JJJ)J",
        "compareTo",
        "other",
        "compareTo-LRDsOJo",
        "(JJ)I",
        "div",
        "scale",
        "div-UwyO8pc",
        "(JD)J",
        "(JI)J",
        "div-LRDsOJo",
        "(JJ)D",
        "equals",
        "",
        "",
        "equals-impl",
        "(JLjava/lang/Object;)Z",
        "hashCode",
        "hashCode-impl",
        "isFinite",
        "isFinite-impl",
        "(J)Z",
        "isInMillis",
        "isInMillis-impl",
        "isInNanos",
        "isInNanos-impl",
        "isInfinite",
        "isInfinite-impl",
        "isNegative",
        "isNegative-impl",
        "isPositive",
        "isPositive-impl",
        "minus",
        "minus-LRDsOJo",
        "(JJ)J",
        "plus",
        "plus-LRDsOJo",
        "times",
        "times-UwyO8pc",
        "toComponents",
        "T",
        "action",
        "Lkotlin/Function5;",
        "Lkotlin/ParameterName;",
        "name",
        "days",
        "hours",
        "minutes",
        "seconds",
        "nanoseconds",
        "toComponents-impl",
        "(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;",
        "Lkotlin/Function4;",
        "(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;",
        "Lkotlin/Function3;",
        "(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;",
        "Lkotlin/Function2;",
        "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "toDouble",
        "unit",
        "Lkotlin/time/DurationUnit;",
        "toDouble-impl",
        "(JLjava/util/concurrent/TimeUnit;)D",
        "toInt",
        "toInt-impl",
        "(JLjava/util/concurrent/TimeUnit;)I",
        "toIsoString",
        "",
        "toIsoString-impl",
        "(J)Ljava/lang/String;",
        "toLong",
        "toLong-impl",
        "(JLjava/util/concurrent/TimeUnit;)J",
        "toLongMilliseconds",
        "toLongMilliseconds-impl",
        "toLongNanoseconds",
        "toLongNanoseconds-impl",
        "toString",
        "toString-impl",
        "decimals",
        "(JLjava/util/concurrent/TimeUnit;I)Ljava/lang/String;",
        "unaryMinus",
        "unaryMinus-UwyO8pc",
        "appendFractional",
        "",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "whole",
        "fractional",
        "fractionalSize",
        "isoZeroes",
        "appendFractional-impl",
        "(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final Companion:Lkotlin/time/Duration$Companion;

.field private static final INFINITE:J

.field private static final NEG_INFINITE:J

.field private static final ZERO:J


# instance fields
.field private final rawValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/time/Duration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/time/Duration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 52
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->ZERO:J

    .line 55
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->INFINITE:J

    .line 56
    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0
    .param p1, "rawValue"    # J

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/time/Duration;->rawValue:J

    return-void
.end method

.method public static final synthetic access$getINFINITE$cp-UwyO8pc()J
    .locals 2

    .line 32
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    return-wide v0
.end method

.method public static final synthetic access$getNEG_INFINITE$cp-UwyO8pc()J
    .locals 2

    .line 32
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    return-wide v0
.end method

.method public static final synthetic access$getZERO$cp-UwyO8pc()J
    .locals 2

    .line 32
    sget-wide v0, Lkotlin/time/Duration;->ZERO:J

    return-wide v0
.end method

.method private static final addValuesMixedRanges-UwyO8pc(JJJ)J
    .locals 10
    .param p0, "$this"    # J
    .param p2, "thisMillis"    # J
    .param p4, "otherNanos"    # J

    .line 273
    invoke-static {p4, p5}, Lkotlin/time/DurationKt;->access$nanosToMillis(J)J

    move-result-wide v0

    .line 274
    .local v0, "otherMillis":J
    add-long v8, p2, v0

    .line 275
    .local v8, "resultMillis":J
    const-wide v2, -0x431bde82d7aL

    cmp-long v4, v2, v8

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide v2, 0x431bde82d7aL

    cmp-long v4, v2, v8

    if-ltz v4, :cond_1

    .line 276
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v2

    sub-long v2, p4, v2

    .line 277
    .local v2, "otherNanoRemainder":J
    invoke-static {v8, v9}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Lkotlin/time/DurationKt;->access$durationOfNanos(J)J

    move-result-wide v2

    .end local v2    # "otherNanoRemainder":J
    goto :goto_1

    .line 279
    :cond_1
    :goto_0
    const-wide v4, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v6, 0x3fffffffffffffffL    # 1.9999999999999998

    move-wide v2, v8

    invoke-static/range {v2 .. v7}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v2

    .line 275
    :goto_1
    return-wide v2
.end method

.method private static final appendFractional-impl(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V
    .locals 12
    .param p0, "$this"    # J
    .param p2, "$this$appendFractional"    # Ljava/lang/StringBuilder;
    .param p3, "whole"    # I
    .param p4, "fractional"    # I
    .param p5, "fractionalSize"    # I
    .param p6, "unit"    # Ljava/lang/String;
    .param p7, "isoZeroes"    # Z

    .line 768
    move-object v0, p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 769
    if-eqz p4, :cond_4

    .line 770
    const/16 v1, 0x2e

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 771
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    move/from16 v3, p5

    invoke-static {v1, v3, v2}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    .line 772
    .local v1, "fracString":Ljava/lang/String;
    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    .local v4, "$this$indexOfLast$iv":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 1223
    .local v5, "$i$f$indexOfLast":I
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, -0x1

    add-int/2addr v6, v7

    :goto_0
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ltz v6, :cond_2

    .line 1224
    .local v6, "index$iv":I
    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .local v10, "it":C
    const/4 v11, 0x0

    .line 772
    .local v11, "$i$a$-indexOfLast-Duration$appendFractional$nonZeroDigits$1":I
    if-eq v10, v2, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    .end local v10    # "it":C
    .end local v11    # "$i$a$-indexOfLast-Duration$appendFractional$nonZeroDigits$1":I
    :goto_1
    if-eqz v10, :cond_1

    .line 1225
    move v7, v6

    goto :goto_2

    .line 1223
    :cond_1
    nop

    .end local v6    # "index$iv":I
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1228
    :cond_2
    nop

    .line 772
    .end local v4    # "$this$indexOfLast$iv":Ljava/lang/CharSequence;
    .end local v5    # "$i$f$indexOfLast":I
    :goto_2
    add-int/2addr v7, v8

    .line 773
    .local v7, "nonZeroDigits":I
    nop

    .line 774
    const-string/jumbo v2, "this.append(value, startIndex, endIndex)"

    const/4 v4, 0x3

    if-nez p7, :cond_3

    if-ge v7, v4, :cond_3

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p2, v4, v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 775
    :cond_3
    add-int/lit8 v5, v7, 0x2

    div-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x3

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p2, v4, v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 769
    .end local v1    # "fracString":Ljava/lang/String;
    .end local v7    # "nonZeroDigits":I
    :cond_4
    move/from16 v3, p5

    .line 776
    :goto_3
    nop

    .line 778
    move-object/from16 v1, p6

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    return-void
.end method

.method public static final synthetic box-impl(J)Lkotlin/time/Duration;
    .locals 1

    new-instance v0, Lkotlin/time/Duration;

    invoke-direct {v0, p0, p1}, Lkotlin/time/Duration;-><init>(J)V

    return-object v0
.end method

.method public static compareTo-LRDsOJo(JJ)I
    .locals 7
    .param p0, "$this"    # J
    .param p2, "other"    # J

    .line 423
    xor-long v0, p0, p2

    .line 424
    .local v0, "compareBits":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    long-to-int v2, v0

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    goto :goto_1

    .line 427
    :cond_0
    move-wide v2, p0

    .local v2, "$this$iv":J
    const/4 v4, 0x0

    .line 1220
    .local v4, "$i$f$getUnitDiscriminator":I
    long-to-int v5, v2

    and-int/lit8 v2, v5, 0x1

    .line 427
    .end local v2    # "$this$iv":J
    .end local v4    # "$i$f$getUnitDiscriminator":I
    move-wide v3, p2

    .local v3, "$this$iv":J
    const/4 v5, 0x0

    .line 1220
    .local v5, "$i$f$getUnitDiscriminator":I
    long-to-int v6, v3

    and-int/lit8 v3, v6, 0x1

    .line 427
    .end local v3    # "$this$iv":J
    .end local v5    # "$i$f$getUnitDiscriminator":I
    sub-int/2addr v2, v3

    .line 428
    .local v2, "r":I
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result v3

    if-eqz v3, :cond_1

    neg-int v3, v2

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    return v3

    .line 425
    .end local v2    # "r":I
    :cond_2
    :goto_1
    cmp-long v2, p0, p2

    return v2
.end method

.method public static constructor-impl(J)J
    .locals 7
    .param p0, "rawValue"    # J

    .line 32
    nop

    .line 40
    nop

    .line 42
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const-wide v0, 0x3ffffffffffa14bfL    # 1.9999999999138678

    const-wide v2, -0x3ffffffffffa14bfL    # -2.0000000001722644

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ns is out of nanoseconds range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 45
    :cond_1
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    const-wide v2, -0x3fffffffffffffffL    # -2.0000000000000004

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_4

    cmp-long v2, v0, v4

    if-ltz v2, :cond_4

    .line 46
    const-wide v0, 0x431bde82d7aL

    const-wide v2, -0x431bde82d7aL

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    cmp-long v2, v0, v4

    if-gez v2, :cond_3

    .line 47
    :goto_0
    nop

    .line 48
    return-wide p0

    .line 46
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms is denormalized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 45
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms is out of milliseconds range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final div-LRDsOJo(JJ)D
    .locals 5
    .param p0, "$this"    # J
    .param p2, "other"    # J

    .line 403
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-static {p2, p3}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lkotlin/comparisons/ComparisonsKt;->maxOf(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/TimeUnit;

    .line 404
    .local v0, "coarserUnit":Ljava/util/concurrent/TimeUnit;
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v1

    invoke-static {p2, p3, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v3

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public static final div-UwyO8pc(JD)J
    .locals 6
    .param p0, "$this"    # J
    .param p2, "scale"    # D

    .line 391
    invoke-static {p2, p3}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v0

    .line 392
    .local v0, "intScale":I
    int-to-double v1, v0

    cmpg-double v3, v1, p2

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 393
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->div-UwyO8pc(JI)J

    move-result-wide v1

    return-wide v1

    .line 396
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v1

    .line 397
    .local v1, "unit":Ljava/util/concurrent/TimeUnit;
    invoke-static {p0, p1, v1}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v2

    div-double/2addr v2, p2

    .line 398
    .local v2, "result":D
    invoke-static {v2, v3, v1}, Lkotlin/time/DurationKt;->toDuration(DLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    return-wide v4
.end method

.method public static final div-UwyO8pc(JI)J
    .locals 7
    .param p0, "$this"    # J
    .param p2, "scale"    # I

    .line 361
    if-nez p2, :cond_2

    .line 362
    nop

    .line 363
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isPositive-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    goto :goto_0

    .line 364
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    .line 365
    :goto_0
    return-wide v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dividing zero duration by zero yields an undefined result."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 368
    :cond_2
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    int-to-long v2, p2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfNanos(J)J

    move-result-wide v0

    return-wide v0

    .line 371
    :cond_3
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 372
    invoke-static {p2}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->times-UwyO8pc(JI)J

    move-result-wide v0

    return-wide v0

    .line 374
    :cond_4
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    int-to-long v2, p2

    div-long/2addr v0, v2

    .line 376
    .local v0, "result":J
    const-wide v2, 0x431bde82d7aL

    const-wide v4, -0x431bde82d7aL

    cmp-long v6, v4, v0

    if-lez v6, :cond_5

    goto :goto_1

    :cond_5
    cmp-long v4, v2, v0

    if-ltz v4, :cond_6

    .line 377
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v2

    int-to-long v4, p2

    mul-long v4, v4, v0

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v2

    int-to-long v4, p2

    div-long/2addr v2, v4

    .line 378
    .local v2, "rem":J
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Lkotlin/time/DurationKt;->access$durationOfNanos(J)J

    move-result-wide v4

    return-wide v4

    .line 380
    .end local v2    # "rem":J
    :cond_6
    :goto_1
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 2

    instance-of v0, p2, Lkotlin/time/Duration;

    if-eqz v0, :cond_0

    check-cast p2, Lkotlin/time/Duration;

    invoke-virtual {p2}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v0

    cmp-long p2, p0, v0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final equals-impl0(JJ)Z
    .locals 1

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final getAbsoluteValue-UwyO8pc(J)J
    .locals 2
    .param p0, "$this"    # J

    .line 420
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p0

    :goto_0
    return-wide v0
.end method

.method public static synthetic getHoursComponent$annotations()V
    .locals 0

    return-void
.end method

.method public static final getHoursComponent-impl(J)I
    .locals 4
    .param p0, "$this"    # J

    .line 498
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeHours-impl(J)J

    move-result-wide v0

    const/16 v2, 0x18

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public static synthetic getInDays$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeDays property instead or convert toDouble(DAYS) if a double value is required."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDouble(DurationUnit.DAYS)"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getInDays-impl(J)D
    .locals 2
    .param p0, "$this"    # J

    .line 566
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInHours$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeHours property instead or convert toDouble(HOURS) if a double value is required."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDouble(DurationUnit.HOURS)"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getInHours-impl(J)D
    .locals 2
    .param p0, "$this"    # J

    .line 570
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInMicroseconds$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeMicroseconds property instead or convert toDouble(MICROSECONDS) if a double value is required."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDouble(DurationUnit.MICROSECONDS)"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getInMicroseconds-impl(J)D
    .locals 2
    .param p0, "$this"    # J

    .line 586
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInMilliseconds$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeMilliseconds property instead or convert toDouble(MILLISECONDS) if a double value is required."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDouble(DurationUnit.MILLISECONDS)"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getInMilliseconds-impl(J)D
    .locals 2
    .param p0, "$this"    # J

    .line 582
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInMinutes$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeMinutes property instead or convert toDouble(MINUTES) if a double value is required."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDouble(DurationUnit.MINUTES)"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getInMinutes-impl(J)D
    .locals 2
    .param p0, "$this"    # J

    .line 574
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInNanoseconds$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeNanoseconds property instead or convert toDouble(NANOSECONDS) if a double value is required."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDouble(DurationUnit.NANOSECONDS)"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getInNanoseconds-impl(J)D
    .locals 2
    .param p0, "$this"    # J

    .line 590
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInSeconds$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeSeconds property instead or convert toDouble(SECONDS) if a double value is required."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDouble(DurationUnit.SECONDS)"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getInSeconds-impl(J)D
    .locals 2
    .param p0, "$this"    # J

    .line 578
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInWholeDays$annotations()V
    .locals 0

    return-void
.end method

.method public static final getInWholeDays-impl(J)J
    .locals 2
    .param p0, "$this"    # J

    .line 600
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInWholeHours$annotations()V
    .locals 0

    return-void
.end method

.method public static final getInWholeHours-impl(J)J
    .locals 2
    .param p0, "$this"    # J

    .line 609
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInWholeMicroseconds$annotations()V
    .locals 0

    return-void
.end method

.method public static final getInWholeMicroseconds-impl(J)J
    .locals 2
    .param p0, "$this"    # J

    .line 651
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInWholeMilliseconds$annotations()V
    .locals 0

    return-void
.end method

.method public static final getInWholeMilliseconds-impl(J)J
    .locals 2
    .param p0, "$this"    # J

    .line 637
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInMillis-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->isFinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static synthetic getInWholeMinutes$annotations()V
    .locals 0

    return-void
.end method

.method public static final getInWholeMinutes-impl(J)J
    .locals 2
    .param p0, "$this"    # J

    .line 618
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInWholeNanoseconds$annotations()V
    .locals 0

    return-void
.end method

.method public static final getInWholeNanoseconds-impl(J)J
    .locals 5
    .param p0, "$this"    # J

    .line 665
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    .line 666
    .local v0, "value":J
    nop

    .line 667
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result v2

    if-eqz v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    .line 668
    :cond_0
    const-wide v2, 0x8637bd05af6L

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0

    .line 669
    :cond_1
    const-wide v2, -0x8637bd05af6L

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0

    .line 670
    :cond_2
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v2

    .line 666
    :goto_0
    return-wide v2
.end method

.method public static synthetic getInWholeSeconds$annotations()V
    .locals 0

    return-void
.end method

.method public static final getInWholeSeconds-impl(J)J
    .locals 2
    .param p0, "$this"    # J

    .line 627
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getMinutesComponent$annotations()V
    .locals 0

    return-void
.end method

.method public static final getMinutesComponent-impl(J)I
    .locals 4
    .param p0, "$this"    # J

    .line 502
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeMinutes-impl(J)J

    move-result-wide v0

    const/16 v2, 0x3c

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public static synthetic getNanosecondsComponent$annotations()V
    .locals 0

    return-void
.end method

.method public static final getNanosecondsComponent-impl(J)I
    .locals 4
    .param p0, "$this"    # J

    .line 510
    nop

    .line 511
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 512
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInMillis-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 513
    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    const v2, 0x3b9aca00

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 510
    :goto_0
    nop

    .line 514
    return v0
.end method

.method public static synthetic getSecondsComponent$annotations()V
    .locals 0

    return-void
.end method

.method public static final getSecondsComponent-impl(J)I
    .locals 4
    .param p0, "$this"    # J

    .line 506
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v0

    const/16 v2, 0x3c

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method private static final getStorageUnit-impl(J)Ljava/util/concurrent/TimeUnit;
    .locals 1
    .param p0, "$this"    # J

    .line 38
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_0
    return-object v0
.end method

.method private static final getUnitDiscriminator-impl(J)I
    .locals 2
    .param p0, "$this"    # J

    const/4 v0, 0x0

    .line 35
    .local v0, "$i$f$getUnitDiscriminator":I
    long-to-int v1, p0

    and-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static final getValue-impl(J)J
    .locals 2
    .param p0, "$this"    # J

    .line 34
    const/4 v0, 0x1

    shr-long v0, p0, v0

    return-wide v0
.end method

.method public static hashCode-impl(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static final isFinite-impl(J)Z
    .locals 1
    .param p0, "$this"    # J

    .line 417
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static final isInMillis-impl(J)Z
    .locals 5
    .param p0, "$this"    # J

    .line 37
    move-wide v0, p0

    .local v0, "$this$iv":J
    const/4 v2, 0x0

    .line 1217
    .local v2, "$i$f$getUnitDiscriminator":I
    long-to-int v3, v0

    const/4 v4, 0x1

    and-int/lit8 v0, v3, 0x1

    .end local v0    # "$this$iv":J
    .end local v2    # "$i$f$getUnitDiscriminator":I
    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 37
    :goto_0
    return v4
.end method

.method private static final isInNanos-impl(J)Z
    .locals 5
    .param p0, "$this"    # J

    .line 36
    move-wide v0, p0

    .local v0, "$this$iv":J
    const/4 v2, 0x0

    .line 1216
    .local v2, "$i$f$getUnitDiscriminator":I
    long-to-int v3, v0

    const/4 v4, 0x1

    and-int/lit8 v0, v3, 0x1

    .end local v0    # "$this$iv":J
    .end local v2    # "$i$f$getUnitDiscriminator":I
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 36
    :goto_0
    return v4
.end method

.method public static final isInfinite-impl(J)Z
    .locals 3
    .param p0, "$this"    # J

    .line 414
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v2, p0, v0

    if-eqz v2, :cond_1

    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final isNegative-impl(J)Z
    .locals 3
    .param p0, "$this"    # J

    .line 408
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isPositive-impl(J)Z
    .locals 3
    .param p0, "$this"    # J

    .line 411
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final minus-LRDsOJo(JJ)J
    .locals 2
    .param p0, "$this"    # J
    .param p2, "other"    # J

    .line 289
    invoke-static {p2, p3}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final plus-LRDsOJo(JJ)J
    .locals 10
    .param p0, "$this"    # J
    .param p2, "other"    # J

    .line 245
    nop

    .line 246
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    invoke-static {p2, p3}, Lkotlin/time/Duration;->isFinite-impl(J)Z

    move-result v0

    if-nez v0, :cond_1

    xor-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Summing infinite durations of different signs yields an undefined result."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 248
    :cond_1
    :goto_0
    return-wide p0

    .line 252
    :cond_2
    invoke-static {p2, p3}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_3

    return-wide p2

    .line 253
    :cond_3
    nop

    .line 255
    nop

    .line 256
    move-wide v0, p0

    .local v0, "$this$iv":J
    const/4 v2, 0x0

    .line 1219
    .local v2, "$i$f$getUnitDiscriminator":I
    long-to-int v3, v0

    and-int/lit8 v0, v3, 0x1

    .line 256
    .end local v0    # "$this$iv":J
    .end local v2    # "$i$f$getUnitDiscriminator":I
    move-wide v1, p2

    .local v1, "$this$iv":J
    const/4 v3, 0x0

    .line 1219
    .local v3, "$i$f$getUnitDiscriminator":I
    long-to-int v4, v1

    and-int/lit8 v1, v4, 0x1

    .end local v1    # "$this$iv":J
    .end local v3    # "$i$f$getUnitDiscriminator":I
    if-ne v0, v1, :cond_5

    .line 257
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 258
    .local v0, "result":J
    nop

    .line 259
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 260
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfNanosNormalized(J)J

    move-result-wide v2

    goto :goto_1

    .line 262
    :cond_4
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillisNormalized(J)J

    move-result-wide v2

    .line 258
    .end local v0    # "result":J
    goto :goto_1

    .line 265
    :cond_5
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInMillis-impl(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 266
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v3

    invoke-static {p2, p3}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v5

    move-wide v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/time/Duration;->addValuesMixedRanges-UwyO8pc(JJJ)J

    move-result-wide v2

    goto :goto_1

    .line 268
    :cond_6
    invoke-static {p2, p3}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v6

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v8

    move-wide v4, p0

    invoke-static/range {v4 .. v9}, Lkotlin/time/Duration;->addValuesMixedRanges-UwyO8pc(JJJ)J

    move-result-wide v2

    .line 255
    :goto_1
    return-wide v2
.end method

.method public static final times-UwyO8pc(JD)J
    .locals 6
    .param p0, "$this"    # J
    .param p2, "scale"    # D

    .line 344
    invoke-static {p2, p3}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v0

    .line 345
    .local v0, "intScale":I
    int-to-double v1, v0

    cmpg-double v3, v1, p2

    if-nez v3, :cond_0

    .line 346
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->times-UwyO8pc(JI)J

    move-result-wide v1

    return-wide v1

    .line 349
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v1

    .line 350
    .local v1, "unit":Ljava/util/concurrent/TimeUnit;
    invoke-static {p0, p1, v1}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v2

    mul-double v2, v2, p2

    .line 351
    .local v2, "result":D
    invoke-static {v2, v3, v1}, Lkotlin/time/DurationKt;->toDuration(DLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    return-wide v4
.end method

.method public static final times-UwyO8pc(JI)J
    .locals 20
    .param p0, "$this"    # J
    .param p2, "scale"    # I

    .line 298
    move/from16 v0, p2

    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    nop

    .line 300
    if-eqz v0, :cond_1

    .line 301
    if-lez v0, :cond_0

    move-wide/from16 v1, p0

    goto :goto_0

    .line 302
    :cond_0
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide v1

    .line 299
    :goto_0
    return-wide v1

    .line 300
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Multiplying infinite duration by zero yields an undefined result."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 305
    :cond_2
    if-nez v0, :cond_3

    sget-wide v1, Lkotlin/time/Duration;->ZERO:J

    return-wide v1

    .line 307
    :cond_3
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v1

    .line 308
    .local v1, "value":J
    int-to-long v3, v0

    mul-long v3, v3, v1

    .line 309
    .local v3, "result":J
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 310
    const-wide/32 v10, 0x7fffffff

    const-wide/32 v12, -0x7fffffff

    cmp-long v5, v12, v1

    if-lez v5, :cond_4

    goto :goto_1

    :cond_4
    cmp-long v5, v10, v1

    if-ltz v5, :cond_5

    .line 312
    invoke-static {v3, v4}, Lkotlin/time/DurationKt;->access$durationOfNanos(J)J

    move-result-wide v5

    goto/16 :goto_4

    .line 314
    :cond_5
    :goto_1
    int-to-long v10, v0

    div-long v10, v3, v10

    cmp-long v5, v10, v1

    if-nez v5, :cond_6

    .line 315
    invoke-static {v3, v4}, Lkotlin/time/DurationKt;->access$durationOfNanosNormalized(J)J

    move-result-wide v5

    goto :goto_3

    .line 317
    :cond_6
    invoke-static {v1, v2}, Lkotlin/time/DurationKt;->access$nanosToMillis(J)J

    move-result-wide v10

    .line 318
    .local v10, "millis":J
    invoke-static {v10, v11}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v12

    sub-long v12, v1, v12

    .line 319
    .local v12, "remNanos":J
    int-to-long v14, v0

    mul-long v14, v14, v10

    .line 320
    .local v14, "resultMillis":J
    int-to-long v6, v0

    mul-long v6, v6, v12

    invoke-static {v6, v7}, Lkotlin/time/DurationKt;->access$nanosToMillis(J)J

    move-result-wide v5

    add-long/2addr v5, v14

    .line 321
    .local v5, "totalMillis":J
    int-to-long v8, v0

    div-long v7, v14, v8

    cmp-long v9, v7, v10

    if-nez v9, :cond_7

    xor-long v7, v5, v14

    const-wide/16 v18, 0x0

    cmp-long v9, v7, v18

    if-ltz v9, :cond_7

    .line 322
    new-instance v7, Lkotlin/ranges/LongRange;

    move-wide/from16 v16, v10

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    const-wide v10, -0x3fffffffffffffffL    # -2.0000000000000004

    .end local v10    # "millis":J
    .local v16, "millis":J
    invoke-direct {v7, v10, v11, v8, v9}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    check-cast v7, Lkotlin/ranges/ClosedRange;

    invoke-static {v5, v6, v7}, Lkotlin/ranges/RangesKt;->coerceIn(JLkotlin/ranges/ClosedRange;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v7

    move-wide v5, v7

    goto :goto_3

    .line 321
    .end local v16    # "millis":J
    .restart local v10    # "millis":J
    :cond_7
    move-wide/from16 v16, v10

    .line 324
    .end local v10    # "millis":J
    .restart local v16    # "millis":J
    invoke-static {v1, v2}, Lkotlin/math/MathKt;->getSign(J)I

    move-result v7

    invoke-static/range {p2 .. p2}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v8

    mul-int v7, v7, v8

    if-lez v7, :cond_8

    sget-wide v7, Lkotlin/time/Duration;->INFINITE:J

    goto :goto_2

    :cond_8
    sget-wide v7, Lkotlin/time/Duration;->NEG_INFINITE:J

    :goto_2
    move-wide v5, v7

    .line 321
    .end local v5    # "totalMillis":J
    .end local v12    # "remNanos":J
    .end local v14    # "resultMillis":J
    .end local v16    # "millis":J
    :goto_3
    nop

    .line 314
    nop

    .line 310
    goto :goto_4

    .line 329
    :cond_9
    int-to-long v5, v0

    div-long v5, v3, v5

    cmp-long v7, v5, v1

    if-nez v7, :cond_a

    .line 330
    new-instance v5, Lkotlin/ranges/LongRange;

    const-wide v6, 0x3fffffffffffffffL    # 1.9999999999999998

    const-wide v8, -0x3fffffffffffffffL    # -2.0000000000000004

    invoke-direct {v5, v8, v9, v6, v7}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    check-cast v5, Lkotlin/ranges/ClosedRange;

    invoke-static {v3, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(JLkotlin/ranges/ClosedRange;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v5

    goto :goto_4

    .line 332
    :cond_a
    invoke-static {v1, v2}, Lkotlin/math/MathKt;->getSign(J)I

    move-result v5

    invoke-static/range {p2 .. p2}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v6

    mul-int v5, v5, v6

    if-lez v5, :cond_b

    sget-wide v5, Lkotlin/time/Duration;->INFINITE:J

    goto :goto_4

    :cond_b
    sget-wide v5, Lkotlin/time/Duration;->NEG_INFINITE:J

    .line 329
    :goto_4
    nop

    .line 309
    return-wide v5
.end method

.method public static final toComponents-impl(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # J
    .param p2, "action"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$toComponents":I
    const-string v1, "action"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    nop

    .line 493
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final toComponents-impl(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this"    # J
    .param p2, "action"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$toComponents":I
    const-string v1, "action"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    nop

    .line 479
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v1}, Lkotlin/time/Duration;->toInt-impl(JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v1, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final toComponents-impl(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;
    .locals 5
    .param p0, "$this"    # J
    .param p2, "action"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$toComponents":I
    const-string v1, "action"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    nop

    .line 464
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v1}, Lkotlin/time/Duration;->toInt-impl(JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getMinutesComponent-impl(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v1, v2, v3, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final toComponents-impl(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this"    # J
    .param p2, "action"    # Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$toComponents":I
    const-string v1, "action"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    nop

    .line 448
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v1}, Lkotlin/time/Duration;->toInt-impl(JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getHoursComponent-impl(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getMinutesComponent-impl(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, p2

    invoke-interface/range {v2 .. v7}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final toDouble-impl(JLjava/util/concurrent/TimeUnit;)D
    .locals 3
    .param p0, "$this"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    const-string/jumbo v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    nop

    .line 526
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 527
    :cond_0
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    .line 530
    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lkotlin/time/DurationUnitKt;->convertDurationUnit(DLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    .line 525
    :goto_0
    return-wide v0
.end method

.method public static final toInt-impl(JLjava/util/concurrent/TimeUnit;)I
    .locals 7
    .param p0, "$this"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    const-string/jumbo v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    invoke-static {p0, p1, p2}, Lkotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const/high16 v0, -0x80000000

    int-to-long v3, v0

    const v0, 0x7fffffff

    int-to-long v5, v0

    invoke-static/range {v1 .. v6}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public static final toIsoString-impl(J)Ljava/lang/String;
    .locals 28
    .param p0, "$this"    # J

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    .local v9, "$this$buildString":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 820
    .local v10, "$i$a$-buildString-Duration$toIsoString$1":I
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2d

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 821
    :cond_0
    const-string v1, "PT"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->getAbsoluteValue-UwyO8pc(J)J

    move-result-wide v11

    .line 823
    .local v11, "absoluteValue":J
    move-wide v13, v11

    .local v13, "$this$iv":J
    const/4 v15, 0x0

    .line 1230
    .local v15, "$i$f$toComponents":I
    nop

    .line 1231
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v13, v14, v1}, Lkotlin/time/Duration;->toInt-impl(JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    .local v1, "$noName_0":I
    invoke-static {v13, v14}, Lkotlin/time/Duration;->getMinutesComponent-impl(J)I

    move-result v8

    .local v8, "minutes":I
    invoke-static {v13, v14}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v16

    .local v16, "seconds":I
    invoke-static {v13, v14}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v17

    .local v17, "nanoseconds":I
    move/from16 v18, v1

    .end local v1    # "$noName_0":I
    .local v18, "$noName_0":I
    const/16 v19, 0x0

    .line 824
    .local v19, "$i$a$-toComponents-Duration$toIsoString$1$1":I
    invoke-static {v11, v12}, Lkotlin/time/Duration;->getInWholeHours-impl(J)J

    move-result-wide v1

    .line 825
    .local v1, "hours":J
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 827
    const-wide v1, 0x9184e729fffL

    move-wide v6, v1

    goto :goto_0

    .line 825
    :cond_1
    move-wide v6, v1

    .line 829
    .end local v1    # "hours":J
    .local v6, "hours":J
    :goto_0
    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmp-long v5, v6, v1

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move/from16 v20, v1

    .line 830
    .local v20, "hasHours":Z
    if-nez v16, :cond_4

    if-eqz v17, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, 0x1

    :goto_3
    move/from16 v21, v1

    .line 831
    .local v21, "hasSeconds":Z
    if-nez v8, :cond_6

    if-eqz v21, :cond_5

    if-eqz v20, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_4
    move/from16 v22, v3

    .line 832
    .local v22, "hasMinutes":Z
    if-eqz v20, :cond_7

    .line 833
    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x48

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 835
    :cond_7
    if-eqz v22, :cond_8

    .line 836
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x4d

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 838
    :cond_8
    if-nez v21, :cond_a

    if-nez v20, :cond_9

    if-nez v22, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v23, v8

    goto :goto_6

    .line 839
    :cond_a
    :goto_5
    const/16 v23, 0x9

    const/16 v24, 0x1

    const-string v25, "S"

    move-wide/from16 v1, p0

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move-wide/from16 v26, v6

    .end local v6    # "hours":J
    .local v26, "hours":J
    move/from16 v6, v23

    move-object/from16 v7, v25

    move/from16 v23, v8

    .end local v8    # "minutes":I
    .local v23, "minutes":I
    move/from16 v8, v24

    invoke-static/range {v1 .. v8}, Lkotlin/time/Duration;->appendFractional-impl(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    .line 841
    .end local v20    # "hasHours":Z
    .end local v21    # "hasSeconds":Z
    .end local v22    # "hasMinutes":Z
    .end local v26    # "hours":J
    :goto_6
    nop

    .line 842
    .end local v11    # "absoluteValue":J
    .end local v13    # "$this$iv":J
    .end local v15    # "$i$f$toComponents":I
    .end local v16    # "seconds":I
    .end local v17    # "nanoseconds":I
    .end local v18    # "$noName_0":I
    .end local v19    # "$i$a$-toComponents-Duration$toIsoString$1$1":I
    .end local v23    # "minutes":I
    nop

    .line 819
    .end local v9    # "$this$buildString":Ljava/lang/StringBuilder;
    .end local v10    # "$i$a$-buildString-Duration$toIsoString$1":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    return-object v0
.end method

.method public static final toLong-impl(JLjava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p0, "$this"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    const-string/jumbo v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    nop

    .line 546
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 547
    :cond_0
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    .line 548
    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lkotlin/time/DurationUnitKt;->convertDurationUnit(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 545
    :goto_0
    return-wide v0
.end method

.method public static final toLongMilliseconds-impl(J)J
    .locals 2
    .param p0, "$this"    # J
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeMilliseconds property instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.inWholeMilliseconds"
            imports = {}
        .end subannotation
    .end annotation

    .line 694
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final toLongNanoseconds-impl(J)J
    .locals 2
    .param p0, "$this"    # J
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeNanoseconds property instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.inWholeNanoseconds"
            imports = {}
        .end subannotation
    .end annotation

    .line 684
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeNanoseconds-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 34
    .param p0, "$this"    # J

    .line 719
    nop

    .line 720
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string v0, "0s"

    goto/16 :goto_6

    .line 721
    :cond_0
    sget-wide v2, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v4, p0, v2

    if-nez v4, :cond_1

    const-string v0, "Infinity"

    goto/16 :goto_6

    .line 722
    :cond_1
    sget-wide v2, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v4, p0, v2

    if-nez v4, :cond_2

    const-string v0, "-Infinity"

    goto/16 :goto_6

    .line 724
    :cond_2
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result v2

    .line 725
    .local v2, "isNegative":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v3

    .local v12, "$this$buildString":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .line 726
    .local v13, "$i$a$-buildString-Duration$toString$1":I
    if-eqz v2, :cond_3

    const/16 v4, 0x2d

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 727
    :cond_3
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->getAbsoluteValue-UwyO8pc(J)J

    move-result-wide v14

    .local v14, "$this$run":J
    const/16 v16, 0x0

    .line 728
    .local v16, "$i$a$-run-Duration$toString$1$1":I
    move-wide v10, v14

    .local v10, "$this$iv":J
    const/16 v17, 0x0

    .line 1221
    .local v17, "$i$f$toComponents":I
    nop

    .line 1222
    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v10, v11, v4}, Lkotlin/time/Duration;->toInt-impl(JLjava/util/concurrent/TimeUnit;)I

    move-result v4

    .local v4, "$noName_0":I
    invoke-static {v10, v11}, Lkotlin/time/Duration;->getHoursComponent-impl(J)I

    move-result v9

    .local v9, "hours":I
    invoke-static {v10, v11}, Lkotlin/time/Duration;->getMinutesComponent-impl(J)I

    move-result v8

    .local v8, "minutes":I
    invoke-static {v10, v11}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v18

    .local v18, "seconds":I
    invoke-static {v10, v11}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v7

    .local v7, "nanoseconds":I
    move/from16 v19, v4

    .end local v4    # "$noName_0":I
    .local v19, "$noName_0":I
    const/16 v20, 0x0

    .line 729
    .local v20, "$i$a$-toComponents-Duration$toString$1$1$1":I
    invoke-static {v14, v15}, Lkotlin/time/Duration;->getInWholeDays-impl(J)J

    move-result-wide v4

    .line 730
    .local v4, "days":J
    const/4 v6, 0x0

    move-wide/from16 v21, v10

    .end local v10    # "$this$iv":J
    .local v21, "$this$iv":J
    const/4 v11, 0x1

    cmp-long v10, v4, v0

    if-eqz v10, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 731
    .local v0, "hasDays":Z
    :goto_0
    if-eqz v9, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 732
    .local v1, "hasHours":Z
    :goto_1
    if-eqz v8, :cond_6

    const/4 v10, 0x1

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    :goto_2
    move/from16 v23, v10

    .line 733
    .local v23, "hasMinutes":Z
    if-nez v18, :cond_7

    if-eqz v7, :cond_8

    :cond_7
    const/4 v6, 0x1

    :cond_8
    move/from16 v24, v6

    .line 734
    .local v24, "hasSeconds":Z
    const/4 v6, 0x0

    .line 735
    .local v6, "components":I
    if-eqz v0, :cond_9

    .line 736
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v10, 0x64

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 737
    add-int/lit8 v6, v6, 0x1

    .line 739
    :cond_9
    const/16 v10, 0x20

    if-nez v1, :cond_a

    if-eqz v0, :cond_c

    if-nez v23, :cond_a

    if-eqz v24, :cond_c

    .line 740
    :cond_a
    add-int/lit8 v25, v6, 0x1

    .end local v6    # "components":I
    .local v25, "components":I
    if-lez v6, :cond_b

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 741
    :cond_b
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x68

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v6, v25

    .line 743
    .end local v25    # "components":I
    .restart local v6    # "components":I
    :cond_c
    if-nez v23, :cond_d

    if-eqz v24, :cond_f

    if-nez v1, :cond_d

    if-eqz v0, :cond_f

    .line 744
    :cond_d
    add-int/lit8 v25, v6, 0x1

    .end local v6    # "components":I
    .restart local v25    # "components":I
    if-lez v6, :cond_e

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 745
    :cond_e
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x6d

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v6, v25

    .line 747
    .end local v25    # "components":I
    .restart local v6    # "components":I
    :cond_f
    if-eqz v24, :cond_15

    .line 748
    add-int/lit8 v25, v6, 0x1

    .end local v6    # "components":I
    .restart local v25    # "components":I
    if-lez v6, :cond_10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 749
    :cond_10
    nop

    .line 750
    if-nez v18, :cond_14

    if-nez v0, :cond_14

    if-nez v1, :cond_14

    if-eqz v23, :cond_11

    move/from16 v27, v0

    move-wide/from16 v30, v4

    move v0, v7

    move/from16 v33, v8

    move/from16 v26, v9

    goto/16 :goto_3

    .line 752
    :cond_11
    const v6, 0xf4240

    if-lt v7, v6, :cond_12

    .line 753
    div-int v10, v7, v6

    rem-int v26, v7, v6

    const/16 v27, 0x6

    const/16 v28, 0x0

    const-string v29, "ms"

    move-wide/from16 v30, v4

    .end local v4    # "days":J
    .local v30, "days":J
    move-wide v4, v14

    move-object v6, v12

    move/from16 v32, v7

    .end local v7    # "nanoseconds":I
    .local v32, "nanoseconds":I
    move v7, v10

    move/from16 v33, v8

    .end local v8    # "minutes":I
    .local v33, "minutes":I
    move/from16 v8, v26

    move/from16 v26, v9

    .end local v9    # "hours":I
    .local v26, "hours":I
    move/from16 v9, v27

    move-object/from16 v10, v29

    move/from16 v27, v0

    const/4 v0, 0x1

    .end local v0    # "hasDays":Z
    .local v27, "hasDays":Z
    move/from16 v11, v28

    invoke-static/range {v4 .. v11}, Lkotlin/time/Duration;->appendFractional-impl(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    move/from16 v0, v32

    goto :goto_4

    .line 754
    .end local v26    # "hours":I
    .end local v27    # "hasDays":Z
    .end local v30    # "days":J
    .end local v32    # "nanoseconds":I
    .end local v33    # "minutes":I
    .restart local v0    # "hasDays":Z
    .restart local v4    # "days":J
    .restart local v7    # "nanoseconds":I
    .restart local v8    # "minutes":I
    .restart local v9    # "hours":I
    :cond_12
    move/from16 v27, v0

    move-wide/from16 v30, v4

    move/from16 v32, v7

    move/from16 v33, v8

    move/from16 v26, v9

    const/4 v0, 0x1

    .end local v0    # "hasDays":Z
    .end local v4    # "days":J
    .end local v7    # "nanoseconds":I
    .end local v8    # "minutes":I
    .end local v9    # "hours":I
    .restart local v26    # "hours":I
    .restart local v27    # "hasDays":Z
    .restart local v30    # "days":J
    .restart local v32    # "nanoseconds":I
    .restart local v33    # "minutes":I
    const/16 v4, 0x3e8

    move/from16 v11, v32

    .end local v32    # "nanoseconds":I
    .local v11, "nanoseconds":I
    if-lt v11, v4, :cond_13

    .line 755
    div-int/lit16 v7, v11, 0x3e8

    rem-int/lit16 v8, v11, 0x3e8

    const/4 v9, 0x3

    const/16 v28, 0x0

    const-string/jumbo v10, "us"

    move-wide v4, v14

    move-object v6, v12

    move v0, v11

    .end local v11    # "nanoseconds":I
    .local v0, "nanoseconds":I
    move/from16 v11, v28

    invoke-static/range {v4 .. v11}, Lkotlin/time/Duration;->appendFractional-impl(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    goto :goto_4

    .line 757
    .end local v0    # "nanoseconds":I
    .restart local v11    # "nanoseconds":I
    :cond_13
    move v0, v11

    .end local v11    # "nanoseconds":I
    .restart local v0    # "nanoseconds":I
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "ns"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 750
    .end local v26    # "hours":I
    .end local v27    # "hasDays":Z
    .end local v30    # "days":J
    .end local v33    # "minutes":I
    .local v0, "hasDays":Z
    .restart local v4    # "days":J
    .restart local v7    # "nanoseconds":I
    .restart local v8    # "minutes":I
    .restart local v9    # "hours":I
    :cond_14
    move/from16 v27, v0

    move-wide/from16 v30, v4

    move v0, v7

    move/from16 v33, v8

    move/from16 v26, v9

    .line 751
    .end local v4    # "days":J
    .end local v7    # "nanoseconds":I
    .end local v8    # "minutes":I
    .end local v9    # "hours":I
    .local v0, "nanoseconds":I
    .restart local v26    # "hours":I
    .restart local v27    # "hasDays":Z
    .restart local v30    # "days":J
    .restart local v33    # "minutes":I
    :goto_3
    const/16 v9, 0x9

    const/4 v11, 0x0

    const-string v10, "s"

    move-wide v4, v14

    move-object v6, v12

    move/from16 v7, v18

    move v8, v0

    invoke-static/range {v4 .. v11}, Lkotlin/time/Duration;->appendFractional-impl(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    .line 758
    :goto_4
    move/from16 v6, v25

    goto :goto_5

    .line 747
    .end local v25    # "components":I
    .end local v26    # "hours":I
    .end local v27    # "hasDays":Z
    .end local v30    # "days":J
    .end local v33    # "minutes":I
    .local v0, "hasDays":Z
    .restart local v4    # "days":J
    .restart local v6    # "components":I
    .restart local v7    # "nanoseconds":I
    .restart local v8    # "minutes":I
    .restart local v9    # "hours":I
    :cond_15
    move/from16 v27, v0

    move-wide/from16 v30, v4

    move v0, v7

    move/from16 v33, v8

    move/from16 v26, v9

    .line 758
    .end local v4    # "days":J
    .end local v7    # "nanoseconds":I
    .end local v8    # "minutes":I
    .end local v9    # "hours":I
    .local v0, "nanoseconds":I
    .restart local v26    # "hours":I
    .restart local v27    # "hasDays":Z
    .restart local v30    # "days":J
    .restart local v33    # "minutes":I
    :goto_5
    nop

    .line 760
    if-eqz v2, :cond_16

    const/4 v4, 0x1

    if-le v6, v4, :cond_16

    const/16 v5, 0x28

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 761
    .end local v1    # "hasHours":Z
    .end local v6    # "components":I
    .end local v23    # "hasMinutes":Z
    .end local v24    # "hasSeconds":Z
    .end local v27    # "hasDays":Z
    .end local v30    # "days":J
    :cond_16
    nop

    .line 762
    .end local v0    # "nanoseconds":I
    .end local v17    # "$i$f$toComponents":I
    .end local v18    # "seconds":I
    .end local v19    # "$noName_0":I
    .end local v20    # "$i$a$-toComponents-Duration$toString$1$1$1":I
    .end local v21    # "$this$iv":J
    .end local v26    # "hours":I
    .end local v33    # "minutes":I
    nop

    .line 727
    .end local v14    # "$this$run":J
    .end local v16    # "$i$a$-run-Duration$toString$1$1":I
    nop

    .line 763
    nop

    .line 725
    .end local v12    # "$this$buildString":Ljava/lang/StringBuilder;
    .end local v13    # "$i$a$-buildString-Duration$toString$1":I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    .end local v2    # "isNegative":Z
    :goto_6
    nop

    .line 765
    return-object v0
.end method

.method public static final toString-impl(JLjava/util/concurrent/TimeUnit;I)Ljava/lang/String;
    .locals 4
    .param p0, "$this"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "decimals"    # I

    const-string/jumbo v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 798
    if-ltz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 799
    invoke-static {p0, p1, p2}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    .line 800
    .local v0, "number":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 801
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xc

    invoke-static {p3, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v3

    invoke-static {v0, v1, v3}, Lkotlin/time/FormatToDecimalsKt;->formatToExactDecimals(DI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lkotlin/time/DurationUnitKt;->shortName(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1229
    .end local v0    # "number":D
    :cond_2
    const/4 v0, 0x0

    .line 798
    .local v0, "$i$a$-require-Duration$toString$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decimals must be not negative, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Duration$toString$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static synthetic toString-impl$default(JLjava/util/concurrent/TimeUnit;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 797
    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkotlin/time/Duration;->toString-impl(JLjava/util/concurrent/TimeUnit;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unaryMinus-UwyO8pc(J)J
    .locals 6
    .param p0, "$this"    # J

    .line 236
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    neg-long v0, v0

    move-wide v2, p0

    .local v2, "$this$iv":J
    const/4 v4, 0x0

    .line 1218
    .local v4, "$i$f$getUnitDiscriminator":I
    long-to-int v5, v2

    and-int/lit8 v2, v5, 0x1

    .line 236
    .end local v2    # "$this$iv":J
    .end local v4    # "$i$f$getUnitDiscriminator":I
    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->access$durationOf(JI)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 32
    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/time/Duration;->compareTo-LRDsOJo(J)I

    move-result p1

    return p1
.end method

.method public compareTo-LRDsOJo(J)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1, p1, p2}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1, p1}, Lkotlin/time/Duration;->equals-impl(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1}, Lkotlin/time/Duration;->hashCode-impl(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    return-wide v0
.end method
