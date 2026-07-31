.class public final Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;
.super Ljava/lang/Object;
.source "HttpBody.kt"

# interfaces
.implements Lrnauthenticator/authenticator/network/http/HttpBody;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\r\u001a\u00020\u0004H\u0016J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0002J\u0017\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003H\u00c6\u0003J!\u0010\u0011\u001a\u00020\u00002\u0016\u0008\u0002\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0004H\u00d6\u0001R\u001f\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;",
        "Lrnauthenticator/authenticator/network/http/HttpBody;",
        "parameters",
        "",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "getParameters",
        "()Ljava/util/Map;",
        "contentType",
        "getContentType",
        "()Ljava/lang/String;",
        "data",
        "encode",
        "component",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "propertyguru_react-native-authenticator_release"
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
.field private final parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$fkaSThnnq1JbE5bQn2eZIQ7vGns(Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;->data$lambda$0(Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;Ljava/util/Map$Entry;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;->parameters:Ljava/util/Map;

    return-void
.end method

.method public static synthetic copy$default(Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;Ljava/util/Map;ILjava/lang/Object;)Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;->parameters:Ljava/util/Map;

    :cond_0
    invoke-virtual {p0, p1}, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;->copy(Ljava/util/Map;)Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;

    move-result-object p0

    return-object p0
.end method

.method private static final data$lambda$0(Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 23
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "encode(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final component1()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(Ljava/util/Map;)Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;"
        }
    .end annotation

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;

    invoke-direct {v0, p1}, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public data()Ljava/lang/String;
    .locals 10

    .line 15
    iget-object v0, p0, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;->parameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const-string v0, "&"

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v7, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody$$ExternalSyntheticLambda0;-><init>(Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;)V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;

    iget-object v1, p0, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;->parameters:Ljava/util/Map;

    iget-object p1, p1, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;->parameters:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 12
    const-string v0, "application/x-www-form-urlencoded"

    return-object v0
.end method

.method public final getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;->parameters:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lrnauthenticator/authenticator/network/http/HttpUrlEncodedBody;->parameters:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HttpUrlEncodedBody(parameters="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
