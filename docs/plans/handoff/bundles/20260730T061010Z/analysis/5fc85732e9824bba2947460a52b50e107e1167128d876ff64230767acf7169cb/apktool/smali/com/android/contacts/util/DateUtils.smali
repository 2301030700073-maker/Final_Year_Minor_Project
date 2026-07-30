.class public Lcom/android/contacts/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static final DATE_FORMATS:[Ljava/text/SimpleDateFormat;

.field public static final NO_YEAR_DATE_FEB29TH:Ljava/lang/String; = "--02-29"

.field public static final UTC_TIMEZONE:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "UTC"

    .line 34
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    .line 44
    sget-object v1, Lcom/android/contacts/util/CommonDateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/util/CommonDateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    invoke-direct {v1, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "yyyyMMdd"

    invoke-direct {v1, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "yyyyMMdd\'T\'HHmmssSSS\'Z\'"

    invoke-direct {v1, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v4, 0x4

    aput-object v1, v0, v4

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "yyyyMMdd\'T\'HHmmss\'Z\'"

    invoke-direct {v1, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v4, 0x5

    aput-object v1, v0, v4

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "yyyyMMdd\'T\'HHmm\'Z\'"

    invoke-direct {v1, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v4, 0x6

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    .line 55
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 56
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 57
    sget-object v5, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_0
    sget-object v0, Lcom/android/contacts/util/CommonDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 139
    invoke-static {p0, p1, v0}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 157
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 161
    invoke-static {p1, v0}, Lcom/android/contacts/util/DateUtils;->parseDate(Ljava/lang/String;Z)Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_2

    return-object p1

    .line 168
    :cond_2
    invoke-static {v0}, Lcom/android/contacts/util/DateUtils;->isYearSet(Ljava/util/Calendar;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 171
    invoke-static {p0}, Lcom/android/contacts/util/DateUtils;->getLocalizedDateFormatWithoutYear(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 174
    invoke-static {p0}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    goto :goto_0

    .line 175
    :cond_4
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    .line 177
    :goto_0
    monitor-enter p0

    .line 178
    :try_start_0
    sget-object p1, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 179
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 180
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getLocalizedDateFormatWithoutYear(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 4

    const/4 v0, 0x1

    .line 204
    invoke-static {v0}, Ljava/text/SimpleDateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 205
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "de"

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[^Mm]*[Yy]+[^Mm]*"

    goto :goto_0

    :cond_0
    const-string v1, "[^DdMm]*[Yy]+[^DdMm]*"

    .line 212
    :goto_0
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    nop

    .line 214
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 215
    invoke-static {p0}, Lcom/android/contacts/util/DateUtils;->isMonthBeforeDay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "MMMM dd"

    goto :goto_1

    :cond_1
    const-string p0, "dd MMMM"

    :goto_1
    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getNextAnnualDate(Ljava/util/Calendar;)Ljava/util/Date;
    .locals 7

    .line 231
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 236
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 237
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 238
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 239
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 241
    invoke-static {p0}, Lcom/android/contacts/util/DateUtils;->isYearSet(Ljava/util/Calendar;)Z

    move-result v1

    const/4 v3, 0x1

    .line 242
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    .line 243
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    .line 244
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne v5, v3, :cond_0

    const/16 v6, 0x1d

    if-ne p0, v6, :cond_0

    const/4 v2, 0x1

    .line 246
    :cond_0
    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    if-nez v1, :cond_1

    .line 249
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    :cond_1
    invoke-virtual {v6, v4, v5, p0}, Ljava/util/GregorianCalendar;->set(III)V

    if-nez v1, :cond_4

    .line 256
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 257
    invoke-virtual {v6, v0}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v2, :cond_4

    .line 258
    invoke-virtual {v6, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    add-int/2addr v1, v3

    if-eqz v2, :cond_3

    .line 264
    invoke-virtual {v6, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    :cond_3
    invoke-virtual {v6, v1, v5, p0}, Ljava/util/GregorianCalendar;->set(III)V

    .line 268
    :cond_4
    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static final getUtcDate(III)Ljava/util/Calendar;
    .locals 2

    .line 113
    sget-object v0, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/4 v1, 0x1

    .line 115
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    .line 116
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    .line 117
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method private static final getUtcDate(Ljava/util/Date;Z)Ljava/util/Calendar;
    .locals 2

    .line 104
    sget-object v0, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    const/4 p1, 0x0

    .line 107
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    :cond_0
    return-object v0
.end method

.method public static isMonthBeforeDay(Landroid/content/Context;)Z
    .locals 4

    .line 184
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 185
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 186
    aget-char v2, p0, v1

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    return v0

    .line 189
    :cond_0
    aget-char v2, p0, v1

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isYearSet(Ljava/util/Calendar;)Z
    .locals 1

    const/4 v0, 0x1

    .line 125
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static parseDate(Ljava/lang/String;Z)Ljava/util/Calendar;
    .locals 6

    .line 72
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    if-nez p1, :cond_2

    const-string p1, "--02-29"

    .line 77
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/16 p0, 0x1d

    .line 78
    invoke-static {v1, v2, p0}, Lcom/android/contacts/util/DateUtils;->getUtcDate(III)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    .line 80
    :cond_0
    sget-object p1, Lcom/android/contacts/util/CommonDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter p1

    .line 81
    :try_start_0
    sget-object v3, Lcom/android/contacts/util/CommonDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p0, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    .line 82
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne p1, v4, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 87
    invoke-static {v3, v2}, Lcom/android/contacts/util/DateUtils;->getUtcDate(Ljava/util/Date;Z)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 82
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    const/4 p1, 0x0

    .line 90
    :goto_1
    sget-object v2, Lcom/android/contacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    array-length v3, v2

    if-ge p1, v3, :cond_4

    .line 91
    aget-object v2, v2, p1

    .line 92
    monitor-enter v2

    .line 93
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 94
    invoke-virtual {v2, p0, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    .line 95
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 96
    invoke-static {v3, v1}, Lcom/android/contacts/util/DateUtils;->getUtcDate(Ljava/util/Date;Z)Ljava/util/Calendar;

    move-result-object p0

    monitor-exit v2

    return-object p0

    .line 98
    :cond_3
    monitor-exit v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method
