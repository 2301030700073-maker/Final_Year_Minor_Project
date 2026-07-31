.class public final Lio/noties/markwon/core/MarkwonTheme;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final HEADING_SIZES:[F


# instance fields
.field public blockMargin:I

.field public blockQuoteWidth:I

.field public bulletListItemStrokeWidth:I

.field public codeBlockMargin:I

.field public headingBreakHeight:I

.field public thematicBreakHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/noties/markwon/core/MarkwonTheme;->HEADING_SIZES:[F

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x3fc00000    # 1.5f
        0x3f95c28f    # 1.17f
        0x3f800000    # 1.0f
        0x3f547ae1    # 0.83f
        0x3f2b851f    # 0.67f
    .end array-data
.end method
