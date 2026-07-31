.class public final Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$TwoDigitFormatter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/takisoft/datetimepicker/widget/NumberPicker$Formatter;


# instance fields
.field public final mArgs:[Ljava/lang/Object;

.field public final mBuilder:Ljava/lang/StringBuilder;

.field public mFmt:Ljava/util/Formatter;

.field public mZeroDigit:C


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Ljava/util/Formatter;

    .line 21
    .line 22
    invoke-direct {v2, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    .line 26
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v2, 0x18

    .line 30
    .line 31
    if-lt v0, v2, :cond_0

    .line 32
    .line 33
    invoke-static {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    :goto_0
    iput-char v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$TwoDigitFormatter;->mZeroDigit:C

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final format(I)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-char v1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$TwoDigitFormatter;->mZeroDigit:C

    .line 6
    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v3, 0x18

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    :goto_0
    iget-object v5, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    .line 31
    .line 32
    if-eq v1, v4, :cond_2

    .line 33
    .line 34
    new-instance v1, Ljava/util/Formatter;

    .line 35
    .line 36
    invoke-direct {v1, v5, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    .line 40
    .line 41
    if-lt v2, v3, :cond_1

    .line 42
    .line 43
    invoke-static {v0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    :goto_1
    iput-char v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$TwoDigitFormatter;->mZeroDigit:C

    .line 61
    .line 62
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    aput-object p1, v0, v1

    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {v5, v1, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    .line 79
    .line 80
    const-string v1, "%02d"

    .line 81
    .line 82
    invoke-virtual {p1, v1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method
