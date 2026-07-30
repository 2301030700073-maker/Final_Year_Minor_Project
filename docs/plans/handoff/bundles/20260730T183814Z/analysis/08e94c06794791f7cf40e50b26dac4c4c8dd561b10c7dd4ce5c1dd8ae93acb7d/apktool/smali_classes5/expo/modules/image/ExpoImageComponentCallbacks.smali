.class public final Lexpo/modules/image/ExpoImageComponentCallbacks;
.super Ljava/lang/Object;
.source "ExpoImageComponentCallbacks.kt"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/image/ExpoImageComponentCallbacks;",
        "Landroid/content/ComponentCallbacks2;",
        "<init>",
        "()V",
        "onConfigurationChanged",
        "",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onLowMemory",
        "onTrimMemory",
        "level",
        "",
        "expo-image_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/image/ExpoImageComponentCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/image/ExpoImageComponentCallbacks;

    invoke-direct {v0}, Lexpo/modules/image/ExpoImageComponentCallbacks;-><init>()V

    sput-object v0, Lexpo/modules/image/ExpoImageComponentCallbacks;->INSTANCE:Lexpo/modules/image/ExpoImageComponentCallbacks;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 14
    sget-object v0, Lexpo/modules/image/blurhash/BlurhashDecoder;->INSTANCE:Lexpo/modules/image/blurhash/BlurhashDecoder;

    invoke-virtual {v0}, Lexpo/modules/image/blurhash/BlurhashDecoder;->clearCache()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lexpo/modules/image/ExpoImageComponentCallbacks;->onLowMemory()V

    :cond_0
    return-void
.end method
