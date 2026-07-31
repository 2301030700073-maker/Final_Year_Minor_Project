.class public abstract Landroidx/compose/foundation/AndroidOverscroll_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-wide v0, 0xff666666L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    cmpl-float v1, v0, v0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ltz v1, :cond_0

    .line 15
    .line 16
    move v1, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v2

    .line 19
    :goto_0
    cmpl-float v4, v0, v0

    .line 20
    .line 21
    if-ltz v4, :cond_1

    .line 22
    .line 23
    move v4, v3

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v4, v2

    .line 26
    :goto_1
    and-int/2addr v1, v4

    .line 27
    cmpl-float v4, v0, v0

    .line 28
    .line 29
    if-ltz v4, :cond_2

    .line 30
    .line 31
    move v4, v3

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move v4, v2

    .line 34
    :goto_2
    and-int/2addr v1, v4

    .line 35
    cmpl-float v0, v0, v0

    .line 36
    .line 37
    if-ltz v0, :cond_3

    .line 38
    .line 39
    move v2, v3

    .line 40
    :cond_3
    and-int v0, v1, v2

    .line 41
    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    const-string v0, "Padding must be non-negative"

    .line 45
    .line 46
    invoke-static {v0}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_4
    return-void
.end method
