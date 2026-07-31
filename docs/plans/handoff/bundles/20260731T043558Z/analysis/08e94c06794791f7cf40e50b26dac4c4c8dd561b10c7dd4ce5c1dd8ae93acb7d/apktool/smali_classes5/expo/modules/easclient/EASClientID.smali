.class public final Lexpo/modules/easclient/EASClientID;
.super Ljava/lang/Object;
.source "EASClientID.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/easclient/EASClientID;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "uuid",
        "Ljava/util/UUID;",
        "getUuid",
        "()Ljava/util/UUID;",
        "uuid$delegate",
        "Lkotlin/Lazy;",
        "expo-eas-client_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final uuid$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$Uwi3ux5oScNbqyqVuRA5H8Mj4fI(Lexpo/modules/easclient/EASClientID;)Ljava/util/UUID;
    .locals 0

    invoke-static {p0}, Lexpo/modules/easclient/EASClientID;->uuid_delegate$lambda$1(Lexpo/modules/easclient/EASClientID;)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/easclient/EASClientID;->context:Landroid/content/Context;

    .line 10
    new-instance p1, Lexpo/modules/easclient/EASClientID$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lexpo/modules/easclient/EASClientID$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/easclient/EASClientID;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/easclient/EASClientID;->uuid$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final uuid_delegate$lambda$1(Lexpo/modules/easclient/EASClientID;)Ljava/util/UUID;
    .locals 2

    .line 11
    iget-object p0, p0, Lexpo/modules/easclient/EASClientID;->context:Landroid/content/Context;

    const-string v0, "dev.expo.EASSharedPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    .line 12
    const-string v1, "eas-client-id"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 16
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 17
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 20
    :cond_0
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getUuid()Ljava/util/UUID;
    .locals 2

    .line 10
    iget-object v0, p0, Lexpo/modules/easclient/EASClientID;->uuid$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/UUID;

    return-object v0
.end method
