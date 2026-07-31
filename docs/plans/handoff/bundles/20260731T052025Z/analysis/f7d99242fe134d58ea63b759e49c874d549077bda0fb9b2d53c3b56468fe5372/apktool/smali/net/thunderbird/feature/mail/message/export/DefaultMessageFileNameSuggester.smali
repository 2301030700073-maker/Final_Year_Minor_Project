.class public final Lnet/thunderbird/feature/mail/message/export/DefaultMessageFileNameSuggester;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final consecutiveDashesRegex:Lkotlin/text/Regex;

.field public static final fileNameDateFormat:Lkotlinx/datetime/format/LocalDateTimeFormat;

.field public static final nonAlphanumericRegex:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lkotlinx/datetime/LocalDateTime;->Companion:Lkotlinx/datetime/LocalDateTime$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlinx/datetime/format/LocalDateTimeFormat$Builder;

    .line 7
    .line 8
    new-instance v1, Lokhttp3/Headers$Builder;

    .line 9
    .line 10
    const/16 v2, 0xb

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lkotlinx/datetime/format/LocalDateTimeFormat$Builder;-><init>(Lokhttp3/Headers$Builder;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lkotlinx/datetime/format/LocalDateTimeFormat$Builder;->year()V

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x2d

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/text/StringsKt__IndentKt;->char(Lkotlinx/datetime/format/DateTimeFormatBuilder;C)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lkotlinx/datetime/format/LocalDateTimeFormat$Builder;->monthNumber()V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/text/StringsKt__IndentKt;->char(Lkotlinx/datetime/format/DateTimeFormatBuilder;C)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lkotlinx/datetime/format/LocalDateTimeFormat$Builder;->day()V

    .line 33
    .line 34
    .line 35
    const/16 v2, 0x5f

    .line 36
    .line 37
    invoke-static {v0, v2}, Lkotlin/text/StringsKt__IndentKt;->char(Lkotlinx/datetime/format/DateTimeFormatBuilder;C)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lkotlinx/datetime/format/LocalDateTimeFormat$Builder;->hour()V

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Lkotlin/text/StringsKt__IndentKt;->char(Lkotlinx/datetime/format/DateTimeFormatBuilder;C)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lkotlinx/datetime/format/LocalDateTimeFormat$Builder;->minute()V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lkotlinx/datetime/format/LocalDateTimeFormat;

    .line 50
    .line 51
    invoke-static {v0}, Lkotlinx/io/Sink$-CC;->$default$build(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;)Lkotlinx/datetime/internal/format/CachedFormatStructure;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {v1, v0}, Lkotlinx/datetime/format/LocalDateTimeFormat;-><init>(Lkotlinx/datetime/internal/format/CachedFormatStructure;)V

    .line 56
    .line 57
    .line 58
    sput-object v1, Lnet/thunderbird/feature/mail/message/export/DefaultMessageFileNameSuggester;->fileNameDateFormat:Lkotlinx/datetime/format/LocalDateTimeFormat;

    .line 59
    .line 60
    new-instance v0, Lkotlin/text/Regex;

    .line 61
    .line 62
    const-string v1, "[^a-z0-9-]+"

    .line 63
    .line 64
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lnet/thunderbird/feature/mail/message/export/DefaultMessageFileNameSuggester;->nonAlphanumericRegex:Lkotlin/text/Regex;

    .line 68
    .line 69
    new-instance v0, Lkotlin/text/Regex;

    .line 70
    .line 71
    const-string v1, "-+"

    .line 72
    .line 73
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sput-object v0, Lnet/thunderbird/feature/mail/message/export/DefaultMessageFileNameSuggester;->consecutiveDashesRegex:Lkotlin/text/Regex;

    .line 77
    .line 78
    return-void
.end method
