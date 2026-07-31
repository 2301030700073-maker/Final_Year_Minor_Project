.class public final synthetic Lexpo/modules/image/records/DecodeFormat$WhenMappings;
.super Ljava/lang/Object;
.source "DecodeFormat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/image/records/DecodeFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lexpo/modules/image/records/DecodeFormat;->values()[Lexpo/modules/image/records/DecodeFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lexpo/modules/image/records/DecodeFormat;->ARGB_8888:Lexpo/modules/image/records/DecodeFormat;

    invoke-virtual {v1}, Lexpo/modules/image/records/DecodeFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lexpo/modules/image/records/DecodeFormat;->RGB_565:Lexpo/modules/image/records/DecodeFormat;

    invoke-virtual {v1}, Lexpo/modules/image/records/DecodeFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v0, Lexpo/modules/image/records/DecodeFormat$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
