.class public final Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;
.super Ljava/lang/Object;
.source "UpdatesModule.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/UpdatesModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdatesConfigurationOverrideParam"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0080\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0006\u0010\u0010\u001a\u00020\u0011J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\u0015\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J)\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0006H\u00d6\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR(\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\n\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001c"
    }
    d2 = {
        "Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;",
        "Lexpo/modules/kotlin/records/Record;",
        "updateUrl",
        "Landroid/net/Uri;",
        "requestHeaders",
        "",
        "",
        "<init>",
        "(Landroid/net/Uri;Ljava/util/Map;)V",
        "getUpdateUrl$annotations",
        "()V",
        "getUpdateUrl",
        "()Landroid/net/Uri;",
        "getRequestHeaders$annotations",
        "getRequestHeaders",
        "()Ljava/util/Map;",
        "toUpdatesConfigurationOverride",
        "Lexpo/modules/updates/UpdatesConfigurationOverride;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "expo-updates_release"
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
.field private final requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final updateUrl:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "updateUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestHeaders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;->updateUrl:Landroid/net/Uri;

    .line 210
    iput-object p2, p0, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;->requestHeaders:Ljava/util/Map;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;Landroid/net/Uri;Ljava/util/Map;ILjava/lang/Object;)Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;->updateUrl:Landroid/net/Uri;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;->requestHeaders:Ljava/util/Map;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;->copy(Landroid/net/Uri;Ljava/util/Map;)Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getRequestHeaders$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getUpdateUrl$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;->updateUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public final component2()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(Landroid/net/Uri;Ljava/util/Map;)Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;"
        }
    .end annotation

    const-string v0, "updateUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestHeaders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;

    invoke-direct {v0, p1, p2}, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;-><init>(Landroid/net/Uri;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;

    iget-object v1, p0, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;->updateUrl:Landroid/net/Uri;

    iget-object v3, p1, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;->updateUrl:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;->requestHeaders:Ljava/util/Map;

    iget-object p1, p1, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;->requestHeaders:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public final getUpdateUrl()Landroid/net/Uri;
    .locals 1

    .line 209
    iget-object v0, p0, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;->updateUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;->updateUrl:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;->updateUrl:Landroid/net/Uri;

    iget-object v1, p0, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;->requestHeaders:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UpdatesConfigurationOverrideParam(updateUrl="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", requestHeaders="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toUpdatesConfigurationOverride()Lexpo/modules/updates/UpdatesConfigurationOverride;
    .locals 3

    .line 213
    new-instance v0, Lexpo/modules/updates/UpdatesConfigurationOverride;

    iget-object v1, p0, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;->updateUrl:Landroid/net/Uri;

    iget-object v2, p0, Lexpo/modules/updates/UpdatesModule$UpdatesConfigurationOverrideParam;->requestHeaders:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lexpo/modules/updates/UpdatesConfigurationOverride;-><init>(Landroid/net/Uri;Ljava/util/Map;)V

    return-object v0
.end method
