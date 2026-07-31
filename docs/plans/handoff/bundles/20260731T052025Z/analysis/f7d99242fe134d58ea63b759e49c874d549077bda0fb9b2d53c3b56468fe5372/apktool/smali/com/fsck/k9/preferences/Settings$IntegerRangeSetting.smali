.class public final Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;
.super Lcom/fsck/k9/preferences/Settings$SettingsDescription;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final end:I

.field public final start:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-direct {p0, p3}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;->start:I

    .line 9
    .line 10
    iput p2, p0, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;->end:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p0, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;->start:I

    .line 6
    .line 7
    if-gt v0, p1, :cond_0

    .line 8
    .line 9
    iget p0, p0, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;->end:I

    .line 10
    .line 11
    if-gt p1, p0, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p0

    .line 18
    :catch_0
    :cond_0
    new-instance p0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 19
    .line 20
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 21
    .line 22
    .line 23
    throw p0
.end method
