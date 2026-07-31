.class public abstract Landroidx/compose/ui/text/font/SystemFontFamily;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Default:Landroidx/compose/ui/text/font/DefaultFontFamily;

.field public static final SansSerif:Landroidx/compose/ui/text/font/GenericFontFamily;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/text/font/DefaultFontFamily;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/text/font/SystemFontFamily;->Default:Landroidx/compose/ui/text/font/DefaultFontFamily;

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/compose/ui/text/font/SystemFontFamily;->SansSerif:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 14
    .line 15
    return-void
.end method
